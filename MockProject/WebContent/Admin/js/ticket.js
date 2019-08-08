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

function editTicket() {
  if (selectedTicket.length > 0) {
     var nameTicket = selectedTicket[0];
//    alert(nameSeller);
  
    $("#idTicketEdit").attr('value',selectedTicket[0]);
    $("#dateGoEdit").attr('value',selectedTicket[1]);
    $("#dateBookEdit").attr('value',selectedTicket[2]);
    $("#seatNumberEdit").attr('value',selectedTicket[3]);
    $("#statusEdit").attr('value',selectedTicket[4]);
    $("#priceEdit").attr('value',selectedTicket[5]);
    $("#phoneEdit").attr('value',selectedTicket[6]);
    $("#nameEdit").attr('value',selectedTicket[7]);
    $("#idCustomerEdit").attr('value',selectedTicket[8]);
    $("#editTicket").modal("show");
  }
}
function deleteTicket() {
  if (selectedTicket.length > 0) {
    var nameTicket = selectedTicket[0];
    alert(nameTicket);

    $("#deleteSeller").modal("show");
    $("#yesdeleteSeller").click(function() {
      alert("OK");
      //gọi ajax để xóa
    });
  } else {
    alert("Please choose seller to delete!!!");
  }
}
