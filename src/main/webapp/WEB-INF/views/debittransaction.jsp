<%@ page import="java.util.List,com.model.Transactions" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Debit Transactions</title>
</head>
<body>
<h1 align="center">Debit Transactions</h1>
<h3 align="right">
<a href="${pageContext.request.contextPath}/account/backtoacc" style="text-decoration:none">dashboard</a>
</h3>

<table border="1" style="margin: auto; text-align: center;">
<tr>
<th>TransactionId</th>
<th>Sent to AccNumber</th>
<th>Amount Transfered</th>
<th>Date&Time</th>
</tr>
<tr>
<% List<Transactions> list = (List<Transactions>) request.getAttribute("debitTransactions");
	for(Transactions t : list) {
		
%>
<td><%= t.getTransactionId() %></td>
<td><%= t.getRecieverAccountNumber() %></td>
<td><%= t.getAmount() %></td>
<td><%= t.getTransactionDateAndTime() %></td>
</tr>
<% } %>
</table>
</body>
</html>