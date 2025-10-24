<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>verify</title>
</head>
<body>
<form action="verify" method="post">
<h2 align="center"> ${msg} </h2>
<h2 align="center"> ${incorrect} </h2>
<table align="center">
	<tr>
		<td>Please Enter The OTP Below </td>
	</tr>
	<tr>
		<td><input type="text" name="otp" minlength="4" maxlength="4" required></td>
	</tr>
	<tr>
		<td><input type="submit" value="Submit"></td>
	</tr>
</table>
</form>
</body>
</html>