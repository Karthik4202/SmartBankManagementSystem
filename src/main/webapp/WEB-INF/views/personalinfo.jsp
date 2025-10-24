<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Info</title>
</head>
<body>
	
	<h2 align="center">Personal Info</h2>
	<h3 align="right">
	<a href="${pageContext.request.contextPath}/account/backtohome" style="text-decoration:none">Home</a>
	</h3>
	<form action="savepersonalinfo" method="post">
        <table border="0" align="center">
        		<tr>
        		<td>Customer ID : </td>
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
                <td><input type="text" name="address.pincode" value="${customer.address.pincode}" ></td>
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
                <td>
                    <input type="submit" value="save">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>