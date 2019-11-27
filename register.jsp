<%@ page import="java.sql.*"%>
<% 
String username=request.getParameter("t1");
String password=request.getParameter("t2");
String firstname=request.getParameter("t3");
String lastname=request.getParameter("t4");
String address=request.getParameter("t5");
String email=request.getParameter("t6");
String mobileno=request.getParameter("t7");
String qualification=request.getParameter("t8");
String temp="";
String experience=request.getParameter("t9");
String skills=request.getParameter("t10");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from freelancer where username='"+username+"'");
while(rs.next())
{
	temp=rs.getString(1);
}
if(temp.equals(""))
{
	Statement st1=con.createStatement();
String sql1="insert into freelancer values('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+address+"','"+email+"','"+mobileno+"','"+qualification+"','"+experience+"','"+skills+"')";
st1.executeUpdate(sql1);

response.sendRedirect("index.html");
}
else
{
	response.sendRedirect("registererror.html");
}
%>
