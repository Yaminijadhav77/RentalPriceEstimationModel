function changeStatus(id){

    fetch("changeStateStatus?id=" + id)
    .then(response => response.text())
    .then(status => {

		
        let badge = document.getElementById("statusBadge_" + id);
        let btn = document.getElementById("statusBtn_" + id);
        let editBtn = document.getElementById("editBtn_" + id);

		btn.innerText = status;
		if(status === "Active"){

		btn.classList.remove("btn-danger");
		btn.classList.add("btn-success");

		}else{

		btn.classList.remove("btn-success");
		btn.classList.add("btn-danger");

		}


    });

}