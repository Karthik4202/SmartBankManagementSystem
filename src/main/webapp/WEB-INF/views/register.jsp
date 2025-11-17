<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

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
h2[align="center"] {
    color: #004080;
    text-align: center;
    margin-top: 30px;
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

/* ===== Inputs & Select ===== */
input[type="text"], input[type="number"], input[type="email"], input[type="date"], select {
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

/* ===== Login Link ===== */
h2[align="center"] a {
    color: #0073e6;
    text-decoration: none;
}

h2[align="center"] a:hover {
    text-decoration: underline;
}

/* ===== Address Section ===== */
h3 {
    color: #004080;
    margin-top: 20px;
    margin-bottom: 10px;
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

<h2 align="center">User Registration Form</h2>

<form action="saveCustomer" method="post">
    <table align="center">
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><input type="number" name="age" required></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>
                <select name="gender" required>
                    <option value="">--Select--</option>
                    <option value="MALE">Male</option>
                    <option value="FEMALE">Female</option>
                    <option value="OTHER">Other</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Occupation:</td>
            <td><input type="text" name="occupation" required></td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td><input type="date" name="dateOfBirth" required></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="email" name="email" required></td>
        </tr>
        <tr>
            <td>Aadhar Number:</td>
            <td><input type="text" name="aadharNumber"  minlenth="12" maxlength="12" required></td>
        </tr>
        <tr>
            <td>Phone Number:</td>
            <td><input type="text" name="phoneNumber" minlength="10" maxlength="10" required></td>
        </tr>

        <!-- Address Section -->
        <tr>
            <td><h3>Address</h3></td>
            <td></td>
        </tr>
        <tr>
            <td>Street:</td>
            <td><input type="text" name="address.street" required></td>
        </tr>
        <tr>
            <td>Pincode:</td>
            <td><input type="text" name="address.pincode" required></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input type="text" name="address.city" required></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><input type="text" name="address.state" required></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input type="text" name="address.country" required></td>
        </tr>

        <tr>
            <td></td>
            <td><input type="submit" value="Register"></td>
        </tr>
    </table>
</form>

<h2 align="center">Account already exists ? <a href="${pageContext.request.contextPath}/customer/login">Login</a></h2>

</body>
</html>
