<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
</head>
<body>
<form action="saveaccdetails" method="post">
<h1 align="center">Account Details</h1><br/>
<h3 align="right">
	<a href="${pageContext.request.contextPath}/account/backtohome" style="text-decoration:none">Home</a>
</h3>
	<table border="0" align="center">
		<tr>
			<td>Account ID : </td>
			<td><input type="number" name="id" value="${account.id}" readonly></td>
		</tr>
		<tr>
			<td>Account Number : </td>
			<td><input type="number" name="accountNumber" value="${account.accountNumber}" readonly></td>
		</tr>
		<tr>
			<td>Password : </td>
			<td><input type="text" name="password" value="${account.password}"></td>
		</tr>
		<tr>
			<td>Balance : </td>
			<td><input type="number" name="balance" value="${account.balance}" readonly></td>
		</tr>
		<tr>
		<td></td>
		<td><input type="submit" value="Save" ></td>
		</tr>
	</table>
</form>
</body>
</html>