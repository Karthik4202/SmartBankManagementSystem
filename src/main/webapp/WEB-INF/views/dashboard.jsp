<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Dashboard</title>
</head>
<body>
<h1 align="center">Account DashBoard</h1><br/>
<h3 align="right">
	<a href="${pageContext.request.contextPath}/account/backtohome" style="text-decoration:none">Home</a>
</h3>
<h2 align="center">
		<a href="${pageContext.request.contextPath}/account/viewbalance" style="text-decoration:none">View Balance</a><br><br>
		<a href="${pageContext.request.contextPath}/account/transactions" style="text-decoration:none" >Transactions</a><br><br>
		<a href="${pageContext.request.contextPath}/account/loanstatus"  style="text-decoration:none">Loan Status</a>
</h2>
</body>
</html>