<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Hire Brain</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
	
		
	<div class="meta">

			
	</div>

	<div id="header">
	<a href="" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
		<li><a href="uploadproject.jsp">Home Page</a></li>
		</ul>

</div>
<div id="topbg">
</div>

<div id="mainimg">
		<center>
		<img src="images/bigpicture.jpg" alt="" width="892" height="303"/></center>
</div>
	

	<div id="content" style="width: 872; height: 58">
	<br>
			
		<center>
		<%@ page import="java.sql.*"%>
<%
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
String sql="update newproject set projectname='"+projectname+"',projecttype='"+projecttype+"',projectdesc='"+projectdesc+"',uploaddate='"+uploaddate+"',duration="+duration+",amount="+amount+" where projectid='"+projectid+"'";
st.executeUpdate(sql);
out.print("Updated Successfully");
%>
		
		</center>
		</div>
	<div id="footer">
		
		Copyright &copy;. All rights reserved.																																														
	</div>
</div>
</body>
</html>
