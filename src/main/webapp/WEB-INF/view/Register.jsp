<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>
body {
	font-family: Arial;
	background: #f5f5f5;
}

.container {
	width: 400px;
	margin: 80px auto;
	background: white;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

input {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
}

button {
	width: 100%;
	padding: 10px;
	background:#ff5a3c;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background:#e04a2f;
}
</style>

<!-- JavaScript Validation -->

<script>

function validateForm(){

let name=document.getElementById("name").value;
let email=document.getElementById("email").value;
let password=document.getElementById("password").value;
let phone=document.getElementById("phone").value;

/* Name validation (only letters) */

let namePattern=/^[A-Za-z ]+$/;

if(!namePattern.test(name)){
alert("Name should contain only letters");
return false;
}

/* Email validation */

let emailPattern=/^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

if(!emailPattern.test(email)){
alert("Enter valid email address");
return false;
}

/* Strong password validation */

let passwordPattern=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{6,}$/;

if(!passwordPattern.test(password)){
alert("Password must contain:\n1 Uppercase\n1 Lowercase\n1 Number\n1 Symbol\nMinimum 6 characters");
return false;
}

/* Phone validation */

let phonePattern=/^[0-9]{10}$/;

if(!phonePattern.test(phone)){
alert("Phone number must be 10 digits");
return false;
}

return true;

}

</script>

</head>

<body>

<div class="container">
<h2>User Registration</h2>

<form action="registerUser" method="post" onsubmit="return validateForm()">

<input type="text" id="name" name="name" placeholder="Enter Name" required>

<input type="email" id="email" name="email" placeholder="Enter Email" required>

<input type="password" id="password" name="password" placeholder="Enter Password" required>

<input type="text" id="phone" name="phone" placeholder="Enter Phone">

<button type="submit">Register</button>

</form>

</div>

</body>
</html>