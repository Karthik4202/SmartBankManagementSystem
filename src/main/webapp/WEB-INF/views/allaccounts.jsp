<%@ page import="java.util.List" import="com.model.Account" language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accounts</title>

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
    max-width: 1200px;
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
    padding: 12px 10px;
    text-align: center;
}

th {
    background-color: #004080;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f6fc;
}

/* Forms inside table */
select, input[type="number"], button {
    padding: 5px 8px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 14px;
}

button {
    background-color: #004080;
    color: white;
    cursor: pointer;
    border: none;
    transition: all 0.3s ease;
}

button:hover {
    background-color: #003366;
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
    <h1>All Accounts</h1>

    <!-- Table -->
    <% List<Account> accountList = (List<Account>) (request.getAttribute("accounts")); %>
    <table>
        <tr>
            <th>AccountId</th>
            <th>Name</th>
            <th>AccountNumber</th>
            <th>Balance</th>
            <th>Date&TimeOfReg</th>
            <th>AccountStatus</th>
            <th>Update Status</th>
            <th>AddAmount</th>
        </tr>
        <% for(Account a : accountList) { %>
        <tr>
            <td><%= a.getId() %></td>
            <td><%= a.getCustomer().getName() %></td>
            <td><%= a.getAccountNumber() %></td>
            <td><%= a.getBalance() %></td>
            <td><%= a.getCustomer().getRegisteredAt() %></td>
            <td><%= a.getAccountStatus() %></td>
            <td>
                <form action="${pageContext.request.contextPath}/admin/updateaccstatus" method="get">
                    <select name="status">
                        <option value="">-- Update Status --</option>
                        <option value="Deactivated">Deactive</option>
                        <option value="Activated">Active</option>
                    </select>
                    <input type="hidden" name="id" value="<%= a.getId() %>">
                    <button type="submit">Update</button>
                </form>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/admin/addamount" method="get">
                    <input type="number" name="balance" min="1" required>
                    <input type="hidden" name="id" value="<%= a.getId() %>">
                    <button type="submit">add</button>
                </form>
            </td>
        </tr>
        <% } %>
    </table>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
