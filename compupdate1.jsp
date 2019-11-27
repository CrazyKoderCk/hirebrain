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

	<p>Company: <a href="companylogin.html">Log in</a> or <a href="companyregister.html">Register</a></p>			
	</div>

	<div id="header">
	<a href="index.html" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
		<li><a href="companyhomepage.jsp">Home</a></li>
		
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
	String cun1=(String)session.getAttribute("cun");
	
	
	String address="";
	String contactno="";
	String website="";
	String category="";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from company where username='"+cun1+"'");
	while(rs.next())
	{
		
		
		address=rs.getString(4);
		contactno=rs.getString(5);
		website=rs.getString(6);
		category=rs.getString(7);
		
		
	}	
	%>
	<form name="f" method="post" action="compupdate2.jsp">
	<table>
	
	
	
	
	<tr>
		<td>Address
		<td><textarea name="t2" required><%=address%></textarea>
	</tr>
	
	<tr>
		<td>Contact Number
		<td><input type="text" name="t3" value="<%=contactno%>" required>
	</tr>
	<tr>
		<td>Website
		<td><input type="text" name="t4" value="<%=website%>" required>
	</tr>
	<tr>
		<td>Category
		<td><select name="t5">
			<option value="Computer Based">Computer Based
			<option value="Electronics Based">Electronics Based
			<option value="T Company">IT Company
			<option value="Medical Based">Medical Based
		
	</tr>
	<tr>
		<td><input type="submit" name="s" value="Update">
	</tr>
	</select>
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