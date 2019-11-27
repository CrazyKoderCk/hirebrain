<%@ page import="java.sql.*"%>
<% 
String username=request.getParameter("t1");
String accountno=request.getParameter("t2");
String bankname=request.getParameter("t3");
String branch=request.getParameter("t4");
String ifsccode=request.getParameter("t5");
String amount=request.getParameter("t6");
String remarks=request.getParameter("t7");
String paymentdate=request.getParameter("t8");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
String sql="insert into payment values('"+username+"','"+accountno+"','"+bankname+"','"+branch+"','"+ifsccode+"','"+amount+"','"+remarks+"','"+paymentdate+"')";
st.executeUpdate(sql);
response.sendRedirect("companyhomepage.jsp");
%>
