<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
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
