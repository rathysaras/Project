<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Home Page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="jumbotron text-center">
		<c:choose>
			<c:when test="${list!=null}">
				 <h2> Saved Messages</h2>
				 <c:forEach var="item" items="${list}">
				 	<li>"${item.message}"</li></br>
				 </c:forEach>
			 </c:when>
			 <c:otherwise>
				<h2>Add Messages Please</h2>
			</c:otherwise>
			 </c:choose>
		</div>
		<br>
		<br>
		<a href="/dockerExample">home</a>
	</div>
</body>
</html>
