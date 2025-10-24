<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Balance</title>
</head>
<body>
<h3 align="right">
	<a href="${pageContext.request.contextPath}/account/backtoacc" style="text-decoration:none">dashboard</a>
</h3>
<h1 align="center">Welcome ${name} </h1> 
<h2 align="center">Your Account Balance : ${balance} </h2>
</body>
</html>