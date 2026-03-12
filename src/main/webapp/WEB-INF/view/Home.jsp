<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

/* Navbar */

.navbar{
display:flex;
justify-content:space-between;
align-items:center;
padding:20px 80px;
background:black;
}

.menu{
list-style:none;
display:flex;
gap:30px;
font-size:18px;
font:white;
cursor:pointer;
}

/* Hero Section */

.hero{
height:600px;
background-image:url(images/hero.jpg);
background-size:cover;
background-position:center;
display:flex;
align-items:center;
justify-content:center;
color:white;
text-align:center;
position:relative;
}

.hero::before{
content:"";
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.5);
}

.hero-content{
position:relative;
}

.hero h1{
font-size:55px;
margin:10px 0;
}

.hero h4{
letter-spacing:3px;
}

/* Search Box */

.search-box{
margin-top:40px;
display:flex;
background:white;
padding:25px;
border-radius:10px;
gap:20px;
align-items:center;
}

.field{
display:flex;
flex-direction:column;
color:black;
}

.field select,
.field input{
padding:10px;
margin-top:5px;
width:180px;
}

.search-btn{
background:#1e73be;
color:white;
border:none;
padding:12px 30px;
border-radius:5px;
cursor:pointer;
}

/* Property Section */

.properties{
padding:70px 80px;
background:#f8f8f8;
}

.section-title{
font-size:36px;
margin-bottom:10px;
}

.section-sub{
color:gray;
margin-bottom:40px;
}

.property-container{
display:flex;
gap:20px;
justify-content:center;
flex-wrap:nowrap;
}

.card{
background:white;
border-radius:10px;
overflow:hidden;
width:220px;
box-shadow:0 4px 12px rgba(0,0,0,0.1);
padding-bottom:20px;
transition:0.3s;
}

.card:hover{
transform:translateY(-8px);
}

.card img{
width:100%;
height:160px;
object-fit:cover;
}

.card h3{
margin:15px;
}

.card p{
margin:0 15px;
color:gray;
}

.card h4{
margin:10px 15px;
}

.card button{
margin-left:15px;
padding:10px 20px;
border:1px solid #6c63ff;
background:white;
color:#6c63ff;
border-radius:6px;
cursor:pointer;
}

.card button:hover{
background:#6c63ff;
color:white;
}

</style>

</head>

<body>

<!-- Navbar -->

<div class="navbar">

<div class="logo">
<h2>Modern Home</h2>
</div>

<ul class="menu">
<li>Home</li>
<!--  <li>Properties</li>-->
<li><a href="#properties">Properties</a></li>
<li>Members</li>
<li>Pages</li>
<li>Contact</li>
</ul>

</div>

<!-- Hero Section -->

<section class="hero">

<div class="hero-content">

<h4>IT'S GREAT TO BE HOME!</h4>

<h1>Find Your Perfect Home</h1>

<div class="search-box">

<div class="field">
<label>Type</label>

<select onchange="goToPage(this.value)">
<option value="">Property Type</option>
<option value="apartment">Apartment</option>
<option value="villa">Villa</option>
<option value="house">House</option>
</select>

</div>

<div class="field">
<label>Information</label>

</div>

<div class="field">
<label>Search</label>
<input type="text" placeholder="Enter Qurey">
</div>

<button class="search-btn">SEARCH</button>

</div>

</div>

</section>

<!-- Newly Added Properties -->

<section class="properties" id="properties">

<h2 class="section-title">Newly-added properties</h2>
<p class="section-sub">Fresh listings to check out</p>

<div class="property-container">

<div class="card">
<img src="images/Halll.jpg">
<h3>1 BHK Apartment</h3>
<p>Hall View</p>
<h4>₹11,000</h4>
<button>Contact</button>
</div>

<div class="card">
<img src="images/Kitchen.jpg">
<h3>1 BHK Apartment</h3>
<p>Kitchen View</p>
<h4>₹9,000</h4>
<button>Contact</button>
</div>

<div class="card">
<img src="images/Balcony.jpg">
<h3>1 BHK Apartment</h3>
<p>Balcony View</p>
<h4>₹8,500</h4>
<button>Contact</button>
</div>

<div class="card">
<img src="images/lobby.jpg">
<h3>1 BHK Apartment</h3>
<p>Lobby View</p>
<h4>₹10,000</h4>
<button>Contact</button>
</div>

</div>

</section>

<!-- JavaScript -->

<script>

function goToPage(type){

if(type=="apartment"){
window.location.href="apartment";
}
if(type=="villa"){
	window.location.href="villa";
}
if(type=="house"){
	window.location.href="house";
	}


}

</script>

</body>
</html>