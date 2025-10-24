<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<h3 align="right">
<a href="${pageContext.request.contextPath}/customer/logout" style="text-decoration:none">logout</a>
</h3>
<h1 align="center"> Welcome ${name} </h1>
<h2 align="center">
<a href="${pageContext.request.contextPath}/customer/mydetails" class="customer" style="text-decoration:none">My Details</a><br><br>
<a href="${pageContext.request.contextPath}/customer/dashboard" class="customer" style="text-decoration:none">Account Dashboard</a><br><br>
<a href="${pageContext.request.contextPath}/account/fundtransfer" class="customer" style="text-decoration:none">Fund Transfer</a><br><br>
<a href="${pageContext.request.contextPath}/account/ministatement"  style="text-decoration:none">Mini Statement</a><br><br>
<a href="${pageContext.request.contextPath}/account/applyloan"  style="text-decoration:none">Loan Application</a><br><br>
</h2>
</body>
</html>