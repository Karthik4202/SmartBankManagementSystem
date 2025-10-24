<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fund Transfer</title>
</head>
<body>
<h1 align="center">Fund Transfer</h1>
<h3 align="right">
<a href="${pageContext.request.contextPath}/account/backtohome" style="text-decoration:none">Home</a>
</h3>
	<form action="fundtransfer" method="post">
		<table align="center">
			<tr>
				<td>Enter Reciever's Account Number : </td>
				<td><input type="number" name="accNum" required></td>
			<tr>
			<tr>
				<td>Enter Amount : </td>
				<td><input type="number" name="amount" min="1"></td>
			<tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Send"></td>
			<tr>
		</table>
	</form>
	<h2 align="center"> ${notFound} ${insufficient} ${success} ${reciever}</h2>
</body>
</html>