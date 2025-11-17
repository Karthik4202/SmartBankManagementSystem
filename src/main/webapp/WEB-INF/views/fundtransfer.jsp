<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fund Transfer</title>

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
    flex: 1;
}

/* Home link */
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
    text-align: center;
    color: #004080;
    margin-bottom: 30px;
}

/* Form Table */
form table {
    width: 100%;
    max-width: 500px;
    margin: auto;
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
}

form td {
    padding: 12px 10px;
}

input[type="number"], input[type="text"] {
    width: 100%;
    padding: 8px 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #004080;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    border: none;
    cursor: pointer;
    transition: all 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #003366;
}

/* Messages */
h2 {
    text-align: center;
    color: #004080;
    margin-top: 20px;
    min-height: 30px;
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
    <h1>Fund Transfer</h1>

    <!-- Form -->
    <form action="fundtransfer" method="post">
        <table>
            <tr>
                <td>Enter Reciever's Account Number :</td>
                <td><input type="number" name="accNum" required></td>
            </tr>
            <tr>
                <td>Enter Amount :</td>
                <td><input type="number" name="amount" min="1"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Send"></td>
            </tr>
        </table>
    </form>

    <!-- Messages -->
    <h2>${notFound} ${insufficient} ${success} ${reciever}</h2>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
