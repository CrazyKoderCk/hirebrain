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

	document.f.t8.value=dt;
}
function bb()
{
	alert("can not change this");
	document.f.s.focus();
}
</script>

<body onLoad="aa();">
	
		
	<div class="meta">

			
	</div>

	<div id="header">
	<a href="" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
		<li><a href="companyhomepage.jsp">Home Page</a></li>
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
		String username="";	
		String accountno="";	
		String bankname="";	
		String branch="";	
		String ifsccode="";	
		String amount="";	
		String remarks="";	
		String paymentdate="";
		String x="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		%>	
		<form name="f" method="post" action="payment2.jsp">
		<table>
		<tr>
			<td>User Name
			<td><select name="t1">
			<%
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from freelancer");
				while(rs.next())
				{
					x=rs.getString(1);
					out.print("<option value="+x+">"+x);
				}
			%>
			</select>
		</tr>
		<tr>
			<td>Account Number
			<td><input type="text" name="t2" required>
		</tr>
		<tr>
			<td>Bank Name
			<td><input type="text" name="t3" required>
		</tr>
		<tr>
			<td>Branch
			<td><input type="text" name="t4" required>
		</tr>
		<tr>
			<td>IFSC Code
			<td><input type="text" name="t5" required>
		</tr>
		<tr>
			<td>Amount
			<td><input type="text" name="t6" required>
		</tr>
		<tr>
			<td>Remarks
			<td><input type="text" name="t7" required>
		</tr>
		<tr>
			<td>Payment Date
			<td><input type="text" name="t8" onfocus="bb();">
		</tr>
		<tr>
			<td><input type="submit" name="s" value="Pay">
			
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
