<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update State</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-4">

<h2>Update State</h2>

<form action="updateState" method="post">

<input type="hidden" name="state_id" value="${state.state_id}">

<div class="mb-3">
<label class="form-label">State Name</label>
<input type="text" class="form-control" name="name" value="${state.name}" required>
</div>

<div class="mb-3">
<label class="form-label">State Code</label>
<input type="text" class="form-control" name="stateCode" value="${state.stateCode}" required>
</div>

<button type="submit" class="btn btn-primary">Update</button>
<a href="viewStates" class="btn btn-secondary">Cancel</a>

</form>

</div>

</body>
