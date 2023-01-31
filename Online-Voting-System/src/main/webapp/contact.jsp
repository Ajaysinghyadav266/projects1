<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contanct us</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<%@ include file="navbar.jsp" %>

<body>
<div class="form-container">
<form>
<h4>Please fill the required  details:</h4>

<label for="uName">Name:</label>

<br>

<input name="uName" id="uName" type="text">
<br>
<label for="pNumber">Phone Number:</label>

<br>

<input name="pNumber" id="pNumber" type="number">
<br>
<label for="email">Email:</label>
<br>
<input name="email" id="email" type="email">
<br>
<label for="comment">Comment:</label>
<br>
<textarea name="comment" id="comment" rows="4" cols="8"></textarea>
<br>
<button type="submit">Submit</button>

</form>
</div>

</body>
</html>