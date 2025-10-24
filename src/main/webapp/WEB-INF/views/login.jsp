<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<h1 align="center">Login</h1>
	<form action="login" method="post">

		<table align="center">

			<tr>
				<td>Enter AccountNumber : </td>
				<td><input type="number" name="accountNumber" required></td>
			</tr>
			<tr>
				<td>Enter Password : </td>
				<td><input type="password" name="password" required></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>

	</form>
	<h3 align="center">Forgot Password ? <a href="${pageContext.request.contextPath}/customer/forgotpassword" style="text-decoration:none">Click Here</a></h3>
	<h2 align="center"> ${msg} </h2><br>
	<h2 align="center">New user? <a href="${pageContext.request.contextPath}/customer/register" style="text-decoration:none">Register</a> </h2>
	
</body>
</html>