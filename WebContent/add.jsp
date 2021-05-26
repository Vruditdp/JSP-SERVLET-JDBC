<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addition</title>
</head>
<body>
<center><p style="color:red">
<%
int i=Integer.parseInt(request.getParameter("num1"));
int j=Integer.parseInt(request.getParameter("num2"));

int k=i+j;

out.println("our result is : "+ (k*k));

%>

<br><br>
<%
out.println("Although, Still We are not happy...");
out.println(" We need more improvement. ");
%>
</p></center>
</body>
</html>