<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
</head>
<body>
<h2 align="center">Reset Password</h2>
<form action="resetpassword" method="post">
<table align="center">
<tr></tr>
<tr>
	<td>Enter New Password : </td>
	<td><input type="password" name="newpassword"  maxlength="20" required></td>
</tr>
<tr>
	<td>Confirm Password : </td>
	<td><input type="password" name="confirmpassword" maxlength="20" required></td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" name="Change Password"></td>
</tr>
</table>
</form>
<h2 align="center"> ${msg} </h2>
</body>
</html>