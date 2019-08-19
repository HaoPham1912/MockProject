//$("#mytableseller").DataTable();
$(document).ready(function() {
  $('#mytablebuses').DataTable( {
      "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
  } );
} );

callContent("manageBuses");
var selectedBuses = [];
//ManageSeller Table-Start
//chọn seller
$("#mytablebuses tbody").on("click", "tr", function() {
  if ($(this).hasClass("selected")) {
    $(this).removeClass("selected");
    selectedBuses = [];
  } else {
    $("#mytablebuses tr.selected").removeClass("selected");
    $(this).addClass("selected");
    selectedBuses = [];
    $(this)
      .find("td")
      .each((index, element) => {
        selectedBuses.push($(element).text());
      });
  }
  console.log(selectedBuses);
});
//ManageUser Table-End

/*function editSeller() {
  if (selectedBuses.length > 0) {
     var nameSeller = selectedBuses[0];
//    alert(nameSeller);
  
    $("#idSellerEdit").attr('value',selectedBuses[0]);
    $("#usernameSellerEdit").attr('value',selectedBuses[1]);
    $("#nameSellerEdit").attr('value',selectedBuses[2]);
    $("#phoneSellerEdit").attr('value',selectedBuses[3]);
    $("#emailSellerEdit").attr('value',selectedBuses[4]);
    $("#addressSellerEdit").attr('value',selectedBuses[5]);
    $("#editSeller").modal("show");
  } else {
    alert("Please choose seller to edit!!!");
  }
}*/
//Get it buses
function getIdBuses(){
	if (selectedBuses.length > 0) {
		var idBuses = selectedBuses[0];
		$("#idBusesSelected").attr('value',selectedBuses[0]);
		$("#startPlaceSelected").attr('value',selectedBuses[1]);
		$("#endPlaceSelected").attr('value',selectedBuses[2]);
		$("#distanceSelected").attr('value',selectedBuses[3]);
		$("#priceSelected").attr('value',selectedBuses[4]);
		$("#getIdBuses").modal("show");
	}
}
//
/*function deleteSeller() {
  if (selectedBuses.length > 0) {
    var nameSeller = selectedBuses[0];
    alert(nameSeller);

    $("#deleteSeller").modal("show");
    $("#yesdeleteSeller").click(function() {
      alert("OK");
      //gọi ajax để xóa
    });
  } else {
    alert("Please choose seller to delete!!!");
  }
}*/
