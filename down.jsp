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
		<li><a href="companyhomepage.jsp">Back</a></li>
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
		String un9=(String)session.getAttribute("un");
		
		String username="";
		String filename="";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from profile");	
		
		%>
		
		<table border=1>
		<caption><b>Download Profile</b></caption>
		<tr>
				<td>User Name
				<td>File Name
		
		</tr>
		<%
			while(rs.next())
			{
				username=rs.getString(1);
				filename=rs.getString(2);
				out.print("<tr>");
				out.print("<td>"+username);
				out.print("<td><a href='download.jsp?x="+username+"'>"+filename+"</a>");
				out.print("</tr>");
		
			
			}
		%>
		</table>
		
		
		</center>
		</div>
	<div id="footer">
		
		Copyright &copy;. All rights reserved.																																														
	</div>
</div>
</body>
</html>
