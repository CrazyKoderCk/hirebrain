<%@page contentType="application/octet-stream"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>

<%

String un=request.getParameter("x");

String fn="";

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from profile where username='"+un+"'");
while(rs.next())
{
	fn=rs.getString(2);
}	

BufferedInputStream filein = null;
BufferedOutputStream outputs = null;
try
{
	File file = new File("uploads/"+fn);//specify the file path
	byte b[] = new byte[2048];
	int len = 0;
	filein = new BufferedInputStream(new FileInputStream(file));
	outputs = new BufferedOutputStream(response.getOutputStream());
	response.setHeader("Content-Length", ""+file.length());
	response.setContentType("application/force-download");
	response.setHeader("Content-Disposition","attachment;filename="+fn);
	response.setHeader("Content-Transfer-Encoding", "binary");
	while ((len = filein.read(b)) > 0)
	{
		outputs.write(b, 0, len);
		outputs.flush();
	}
}
catch(Exception e){
out.println(e);
}

%>
