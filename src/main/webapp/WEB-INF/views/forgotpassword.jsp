<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

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
    max-width: 500px;
    margin: 80px auto 20px auto;
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    text-align: center;
}

/* Form elements */
input[type="email"], input[type="submit"] {
    width: 80%;
    padding: 10px;
    margin: 10px 0;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 16px;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #004080;
    color: white;
    cursor: pointer;
    border: none;
    transition: 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #003366;
}

/* Headers */
h2 {
    color: #004080;
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
    <h2>Enter Your Registered Email</h2>
    <form action="forgotpassword" method="post">
        <input type="email" name="email" required><br><br>
        <input type="submit" value="Submit">
    </form>
    <h2>${msg}</h2>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
