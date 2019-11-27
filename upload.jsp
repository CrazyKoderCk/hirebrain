<%@ page import="java.io.*,java.sql.*" %>
<%
String saveFile="";
String fname="";
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
{
	DataInputStream in = new DataInputStream(request.getInputStream());
	int formDataLength = request.getContentLength();
	byte dataBytes[] = new byte[formDataLength];
	int byteRead = 0;
	int totalBytesRead = 0;
	while (totalBytesRead < formDataLength)
	{
		byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
		totalBytesRead += byteRead;
	}
	
	String file = new String(dataBytes);
	saveFile = file.substring(file.indexOf("filename=\"") + 10);
	saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
	saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
	int lastIndex = contentType.lastIndexOf("=");
	String boundary = contentType.substring(lastIndex + 1,contentType.length());
	int pos;
	pos = file.indexOf("filename=\"");
	pos = file.indexOf("\n", pos) + 1;
	pos = file.indexOf("\n", pos) + 1;
	pos = file.indexOf("\n", pos) + 1;
	int boundaryLocation = file.indexOf(boundary, pos) - 4;
	int startPos = ((file.substring(0, pos)).getBytes()).length;
	int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
	fname=saveFile;
	saveFile="uploads/"+saveFile;
	File ff = new File(saveFile);
	FileOutputStream fileOut = new FileOutputStream(ff);
	fileOut.write(dataBytes, startPos, (endPos - startPos));
	fileOut.flush();
	fileOut.close();
	
}

String un=(String) session.getAttribute("un");
String temp="";

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from profile where username='"+un+"'");

while(rs.next())
{
	temp=rs.getString(1);
}

if(temp.equals(""))
{
	Statement st1=con.createStatement();
	String sql="insert into profile values('"+un+"','"+fname+"')";
	st1.executeUpdate(sql);
	response.sendRedirect("homepage.jsp");
}
else
{
	Statement st1=con.createStatement();
	String sql="update profile set filename='"+fname+"' where username='"+un+"'";
	st1.executeUpdate(sql);
	response.sendRedirect("homepage.jsp");		
}
%>
