<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<title>View Cities</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-4">

    <h2>City List</h2>

    <a href="addcity" class="btn btn-success mb-3">Add New City</a>

    <table class="table table-bordered table-striped">

        <thead class="table-dark">
            <tr>
                <th>City Name</th>
                <th>Pincode</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>

        <c:forEach var="city" items="${cities}">

            <tr>

                <td>${city.city_name}</td>

                <td>${city.pincode}</td>

                <!-- STATUS BUTTON -->
                <td>

                    <c:choose>

                        <c:when test="${city.status == 'Active'}">

                            <a href="toggleCityStatus?id=${city.city_id}&status=Inactive"
                               class="btn btn-success btn-sm">
                               Active
                            </a>

                        </c:when>

                        <c:otherwise>

                            <a href="toggleCityStatus?id=${city.city_id}&status=Active"
                               class="btn btn-danger btn-sm">
                               Inactive
                            </a>

                        </c:otherwise>

                    </c:choose>

                </td>

                <!-- ACTION BUTTONS -->
                <td>

                    <c:choose>

                        <c:when test="${city.status == 'Active'}">

                            <a href="editCity?id=${city.city_id}" class="btn btn-primary btn-sm">
                                Update
                            </a>

                            <a href="deleteCity?id=${city.city_id}"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Delete this city?')">
                               Delete
                            </a>

                        </c:when>

                        <c:otherwise>

                            <button class="btn btn-secondary btn-sm" disabled>
                                Update
                            </button>

                            <button class="btn btn-secondary btn-sm" disabled>
                                Delete
                            </button>

                        </c:otherwise>

                    </c:choose>

                </td>

            </tr>

        </c:forEach>

        </tbody>

    </table>

</div>

</body>
</html>