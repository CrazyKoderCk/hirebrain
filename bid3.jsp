	
		<%@ page import="java.sql.*"%>
		<% 
		String fname=(String) session.getAttribute("un");
		String projectid=request.getParameter("t1");
		String projectname=request.getParameter("t2");
		String projecttype=request.getParameter("t3");
		String projectdesc=request.getParameter("t4");
		String uploaddate=request.getParameter("t5");
		String duration=request.getParameter("t6");
		String amount=request.getParameter("t7");
		String cname=request.getParameter("t8");
		String biddate=request.getParameter("t9");
		int bidamount=Integer.parseInt(request.getParameter("t10"));
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hb","root","");
		Statement st=con.createStatement();
		String sql="insert into bidproject values('"+projectid+"','"+projectname+"','"+projecttype+"','"+projectdesc+"','"+uploaddate+"','"+duration+"','"+amount+"','"+cname+"','"+biddate+"',"+bidamount+",'"+fname+"')";		
		st.executeUpdate(sql);
		
		response.sendRedirect("homepage.jsp");
		%>
