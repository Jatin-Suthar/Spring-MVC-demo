<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-Confirmation</title>
</head>
<body>
	The student is confirmed: ${student.firstName} ${student.lastName}
	
	<br><br>
	Gender: ${student.gender}
	<br><br>
	Favorite Language: ${student.favoriteLanguage}
	<br><br>
	Hobbies: 
	<ul>
		<c:forEach var="temp" items="${student.hobbies}">
			<li>${temp}</li>
		</c:forEach>
	</ul>
	<br><br>
	Country: ${student.country}
</body>
</html>