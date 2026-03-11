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

button{
padding:12px 25px;
border:none;
background:#007bff;
color:white;
border-radius:5px;
font-size:16px;
cursor:pointer;
}

button:hover{
background:#0056b3;
}

</style>

</head>

<body>

<div class="container">

<h2>Select Apartment</h2>

<div class="dropdown-row">

<select>
<option>Select State</option>
<option>Maharashtra</option>
<option>Gujarat</option>
<option>Telangana</option>
<option>Karnataka</option>
</select>

<select>
<option>Select City</option>
<option>Pune</option>
<option>Mumbai</option>
<option>Nagpur</option>
<option>Nashik</option>
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

<button>Search</button>

</div>

</div>

</body>
</html>