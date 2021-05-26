<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<%
	
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		
		
		 if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		} 
	%>
		<h1 style="color: #731768;"> Welcome ${username} </h1><br><br>
		
		<a href="videos.jsp">Videos is available here. </a><br><br><br>
		
		<h5>If you want to use extra services :</h5><br><br>
		<form action="inter.jsp">
		<input type="submit" value="Extra Services">
		</form> <br><br><br>
		
		<form action="Logout">
			<input type="submit" value="Logout">
		</form>

</center>		
</body>
</html>