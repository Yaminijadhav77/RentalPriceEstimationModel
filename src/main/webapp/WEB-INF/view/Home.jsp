<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Real Estate</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">

<style>
/* Custom Styles from Page 1 merged with Bootstrap */
*{
  margin:0;
  padding:0;
 width:100%;
overflow-x:hidden;
  font-family:Arial;
}


.navbar-nav .nav-link{
color:white;
position:relative;
transition:0.3s;
}
.navbar-nav .nav-link:hover{
color:#ff5a3c;
}

.hero-section{
  width: 100vw;
  height: 100vh;
 /* background-image: url('./images/HomePageImage.png');*/
  background-size: cover;
    background-image:url("./images/Screenshot\ 2026-03-14\ 151859.png");
  background-position: center;
  background-repeat:no-repeat;
  display: flex;
  align-items: center;
  justify-content: center;
  color:white;
  text-align:center;
  position:relative;
  
}


.hero-content {
  position: relative;
  text-align: center; 
/* center everything inside hero-content */
}

.hero-content h1 {
  font-size: 55px;
  margin: 10px 0;
}

.hero-content h4 {
  letter-spacing: 3px;
  margin-bottom: 15px;
}

.hero-content .btn {
  padding: 10px 25px; /* Adjust padding as needed */
  font-size: 1.2rem;  /* Optional: make text slightly bigger */
  display: inline-block; /* Ensure it wraps content */
  width: auto; /* Important: button width adapts to text */
}
.search-box{
  color:rgb(217, 220, 223);
  padding:25px;
  border-radius:10px;
  gap:20px;
  display:flex;
  flex-wrap:wrap;
  margin-top:20px;
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

.properties{
  padding:70px 80px;
  background:#f8f8f8;
}

.section-title{
  font-size:36px;
  margin-bottom:10px;
  text-align:center;
}

.section-sub{
  color:gray;
  margin-bottom:40px;
  text-align:center;
}

.property-container{
  display:flex;
  gap:20px;
  justify-content:center;
  flex-wrap:wrap;
}

.card-custom{
  background:white;
  border-radius:10px;
  overflow:hidden;
  width:300px;
  box-shadow:0 4px 12px rgba(0,0,0,0.1);
  padding-bottom:20px;
  transition:0.3s;
}

.card-custom:hover{
  transform:translateY(-8px);
}

.card-custom img{
  width:100%;
  height:160px;
  object-fit:cover;
}

.card-custom h3{
margin:15px;
text-align:center;
}

.card-custom p{
margin:0 15px;
color:gray;
text-align:center;
}

.card-custom h4{
text-align:center;
}




 
 

/* CTA SECTION */
.cta-section{
  display:flex;
  justify-content:center;
  margin-top:70px;
}

.cta-box{
  background:#ff5a3c;
  color:white;
  width:70%;
  padding:30px 40px;
  border-radius:8px;
  display:flex;
  justify-content:space-between;
  align-items:center;
  box-shadow:0px 10px 25px rgba(0,0,0,0.2);
}

.cta-btn{
  background:white;
  color:#ff5a3c;
  border:none;
  padding:12px 20px;
  font-weight:600;
  border-radius:5px;
  cursor:pointer;
}

/* Footer */
.footer{
  background:#0f172a;
  color:white;
  padding:80px 0 20px;
}

.footer-container{
  width:90%;
  margin:auto;
  display:flex;
  justify-content:space-between;
  flex-wrap:wrap;
}

.footer-col{
  width:220px;
  margin-bottom:30px;
}

.footer-col h4{
  margin-bottom:20px;
}

.footer-col ul{
  list-style:none;
  padding:0;
}

.footer-col ul li{
  margin-bottom:10px;
  cursor:pointer;
}

.newsletter{
  display:flex;
}

.newsletter input{
  padding:10px;
  border:none;
  width:140px;
}

.newsletter button{
  background:#ff5a3c;
  border:none;
  color:white;
  padding:10px 15px;
  cursor:pointer;
}

.footer-bottom{
  text-align:center;
  margin-top:30px;
  border-top:1px solid rgba(255,255,255,0.2);
  padding-top:20px;
  font-size:14px;
}
</style>
</head>
<body>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid px-3">
    <a class="navbar-brand" href="#">REAL ESTATE</a>
    <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="menu">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="about">About</a></li>
        <li class="nav-item"><a class="nav-link" href="properties">Property</a></li>
        <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>

            <button class="btn btn-danger ms-3"><li class="nav-item"><a class="nav-link" href="login">login</a></li></button> 
      </ul>
     
    </div>
  </div>
</nav>
<!-- Navbar End -->

<!-- Hero Section Start -->
<section class="hero-section ">
  <div class="hero-content">
    <h4>IT'S GREAT TO BE HOME!</h4>
    <h1>Find Your Perfect Home</h1>
  <a href="Apartment" class="btn btn-danger btn-lg">Make An Enquiry</a>

</button>

  </div>
</section>
<!-- Hero Section End -->

<!-- Newly Added Properties -->
<section class="properties" id="properties">
  <h2 class="section-title">Newly-added properties</h2>
  <p class="section-sub">Fresh listings to check out</p>
  <div class="property-container">
    <div class="card-custom">
      <img src="./images/house.png">
      <h3>House</h3>
      <h4>₹19,000</h4>
     
    </div>
    <div class="card-custom">
      <img src="./images/house2.jpg">
      <h3>1 BHK Apartment</h3>
      <p>Kitchen View</p>
      <h4>₹9,000</h4>
    
    </div>
    <div class="card-custom">
      <img src="./images/Aparment.jpg">
      <h3>2 BHK Apartment</h3>
      <p>Balcony View</p>
      <h4>₹8,500</h4>
    
    </div>
   
  </div>
</section>

<!-- CTA Section -->
<section class="cta-section">
  <div class="cta-box">
    <div class="cta-text">
      <h2>Looking for a dream home?</h2>
      <p>We can help you realize your dream of a new home</p>
    </div>
    <button class="cta-btn">Explore Properties →</button>
  </div>
</section>

<!-- Footer -->
<footer class="footer" id="contact">
  <div class="footer-container">
    <div class="footer-col">
      <h3>Real Estate</h3>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
      <p>📍 Pune, India</p>
      <p>📞 +91 9876543210</p>
      <p>✉ realestate@gmail.com</p>
    </div>
    <div class="footer-col">
      <h4>Services</h4>
      <ul>
        <li>Property Listing</li>
        <li>Buy Property</li>
        <li>Sell Property</li>
        <li>Rent Property</li>
      </ul>
    </div>
    <div class="footer-col">
      <h4>Company</h4>
      <ul>
        <li>About Us</li>
        <li>Contact</li>
        <li>Blog</li>
        <li>Testimonials</li>
      </ul>
    </div>
    <div class="footer-col">
      <h4>Subscribe</h4>
      <p>Subscribe to our newsletter</p>
      <div class="newsletter">
        <input type="email" placeholder="Email Address">
        <button>Subscribe</button>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <p>© 2026 Real Estate Project | All Rights Reserved</p>
  </div>
</footer>

<!-- JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
function goToPage(type){
  if(type=="apartment"){ window.location.href="apartment"; }
  if(type=="villa"){ window.location.href="villa"; }
  if(type=="house"){ window.location.href="house"; }
}
</script>
</body>
</html>