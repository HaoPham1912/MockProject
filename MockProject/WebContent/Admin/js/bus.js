//$("#mytableseller").DataTable();
$(document).ready(function() {
  $('#mytablebus').DataTable( {
      "lengthMenu": [[3, 5, 10, -1], [3, 5, 10, "All"]]
  } );
} );

callContent("manageBus");
var selectedBus = [];
//ManageSeller Table-Start
//chọn seller
$("#mytablebus tbody").on("click", "tr", function() {
  if ($(this).hasClass("selected")) {
    $(this).removeClass("selected");
    selectedBus = [];
  } else {
    $("#mytablebus tr.selected").removeClass("selected");
    $(this).addClass("selected");
    selectedBus = [];
    $(this)
      .find("td")
      .each((index, element) => {
        selectedBus.push($(element).text());
      });
  }
  console.log(selectedBus);
});
//Get id bus
function getIdBus(){
	if (selectedBus.length > 0) {
		var idBus = selectedBus[0];
		$("#idBusSelected").attr('value',selectedBus[0]);
		$("#timeGo").attr('value',selectedBus[1]);
		$("#carPosition").attr('value',selectedBus[2]);
		$("#timeEstimate").attr('value',selectedBus[3]);
		$("#getIdBus").modal("show");
	}
}
//
/*function deleteSeller() {
  if (selectedBus.length > 0) {
    var nameSeller = selectedBus[0];
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
