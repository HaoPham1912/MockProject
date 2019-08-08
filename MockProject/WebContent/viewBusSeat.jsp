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

<body class="loader-active">
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
					<div class="card card-product mb-0" style="border:none;">
						<table id="myTable" >
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
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="aaaa"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat1col2"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat1col3"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td><button type="button" class="seat" id="seat1col4"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat2col1"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat2col2"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat2col3"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td><button type="button" class="seat" id="seat2col4"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>

									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat3col1"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat3col2"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat3col3"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td><button type="button" class="seat" id="seat3col4"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>

									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat4col1"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat4col2"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat4col3"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td><button type="button" class="seat" id="seat4col4"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat5col1"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat5col2"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat5col3"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td><button type="button" class="seat" id="seat5col4"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>

									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat6col1"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat6col2"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat6col3"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td><button type="button" class="seat" id="seat6col4"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>

									</tr>
								</div>
								<div class=" col-md-4">
									<tr style="text-align: center">
										<th scope="row"></th>
										<td><button type="button" class="seat" id="seat7col1"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: left"><button type="button"
												class="seat" id="seat7col2"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td style="text-align: right"><button type="button"
												class="seat" id="seat7col3"
												onclick="changeSeatColor(this);getCost(${price})"
												data-toggle="tooltip" data-placement="bottom" title="Sốghế"></button></td>
										<td><button type="button" class="seat" id="seat7col4"
												data-toggle="tooltip"
												onclick="changeSeatColor(this);getCost(${price})"
												data-placement="bottom" title="Sốghế"></button></td>
									</tr>
								</div>
							</tbody>
						</table>
					</div>
					<div class="card card-product mb-0">
						<table width="350" height="65">						
							<tr>
								<th scope="row"></th>
								<td>
									<b><p>Selected Seat:</p></b>
								</td>
								<td style="float: right">
									<p id="numSeat">0</p>
								</td>
							</tr>
							<tr>
								<th scope="row"></th>
								<td>
									<b><p>Cost:</p></b>
								</td>
								<td style="float: right">
									<b><p id="cost"></p></b>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<div id="title-seat" style="margin-bottom: 20px">
						<h5 style="color: #F9AF00">2. Depart place and destination</h5>
					</div>
					<div class="card card-product mb-0" style="height:605px;border:none;">
						<h3>${address1}</h3>
						<h3>${address2}</h3>
					</div>
				</div>
				<div class="col-xs-4 col-md-4">
					<div id="title-seat" style="margin-bottom: 20px">	
						<h5 style="color: #F9AF00">3. Your information</h5>
					</div>
					<div class="card card-product mb-0" style="height:605px;border:none;">
						<form role="form">
							<div class="form-group float-label-control">
								<label for=""><b>Full Name</b></label> <input type="text"
									class="form-control" placeholder="Full Name" value="${customer.name}">
							</div>
							<div class="form-group float-label-control">
								<label for=""><b>Phone Number</b></label> <input type="text"
									class="form-control" placeholder="Phone Number" value="${customer.phone}">
							</div>						
							<div class="form-group float-label-control">
								<label for=""><b>Note</b></label>
								<textarea class="form-control" placeholder="Note..." rows="3"></textarea>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>

</html>