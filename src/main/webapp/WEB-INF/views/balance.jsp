<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Balance</title>

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
    flex: 1; /* takes remaining space to push footer down */
    text-align: center;
}

/* Dashboard link */
.dashboard-link {
    text-align: right;
    margin-bottom: 30px;
}

.dashboard-link a {
    color: #004080;
    text-decoration: none;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 5px;
    border: 1px solid #004080;
    transition: all 0.3s ease;
}

.dashboard-link a:hover {
    background-color: #004080;
    color: white;
}

/* Headers */
h1 {
    color: #004080;
    margin-bottom: 20px;
}

h2 {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    display: inline-block;
    font-size: 24px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    color: #004080;
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
    <!-- Dashboard link -->
    <div class="dashboard-link">
        <a href="${pageContext.request.contextPath}/account/backtoacc">dashboard</a>
    </div>

    <!-- Welcome -->
    <h1>Welcome ${name}</h1>

    <!-- Balance -->
    <h2>Your Account Balance : ${balance}</h2>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
