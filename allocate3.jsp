<%@ page import="java.sql.*"%>
<% 
String projectid=request.getParameter("t1");
String projectname=request.getParameter("t2");
String projecttype=request.getParameter("t3");
String projectdesc=request.getParameter("t4");
String duration=request.getParameter("t5");
String amount=request.getParameter("t6");
String cname=request.getParameter("t7");
String biddername=request.getParameter("t8");
String allocatedate=request.getParameter("t9");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
String sql="insert into allocate value('"+projectid+"','"+projectname+"','"+projecttype+"','"+projectdesc+"','"+duration+"','"+amount+"','"+cname+"','"+biddername+"','"+allocatedate+"')";
st.executeUpdate(sql);
response.sendRedirect("companyhomepage.jsp");
%>
