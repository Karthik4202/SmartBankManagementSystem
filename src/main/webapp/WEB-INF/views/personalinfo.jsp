<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Info</title>

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

/* ===== Header ===== */
h2 {
    color: #004080;
    margin-bottom: 20px;
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

/* ===== Form Styling ===== */
form {
    display: flex;
    justify-content: center;
}

form table {
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.1);
    width: 100%;
    max-width: 700px;
}

table td {
    padding: 10px 5px;
    vertical-align: middle;
}

/* ===== Input Fields ===== */
input[type="text"],
input[type="number"],
input[type="email"],
input[type="date"],
select {
    width: 100%;
    padding: 8px 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 14px;
}

/* Disabled or readonly fields */
input[readonly], select[disabled] {
    background-color: #e9ecef;
    color: #495057;
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
    <h2>Personal Info</h2>
    <h3 align="right">
        <a href="${pageContext.request.contextPath}/account/backtohome">Home</a>
    </h3>

    <form action="savepersonalinfo" method="post">
        <table border="0" align="center">
            <tr>
                <td>Customer ID :</td>
                <td><input type="number" name="customerId" value="${customer.customerId}" readonly></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="${customer.name}" readonly></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><input type="number" name="age" value="${customer.age}" readonly></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <select name="gender" disabled>
                        <option value="${customer.gender}" >${customer.gender}</option>
                        <option value="MALE" >Male</option>
                        <option value="FEMALE" >Female</option>
                        <option value="OTHER" >Other</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Occupation:</td>
                <td><input type="text" name="occupation" value="${customer.occupation}" maxlength="30" minlength="2"></td>
            </tr>
            <tr>
                <td>Date of Birth:</td>
                <td><input type="date" name="dateOfBirth" value="${customer.dateOfBirth}" readonly></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" value="${customer.email}"></td>
            </tr>
            <tr>
                <td>Aadhar Number:</td>
                <td><input type="text" name="aadharNumber" value="${customer.aadharNumber}" readonly></td>
            </tr>
            <tr>
                <td>Phone Number:</td>
                <td><input type="text" name="phoneNumber" value="${customer.phoneNumber}" minlength="10" maxlength="10"></td>
            </tr>
            <tr>
                <td>Registered At :</td>
                <td><input type="text" name="registeredAt" value="${customer.registeredAt}" readonly></td>
            </tr>
            <tr>
                <td colspan="2"><strong>Address</strong></td>
            </tr>
            <tr>
                <td>Street:</td>
                <td><input type="text" name="address.street" value="${customer.address.street}"></td>
            </tr>
            <tr>
                <td>Pincode:</td>
                <td><input type="text" name="address.pincode" value="${customer.address.pincode}"></td>
            </tr>
            <tr>
                <td>City:</td>
                <td><input type="text" name="address.city" value="${customer.address.city}"></td>
            </tr>
            <tr>
                <td>State:</td>
                <td><input type="text" name="address.state" value="${customer.address.state}"></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><input type="text" name="address.country" value="${customer.address.country}"></td>
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
