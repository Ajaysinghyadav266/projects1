<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Voting System</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="form-container">
<form action="VoterLogin" method="post">
<h4>Enter your voter card number</h4>
<br>
<label for="voterNumber">Voter Id</label>
<br>
<input name="VoterNumber" id="voterNumber" type="text"placeholder="Voter number">
<br>
<button type="submit">Login</button>
<br>
<a href="adminWelcome.jsp">Admin</a>
</form>
</div>
</body>
</html>