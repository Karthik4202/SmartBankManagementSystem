<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
/* ===== Body & Font ===== */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
    color: #333;
}

/* ===== Container ===== */
.container {
    width: 90%;
    max-width: 800px;
    margin: 50px auto;
    text-align: center;
}

/* ===== Logout Link ===== */
.logout {
    display: flex;
    justify-content: flex-end;
    margin-bottom: 30px;
}

.logout a {
    color: #004080;
    text-decoration: none;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 5px;
    border: 1px solid #004080;
    transition: all 0.3s ease;
}

.logout a:hover {
    background-color: #004080;
    color: white;
}

/* ===== Welcome Header ===== */
h1 {
    color: #004080;
    margin-bottom: 40px;
}

/* ===== Links Section ===== */
.link-card {
    display: flex;
    flex-direction: column;
    gap: 15px;
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
}

.link-card a {
    text-decoration: none;
    color: #004080;
    font-weight: 500;
    font-size: 18px;
    padding: 12px 20px;
    border: 1px solid #004080;
    border-radius: 5px;
    transition: all 0.3s ease;
}

.link-card a:hover {
    background-color: #004080;
    color: white;
}

/* ===== Footer ===== */
footer {
    background-color: #004080;
    color: white;
    text-align: center;
    padding: 15px 0;
    font-size: 14px;
    margin-top: 50px;
}
</style>

</head>
<body>

<div class="container">
    <div class="logout">
        <a href="${pageContext.request.contextPath}/customer/logout">Logout</a>
    </div>

    <h1>Welcome ${name}</h1>

    <div class="link-card">
        <a href="${pageContext.request.contextPath}/customer/mydetails" class="customer">My Details</a>
        <a href="${pageContext.request.contextPath}/customer/dashboard" class="customer">Account Dashboard</a>
        <a href="${pageContext.request.contextPath}/account/fundtransfer" class="customer">Fund Transfer</a>
        <a href="${pageContext.request.contextPath}/account/ministatement">Mini Statement</a>
        <a href="${pageContext.request.contextPath}/account/applyloan">Loan Application</a>
    </div>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
