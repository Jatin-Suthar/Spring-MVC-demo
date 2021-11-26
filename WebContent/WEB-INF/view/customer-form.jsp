<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer-Form</title>
	<style>
		.error {color:red}
		.content {
  			max-width: 500px;
  			margin: auto;
		}
		.center {
			text-align: center;
		}
		.button {
			background-color: #00ccff;
			border: none;
			color: white;
			padding: 10px 20px;
			text-align: center;
			display: inline-block;
			font-size: 16px;
			border-radius: 4px;
			transition-duration: 0.4s;
  			cursor: pointer;
		}
		.button1 {
			background-color: white;
			color: black;
			border: 2px solid #00ccff;
		}

		.button1:hover {
			background-color: #00ccff;
			color: white;
		}
		
		form:input[type=text] {
			width: 100%;
			padding: 15px 30px;
			margin: 8px 0;
  			display: inline-block;
  			border: 2px solid black;
  			border-radius: 4px;
  			box-sizing: border-box;
		}
		input[type=submit] {
			background-color: white;
			border: 2px solid #00ccff;
			color: black;
			padding: 4px 8px;
			text-align: center;
			display: inline-block;
			font-size: 16px;
			border-radius: 4px;
			transition-duration: 0.4s;
  			cursor: pointer;
		}
		input[type=submit]:hover {
			background-color: #00ccff;
			color: white;
		}
		div {
			text-align: center;
  			border-radius: 5px;
  			background-color: lightgray;
  			padding: 20px;
		}
		table, th, tr , td {
			width: 80%;
			padding: 2px;
			background-color: white;
			border: 1px solid black;
		}
	</style>
</head>
<body>
	<h1 class="center">Customer Registration Form</h1>
	<br>
	<hr>
	<div class="content">
		<form:form action="processForm" modelAttribute="customer">
			<table class="content">
			<tr>
			<td>
			<label for="fname">First Name:</label></td>
			<td>
			<form:input id="fname" name="firstName" placeHolder="Enter First Name" path="firstName"/>
			</td>
			</tr>
			<tr>
			<td>
			<label for="fname">Last Name:</label></td>
			<td>
			<form:input id="lname" name="lastName" placeHolder="Enter Last Name" path= "lastName"/>
			<form:errors path="lastName" cssClass="error" />
			</td>
			</tr>
			<tr>
			<td>
			<label for="freePasses">Free Passes:</label></td>
			<td>
			<form:input id="freePasses" name="freePasses" path= "freePasses"/>
			<form:errors path="freePasses" cssClass="error" />
			</td>
			</tr>
			<tr>
			<td>
			<label for="courseCode">Course Code:</label></td>
			<td>
			<form:input id="courseCode" name="courseCode" path= "courseCode"/>
			<form:errors path="courseCode" cssClass="error" />
			</td>
			</tr>
			</table>
			<br>
			<input type="submit" value="Register"/>
		</form:form>
	</div>
</body>
</html>