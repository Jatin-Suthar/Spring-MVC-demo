<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Confirmation</title>
<style>
		div {
			text-align: center;
  			border-radius: 5px;
  			background-color: lightgray;
  			padding: 30px;
		}
		
		table, th, tr , td {
			background-color: white;
			border: 2px solid black;
		}
		.content {
  			max-width: 500px;
  			margin: auto;
		}
</style>
</head>
<body>
	<div>

	<table class="content">
		<tr>
			<th>Customer Name</th>
			<th>Free Passes</th>
			<th>Postal Code</th>
		</tr>
		<tr>
			<td>${customer.firstName} ${customer.lastName}</td>
			<td> ${customer.freePasses}</td>
			<td>${customer.courseCode}</td>
		</tr>
	</table>
	</div>
</body>
</html>