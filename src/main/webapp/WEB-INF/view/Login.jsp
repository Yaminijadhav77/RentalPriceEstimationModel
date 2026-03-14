<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>

<style>

body{
margin:0;
font-family: Arial, sans-serif;
background:#f4f6f9;

display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

/* Login Container */

.login-container{
background:white;
padding:40px;
width:350px;
border-radius:10px;
box-shadow:0px 10px 25px rgba(0,0,0,0.2);
text-align:center;
}

/* Title */

.login-container h2{
margin-bottom:25px;
color:#333;
}

/* Input Fields */

.login-container input[type="text"],
.login-container input[type="password"]{
width:100%;
padding:12px;
margin:10px 0;
border:1px solid #ccc;
border-radius:5px;
}

/* Button */

.login-btn{
width:100%;
background:#ff5a3c;
color:white;
border:none;
padding:12px;
border-radius:5px;
font-size:16px;
cursor:pointer;
transition:0.3s;
}

.login-btn:hover{
background:#e04a2f;
}

/* Register Link */

.register-link{
margin-top:15px;
}

.register-link a{
color:#ff5a3c;
text-decoration:none;
font-weight:bold;
}

.register-link a:hover{
text-decoration:underline;
}

</style>

<!-- Internal JavaScript Validation -->

<script>

function validateLogin(){

let username = document.getElementById("username").value;
let password = document.getElementById("password").value;

if(username==""){
alert("Username cannot be empty");
return false;
}

if(password==""){
alert("Password cannot be empty");
return false;
}

/* Strong Password Validation */

let pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{6,}$/;

if(!pattern.test(password)){
alert("Password must contain:\n1 Uppercase\n1 Lowercase\n1 Number\n1 Symbol\nMinimum 6 characters");
return false;
}

return true;

}

</script>

</head>

<body>

<div class="login-container">

<h2>Login Here</h2>
<% String error = (String) request.getAttribute("error"); %>

<% if(error != null){ %>
<p style="color:red; font-weight:bold;"><%= error %></p>
<% } %>


<form method="post" action="login" onsubmit="return validateLogin()">

<input type="text" id="username" name="username" placeholder="Enter Username">

<input type="password" id="password" name="password" placeholder="Enter Password">

<input type="submit" value="Login" class="login-btn">

</form>

<div class="register-link">
<p>New User ? <a href="register">Register Here</a></p>
</div>

</div>

</body>
</html>