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
		<li><a href="homepage.jsp">Back</a></li>
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
		String fn1=(String)session.getAttribute("un");
		
		String projectid="";
		String projectname="";
		String projecttype="";
		String projectdesc="";
		String uploaddate="";
		int duration=0;
		int amount=0;
		String cname="";
		String biddate="";
		int bidamount=0;
		String fname="";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from bidproject where fname='"+fn1+"'");	
		
		%>
		
		<table border=1>
		<caption>Bid Applied by <%=fn1%></caption>
		<tr>
				<td>Project Id
				<td>Project Name
				<td>Project Type
				<td>Project Description
				<td>Upload Date
				<td>Duration
				<td>Amount
				<td>Company Name
				<td>Bid Date
				<td>Bid Amount
				
				
				
		</tr>
		<%
			while(rs.next())
			{
				projectid=rs.getString(1);
				projectname=rs.getString(2);
				projectdesc=rs.getString(4);
				uploaddate=rs.getString(5);
				duration=rs.getInt(6);
				amount=rs.getInt(7);
				cname=rs.getString(8);
				biddate=rs.getString(9);
				bidamount=rs.getInt(10);
				
					 
				out.print("<tr>");
				out.print("<td>"+projectid);
				out.print("<td>"+projectname);
				out.print("<td>"+projecttype);
				out.print("<td>"+projectdesc);
				out.print("<td>"+uploaddate);
				out.print("<td>"+duration);
				out.print("<td>"+amount);
				out.print("<td>"+cname);
				out.print("<td>"+biddate);
				out.print("<td>"+bidamount);
				
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
