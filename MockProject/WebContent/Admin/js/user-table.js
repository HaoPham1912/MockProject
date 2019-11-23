
//$("#mytable").DataTable();
$(document).ready(function() {
	$('#mytable').DataTable( {
		"lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
	} );
} );
//hàm gọi content các trang nhét ajax vào từng case
function callContent(element) {
	$(".generalClass").css("display", "none");
	//gọi thành công thì mở modal lên
	$("#" + element).css("display", "block");
}

$("#mytable").on('click','.btn-primary',function(){
    // get the current row
    var currentRow=$(this).closest("tr"); 
  
    var col0=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
    $("#idUserEdit").attr('value',col0);
    var col1=currentRow.find("td:eq(1)").text(); // get current row 2nd TD
    $("#usernameUserEdit").attr('value',col1);
    var col2=currentRow.find("td:eq(2)").text(); // get current row 3rd TD
    $("#nameUserEdit").attr('value',col2);
    var col3=currentRow.find("td:eq(3)").text(); // get current row 3rd TD
    $("#phoneUserEdit").attr('value',col3);
    var col4=currentRow.find("td:eq(4)").text(); // get current row 3rd TD
    $("#emailUserEdit").attr('value',col4);
    var col5=currentRow.find("td:eq(5)").text(); // get current row 3rd TD
    $("#addressUserEdit").attr('value',col5);
    $("#editUser").modal("show");
});

//seller
//$("#mytableseller").DataTable();
$(document).ready(function() {
	$('#mytableseller').DataTable( {
		"lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
	} );
  } );
  function myFunction() {
	  document.getElementById("addAdmin").style.color = "red";
  }
  //ManageUser Table-End
  
  
  $("#mytableseller").on('click','.btn-primary',function(){
	    // get the current row
	    var currentRow=$(this).closest("tr"); 
	  
	    var col0=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
	    $("#idSellerEdit").attr('value',col0);
	    var col1=currentRow.find("td:eq(1)").text(); // get current row 2nd TD
	    $("#usernameSellerEdit").attr('value',col1);
	    var col2=currentRow.find("td:eq(2)").text(); // get current row 3rd TD
	    $("#nameSellerEdit").attr('value',col2);
	    var col3=currentRow.find("td:eq(3)").text(); // get current row 3rd TD
	    $("#phoneSellerEdit").attr('value',col3);
	    var col4=currentRow.find("td:eq(4)").text(); // get current row 3rd TD
	    $("#emailSellerEdit").attr('value',col4);
	    var col5=currentRow.find("td:eq(5)").text(); // get current row 3rd TD
	    $("#addressSellerEdit").attr('value',col5);
	    $("#editSeller").modal("show");
	});
 
  //admin
  $(document).ready(function() {
		$('#mytableAdmin').DataTable( {
			"lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
		} );
	  } );
  

  $("#mytableAdmin").on('click','.btn-primary',function(){
	    // get the current row
	    var currentRow=$(this).closest("tr"); 
	  
	    var col0=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
	    $("#idAdminEdit").attr('value',col0);
	    var col1=currentRow.find("td:eq(1)").text(); // get current row 2nd TD
	    $("#usernameAdminEdit").attr('value',col1);
	    var col2=currentRow.find("td:eq(2)").text(); // get current row 3rd TD
	    $("#nameAdminEdit").attr('value',col2);
	    var col3=currentRow.find("td:eq(3)").text(); // get current row 3rd TD
	    $("#phoneAdminEdit").attr('value',col3);
	    var col4=currentRow.find("td:eq(4)").text(); // get current row 3rd TD
	    $("#emailAdminEdit").attr('value',col4);
	    var col5=currentRow.find("td:eq(5)").text(); // get current row 3rd TD
	    $("#addressAdminEdit").attr('value',col5);
	    $("#editAdmin").modal("show");
	});