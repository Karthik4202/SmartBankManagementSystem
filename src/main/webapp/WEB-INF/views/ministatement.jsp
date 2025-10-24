<%@ page language="java" import="java.util.List,com.model.Transactions" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mini Statement</title>

</head>
<body>
<h1 align="center">Mini Statement</h1>
<h3 align="right">
<a href="${pageContext.request.contextPath}/account/backtoacc" style="text-decoration:none">dashboard</a>
</h3>
	<table border="1" style="margin: auto; text-align: center;">
		<tr>
			<th>TransactionId</th>
			<th>Account Number</th>
			<th>Amount</th>
			<th>Date & Time</th>
			<th>TransactionType</th>
		</tr>
		<% List<Transactions> ministatement = (List<Transactions>) request.getAttribute("ministatement"); 
		   String accNum = (String) request.getAttribute("accNum");
		   for(Transactions t : ministatement) {
			   String accountNumber = t.getSenderAccountNumber();
			   String type = "CREDIT";
			   if(t.getSenderAccountNumber().equals(accNum)){
				   accountNumber = t.getRecieverAccountNumber();
				   type = "DEBIT";
			   }
		%>
		<tr>
			<td><%= t.getTransactionId() %></td>
			<td><%= accountNumber %></td>
			<td><%= t.getAmount() %></td>
			<td><%= t.getTransactionDateAndTime() %></td>
			<td><%= type %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>