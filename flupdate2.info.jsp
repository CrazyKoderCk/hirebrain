<%@ page import="java.sql.*"%>
<%
String un2=(String)session.getAttribute("un");
String firstname=request.getParameter("t3");
String lastname=request.getParameter("t4");
String address=request.getParameter("t5");
String email=request.getParameter("t6");
String mobileno=request.getParameter("t7");
String qualification=request.getParameter("t8");
String experience=request.getParameter("t9");
String skills=request.getParameter("t10");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
String sql="update freelancer set firstname='"+firstname+"',lastname='"+lastname+"',address='"+address+"',email='"+email+"',mobileno='"+mobileno+"',qualification='"+qualification+"',experience='"+experience+"',skills='"+skills+"' where username='"+un2+"'";
st.executeUpdate(sql);
response.sendRedirect("homepage.jsp");
%>