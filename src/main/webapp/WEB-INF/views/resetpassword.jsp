<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>

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
    max-width: 450px;
    margin: 80px auto 20px auto;
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    text-align: center;
}

/* Form inputs */
input[type="password"], input[type="submit"] {
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
    <h2>Reset Password</h2>

    <form action="resetpassword" method="post">
        <input type="password" name="newpassword" placeholder="Enter New Password" maxlength="20" required><br>
        <input type="password" name="confirmpassword" placeholder="Confirm Password" maxlength="20" required><br>
        <input type="submit" value="Change Password">
    </form>

    <h2>${msg}</h2>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
