<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--=== Favicon ===-->
<link href="seat.css" rel="stylesheet">
<script src="assets/js/seat.js"></script>
</head>

<body class="loader-active" onload="setAvailableSeat(${arrSeat})">
	<jsp:include page="headerforUser.jsp" />
	<!--== What We Do Area Start ==-->
	<section id="what-do-area" class=""
		style="padding-top: 50px; padding-bottom: 50px;">
		<div class="container">
			<div class="row">
				<div class="col-xs-4 col-md-4">
					<div id="title-seat" style="margin-bottom: 20px">
						<h5 style="color: #F9AF00">1. Choose your seat</h5>
					</div>
					<div class="card card-product mb-0" style="border: none;">
						<table id="myTable">
							<tbody>
								<tr>
									<th scope="row"></th>
									<div class=" col-md-4">
										<td>
											<div
												style="display: inline-block; width: 15px; height: 15px; border: 1px solid #919191; float: left; margin-left: 20px; margin-right: 5px; background-color: #fff;">
											</div> <span style="float: left">Available</span>
										</td>
									</div>
									<div class=" col-md-4">
										<td>
											<div
												style="display: inline-block; width: 15px; height: 15px; border: 1px solid #CFCFCF; background-color: #CFCFCF; float: left; margin-left: 10px; margin-right: 5px;">
											</div> <span style="float: left">Unavailable</span>
										</td>
									</div>
									<div class=" col-md-4">
										<td>
											<div
												style="display: inline-block; width: 15px; height: 15px; border: 1px solid #BADF41; background-color: #BADF41; float: left; margin-left: 10px; margin-right: 5px;">
											</div> <span style="float: left">Chose</span>
										</td>
									</div>
								</tr>
							</tbody>
						</table>
						<table id="table">
							<tbody>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td COLSPAN=4><label id="wheel"></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td COLSPAN=2><label>Floor1</td>
										<td COLSPAN=2><label>Floor2</td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat1col1"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="1"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat1col2"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="2"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat1col3"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="3"></button></td>
										<td><button type="button" class="seat" id="seat1col4"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="4"></button></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat1col1"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="5"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat1col2"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="6"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat1col3"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="7"></button></td>
										<td><button type="button" class="seat" id="seat1col4"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="8"></button></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat1col1"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="9"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat1col2"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="10"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat1col3"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="11"></button></td>
										<td><button type="button" class="seat" id="seat1col4"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="12"></button></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat1col1"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="13"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat1col2"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="14"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat1col3"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="15"></button></td>
										<td><button type="button" class="seat" id="seat1col4"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="16"></button></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat1col1"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="17"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat1col2"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="18"></button></td>
										<td style="text-align: right;"><button type="button"
												class="seat" id="seat1col3"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="19"></button></td>
										<td><button type="button" class="seat" id="seat1col4"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="20"></button></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat1col1"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="21"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat1col2"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="22"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat1col3"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="23"></button></td>
										<td><button type="button" class="seat" id="seat1col4"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="24"></button></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat1col1"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="25"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat1col2"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="26"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat1col3"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="27"></button></td>
										<td><button type="button" class="seat" id="seat1col4"
												onclick="changeSeatColor(this,${numOfSeat});getCost(${price});getSeat()"
												title="28"></button></td>
									</tr>
								</div>
							</tbody>
						</table>
					</div>
					<div class="card card-product mb-0">
						<table width="350" height="65">
							<tr>
								<th scope="row"></th>
								<td><b><p>Selected Seat:</p></b></td>
								<td style="float: right">
									<p id="numSeat">0</p>
								</td>
							</tr>
							<tr>
								<th scope="row"></th>
								<td><b><p>Cost:</p></b></td>
								<td style="float: right"><b><p id="cost">0</p></b></td>
							</tr>
							<tr>
								<th scope="row"></th>
								<td><b><p>Selected Seat:</p></b></td>
								<td style="float: right"><b><p id="seatDetail">0</p></b></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<div id="title-seat" style="margin-bottom: 20px">
						<h5 style="color: #F9AF00">2. Depart place and destination</h5>
					</div>
					<div class="card card-product mb-0"
						style="height: 605px; border: none;">
						<div class="row" >
							<div class=" col-md-6" style="text-align:center">
								<h5>${address1}</h5>
							</div> 
							<div class=" col-md-6" >
								<h5>${time_go}</h5>
							</div> 
						</div>
						<div class="row" style="margin-top:50px;margin-bottom:50px;">
							<div class=" col-md-6" style="text-align:center">
								<img src="https://image.flaticon.com/icons/png/128/25/25238.png" style="width:50px;height:50px;">
							</div> 
							<div class=" col-md-6" >
								<p>${time_estimate}</p>
							</div> 
						</div>
						<div class="row" >
							<div class=" col-md-6" style="text-align:center">
								<h5>${address2}</h5>
							</div>
							<div class=" col-md-4">
								<h5>${time_end}</h5>
							</div>
						</div>												
<%-- 						<h3>${address1}</h3>
						<h3>${address2}</h3> --%>
					</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<div id="title-seat" style="margin-bottom: 20px">
						<h5 style="color: #F9AF00">3. Your information</h5>
					</div>
					<div class="card card-product mb-0"
						style="height: 605px; border: none;">
						<form method="POST"
							action="${pageContext.request.contextPath}/cus-viewSeatServlet">
							<div class="form-group float-label-control">
								<label for=""><b>Full Name</b></label> <input type="text"
									class="form-control" placeholder="Full Name" name="name"
									value="${customer.name}">
							</div>
							<div class="form-group float-label-control">
								<label for=""><b>Phone Number</b></label> <input type="text"
									class="form-control" name="phone" placeholder="Phone Number"
									value="${customer.phone}">
							</div>
							<div class="form-group float-label-control">
								<label for=""><b>Note</b></label>
								<textarea class="form-control" placeholder="Note..." rows="3"
									name="note"></textarea>
							</div>
							<input type="hidden" name="price" value="${price}"> <input
								type="hidden" name="id_bus" value="${id_bus}"> <input
								type="hidden" name="inputSeatDetail" id="inputSeatDetail">
							<button type="submit" class="btn btn-warning" id="book">
								<i class="fa fa-sign-in"></i><b>Book Ticket</b>
							</button>

						</form>
					</div>
				</div>
			</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>

</html>