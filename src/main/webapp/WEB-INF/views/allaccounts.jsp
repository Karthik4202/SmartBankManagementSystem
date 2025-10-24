<%@ page import="java.util.List" import="com.model.Account" language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accounts</title>
</head>
<body>
	<h1 align="center">All Accounts</h1>
	<h3 align="right" >
		<a href="${pageContext.request.contextPath}/admin/backtohomepage" style="text-decoration:none">Homepage</a>
	</h3>
	<% List<Account> accountList = (List<Account>) (request.getAttribute("accounts")); %>
	<table border="1" style="margin: auto; text-align: center;">
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
</body>
</html>