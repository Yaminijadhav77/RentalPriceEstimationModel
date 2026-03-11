<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>

body{
font-family:Arial;
background:#f4f4f4;
margin:0;
}

.header{
background:#2c3e50;
color:white;
padding:20px;
text-align:center;
font-size:28px;
}

.container{
display:flex;
justify-content:center;
margin-top:50px;
gap:30px;
}

.card{
background:white;
width:200px;
height:120px;
border-radius:10px;
box-shadow:0 0 10px rgba(0,0,0,0.2);
display:flex;
justify-content:center;
align-items:center;
flex-direction:column;
font-size:18px;
}

.card a{
text-decoration:none;
color:#2c3e50;
font-weight:bold;
}

.card:hover{
background:#3498db;
color:white;
cursor:pointer;
}

</style>

</head>

<body>

<div class="header">
Admin Dashboard
</div>

<div class="container">

<div class="card">
<a href="addApartment">Add Apartment</a>
</div>

<div class="card">
<a href="addVilla">Add Villa</a>
</div>

<div class="card">
<a href="addHouse">Add House</a>
</div>

</div>

</body>
</html>