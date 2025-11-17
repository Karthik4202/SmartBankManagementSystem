<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>

<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
    color: #333;

    /* Flex layout to push footer down */
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

/* Container */
.container {
    width: 90%;
    max-width: 700px;
    margin: 50px auto;
    flex: 1; /* takes remaining space */
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
    color: #004080;
    text-align: center;
    margin-bottom: 30px;
}

/* Form Table */
form {
    display: flex;
    justify-content: center;
}

form table {
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    width: 100%;
    max-width: 600px;
    text-align: left;
}

table td {
    padding: 10px 5px;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 8px 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 14px;
}

input[readonly] {
    background-color: #e9ecef;
    color: #495057;
}

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

    <!-- Home link -->
    <div class="home-link">
        <a href="${pageContext.request.contextPath}/account/backtohome">Home</a>
    </div>

    <!-- Header -->
    <h1>Account Details</h1>

    <!-- Form Table -->
    <form action="saveaccdetails" method="post">
        <table border="0" align="center">
            <tr>
                <td>Account ID :</td>
                <td><input type="number" name="id" value="${account.id}" readonly></td>
            </tr>
            <tr>
                <td>Account Number :</td>
                <td><input type="number" name="accountNumber" value="${account.accountNumber}" readonly></td>
            </tr>
            <tr>
                <td>Password :</td>
                <td><input type="text" name="password" value="${account.password}"></td>
            </tr>
            <tr>
                <td>Balance :</td>
                <td><input type="number" name="balance" value="${account.balance}" readonly></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form>

</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
