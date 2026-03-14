<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Add City</title>

<style>
body {
	font-family: Arial;
	background: #f4f4f4;
}

.container {
	width: 400px;
	margin: 100px auto;
	background: white;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

input, select {
	width: 100%;
	padding: 10px;
	margin-top: 10px;
}

button {
	margin-top: 15px;
	padding: 10px;
	width: 100%;
	background:#ff5a3c;
	color: white;
	border: none;
	cursor: pointer;
}

button:hover {
	background:#e04a2f;
}
</style>

<!-- Internal JavaScript Validation -->

<script>

function validateCity(){

let cityName = document.getElementById("city_name").value;
let pincode = document.getElementById("pincode").value;
let state = document.getElementById("state_id").value;

/* City Name Validation */

let cityPattern=/^[A-Za-z ]+$/;

if(!cityPattern.test(cityName)){
alert("City name should contain only letters");
return false;
}

/* Pincode Validation */

let pinPattern=/^[0-9]{6}$/;

if(!pinPattern.test(pincode)){
alert("Pincode must be exactly 6 digits");
return false;
}

/* State Selection */

if(state==""){
alert("Please select a state");
return false;
}

return true;

}

</script>

</head>

<body>

<div class="container">

<h2>Add City</h2>

<form action="saveCity" method="post" onsubmit="return validateCity()">

<label>City Name</label>
<input type="text" id="city_name" name="city_name" required>

<label>Pincode</label>
<input type="text" id="pincode" name="pincode" required>

<label>Select State</label>

<select id="state_id" name="state_id" required>

<option value="">-- Select State --</option>

<c:forEach var="s" items="${states}">
<option value="${s.state_id}">${s.name}</option>
</c:forEach>

</select>

<button type="submit">Add City</button>

<c:if test="${param.error == 'StateInactive'}">
<div class="alert alert-danger">
This state is inactive. You cannot add a city.
</div>
</c:if>

</form>

</div>

</body>
</html>