<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8" />
<title>Account Dashboard</title>

<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
    color: #333;

    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

/* Container */
.container {
    width: 90%;
    max-width: 700px;
    margin: 50px auto;
    flex: 1; /* fills remaining space to push footer down */
}

/* Home Link */
.home-link {
    text-align: right;
    margin-bottom: 20px;
}

.home-link a {
    color: #004080;
    text-decoration: none;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 5px;
    border: 1px solid #004080;
    transition: all 0.3s ease;
}

.home-link a:hover {
    background-color: #004080;
    color: white;
}

/* Header */
h1 {
    text-align: center;
    color: #004080;
    margin-bottom: 40px;
}

/* Dashboard Links */
.dashboard-links {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 20px;
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
}

.dashboard-links a {
    text-decoration: none;
    color: #004080;
    font-size: 18px;
    font-weight: 500;
    padding: 12px 25px;
    border: 1px solid #004080;
    border-radius: 5px;
    transition: all 0.3s ease;
}

.dashboard-links a:hover {
    background-color: #004080;
    color: white;
}

/* Footer */
footer {
    background-color: #004080;
    color: white;
    text-align: center;
    padding: 15px 0;
    font-size: 14px;
}
</style>
</head>
<body>

<div class="container">
    <!-- Home Link -->
    <div class="home-link">
        <a href="${pageContext.request.contextPath}/account/backtohome">Home</a>
    </div>

    <!-- Header -->
    <h1>Account DashBoard</h1>

    <!-- Dashboard Links -->
    <div class="dashboard-links">
        <a href="${pageContext.request.contextPath}/account/viewbalance">View Balance</a>
        <a href="${pageContext.request.contextPath}/account/transactions">Transactions</a>
        <a href="${pageContext.request.contextPath}/account/loanstatus">Loan Status</a>
    </div>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
