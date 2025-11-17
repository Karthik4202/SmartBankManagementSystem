<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>No Data</title>

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
    text-align: center;
    margin: 100px auto 20px auto;
    flex: 1;
}

/* Home link */
.home-link a {
    text-decoration: none;
    color: #004080;
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

/* Message */
h1 {
    color: #004080;
    margin-top: 50px;
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
    <div class="home-link">
        <a href="${pageContext.request.contextPath}/account/backtohome">Home</a>
    </div>

    <h1>${msg}</h1>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
