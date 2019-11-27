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
var d=new Date();

var da=d.getDate();

var m=d.getMonth();
m++;

var y=d.getFullYear();


var dt=da+"/"+m+"/"+y;

document.f.t9.value=dt;
}
function dis()
{
	alert("Can Not Chage this");
	document.f.t10.focus();
}
</script>
<body onLoad="aa();">
	
		
	<div class="meta">

			
	</div>

	<div id="header">
	<a href="" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
		<li><a href="bid1.html">Back</a></li>
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
		String projectname="";
		String projecttype="";
		String projectdesc="";
		String uploaddate="";
		int duration=0;
		int amount=0;
		String cname="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from newproject where projectid='"+projectid+"'");	
		while(rs.next())
		{
				projecttype=rs.getString(3);
				projectname=rs.getString(2);
				projectdesc=rs.getString(4);
				uploaddate=rs.getString(5);
				duration=rs.getInt(6);
				amount=rs.getInt(7);
				cname=rs.getString(8); 
		}	
		%>
		<form name="f" method="post" action="bid3.jsp">
		<table>
		<tr>
			<td>Project Id
			<td><input type="text" name="t1"  value="<%=projectid%>" onfocus="dis();">
		</tr>
		<tr>
			<td>Project Name
			<td><input type="text" name="t2" value="<%=projectname%>" onfocus="dis();">
		</tr>
		<tr>
			<td>Project Type
			<td><input type="text" name="t3" value="<%=projecttype%>" onfocus="dis();">
			
		</tr>
		<tr>
			<td>Project Description
			<td><textarea rows=5 cols=15 name="t4" onfocus="dis();"><%=projectdesc%></textarea>
		</tr>
		<tr>
			<td>Upload Date
			<td><input type="text" name="t5" value="<%=uploaddate%>" onfocus="dis();">
		</tr>
		<tr>
			<td>Duration ( in Weeks )
			<td><input type="text" name="t6" value="<%=duration%>" onfocus="dis();">
		
		</tr>
		<tr>
			<td>Amount
			<td><input type="text" name="t7" value="<%=amount%>" onfocus="dis();">
		</tr>
		<tr>
			<td>Company Name
			<td><input type="text" name="t8" value="<%=cname%>" onfocus="dis();">
		</tr>
		<tr>
			<td>Bid Date
			<td><input type="text" name="t9" onfocus="dis();">
		</tr>
		<tr>
			<td>Bid Amount
			<td><input type="text" name="t10" required>
		</tr>
		<tr>
			<td><input type="submit" name="s" value="Bid">
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
