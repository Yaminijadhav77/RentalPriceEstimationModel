<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>

<link rel="stylesheet" href="<c:url value='/resources/style.css'/>">
<script type='text/javascript' src="<c:url value='/resources/JS/ajax.js'/>">
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<style>
	body{
margin:0;
background:#e9ecef;
font-family:Arial;
}

/* Sidebar */

.sidebar{
width:220px;
height:100vh;
background:#2f3e4d;
position:fixed;
padding-top:20px;
}

/* NEW CSS */

.course-btn{
width:200px;
text-align:centert;
}
	
	</style>
</head>
<body>

<div class="dark-conatiner">
	<nav class="navbar navbar-dark bg-dark m-0">
		<div style="width: 100%">
			<div class="container-fluid d-flex align-items-center">

				<button
					class="btn btn-primary w-100 d-flex justify-content-between align-items-center "
					type="button" data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasExample">

					<!-- LEFT icon -->
					<span class="navbar-toggler-icon"></span>

					<!-- RIGHT text -->
					<span class="ms-auto text-end text-white me-2"> Admin Dashboard</span>

				</button>

			</div>

		</div>
	</nav>
	<div class="offcanvas offcanvas-start" tabindex="-1"
		id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
		<div class="offcanvas-header">

			<h5 class="offcanvas-title" id="offcanvasExampleLabel">Admin
				Master</h5>
			<button type="button" class="btn-close text-reset"
				data-bs-dismiss="offcanvas"></button>
		</div>
		<div class="offcanvas-body bg-dark text-white">

			<div class="dropdown mt-3">
				<button class="btn btn-primary dropdown-toggle course-btn" type="button"
					data-bs-toggle="dropdown">User</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item .text-hover" href='newcourse'>New Course</a></li>
					<li><a class="dropdown-item .text-hover" href="viewc">View Course</a></li>
				</ul>
			</div>
			<div class="dropdown mt-3">
				<button class="btn btn-primary dropdown-toggle course-btn" type="button"
					data-bs-toggle="dropdown">State</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item .text-hover " href='addstates'>New Subject</a></li>
					<!-- <li><a class="dropdown-item text-hover" href='viewStates'>View Subject</a></li> -->
					<li><a class="dropdown-item text-hover" href="<c:url value='/viewStates'/>">View States</a></li>
				</ul>
			</div>
			<div class="dropdown mt-3">
				<button class="btn btn-primary dropdown-toggle course-btn" type="button"
					data-bs-toggle="dropdown">City</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item .text-hover " href='addsubject'>New Subject</a></li>
					<li><a class="dropdown-item .text-hover" href='viewsubject'>View Subject</a></li>
				</ul>
			</div>
			<div class="dropdown mt-3">
				<button class="btn btn-primary dropdown-toggle course-btn" type="button"
					data-bs-toggle="dropdown">Location</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item .text-hover " href='addsubject'>New Subject</a></li>
					<li><a class="dropdown-item .text-hover" href='viewsubject'>View Subject</a></li>
				</ul>
			</div>
			<div class="dropdown mt-3">
				<button class="btn btn-primary dropdown-toggle course-btn" type="button"
					data-bs-toggle="dropdown">Properties</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item .text-hover " href='addsubject'>New Subject</a></li>
					<li><a class="dropdown-item .text-hover" href='viewsubject'>View Subject</a></li>
				</ul>
			</div><div class="dropdown mt-3">
				<button class="btn btn-primary dropdown-toggle course-btn" type="button"
					data-bs-toggle="dropdown">Amenities</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item .text-hover " href='addsubject'>New Subject</a></li>
					<li><a class="dropdown-item .text-hover" href='viewsubject'>View Subject</a></li>
				</ul>
			</div><div class="dropdown mt-3">
				<button class="btn btn-primary dropdown-toggle course-btn" type="button"
					data-bs-toggle="dropdown">Report</button>
				
			</div><div class="dropdown mt-3">
				<button class="btn btn-primary dropdown-toggle course-btn" type="button"
					data-bs-toggle="dropdown">Logout</button>
				
			</div>
		</div>
	</div>
	</div>
</body>
</html>
