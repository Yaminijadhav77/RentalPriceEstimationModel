

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>House</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

/* Background */

.house-bg{
height:100vh;
background-image:url(images/house.png);
background-size:cover;
background-position:center;
display:flex;
justify-content:center;
align-items:center;
position:relative;
}

/* Blur overlay */

.house-bg::before{
content:"";
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.5);
backdrop-filter:blur(5px);
}

/* Content box */

.content{
position:relative;
text-align:center;
color:white;
background:rgba(255,255,255,0.1);
padding:40px;
border-radius:10px;
width:400px;
}

.content h1{
margin-bottom:10px;
font-size:32px;
}

.content p{
font-size:18px;
}

</style>
</head>

<body>

<div class="house-bg">

<div class="content">

<h1>House Properties Page</h1>
<p>Welcome to House Section</p>

</div>

</div>

</body>
</html>