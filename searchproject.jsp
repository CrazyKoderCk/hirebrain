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
		<li><a href="searchproject.html">Back</a></li>
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
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		String cnd=request.getParameter("r");
		if(cnd.equals("a"))
		{
			String projecttype=request.getParameter("c1");
			String projectid="";
			String projectname="";
			String projectdesc="";
			String uploaddate="";
			int duration=0;
			int amount=0;
			String cname="";
			Statement st1=con.createStatement();
			ResultSet rs1=st1.executeQuery("select *from newproject where projecttype='"+projecttype				+"'");
			%>
			<table border=1>
			<caption><b>Project Details</b></caption>
			<tr>
				<td>Project Id
				<td>Project Name
				<td>Project Type
				<td>Project Description
				<td>Upload Date
				<td>Duration
				<td>Amount
				<td>Company Name
			</tr>
			<%
			while(rs1.next())
			{
				projectid=rs1.getString(1);
				projectname=rs1.getString(2);
				projectdesc=rs1.getString(4);
				uploaddate=rs1.getString(5);
				duration=rs1.getInt(6);
				amount=rs1.getInt(7);
				cname=rs1.getString(8); 
				out.print("<tr>");
					out.print("<td>"+projectid);
					out.print("<td>"+projectname);
					out.print("<td>"+projecttype);
					out.print("<td>"+projectdesc);
					out.print("<td>"+uploaddate);
					out.print("<td>"+duration);
					out.print("<td>"+amount);
					out.print("<td>"+cname);
					out.print("</tr>");
			}
			%>
					
			</table>
			<%
		}
		else if(cnd.equals("b"))
		{	
			int duration1=Integer.parseInt(request.getParameter("c2"));
			int duration2=Integer.parseInt(request.getParameter("c3"));
			
			String projectid="";
			String projectname="";
			String projecttype="";
			String projectdesc="";
			String uploaddate="";
			int duration=0;
			int amount=0;
			String cname="";
			Statement st2=con.createStatement();
			ResultSet rs2=st2.executeQuery("select * from newproject where duration>="+duration1+" 			and duration<="+duration2+"");
			%>
			<table border=1>
			<caption><b>Project Details</b></caption>
			<tr>
				<td>Project Id
				<td>Project Name
				<td>Project Type
				<td>Project Description
				<td>Upload Date
				<td>Duration
				<td>Amount
				<td>Company Name
			</tr>
			<%
			while(rs2.next())
			{
				projectid=rs2.getString(1);
				projectname=rs2.getString(2);
				projecttype=rs2.getString(3);
				projectdesc=rs2.getString(4);
				uploaddate=rs2.getString(5);
				duration=rs2.getInt(6);
				amount=rs2.getInt(7);
				cname=rs2.getString(8);
				out.print("<tr>");
					out.print("<td>"+projectid);
					out.print("<td>"+projectname);
					out.print("<td>"+projecttype);
					out.print("<td>"+projectdesc);
					out.print("<td>"+uploaddate);
					out.print("<td>"+duration);
					out.print("<td>"+amount);
					out.print("<td>"+cname);
					out.print("</tr>");
			}
			%>
			
			
			</table>
			<%
		}
		else if(cnd.equals("c"))
		{	
			int amount1=Integer.parseInt(request.getParameter("c4"));
			int amount2=Integer.parseInt(request.getParameter("c5"));
			String projectid="";
			String projectname="";
			String projecttype="";
			String projectdesc="";
			String uploaddate="";
			int duration=0;
			int amount=0;
			String cname="";
			Statement st3=con.createStatement();
			ResultSet rs3=st3.executeQuery("select *from newproject where amount>="+amount1+" and 			amount<="+amount2+"");
			%>
			<table border=1>
			<caption><b>Project Details</b></caption>
			<tr>
				<td>Project Id
				<td>Project Name
				<td>Project Type
				<td>Project Description
				<td>Upload Date
				<td>Duration
				<td>Amount
				<td>Company Name
			</tr>
			<%
			while(rs3.next())
			{
				projectid=rs3.getString(1);
				projectname=rs3.getString(2);
				projecttype=rs3.getString(3);
				projectdesc=rs3.getString(4);
				uploaddate=rs3.getString(5);
				amount=rs3.getInt(7);
				duration=rs3.getInt(6);
				cname=rs3.getString(8);
				out.print("<tr>");
				out.print("<td>"+projectid);
				out.print("<td>"+projectname);
				out.print("<td>"+projecttype);
				out.print("<td>"+projectdesc);
				out.print("<td>"+uploaddate);
				out.print("<td>"+duration);
				out.print("<td>"+amount);
				out.print("<td>"+cname);
				out.print("</tr>");
			}
			%>
			
				
			</table>
			<%
		}
		else
		{
			
			String projectid="";
			String projectname="";
			String projecttype="";
			String projectdesc="";
			String uploaddate="";
			int duration=0;
			int amount=0;
			String cname="";
			Statement st2=con.createStatement();
			ResultSet rs2=st2.executeQuery("select *from newproject");
			%>
			<table border=1>
			<caption><b>Project Details</b></caption>
			<tr>
				<td>Project Id
				<td>Project Name
				<td>Project Type
				<td>Project Description
				<td>Upload Date
				<td>Duration
				<td>Amount
				<td>Company Name
			</tr>
			<%
				while(rs2.next())
				{
					
					projectid=rs2.getString(1);
					projectname=rs2.getString(2);
					projecttype=rs2.getString(3);
					projectdesc=rs2.getString(4);
					uploaddate=rs2.getString(5);
					duration=rs2.getInt(6);
					amount=rs2.getInt(7);
					cname=rs2.getString(8);
					out.print("<tr>");
					out.print("<td>"+projectid);
					out.print("<td>"+projectname);
					out.print("<td>"+projecttype);
					out.print("<td>"+projectdesc);
					out.print("<td>"+uploaddate);
					out.print("<td>"+duration);
					out.print("<td>"+amount);
					out.print("<td>"+cname);
					out.print("</tr>");
				}
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
