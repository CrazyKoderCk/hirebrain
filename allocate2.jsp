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
	document.f.s.focus();
}
function bb()
{
	var d=new Date();

	var da=d.getDate();

	var m=d.getMonth();
	m++;

	var y=d.getFullYear();


	var dt=da+"/"+m+"/"+y;

	document.f.t9.value=dt;
}


</script>
<body onLoad="bb();">
	
		
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
		
		String x="";
		String projectid=request.getParameter("projectid");
		String projectname="";
		String projecttype="";
		String projectdesc="";
		int duration=0;
		int amount=0;
		String cname="";
		String biddername="";
		String allocatedate="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from bidproject where projectid='"+projectid+"'");
		while(rs.next())
		{
			projectname=rs.getString(2);
			projecttype=rs.getString(3);
			projectdesc=rs.getString(4);
			duration=rs.getInt(5);
			amount=rs.getInt(6);
			cname=rs.getString(7);
			
		}		
		%>
		<form name="f" method="post" action="allocate3.jsp">
		<table>
		<tr>
			<td>Project Id
			<td><input type="text" name="t1" value="<%=projectid%>" onfocus="aa();">
		</tr>
		<tr>
			<td>Project Name
			<td><input type="text" name="t2" value="<%=projectname%>" onfocus="aa();">
		</tr>
		<tr>
			<td>Project Type
			<td><input type="text" name="t3" value="<%=projecttype%>">
				
		</tr>
		<tr>
			<td>Project Description
			<td><textarea rows=5 cols=15 name="t4" onfocus="aa();"><%=projectdesc%></textarea>
		</tr>
		
		<tr>
			<td>Duration
			<td><input type="text" name="t5"  value="<%=projecttype%>" onfocus="aa();">
			
		</tr>
		<tr>
			<td>Amount
			<td><input type="text" name="t6" value="<%=amount%>" onfocus="aa();">
		</tr>
		<tr>
			<td>Company Name
			<td><input type="text" name="t7" value="<%=cname%>" onfocus="aa();">
		</tr>
		<tr>
			<td>Bidder Name
			<td><select name="t8">
			<%
				Statement st1=con.createStatement();
		ResultSet rs1=st1.executeQuery("select * from bidproject where projectid='"+projectid+"'");
		while(rs1.next())
		{
			x=rs1.getString(11);
			out.print("<option value="+x+">"+x);
		}		
				
				
					
				
			%>
			</select>			
		</tr>
		<tr>
			<td>Allocate Date
			<td><input type="text" name="t9" onfocus="aa();">
		</tr>
		<tr>
			<td><input type="submit" name="s" value="Allocate">
			
					
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
