<%@ page import="java.util.List,com.model.Transactions" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Debit Transactions</title>

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
    max-width: 900px;
    margin: 50px auto;
    flex: 1;
}

/* Dashboard link */
.dashboard-link {
    text-align: right;
    margin-bottom: 20px;
}

.dashboard-link a {
    color: #004080;
    text-decoration: none;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 5px;
    border: 1px solid #004080;
    transition: all 0.3s ease;
}

.dashboard-link a:hover {
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
    margin-bottom: 30px;
}

th, td {
    padding: 12px 15px;
    text-align: center;
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

    <!-- Dashboard link -->
    <div class="dashboard-link">
        <a href="${pageContext.request.contextPath}/account/backtoacc">dashboard</a>
    </div>

    <!-- Header -->
    <h1>Debit Transactions</h1>

    <!-- Transaction Table -->
    <table>
        <tr>
            <th>TransactionId</th>
            <th>Sent to AccNumber</th>
            <th>Amount Transfered</th>
            <th>Date & Time</th>
        </tr>
        <% 
        List<Transactions> list = (List<Transactions>) request.getAttribute("debitTransactions");
        for(Transactions t : list) {
        %>
        <tr>
            <td><%= t.getTransactionId() %></td>
            <td><%= t.getRecieverAccountNumber() %></td>
            <td><%= t.getAmount() %></td>
            <td><%= t.getTransactionDateAndTime() %></td>
        </tr>
        <% } %>
    </table>
</div>

<footer>
    &copy; 2025 Smart Bank. All rights reserved.
</footer>

</body>
</html>
