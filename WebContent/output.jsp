<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OUTPUT</title>
</head>
<body>
<center>

	<%
		String s = request.getParameter("query");
		System.out.println(s);
	%>
	OUTPUT :
	<br> string is : <%=s%><br><br>
	

	<p style="color: red">
		<%
		String url = "jdbc:mysql://localhost:3306/vd";
		String username = "root";
		String password = "";
		// 		String sql = "select * from contacts where sno=18";
		String sql = s;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery(sql);
		rs.next();
		%>

		
		Serial Number : <%= rs.getString(1) %> <br>
		Name : <%= rs.getString(2) %> <br>
		Phone Number : <%= rs.getString(3) %> <br>
		Message : <%= rs.getString(4) %> <br>
		Date : <%= rs.getString(5) %> <br>
		E-mail : <%= rs.getString(6) %> <br>
	</p>

</center>
</body>
</html>