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

	<p><a href="flchangepass.html">Change Pass</a> | <a href="logout.jsp">Logout</a></p> 		
	</div>

	<div id="header">
	<a href="index.html" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
		<li><a href="homepage.jsp">Home</a></li>
		<li><a href="searchproject.html">Search Project</a></li>
		<li><a href="bid1.html">Bid Project</a></li>
		<li><a href="uploadprofile.html">Upload Profile</a></li>
		<li><a href="flupdate1info.jsp">Update Info</a></li>
		<li><a href="viewbid.jsp">View Bid</a></li>
		
		
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
		<%
		String x=(String)session.getAttribute("un");
		%>
		
			
		<center>
		<h2>Welcome <%=x%></h2>
		</center>
		</div>
	<div id="footer">
		
		Copyright &copy;. All rights reserved.																																														
	</div>
</div>
</body>
</html>