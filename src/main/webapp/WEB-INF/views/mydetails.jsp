<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Details</title>

<style>
/* ===== Body & Font ===== */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
    color: #333;

    /* Flex layout to push footer to bottom */
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

/* ===== Container ===== */
.container {
    width: 90%;
    max-width: 700px;
    margin: 50px auto;
    flex: 1; /* Make container take remaining space */
}

/* ===== Home Link ===== */
h3[align="right"] a {
    color: #004080;
    text-decoration: none;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 5px;
    border: 1px solid #004080;
    transition: all 0.3s ease;
}

h3[align="right"] a:hover {
    background-color: #004080;
    color: white;
}

/* ===== Header ===== */
h1 {
    color: #004080;
    text-align: center;
    margin-bottom: 30px;
}

/* ===== Links Card ===== */
.link-card {
    display: flex;
    flex-direction: column;
    gap: 20px;
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
}
</style>

</head>
<body>

<div class="container">
    <h1>My Details</h1>
    
    <h3 align="right">
        <a href="${pageContext.request.contextPath}/account/backtohome">Home</a>
    </h3>

    <div class="link-card">
        <a href="${pageContext.request.contextPath}/customer/personalinfo">Personal Info</a>
        <a href="${pageContext.request.contextPath}/account/accdetails">Account Details</a>
    </div>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
