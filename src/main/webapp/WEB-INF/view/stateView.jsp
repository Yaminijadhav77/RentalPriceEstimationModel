<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View States</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>

	<div class="container mt-4">

		<h2>State List</h2>

		<a href="addstates" class="btn btn-success mb-3">Add New State</a>

		<table class="table table-bordered table-striped">

			<thead class="table-dark">

				<tr>

					<th>Name</th>

					<th>State Code</th>

					<th>Status</th>

					<th>Actions</th>

				</tr>

			</thead>

			<tbody>

				<c:forEach var="state" items="${states}">

					<tr>

						<td>${state.name}</td>

						<td>${state.stateCode}</td>

						<td><c:choose>

								<c:when test="${state.status == 'Active'}">

									<a class="btn btn-success btn-sm"
										href="toggleState/${state.state_id}"> Active </a>

								</c:when>

								<c:otherwise>

									<a class="btn btn-danger btn-sm"
										href="toggleState/${state.state_id}"> Inactive </a>

								</c:otherwise>

							</c:choose></td>

						<td><c:choose>

								<c:when test="${state.status == 'Active'}">

									<a class="btn btn-primary btn-sm"
										href="editState?id=${state.state_id}"> Update </a>

									<a class="btn btn-danger btn-sm"
										href="deleteState?id=${state.state_id}"
										onclick="return confirm('Are you sure you want to delete this state?');">
										Delete </a>

								</c:when>

								<c:otherwise>

									<button class="btn btn-secondary btn-sm" disabled>
										Update</button>

									<button class="btn btn-secondary btn-sm" disabled>
										Delete</button>

								</c:otherwise>

							</c:choose></td>

					</tr>

				</c:forEach>

			</tbody>

		</table>

	</div>

</body>

</html>