<!DOCTYPE html>
<html>
<head>
<title>Apartment</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

/* Background */

body{
height:100vh;
background-image:url(images/Aparment.jpg);
background-size:cover;
background-position:center;
display:flex;
justify-content:center;
align-items:center;
}

/* Main Box */

.container{
background:rgba(0,0,0,0.6);
padding:40px;
border-radius:10px;
color:white;
text-align:center;
width:800px;
}

/* Horizontal Dropdown Row */

.dropdown-row{
display:flex;
gap:15px;
margin-top:25px;
}

/* Dropdown */

select{
padding:12px;
border:none;
border-radius:5px;
font-size:15px;
width:150px;
}

/* Button */

.search-btn{
padding:12px 25px;
border:none;
background:#ff5a3c;
color:white;
border-radius:5px;
font-size:16px;
cursor:pointer;
text-decoration:none;
display:inline-block;
}

.search-btn:hover{
background:#e04a2f;
}
</style>

</head>

<body>
<div class="container">

<h2>Select Apartment</h2>

<div class="dropdown-row">

<form action="searchApartment" method="post">

<select name="stateId">
<option value="">Select State</option>
<c:forEach var="s" items="${states}">
<option value="${s.stateId}">${s.stateName}</option>
</c:forEach>
</select>

<select name="cityId">
<option value="">Select City</option>
<c:forEach var="c" items="${cityList}">
<option value="${c.cityId}">${c.cityName}</option>
</c:forEach>
</select>

<select>
<option>Select Location</option>
<option>Hinjewadi</option>
<option>Wakad</option>
<option>Baner</option>
<option>Katraj</option>
</select>

<select>
<option>Select BHK</option>
<option>1 BHK</option>
<option>2 BHK</option>
<option>3 BHK</option>
<option>4 BHK</option>
</select>

<a href="login" class="search-btn">Search</a>

</div>

</div>
</form>
</body>
</html>