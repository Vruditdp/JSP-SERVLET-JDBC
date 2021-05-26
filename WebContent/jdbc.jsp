<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JDBC</title>
<style type="text/css">
div {
	width: 325px;
	padding: 10px;
	border: 5px solid gray;
	margin: 0;
	border-radius: 25px;
}
</style>
</head>
<body>

	<center>
	<h1 style="color: #731768;">This is JDBC</h1>
	<br>
	<br>

 	<form>
<!-- 	<form action="output.jsp"> -->
		<b>Input :</b> <br><br>
		<input type="text" name="query" size="40" required="required"><br><br>
		<input type="submit"><br>
	</form>
	<br>
	
	
	
	<% 
		String str=request.getParameter("query");
		
		if(str!=null)
		{
			String sql = str;
			
			String url = "jdbc:mysql://localhost:3306/vd";
			String username = "root";
			String password = "";
			// 		String sql = "select * from contacts where sno=18";
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery(sql);
			rs.next();
			System.out.println(rs);
			out.println("<div>");
			out.println("<p style=\"color: #CC0066; font-family:Comic Sans MS;\">");
			out.println("Serial Number : "+rs.getString(1));
			out.println("<br>");
			out.println("Name : "+rs.getString(2));
			out.println("<br>");
			out.println("Phone Number : "+rs.getString(3));
			out.println("<br>");
			out.println("Message : "+rs.getString(4));
			out.println("<br>");
			out.println("Date : "+rs.getString(5));
			out.println("<br>");
			out.println("E-mail : "+rs.getString(6));
			out.println("<br>");
			out.println("</p>");
			out.println("</div>");
			
		}
	
	%>	
	
	
	
	</center>
	
	
	
	
</body>
</html>