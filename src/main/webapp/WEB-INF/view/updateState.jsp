<form action="updateState" method="post">

<input type="hidden" name="state_id" value="${state.state_id}">

<div class="mb-3">
<label>State Name</label>
<input type="text" name="name" class="form-control" value="${state.name}">
</div>

<div class="mb-3">
<label>State Code</label>
<input type="text" name="stateCode" class="form-control" value="${state.stateCode}">
</div>

<button class="btn btn-primary">Update</button>

</form>