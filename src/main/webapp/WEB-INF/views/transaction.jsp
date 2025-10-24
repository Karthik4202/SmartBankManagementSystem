<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction</title>
</head>
<body>
<h1 align="center">Account DashBoard</h1><br/>
<h3 align="right">
<a href="${pageContext.request.contextPath}/account/backtoacc" style="text-decoration:none">Dashboard</a>
</h3>
<h2 align="center">
<a href="${pageContext.request.contextPath}/account/credittransactions" style="text-decoration:none">Credit Transactions</a><br><br>
<a href="${pageContext.request.contextPath}/account/debittransactions" style="text-decoration:none">Debit Transactions</a><br><br>
</h2>
</body>
</html>