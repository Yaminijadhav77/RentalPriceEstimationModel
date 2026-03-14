<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<title>Edit City</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

    <h2>Update City</h2>

    <form action="updateCity" method="post">

        <!-- Hidden ID -->
        <input type="hidden" name="city_id" value="${city.city_id}">

        <div class="mb-3">
            <label class="form-label">City Name</label>
            <input type="text" name="city_name" value="${city.city_name}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Pincode</label>
            <input type="text" name="pincode" value="${city.pincode}" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-primary">Update City</button>

        <a href="viewCities" class="btn btn-secondary">Back</a>

    </form>

</div>

</body>
</html>