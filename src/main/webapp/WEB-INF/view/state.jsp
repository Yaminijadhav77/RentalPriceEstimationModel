<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add State</title>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: #f4f6f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

/* Container */
.state-container {
	background: white;
	padding: 40px;
	width: 350px;
	border-radius: 10px;
	box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.2);
	text-align: center;
}

/* Title */
.state-container h2 {
	margin-bottom: 25px;
	color: #333;
}

/* Input Fields */
.state-container input[type="text"] {
	width: 100%;
	padding: 12px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
}

/* Button */
.state-btn {
	width: 100%;
	background: #ff5a3c;
	color: white;
	border: none;
	padding: 12px;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: 0.3s;
}

.state-btn:hover {
	background: #e04a2f;
}
</style>

<!-- Internal JavaScript Validation -->

<script>

function validateState(){

let stateName = document.getElementById("name").value;
let stateCode = document.getElementById("code").value;

/* Check Empty */

if(stateName==""){
alert("State name cannot be empty");
return false;
}

if(stateCode==""){
alert("State code cannot be empty");
return false;
}

/* Only letters allowed for state name */

let namePattern=/^[A-Za-z ]+$/;

if(!namePattern.test(stateName)){
alert("State name should contain only letters");
return false;
}

/* Only uppercase letters for code */

let codePattern=/^[A-Z]{2,3}$/;

if(!codePattern.test(stateCode)){
alert("State code must be 2 or 3 uppercase letters (Example: MH)");
return false;
}

return true;

}

</script>

</head>

<body>

<div class="state-container">

<h2>Add State</h2>

<form action="states" method="post" onsubmit="return validateState()">

<input type="text" id="name" name="name" placeholder="Enter State Name">

<input type="text" id="code" name="code" placeholder="Enter State Code">

<button type="submit" class="state-btn">Submit</button>

</form>

</div>

</body>
</html>