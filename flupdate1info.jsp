<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Hire Brain</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<script language="javascript">
function aa()
{
	alert("can not change this");
	document.f.t3.focus();
}

</script>

<body>
	<div class="meta">

				
	</div>

	<div id="header">
	<a href="index.html" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
		<li><a href="homepage.jsp">Home</a></li>
		
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
	<%@ page import="java.sql.*" %>
	<%
	String un1=(String)session.getAttribute("un");
	
	String firstname="";
	String lastname="";
	String address="";
	String email="";
	String mobileno="";
	String qualification="";
	String experience="";
	String skills="";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from freelancer where username='"+un1+"'");
	while(rs.next())
	{
		
		firstname=rs.getString(3);
		lastname=rs.getString(4);
		address=rs.getString(5);
		email=rs.getString(6);
		mobileno=rs.getString(7);
		qualification=rs.getString(8);
		experience=rs.getString(9);
		skills=rs.getString(10);
		
	}	
	%>
	<form name="f" method="post" action="flupdate2.info.jsp">
	<table>
	
	
	<tr>
		<td>First Name
		<td><input type="text" name="t3" value="<%=firstname%>" required>
	</tr>
	<tr>
		<td>Last Name
		<td><input type="text" name="t4" value="<%=lastname%>" >
	</tr>
	<tr>
		<td>Address
		<td><textarea name="t5" required><%=address%></textarea>
	</tr>
	<tr>
		<td>Email Id
		<td><input type="email" name="t6" value="<%=email%>" required>
	</tr>
	<tr>
		<td>Mobile Number
		<td><input type="text" name="t7" value="<%=mobileno%>" required>
	</tr>
	<tr>
		<td>Qualification
		<td><select name="t8">
			<option value="Btech">Btech
			<option value="BCA">BCA
			<option value="MBA">MBA
			<option value="Mtech">Mtech
			
	</tr>
	<tr>
		<td>Experience
		<td><select name="t9">
			<option value="Fresh">Fresh
			<option value="2 years">2 years
			<option value="5 years">5 years
			<option value="10 years">10 years
	</tr>
	<tr>
		<td>Skills
		<td><textarea name="t10" required><%=skills%></textarea>
	</tr>

	<tr>
		<td><input type="submit" name="s" value="Update">		
		
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