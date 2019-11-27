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
	<a href="index.html" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
		<li><a href="uploadproject.jsp">Home</a></li>
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
	<form name="f" method="post" action="delete2project.jsp">
	<table>
	<tr>
		<td>Select Project Id
		<td><select name="projectid">
		<%@ page import="java.sql.*"%>
		<%
		String x="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		Statement st=con.createStatement();	
		ResultSet rs=st.executeQuery("select *from newproject");
		while(rs.next())
		{
			x=rs.getString(1);
			out.print("<option value="+x+">"+x);
		}
		%>
		</select>
	
		<td><input type="submit" name="s" value="Show">		
		
	</tr>
	</form>
	</table>
	</center>
	
			
		
		</div>
	<div id="footer">
		
		Copyright &copy;. All rights reserved.																																														
	</div>
</div>
</body>
</html>