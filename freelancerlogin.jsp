
		<%@ page import="java.sql.*"%>
<%
String username=request.getParameter("t1");
String password=request.getParameter("t2");
String temp="";
String firstname="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from freelancer where username='"+username+"' and password='"+password+"'");
while(rs.next())
{
	temp=rs.getString(1);
	firstname=rs.getString(3);
}
if(temp.equals(""))
{
	response.sendRedirect("freelancerloginerror.html");
}
else
{	
	session.setAttribute("un",username);
	session.setAttribute("fn",firstname);
	response.sendRedirect("homepage.jsp");
	
}
%>
		
		