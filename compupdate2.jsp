<%@ page import="java.sql.*"%>
<%
String cun2=(String)session.getAttribute("cun");
String address=request.getParameter("t2");
String contactno=request.getParameter("t3");
String website=request.getParameter("t4");
String category=request.getParameter("t5");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
Statement st=con.createStatement();
String sql="update company set address='"+address+"',contactno='"+contactno+"',website='"+website+"',category='"+category+"' where username='"+cun2+"'";
st.executeUpdate(sql);
response.sendRedirect("companyhomepage.jsp");
%>