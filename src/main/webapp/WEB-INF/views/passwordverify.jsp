<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Email Validation</title>
</head>
<body>
<form action="passwordverify" method="post">
<h2 align="center">OTP has been sent to your registered email, Please enter below</h2>
<table align="center">
	<tr>
		<td><input type="text" name="otp" minlength="4" maxlength="4" required></td>
	</tr>
	<tr>
		<td><input type="submit" value="Submit"></td>
	</tr>
</table>
</form>
<h2 align="center"> ${incorrect} </h2>
</body>
</html>