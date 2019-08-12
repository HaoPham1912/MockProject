


//$("#mytable").DataTable();
$(document).ready(function() {
	$('#mytable').DataTable( {
		"lengthMenu": [[1, 2, 3, -1], [1, 2, 3, "All"]]
	} );
} );


var selectedUser = [];

//chọn user
$("#mytable tbody").on("click", "tr", function() {
	if ($(this).hasClass("selected")) {
		$(this).removeClass("selected");
		selectedUser = [];
	} else {
		$("#mytable tr.selected").removeClass("selected");
		$(this).addClass("selected");
		selectedUser = [];
		$(this)
		.find("td")
		.each((index, element) => {
			selectedUser.push($(element).text());
		});
	}
	console.log(selectedUser);
});
//hàm gọi content các trang nhét ajax vào từng case
function callContent(element) {
	$(".generalClass").css("display", "none");
	//gọi thành công thì mở modal lên
	$("#" + element).css("display", "block");
}

function editUser() {
	if (selectedUser.length > 0) {
		var nameUser = selectedUser[0];
//		alert(nameUser);

		$("#idUserEdit").attr('value',selectedUser[0]);
		$("#usernameUserEdit").attr('value',selectedUser[1]);
		$("#nameUserEdit").attr('value',selectedUser[2]);
		$("#phoneUserEdit").attr('value',selectedUser[3]);
		$("#emailUserEdit").attr('value',selectedUser[4]);
		$("#addressUserEdit").attr('value',selectedUser[5]);
		$("#editUser").modal("show");
	} else {
		alert("Please choose user to edit!!!");
	}
}


function deleteUser() {
	if (selectedUser.length > 0) {
		var nameUser = selectedUser[0];
		alert(nameUser);

		$("#deleteUser").modal("show");
		$("#yesdeleteUser").click(function() {
			alert("OK");
			//gọi ajax để xóa
		});
	} else {
		alert("Please choose user to delete!!!");
	}
}
//thêm
//$("#mytableseller").DataTable();
$(document).ready(function() {
	$('#mytableseller').DataTable( {
		"lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
	} );
  } );
  function myFunction() {
	  document.getElementById("addAdmin").style.color = "red";
  }
  
  var selectedSeller = [];
  //ManageSeller Table-Start
  //chọn seller
  $("#mytableseller tbody").on("click", "tr", function() {
	if ($(this).hasClass("selected")) {
	  $(this).removeClass("selected");
	  selectedSeller = [];
	} else {
	  $("#mytableseller tr.selected").removeClass("selected");
	  $(this).addClass("selected");
	  selectedSeller = [];
	  $(this)
		.find("td")
		.each((index, element) => {
		  selectedSeller.push($(element).text());
		});
	}
	console.log(selectedSeller);
  });
  //ManageUser Table-End
  
  function editSeller() {
	if (selectedSeller.length > 0) {
	   var nameSeller = selectedSeller[0];
  //    alert(nameSeller);
	
	  $("#idSellerEdit").attr('value',selectedSeller[0]);
	  $("#usernameSellerEdit").attr('value',selectedSeller[1]);
	  $("#nameSellerEdit").attr('value',selectedSeller[2]);
	  $("#phoneSellerEdit").attr('value',selectedSeller[3]);
	  $("#emailSellerEdit").attr('value',selectedSeller[4]);
	  $("#addressSellerEdit").attr('value',selectedSeller[5]);
	  $("#editSeller").modal("show");
	} else {
	  alert("Please choose seller to edit!!!");
	}
  }
  function deleteSeller() {
	if (selectedSeller.length > 0) {
	  var nameSeller = selectedSeller[0];
	  alert(nameSeller);
  
	  $("#deleteSeller").modal("show");
	  $("#yesdeleteSeller").click(function() {
		alert("OK");
		//gọi ajax để xóa
	  });
	} else {
	  alert("Please choose seller to delete!!!");
	}
  }
  