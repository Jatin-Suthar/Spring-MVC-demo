<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<style>
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
		
		.button2 {
			background-color: white;
			color: black;
			border: 2px solid red;
		}

		.button2:hover {
			background-color: red;
			color: white;
		}
		
		.button3 {
			background-color: white;
			color: black;
			border: 2px solid orange;
		}

		.button3:hover {
			background-color: orange;
			color: white;
		}
		.gray {
			text-align: center;
  			border-radius: 5px;
  			background-color: lightgray;
  			padding: 20px;
		}
	</style>
</head>
<body>
<h2 class="center">Spring MVC Demo : Home Page</h2>
<hr>

	<div class="content">

	<button class="button button1" type="button" onclick="window.location.href='showForm'">Frequency App</button>
    
    &nbsp &nbsp
    
	<button class="button button2" type="button" onclick="window.location.href='student/showForm'">Student Login</button>
	
	&nbsp &nbsp

	<button class="button button3" type="button" onclick="window.location.href='customer/showForm'">Customer Login</button>

	<br>
</div>
<hr>
</body>
</html>