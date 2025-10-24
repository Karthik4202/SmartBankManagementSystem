<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset</title>
</head>
<body>
	<h1 align="center">
		Welcome ${name }
	</h1>
	<h2 align="center">
		This is your AccountNumber : ${accountNumber} 
	</h2>
	<h2 align="center">
		Your Password : ${password} 
	</h2>
	<h2 align="center">Please Reset your Password</h2>

	<form action="reset" method="post">
		<table align="center">
			<tr>
				<td>Enter Current Password :</td>
				<td><input type="password" name="currentPassword" required></td>
			</tr>
			<tr>
				<td>Enter New Password :</td>
				<td><input type="password" name="newPassword" required></td>
			</tr>
			<tr>
				<td>Confirm Password :</td>
				<td><input type="password" name="confirmPassword" required></td>
			</tr>
			<tr>
			<td></td>
			<td><input type="submit" value="reset"></td>
			</tr>
		</table>
	</form>
	
	<h1 align="center"> ${msg} </h1>
</body>
</html>