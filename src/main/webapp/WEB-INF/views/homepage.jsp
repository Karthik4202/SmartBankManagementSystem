<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>
<h3 align="right">
	<a href="${pageContext.request.contextPath}/admin/logout" style="text-decoration:none">logout</a>
</h3>
	<h1 align="center">Welcome Admin</h1>
	<h2 align="center">
	<a href="${pageContext.request.contextPath}/admin/allcustomers" style="text-decoration:none">View All Customers</a><br><br>
	<a href="${pageContext.request.contextPath}/admin/allaccounts" style="text-decoration:none">View All Accounts</a><br><br>
	<a href="${pageContext.request.contextPath}/admin/reviewloans" style="text-decoration:none">Review Loans</a><br><br>
	</h2>
</body>
</html>