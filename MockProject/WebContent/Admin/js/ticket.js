//$("#mytableticket").DataTable();
$(document).ready(function() {
	$('#mytableticket').DataTable( {
		"lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
	} );
} );

callContent("manageTicket");

//ManageSeller Table-Start

//ManageUser Table-End

$("#mytableticket").on('click','.btn-primary',function(){
    // get the current row
    var currentRow=$(this).closest("tr"); 
  
    var col0=currentRow.find("td:eq(0)").text(); // get current row 1st TD value
    $("#idTicketEdit").attr('value',col0);
    var col1=currentRow.find("td:eq(1)").text(); // get current row 2nd TD
    $("#dateGoEdit").attr('value',col1);
    var col2=currentRow.find("td:eq(2)").text(); // get current row 3rd TD
    $("#dateBookEdit").attr('value',col2);
    var col3=currentRow.find("td:eq(3)").text(); // get current row 3rd TD
    $("#seatNumberEdit").attr('value',col3);
    var col4=currentRow.find("td:eq(4)").text(); // get current row 3rd TD
    $("#statusEdit").attr('value',col4);
    var col5=currentRow.find("td:eq(5)").text(); // get current row 3rd TD
    $("#priceEdit").attr('value',col5);
    var col6=currentRow.find("td:eq(6)").text(); // get current row 3rd TD
    $("#phoneEdit").attr('value',col6);
    var col7=currentRow.find("td:eq(7)").text(); // get current row 3rd TD
    $("#nameEdit").attr('value',col7);
    var col8=currentRow.find("td:eq(8)").text(); // get current row 3rd TD
    $("#idCustomerEdit").attr('value',col8);
    $("#editTicket").modal("show");
});

function getDeleteTicketConfirmation(){
	   return confirm("Do you want to delete!");
}
function getUpdateConfirmation(){
	   return confirm("Check your information before update");
}

