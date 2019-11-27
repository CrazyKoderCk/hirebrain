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
		<li><a href="companyhomepage.jsp">Home Page</a></li>
		<li><a href="newpro.jsp">New Project</a></li>
		<li><a href="update1project.jsp">Update Project</a></li>
		<li><a href="delete1project.jsp">Delete Project</a></li>
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
		<%
		String x=(String)session.getAttribute("cun");
		String y=(String)session.getAttribute("cn");
		%>
		<h2>Welcome <%=y%></h2>
		<hr>
		</center>
		</div>
	<div id="footer">
		
		Copyright &copy;. All rights reserved.																																														
	</div>
</div>
</body>
</html>