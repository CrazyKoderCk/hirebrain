<%@ page import="java.sql.*"%>
<% 
String username=request.getParameter("t1");
String password=request.getParameter("t2");
String companyname=request.getParameter("t3");
String address=request.getParameter("t4");
String contactno=request.getParameter("t5");
String website=request.getParameter("t6");
String category=request.getParameter("t7");
String temp="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from company where username='"+username+"'");
while(rs.next())
{
	temp=rs.getString(1);
}
if(temp.equals(""))
{
	Statement st1=con.createStatement();
	String sql1="insert into company values('"+username+"','"+password+"','"+companyname+"','"+address+"','"+contactno+"','"+website+"','"+category+"')";
st1.executeUpdate(sql1);
response.sendRedirect("index.html");
}
else
{
	response.sendRedirect("companyregerror.html");
}

%>
