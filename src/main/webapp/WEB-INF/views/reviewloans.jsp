<%@ page language="java" import="java.util.List,com.model.Loan" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Loans</title>

<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    margin: 0;
    padding: 0;
    color: #333;
}

/* Headers */
h1, h3 {
    color: #004080;
    margin: 20px;
}

/* Table styling */
table {
    width: 90%;
    margin: 20px auto;
    border-collapse: collapse;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    background-color: #fff;
}

th, td {
    padding: 12px 15px;
    border: 1px solid #ddd;
    text-align: center;
}

th {
    background-color: #004080;
    color: white;
    font-weight: bold;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Select and Button inside table */
select, button {
    padding: 5px 8px;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 14px;
}

button {
    background-color: #004080;
    color: white;
    cursor: pointer;
    border: none;
    transition: 0.3s ease;
}

button:hover {
    background-color: #003366;
}

/* Links */
a {
    text-decoration: none;
    color: #004080;
}

a:hover {
    text-decoration: underline;
}
</style>

</head>
<body>

<h1 align="center">Review Loans</h1>
<h3 align="right">
    <a href="${pageContext.request.contextPath}/admin/backtohomepage">Homepage</a>
</h3>

<table>
    <tr>
        <th>LoanId</th>
        <th>Account Number</th>
        <th>Loan Amount</th>
        <th>Loan Type</th>
        <th>Applied Date & Time</th>
        <th>Loan Status</th>
        <th>Update Status</th>
    </tr>
    <%
        List<Loan> loans = (List<Loan>) request.getAttribute("loans");
        for (Loan loan : loans) {
    %>
    <tr>
        <td><%=loan.getLoanId()%></td>
        <td><%=loan.getAccountNumber()%></td>
        <td><%=loan.getLoanAmount()%></td>
        <td><%=loan.getLoanType()%></td>
        <td><%=loan.getAppliedDateAndTime()%></td>
        <td><%=loan.getStatus()%></td>
        <td>
            <form action="${pageContext.request.contextPath}/admin/updatestatus" method="get">
                <select name="status">
                    <option value="">-- Update Status --</option>
                    <option value="Approved">Approved</option>
                    <option value="Pending">Pending</option>
                    <option value="Rejected">Rejected</option>
                </select>
                <input type="hidden" name="id" value="<%= loan.getLoanId() %>">
                <button type="submit">Update</button>
            </form>
        </td>
    </tr>
    <% } %>
</table>

</body>
</html>

