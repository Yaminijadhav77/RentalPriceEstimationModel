<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View States</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Optional Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>


<!-- Main Content -->
<div class="main-content">

    <h2>State List</h2>

    <!-- Add New State Button -->
    <a href="viewStates" class="btn btn-success mb-3">Add New State</a>

    <!-- States Table -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Code</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="state" items="${states}">
                <tr>
                    <td>${state.state_id}</td>
                    <td>${state.name}</td>
                    <td>${state.stateCode}</td>
                    <td>
                        <!-- Update button -->
                        <a href="editState?id=${state.state_id}" class="btn btn-primary btn-sm">Update</a>

                        <!-- Delete button -->
                        <a href="deleteState?id=${state.state_id}" class="btn btn-danger btn-sm"
                           onclick="return confirm('Are you sure you want to delete this state?');">
                           Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>