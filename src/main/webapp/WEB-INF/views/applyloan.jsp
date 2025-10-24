<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loan Application</title>
</head>
<body>
<h1 align="center">Loan Application</h1>
<h3 align="right">
	<a href="${pageContext.request.contextPath}/account/backtohome" style="text-decoration:none">Home</a>
</h3>
<form action="applyloan" method="post">
<table align="center">
	<tr>
		<td>Loan Amount : </td>
		<td><input type="number" name="loanAmount" min="50000" max="1000000" required></td>
	</tr>
	<tr>
		<td>Loan Type : </td>
		<td><input type="text" name="loanType" required></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="Submit"></td>
	</tr>
</table>
</form>
<h2 align="center">${applied}</h2>
</body>
</html>