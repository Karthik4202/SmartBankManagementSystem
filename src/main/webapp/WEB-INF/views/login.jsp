<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
/* ===== Body & Font ===== */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
    color: #333;
}

/* ===== Header ===== */
h1[align="center"] {
    color: #004080;
    text-align: center;
    margin-top: 40px;
    font-size: 36px;
}

/* ===== Form Table ===== */
form table {
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    margin-top: 20px;
}

table td {
    padding: 10px 5px;
}

/* ===== Inputs ===== */
input[type="number"], input[type="password"] {
    width: 100%;
    padding: 8px 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* ===== Submit Button ===== */
input[type="submit"] {
    padding: 12px 25px;
    background-color: #004080;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: 500;
    transition: all 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #00264d;
}

/* ===== Links ===== */
a {
    color: #0073e6;
    text-decoration: none;
    font-weight: 500;
}

a:hover {
    text-decoration: underline;
}

/* ===== Messages ===== */
h2[align="center"], h3[align="center"] {
    color: #004080;
    margin-top: 20px;
}

/* ===== Center Form Container ===== */
form {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

/* ===== Footer Simulation ===== */
body::after {
    content: "© 2025 Smart Bank. All rights reserved.";
    display: block;
    text-align: center;
    background-color: #004080;
    color: white;
    padding: 15px 0;
    position: relative;
    margin-top: 40px;
    font-size: 14px;
}
</style>

</head>
<body>

<h1 align="center">Login</h1>
	<form action="login" method="post">

		<table align="center">

			<tr>
				<td>Enter AccountNumber : </td>
				<td><input type="number" name="accountNumber" required></td>
			</tr>
			<tr>
				<td>Enter Password : </td>
				<td><input type="password" name="password" required></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>

	</form>
	<h3 align="center">Forgot Password ? <a href="${pageContext.request.contextPath}/customer/forgotpassword" style="text-decoration:none">Click Here</a></h3>
	<h2 align="center"> ${msg} </h2><br>
	<h2 align="center">New user? <a href="${pageContext.request.contextPath}/customer/register" style="text-decoration:none">Register</a> </h2>
	
</body>
</html>
