<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName" />
		<br><br>
		Last name: <form:input path="lastName" />
		<br><br>
		<form:select path="country">
			<form:options items="${student.countryOptions}"/>
		</form:select>
		
		<br><br>
		
		Gender:
		
		Male <form:radiobutton path="gender" value="Male"/>
		Female <form:radiobutton path="gender" value="Female"/>
		
		<br><br>
		
		Favorite Language:
		
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		Php  <form:radiobutton path="favoriteLanguage" value="Php"/>
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>
		Kotlin <form:radiobutton path="favoriteLanguage" value="Kotlin"/>
		C++ <form:radiobutton path="favoriteLanguage" value="C++"/>
		C# <form:radiobutton path="favoriteLanguage" value="C#"/>
		
		<br><br>
		
		Hobbies:
		 
		Cricket <form:checkbox path="hobbies" value="Cricket"/>
		Football <form:checkbox path="hobbies" value="Football"/>
		Badminton <form:checkbox path="hobbies" value="Badminton"/>
		Drawing <form:checkbox path="hobbies" value="Drawing"/>
		Tennis <form:checkbox path="hobbies" value="Tennis"/>
		Basket Ball <form:checkbox path="hobbies" value="Basket Ball"/>
		
		<br><br>
		<input type="submit" value="submit" />
	</form:form>
</body>
</html>