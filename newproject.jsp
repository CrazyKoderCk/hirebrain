<%@ page import="java.sql.*"%>
<% 

String cname=(String) session.getAttribute("cn");

String projectid=request.getParameter("t1");
String projectname=request.getParameter("t2");
String projecttype=request.getParameter("t3");
String projectdesc=request.getParameter("t4");
String uploaddate=request.getParameter("t5");
String duration=request.getParameter("t6");
String amount=request.getParameter("t7");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
String sql="insert into newproject values('"+projectid+"','"+projectname+"','"+projecttype+"','"+projectdesc+"','"+uploaddate+"',"+duration+","+amount+",'"+cname+"')";
st.executeUpdate(sql);
out.print("successfully registered");
response.sendRedirect("uploadproject.jsp");
%>
