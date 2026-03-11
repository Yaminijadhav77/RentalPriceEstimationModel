<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
font-family: Arial;
background:#f5f5f5;
}
.container{
width:400px;
margin:80px auto;
background:white;
padding:30px;
border-radius:8px;
box-shadow:0 0 10px rgba(0,0,0,0.2);
}
h2{
text-align:center;
margin-bottom:20px;
}
input{
width:100%;
padding:10px;
margin:10px 0;
border:1px solid #ccc;
border-radius:5px;
}
button{
width:100%;
padding:10px;
background:#1e73be;
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}
button:hover{
background:#155a96;
}
</style>
</head>
<body>
<div class="container">
<h2>User Registration</h2>
<form action="registerUser" method="post">
<input type="text" name="name" placeholder="Enter Name" required>
<input type="email" name="email" placeholder="Enter Email" required>
<input type="password" name="password" placeholder="Enter Password" required>
<input type="text" name="phone" placeholder="Enter Phone">
<button type="submit">Register</button>
</form>
</div>
<body>
</body>
</html>
