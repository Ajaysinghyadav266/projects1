<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<%@ include file="navbar.jsp" %>
<body>
<div class="form-container">
<form action="AdminLogin" method="post">
<h4>Please fill the required  details:</h4>

<label for="aName">Name:</label>

<br>

<input name="aName" id="uName" type="text">
<br>
<label for="password">Password:</label>

<br>

<input name="password" id="password" type="password">
<br>

<button type="submit">Login</button>

</form>
</div>

</body>
</html>