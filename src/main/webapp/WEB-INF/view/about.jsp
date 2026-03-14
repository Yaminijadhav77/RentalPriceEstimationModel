<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>

<style>
body{
    font-family: Arial;
    background:#f4f4f4;
}

.container{
    width:900px;
    margin:60px auto;
    background:white;
    padding:35px;
    border-radius:8px;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
}

h1{
    text-align:center;
    color:#333;
}

h2{
    margin-top:30px;
    color:#444;
}

p{
    line-height:1.7;
    font-size:16px;
}

ul{
    line-height:1.8;
}

.highlight{
    color:#007bff;
    font-weight:bold;
}
</style>

</head>
<body>

<div class="container">

<h1>About Project</h1>

<p>
This project is a <span class="highlight">Rental Price Estimation and Location Management System</span> 
developed using <span class="highlight">Spring MVC Architecture</span>. The application helps users 
to manage state and city data while also predicting rental prices using a machine learning model.
</p>

<h2>Project Objective</h2>

<p>
The main objective of this project is to build a system that allows administrators to manage 
location data such as states and cities while also providing a feature that can estimate rental 
prices based on different property parameters. This helps users understand the expected rental 
value of a property in a specific area.
</p>

<h2>State and City Management Module</h2>

<p>
The system provides an interface for managing geographical data. The admin can perform the 
following operations:
</p>

<ul>
<li>Add new states to the system</li>
<li>View list of all states</li>
<li>Add cities under specific states</li>
<li>View list of cities</li>
<li>Activate or deactivate states</li>
<li>Activate or deactivate cities</li>
<li>Maintain data consistency using database constraints</li>
</ul>

<h2>Rental Price Estimation Module</h2>

<p>
The application also includes a <span class="highlight">Rental Price Estimation Model</span> that 
predicts property rental prices using the <span class="highlight">Linear Regression Algorithm</span>. 
Linear Regression is a supervised machine learning algorithm used to predict continuous values.
</p>

<p>
The model estimates rental prices based on several property features such as:
</p>

<ul>
<li>Property location (State / City)</li>
<li>Area in square feet</li>
<li>Number of bedrooms</li>
<li>Number of bathrooms</li>
<li>Property type (Apartment, House, etc.)</li>
<li>Availability of amenities</li>
</ul>

<p>
Using these features, the system calculates an estimated rental price. The model works based 
on the mathematical relationship between dependent and independent variables.
</p>

<h2>Machine Learning Approach</h2>

<p>
The rental prediction model is implemented using <span class="highlight">Linear Regression</span>, 
which finds the best fitting line between input variables and the target rental price.
</p>

<p>
The basic formula used in Linear Regression is:
</p>

<p class="highlight">
Price = β₀ + β₁x₁ + β₂x₂ + β₃x₃ + ... + βnxn
</p>

<p>
Where:
</p>

<ul>
<li>Price → Predicted rental price</li>
<li>β₀ → Intercept</li>
<li>β₁, β₂, β₃ → Coefficients of features</li>
<li>x₁, x₂, x₃ → Input variables like area, bedrooms, etc.</li>
</ul>

<h2>System Architecture</h2>

<p>
The project follows a layered architecture based on the <span class="highlight">MVC design pattern</span>.
</p>

<ul>
<li><b>Controller Layer</b> – Handles HTTP requests and responses</li>
<li><b>Service Layer</b> – Contains business logic</li>
<li><b>Repository Layer</b> – Handles database operations using JDBC</li>
<li><b>View Layer</b> – JSP pages for user interface</li>
</ul>

<h2>Technologies Used</h2>

<ul>
<li>Java</li>
<li>Spring MVC Framework</li>
<li>JSP (Java Server Pages)</li>
<li>JDBC</li>
<li>MySQL Database</li>
<li>HTML, CSS</li>
<li>Machine Learning – Linear Regression</li>
</ul>

<h2>Conclusion</h2>

<p>
This project demonstrates how web development technologies can be integrated with machine 
learning techniques to build intelligent applications. It provides both administrative 
functionality for managing locations and predictive capabilities for estimating rental prices.
</p>

</div>

</body>
</html>