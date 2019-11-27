<%@ page import="java.sql.*"%>
<% 
String x=(String)session.getAttribute("un");
String y=(String)session.getAttribute("fn");
String cp=request.getParameter("t1");
String np=request.getParameter("t2");
String temp="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from freelancer where username='"+x+"' and password='"+cp+"'");
while(rs.next())
{
	temp=rs.getString(1);
}
if(temp.equals(""))
{
	response.sendRedirect("flchangepasserror.html");
}
else
{
	Statement st1=con.createStatement();
	String sql="update freelancer set password='"+np+"' where username='"+x+"'";
	st1.executeUpdate(sql);
	response.sendRedirect("homepage.jsp");
}
%>

