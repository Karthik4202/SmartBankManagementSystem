<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Smart Bank</title>
<style type="text/css">
/* ===== Body & Font ===== */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
    color: #333;
}

/* ===== Header ===== */
header {
    background-color: #004080;
    color: white;
    padding: 30px 0;
    text-align: center;
}

header h1 {
    margin: 0;
    font-size: 36px;
}

header p {
    margin: 5px 0 0 0;
    font-size: 16px;
}

/* ===== Main Content ===== */
.main-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: calc(100vh - 150px);
}

.card {
    background-color: white;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    text-align: center;
    max-width: 500px;
    width: 90%;
}

.card h2 {
    color: #004080;
    margin-bottom: 20px;
}

.card p {
    font-size: 16px;
    margin-bottom: 30px;
}

/* ===== Buttons ===== */
.button-group {
    display: flex;
    justify-content: center;
    gap: 20px;
}

.btn {
    padding: 12px 25px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: 500;
    transition: all 0.3s ease;
    color: white;
}

.btn-primary {
    background-color: #004080;
}

.btn-primary:hover {
    background-color: #00264d;
}

.btn-secondary {
    background-color: #0073e6;
}

.btn-secondary:hover {
    background-color: #0059b3;
}

/* ===== Footer ===== */
footer {
    background-color: #004080;
    color: white;
    text-align: center;
    padding: 15px 0;
    position: fixed;
    bottom: 0;
    width: 100%;
    font-size: 14px;
}

</style>
</head>

<body>

<header>
    <div class="header-container">
        <h1>Smart Bank</h1>
        <p>Your trusted banking partner</p>
    </div>
</header>

<main class="main-container">
    <div class="card">
        <h2>Welcome to Smart Bank Management System</h2>
        <p>Manage your accounts securely and efficiently.</p>
        <div class="button-group">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/customer/register">Register</a>
            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/customer/login">Login</a>
        </div>
    </div>
</main>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
