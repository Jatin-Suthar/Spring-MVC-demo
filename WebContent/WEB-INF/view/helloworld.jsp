<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello World : output data</title>
</head>
<body>
	<marquee width="100%" behavior="alternate" bgcolor="pink"><b>Frequency of Character in ${param.studentname} is :</b></marquee> 
	<br>
	<center>
	<h1>
	 <table border="3">
            <thead>
                <tr>
                    <th scope="col">Character</th>
                    <th scope="col">Frequency</th>
                   
                </tr>   
            </thead>
            <tbody>
                <c:forEach var="tempItem" items="${message}">
                    <tr>
                        <td> &nbsp * Character * : '${tempItem.key}' </td>
                        <td> &nbsp * Frequency * : ${tempItem.value} &nbsp </td>

                   </tr>   
                </c:forEach>            
            </tbody>
    </table>  
	</h1>
	
	<h1>HashCode : ${hashcode}</h1>
	</center>
	<marquee width="100%" behavior="alternate" bgcolor="pink"><b>Frequency of Character in ${param.studentname} is :</b></marquee> 
</body>
</html>