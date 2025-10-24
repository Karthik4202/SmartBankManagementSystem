<%@ page import="java.util.List" import="com.model.Customer" language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers Details</title>
</head>
<body>
<h1 align="center">All Customers</h1>
<h3 align="right" >
	<a href="${pageContext.request.contextPath}/admin/backtohomepage" style="text-decoration:none">Homepage</a>
</h3>
	<% List<Customer> customerList = (List<Customer>) (request.getAttribute("customerlist")); %>
	<table border="1" style="margin: auto; text-align: center;">
		<tr>
			<th>CustomerId</th>
			<th>Name</th>
			<th>age</th>
			<th>Gender</th>
			<th>DateOFBirth</th>
			<th>Email</th>
			<th>PhoneNumber</th>
			<th>AadharNumber</th>
			<th>Occupation</th>
			<th>Street</th>
			<th>City</th>
			<th>Pincode</th>
			<th>State</th>
			<th>Country</th>
		</tr>
		<% for(Customer c : customerList) { %>
		
		<tr>
			<td><%= c.getCustomerId() %></td>
			<td><%= c.getName() %></td>
			<td><%= c.getAge() %></td>
			<td><%= c.getGender() %></td>
			<td><%= c.getDateOfBirth() %></td>
			<td><%= c.getEmail() %></td>
			<td><%= c.getPhoneNumber() %></td>
			<td><%= c.getAadharNumber() %></td>
			<td><%= c.getOccupation() %></td>
			<td><%= c.getAddress().getStreet() %></td>
			<td><%= c.getAddress().getCity() %></td>
			<td><%= c.getAddress().getPincode() %></td>
			<td><%= c.getAddress().getState() %></td>
			<td><%= c.getAddress().getCountry() %></td>
		</tr>
		
		<% } %>
	</table>
</body>
</html>