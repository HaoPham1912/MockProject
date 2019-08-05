//$("#mytableseller").DataTable();
$(document).ready(function() {
  $('#mytableseller').DataTable( {
      "lengthMenu": [[5, 10, 15, -1], [5, 10, 15, "All"]]
  } );
} );

callContent("manageSeller");
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
    alert(nameSeller);
  
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
