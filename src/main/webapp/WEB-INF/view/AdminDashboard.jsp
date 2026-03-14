<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

<style>
body {
	margin: 0;
	background: #e9ecef;
	font-family: Arial;
}

/* Navbar */
.navbar {
	box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.2);
}

/* Sidebar width */
.offcanvas-start {
	width: 230px !important;
}

/* Sidebar body */
.offcanvas-body {
	background: #2f3e4d;
	color: white;
}

/* Sidebar title */
.offcanvas-title {
	font-weight: bold;
	font-size: 20px;
}

/* Sidebar buttons */
.course-btn {
	width: 180px;
	text-align: left;
	background: #4b5d6b;
	border: none;
	font-weight: 500;
	transition: 0.3s;
}

/* Hover effect */
.course-btn:hover {
	background: rgb(192, 192, 192)15, 13) 88, 73);
	transform: translateX(5px);
}

/* Dropdown menu */
.dropdown-menu {
	border-radius: 8px;
	box-shadow: 0px 5px 15px rgb(192, 192, 192);
}

/* Dropdown item */
.dropdown-item {
	font-weight: 500;
	transition: 0.3s;
}

/* Hover */
.dropdown-item:hover {
	background: #1abc9c;
	color: white;
}
</style>

</head>

<body>

	<!-- Navbar -->

	<nav class="navbar navbar-dark bg-dark">

		<div class="container-fluid">

			<button
				class="btn btn-primary w-100 d-flex justify-content-between align-items-center"
				type="button" data-bs-toggle="offcanvas"
				data-bs-target="#offcanvasExample">

				<span class="navbar-toggler-icon"></span> <span
					class="ms-auto text-end text-white me-2"> Admin Dashboard </span>

			</button>

		</div>

	</nav>


	<!-- Sidebar -->

	<div class="offcanvas offcanvas-start" tabindex="-1"
		id="offcanvasExample">

		<div class="offcanvas-header">

			<h5 class="offcanvas-title">Admin Master</h5>

			<button type="button" class="btn-close text-reset"
				data-bs-dismiss="offcanvas"></button>

		</div>


		<div class="offcanvas-body">


			<!-- User -->

			<div class="dropdown mt-3">

				<button class="btn btn-primary dropdown-toggle course-btn"
					type="button" data-bs-toggle="dropdown">User</button>

				<ul class="dropdown-menu">

					<li><a class="dropdown-item" href="newcourse"> New Course
					</a></li>

					<li><a class="dropdown-item" href="viewc"> View Course </a></li>

				</ul>

			</div>


			<!-- State -->

			<div class="dropdown mt-3">

				<button class="btn btn-primary dropdown-toggle course-btn"
					type="button" data-bs-toggle="dropdown">State</button>

				<ul class="dropdown-menu">

					<li><a class="dropdown-item" href="addstates"> Add State </a>
					</li>

					<li><a class="dropdown-item" href="viewStates"> View State
					</a></li>

				</ul>

			</div>


			<!-- City -->

			<div class="dropdown mt-3">

				<button class="btn btn-primary dropdown-toggle course-btn"
					type="button" data-bs-toggle="dropdown">City</button>

				<ul class="dropdown-menu">

					<li><a class="dropdown-item" href="addcity"> Add City </a></li>

					<li><a class="dropdown-item" href="viewCities"> View City </a></li>

				</ul>

			</div>


			<!-- Location -->

			<div class="dropdown mt-3">

				<button class="btn btn-primary dropdown-toggle course-btn"
					type="button" data-bs-toggle="dropdown">Location</button>

				<ul class="dropdown-menu">

					<li><a class="dropdown-item" href="addLocation"> Add
							Location </a></li>

					<li><a class="dropdown-item" href="viewLocation"> View
							Location </a></li>

				</ul>

			</div>


			<!-- Properties -->

			<div class="dropdown mt-3">

				<button class="btn btn-primary dropdown-toggle course-btn"
					type="button" data-bs-toggle="dropdown">Properties</button>

				<ul class="dropdown-menu">

					<li><a class="dropdown-item" href="addProperty"> Add
							Property </a></li>

					<li><a class="dropdown-item" href="viewProperty"> View
							Property </a></li>

				</ul>

			</div>


			<!-- Amenities -->

			<div class="dropdown mt-3">

				<button class="btn btn-primary dropdown-toggle course-btn"
					type="button" data-bs-toggle="dropdown">Amenities</button>

				<ul class="dropdown-menu">

					<li><a class="dropdown-item" href="addAmenities"> Add
							Amenities </a></li>

					<li><a class="dropdown-item" href="viewAmenities"> View
							Amenities </a></li>

				</ul>

			</div>


			<!-- Report -->

			<div class="dropdown mt-3">

				<button class="btn btn-primary course-btn">Report</button>

			</div>


			<!-- Logout -->

			<div class="dropdown mt-3">

				<button class="btn btn-danger course-btn">Logout</button>

			</div>

		</div>

	</div>

</body>
</html>