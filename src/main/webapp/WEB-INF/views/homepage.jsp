<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>

<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    color: #333;
}

/* Container */
.container {
    width: 90%;
    max-width: 800px;
    margin: 60px auto 20px auto;
    text-align: center;
}

/* Logout link */
.logout-link {
    text-align: right;
    margin: 10px 0;
}

.logout-link a {
    text-decoration: none;
    color: #004080;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 5px;
    border: 1px solid #004080;
    transition: all 0.3s ease;
}

.logout-link a:hover {
    background-color: #004080;
    color: white;
}

/* Header */
h1 {
    color: #004080;
    margin-bottom: 40px;
}

/* Links */
h2 a {
    display: inline-block;
    margin: 15px 0;
    text-decoration: none;
    color: white;
    background-color: #004080;
    padding: 12px 25px;
    border-radius: 8px;
    transition: 0.3s ease;
}

h2 a:hover {
    background-color: #003366;
}

/* Footer */
footer {
    background-color: #004080;
    color: white;
    text-align: center;
    padding: 15px 0;
    font-size: 14px;
    margin-top: auto;
}
</style>

</head>
<body>

<div class="container">

    <!-- Logout link -->
    <div class="logout-link">
        <a href="${pageContext.request.contextPath}/admin/logout">logout</a>
    </div>

    <!-- Header -->
    <h1>Welcome Admin</h1>

    <!-- Links -->
    <h2>
        <a href="${pageContext.request.contextPath}/admin/allcustomers">View All Customers</a><br>
        <a href="${pageContext.request.contextPath}/admin/allaccounts">View All Accounts</a><br>
        <a href="${pageContext.request.contextPath}/admin/reviewloans">Review Loans</a>
    </h2>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
