<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Hire Brain</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body onLoad="bb();">
	<div class="meta">			
	</div>

	<div id="header">
	<a href="index.html" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
		<li><a href="uploadproject.jsp">Back</a></li>
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
	<script language="javascript">
	function aa()
	{
		alert("this field can not be changed");
		document.f.t2.focus();
	}
	function dis()
	{
	alert("Can Not Chage this");
	document.f.t6.focus();
	}
	function bb()
	{
var d=new Date();

var da=d.getDate();

var m=d.getMonth();
m++;

var y=d.getFullYear();


var dt=da+"/"+m+"/"+y;

document.f.t5.value=dt;
}
	</script>
	
	<center>
	
	
		<%@ page import="java.sql.*"%>
		<%
		String projectid=request.getParameter("projectid");
		String projectname="";
		String projecttype="";
		String projectdesc="";
		String uploaddate="";
		String duration="";
		String amount="";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		Statement st=con.createStatement();	
		ResultSet rs=st.executeQuery("select *from newproject where projectid='"+projectid+"'");
		while(rs.next())
		{
			projectname=rs.getString(2);
			projecttype=rs.getString(3);
			projectdesc=rs.getString(4);
			uploaddate=rs.getString(5);
			duration=rs.getString(6);
			amount=rs.getString(7);
			
		}
		%>
		<form name="f" method="post" action="update3project.jsp">
		<table>
		<tr>
			<td>Project Id
			<td><input type="text" name="t1" value="<%=projectid%>" onfocus="aa();">
		</tr>
		<tr>
			<td>Project Name
			<td><input type="text" name="t2" value="<%=projectname%>"required>
		</tr>
		<tr>
			<td>Project Type
			<td><select name="t3" value="<%=projecttype%>">
				<option value="Networking">Networking
				<option value="WebDesign">Web Designing
				<option value="Software">Software Development
				<option value="ConentDesign">Content Designing
				<option value="AppDevelop">App Development
			</select>
		</tr>
		<tr>
			<td>Project Description
			<td><textarea rows=5 cols=15 name="t4" required></textarea>
		</tr>
		<tr>
			<td>Upload Date
			<td><input type="text" name="t5" onfocus="dis();">
		</tr>
		<tr>
			<td>Duration
			<td><select name="t6">
			<option value="1">1
			<option value="2">2
			<option value="3">3
			<option value="4">4
			<option value="5">5
			<option value="6">6
			<option value="7">7
			<option value="8">8
			<option value="9">9
			<option value="10">10
		</tr>
		<tr>
			<td>Amount
			<td><input type="text" name="t7" value="<%=amount%>" required>
		</tr>
		<tr>
			<td><input type="submit" name="s" value="Update">		
		</tr>
		</table>
		</form>
		</center>
	
			
		
		</div>
	<div id="footer">
		
		Copyright &copy;. All rights reserved.																																														
	</div>
</div>
</body>
</html>