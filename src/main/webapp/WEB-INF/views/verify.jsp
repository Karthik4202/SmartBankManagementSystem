<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>verify</title>

<style>
/* ===== Body & Font ===== */
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

/* ===== Center Content Vertically ===== */
.main-container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex: 1;
}

/* ===== Headers ===== */
h2[align="center"] {
    color: #004080;
    text-align: center;
    margin-bottom: 10px;
}

/* ===== Form Card ===== */
form {
    display: flex;
    justify-content: center;
    width: 100%;
}

form table {
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    text-align: center;
    min-width: 300px;
}

/* ===== Table Cells ===== */
table td {
    padding: 10px 5px;
    text-align: center;
}

/* ===== Input Fields ===== */
input[type="text"] {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 14px;
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

/* ===== Footer ===== */
footer {
    background-color: #004080;
    color: white;
    text-align: center;
    padding: 15px 0;
    font-size: 14px;
    flex-shrink: 0;
}
</style>

</head>
<body>

<div class="main-container">
    <form action="verify" method="post">
        <div>
            <h2 align="center"> ${msg} </h2>
            <h2 align="center"> ${incorrect} </h2>
            <table align="center">
                <tr>
                    <td>Please Enter The OTP Below</td>
                </tr>
                <tr>
                    <td><input type="text" name="otp" minlength="4" maxlength="4" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </div>
    </form>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>

