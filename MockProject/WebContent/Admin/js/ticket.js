//$("#mytableticket").DataTable();
$(document).ready(function() {
  $('#mytableticket').DataTable( {
      "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
  } );
} );

callContent("manageTicket");
var selectedTicket = [];
//ManageSeller Table-Start
//chọn seller
$("#mytableticket tbody").on("click", "tr", function() {
  if ($(this).hasClass("selected")) {
    $(this).removeClass("selected");
    selectedTicket = [];
  } else {
    $("#mytableticket tr.selected").removeClass("selected");
    $(this).addClass("selected");
    selectedTicket = [];
    $(this)
      .find("td")
      .each((index, element) => {
        selectedTicket.push($(element).text());
      });
  }
  console.log(selectedTicket);
});
//ManageUser Table-End

function editSeller() {
  if (selectedTicket.length > 0) {
     var nameSeller = selectedTicket[0];
//    alert(nameSeller);
  
    $("#idSellerEdit").attr('value',selectedTicket[0]);
    $("#usernameSellerEdit").attr('value',selectedTicket[1]);
    $("#nameSellerEdit").attr('value',selectedTicket[2]);
    $("#phoneSellerEdit").attr('value',selectedTicket[3]);
    $("#emailSellerEdit").attr('value',selectedTicket[4]);
    $("#addressSellerEdit").attr('value',selectedTicket[5]);
    $("#editSeller").modal("show");
  } else {
    alert("Please choose seller to edit!!!");
  }
}
function deleteSeller() {
  if (selectedTicket.length > 0) {
    var nameSeller = selectedTicket[0];
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
