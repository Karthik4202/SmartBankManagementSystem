<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
</head>
<body>
<h2 align="center">Enter Your Registered Email</h2>
<form action="forgotpassword" method="post" align="center">
	<input type="email" name="email" required><br><br>
	<input type="submit" value="Submit">
</form>
<h2 align="center"> ${msg}</h2>
</body>
</html>