<%@ page import="java.util.List" import="com.model.Customer" language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers Details</title>

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
    width: 95%;
    max-width: 1400px;
    margin: 50px auto;
    flex: 1;
}

/* Homepage Link */
.home-link {
    text-align: right;
    margin-bottom: 20px;
}

.home-link a {
    text-decoration: none;
    color: #004080;
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

/* Table */
table {
    width: 100%;
    border-collapse: collapse;
    background-color: white;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    border-radius: 10px;
    overflow: hidden;
}

th, td {
    padding: 10px;
    text-align: center;
    font-size: 14px;
}

th {
    background-color: #004080;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f6fc;
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

    <!-- Homepage link -->
    <div class="home-link">
        <a href="${pageContext.request.contextPath}/admin/backtohomepage">Homepage</a>
    </div>

    <!-- Header -->
    <h1>All Customers</h1>

    <!-- Table -->
    <% List<Customer> customerList = (List<Customer>) (request.getAttribute("customerlist")); %>
    <table>
        <tr>
            <th>CustomerId</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>DateOfBirth</th>
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
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
