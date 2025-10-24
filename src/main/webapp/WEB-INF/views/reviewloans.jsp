<%@ page language="java" import="java.util.List,com.model.Loan" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Loans</title>
</head>
<body>
<h1 align="center">Review Loans</h1>
<h3 align="right" >
	<a href="${pageContext.request.contextPath}/admin/backtohomepage" style="text-decoration:none">Homepage</a>
</h3>
<table border="1" style="margin: auto; text-align: center;">
		<tr>
			<th>LoanId</th>
			<th>Account Number</th>
			<th>Loan Amount</th>
			<th>Loan Type</th>
			<th>Applied Date & Time</th>
			<th>Loan Status</th>
			<th>Update Status</th>
		</tr>
		<tr>
			<%
			List<Loan> loans = (List<Loan>) request.getAttribute("loans");
			for (Loan loan : loans) {
			%>
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
		<%
		}
		%>
	</table>
</body>
</html>