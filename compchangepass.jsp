<%@ page import="java.sql.*"%>
<% 
String x=(String)session.getAttribute("cun");
String y=(String)session.getAttribute("cn");
String ccp=request.getParameter("t1");
String cnp=request.getParameter("t2");
String temp="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from company where username='"+x+"' and password='"+ccp+"'");
while(rs.next())
{
	temp=rs.getString(1);
}
if(temp.equals(""))
{
	response.sendRedirect("compchangepasserror.html");
}
else
{
	Statement st1=con.createStatement();
	String sql="update company set password='"+cnp+"' where username='"+x+"'";
	st1.executeUpdate(sql);
	response.sendRedirect("companyhomepage.jsp");
}
%>

