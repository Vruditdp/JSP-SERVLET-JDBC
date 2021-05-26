<!DOCTYPE html>
<html>
<head>
<title>Testing</title>
<style type="text/css">
.red{
color:red;
}
.green{color:#6B8E23;}
div { width:420px; padding:10px; border:5px solid gray; margin:0; border-radius:25px;}
</style>
</head>

<body>
		<center><div>
		<form action="add.jsp"> 
	    <form action="add">  
		<br><br>
		<center>Enter 1st number : <input type="text" name="num1" required="required"></center><br><br>
		<center>Enter 2nd number : <input type="text" name="num2" required="required"></center><br><br>
		<center><input type="submit"></center><br><br>
		</form>
		</div></center><br>
		<h3 class="red"><marquee direction="right" behavior="alternate" scrollamount="10">We are thanking you for using our services</marquee></h3> 
		<center>
		<form action="jdbc.jsp">
<!-- 		<h3 style="color: #731768;">If you wany to use our other services, please click below button</h3> -->
		<h3 class="green">If you want to use our other services, please click below button</h3>
		<input type="submit" value="Other Services">
		</form>
		</center>
		
</body>
</html>