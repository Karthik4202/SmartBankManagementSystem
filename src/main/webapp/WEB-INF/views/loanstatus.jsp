<%@ page language="java" import="java.util.List,com.model.Loan"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loan Status</title>
</head>
<body>
	<h1 align="center">Loan Status</h1>
	<h3 align="right">
	<a href="${pageContext.request.contextPath}/account/backtohome" style="text-decoration:none">Home</a>
	</h3>
	<table border="1" style="margin: auto; text-align: center;">
		<tr>
			<th>LoanId</th>
			<th>Loan Amount</th>
			<th>Loan Type</th>
			<th>Applied Date & Time</th>
			<th>Loan Status</th>
		</tr>
		<tr>
			<%
			List<Loan> loans = (List<Loan>) request.getAttribute("loans");
			for (Loan loan : loans) {
			%>
			<td><%=loan.getLoanId()%></td>
			<td><%=loan.getLoanAmount()%></td>
			<td><%=loan.getLoanType()%></td>
			<td><%=loan.getAppliedDateAndTime()%></td>
			<td><%=loan.getStatus()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>