<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--=== Favicon ===-->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

<title>Cardoor - Car Rental HTML Template</title>

<!--=== Bootstrap CSS ===-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<!--=== Slicknav CSS ===-->
<link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
<!--=== Magnific Popup CSS ===-->
<link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
<!--=== Owl Carousel CSS ===-->
<link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
<!--=== Gijgo CSS ===-->
<link href="assets/css/plugins/gijgo.css" rel="stylesheet">
<!--=== FontAwesome CSS ===-->
<link href="assets/css/font-awesome.css" rel="stylesheet">
<!--=== Theme Reset CSS ===-->
<link href="assets/css/reset.css" rel="stylesheet">
<!--=== Main Style CSS ===-->
<link href="style.css" rel="stylesheet">
<!--=== Responsive CSS ===-->
<link href="assets/css/responsive.css" rel="stylesheet">
<!--  -->
<link href="Admin/assets/css/bootstrap.min.css" rel="stylesheet" />

<link href="Admin/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.4.0/css/bootstrap4-toggle.min.css"
	rel="stylesheet">
<!-- css -->
<link href="Admin/css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="Admin/vendor/datatables/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="Admin/css/AdminPage.css">
<link
	href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css"
	rel="stylesheet">
<!-- CSS Just for demo purpose, don't include it in your project -->

<link href="Customer/update.css" rel="stylesheet" />
</head>

<body class="loader-active">

	<!--== Preloader Area Start ==-->
	<div class="preloader">
		<div class="preloader-spinner">
			<div class="loader-content">
				<img src="assets/img/preloader.gif" alt="JSOFT">
			</div>
		</div>
	</div>
	<!--== Preloader Area End ==-->

	<!--== Header Area Start ==-->
	<header id="header-area" class="fixed-top">
		<!--== Header Top Start ==-->
		<div id="header-top" class="d-none d-xl-block">
			<div class="container">
				<div class="row">
					<!--== Single HeaderTop Start ==-->
					<div class="col-lg-3 text-left">
						<i class="fa fa-map-marker"></i> 802/2, Mirpur, Dhaka
					</div>
					<!--== Single HeaderTop End ==-->

					<!--== Single HeaderTop Start ==-->
					<div class="col-lg-3 text-center">
						<i class="fa fa-mobile"></i> +1 800 345 678
					</div>
					<!--== Single HeaderTop End ==-->

					<!--== Single HeaderTop Start ==-->
					<div class="col-lg-3 text-center">
						<i class="fa fa-clock-o"></i> Mon-Fri 09.00 - 17.00
					</div>
					<!--== Single HeaderTop End ==-->

					<!--== Social Icons Start ==-->
					<div class="col-lg-3 text-right">
						<div class="header-social-icons">
							<a href="#"><i class="fa fa-behance"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a> <a href="#"><i
								class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<!--== Social Icons End ==-->
				</div>
			</div>
		</div>
		<!--== Header Top End ==-->

		<!--== Header Bottom Start ==-->
		<div id="header-bottom">
			<div class="container">
				<div class="row">
					<!--== Logo Start ==-->
					<div class="col-lg-4">
						<a href="http://localhost:8080/MockProject/cus-dashboard"
							class="logo"> <img src="assets/img/logo.png" alt="JSOFT">
						</a>
					</div>
					<!--== Logo End ==-->

					<!--== Main Menu Start ==-->
					<div class="col-lg-8 d-none d-xl-block">
						<nav class="mainmenu alignright">
							<ul>
								<li class="active"><a style="font-size: 20px"
									href="http://localhost:8080/MockProject/cus-dashboard">Home</a>
								</li>
							</ul>
						</nav>
					</div>
					<!--== Main Menu End ==-->
				</div>
			</div>
		</div>
		<!--== Header Bottom End ==-->
	</header>
	<!--== Header Area End ==-->

	<!--== Page Title Area Start ==-->
	<section id="page-title-area" class="section-padding overlay">
		<div class="container">
			<div class="row">
				<!-- Page Title Start -->
				<div class="col-lg-12">
					<div class="section-title  text-center">
						<h2>WELCOME TO MY BOOKING BUS SYSTEM</h2>
						<span class="title-line"><i class="fa fa-car"></i></span>
						<p>Wish you have a good trip.</p>
					</div>
				</div>
				<!-- Page Title End -->
			</div>
		</div>
	</section>
	<!--== Page Title Area End ==-->

	<!--== Login Page Content Start ==-->
	<section id="lgoin-page-wrap" class="section-padding">
		<div class="container">
			<div class="wizard-container">

				<div class="card wizard-card" data-color="orange" id="wizardProfile">

					<div class="wizard-header">
						<h3>
							<b>BUILD YOUR PROFILE <br>
						</h3>
					</div>

					<div class="wizard-navigation">
						<ul>
							<li><a href="#viewinfo" data-toggle="tab">View
									Infomation</a></li>
							<li><a href="#updateinfo" data-toggle="tab">Update
									Infomation</a></li>
							<li><a href="#viewticket" data-toggle="tab">View Ticket</a></li>
						</ul>

					</div>

					<div class="tab-content">
						<div class="tab-pane" id="viewinfo">
							<div class="row">
								</BR> </BR>
								<div class="col-sm-4 col-sm-offset-1">
									<div class="picture-container">
										<div class="picture">
											<img src="assets/img/vancho.jpg" class="picture-src" id=""
												title="" />

										</div>
									</div>
									<input type="button" type='submit'
										class='btn  btn-fill btn-warning btn-wd btn-sm' id='logout'
										value="Log out"
										onclick="window.location.href='${pageContext.request.contextPath}/logout'" />
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label>Your ID</label> <input type="text"
											value="${customerInfo.id_acc_cus}" placeholder="ID"
											name="id_acc_cus" readonly="readonly" required
											class="form-control">
									</div>

									<div class="form-group">
										<label>Your Name</label> <input value="${customerInfo.name}"
											placeholder="Name" name="name" readonly="readonly" required
											class="form-control">
									</div>
									<div class="form-group">
										<label>Your Phone </label> <input name="phoneupdate"
											type="text" pattern="[0-9]{10}" value="${customerInfo.phone}"
											placeholder="Phone Number" name="phone"
											title="Phone must be a number that contains 10 characters long"
											readonly required class="form-control">
									</div>
									<div class="form-group">
										<label>Your Email </label> <input name="emailupdate"
											type="email" value="${customerInfo.email}"
											placeholder="Email" name="email" readonly
											class="form-control">
									</div>
									<div class="form-group">
										<label>Your Address </label> <input name="addupdate"
											type="text" value="${customerInfo.address}"
											placeholder="Address" name="address" readonly
											class="form-control">
									</div>

									</br> <input type='button' style="float: right"
										class='btn btn-next btn-fill btn-warning btn-wd btn-sm'
										name='updateInfo' value='Edit' />
								</div>

							</div>
						</div>
						<div class="tab-pane" id="updateinfo">
							<div class="row">
								</BR> </BR>
								<div class="col-sm-4 col-sm-offset-1">
									<div class="picture-container">
										<div class="picture">
											<img src="assets/img/default-avatar.png" class="picture-src"
												id="wizardPicturePreview" title="" /> <input type="file"
												id="wizard-picture">
										</div>
										<h6>Chọn ảnh</h6>

									</div>

								</div>
								<div class="col-sm-6">
									<form
										action="${pageContext.request.contextPath}/cus-viewInfo?action=update"
										method="POST">
										<div class="form-group">
											<label>Your ID</label> <input type="text"
												value="${customerInfo.id_acc_cus}" placeholder="ID"
												name="id_acc_cus" readonly="readonly" required
												class="form-control">
										</div>
										<div class="form-group">
											<label>Name</label> <input value="${customerInfo.name}"
												placeholder="Name" name="name" required class="form-control"
												title="Please type your name">
										</div>
										<div class="form-group">
											<label>Phone </label> <input name="phone" type="text"
												pattern="[0-9]{10}" value="${customerInfo.phone}"
												placeholder="Phone Number" name="phone"
												title="Phone must be a number that contains 10 characters long"
												required class="form-control">
										</div>
										<div class="form-group">
											<label>Email </label> <input name="email" type="email"
												value="${customerInfo.email}" placeholder="Email"
												name="email" class="form-control"
												title="Please type your email" required>
										</div>
										<div class="form-group">
											<label>Address </label> <input name="address" type="text"
												value="${customerInfo.address}" placeholder="Address"
												name="address" class="form-control"
												title="Please type your address" required>
										</div>
										<br> <input style="float: right; margin-right: 10px"
											type='submit' class='btn btn-fill btn-warning btn-wd btn-sm'
											name='updatebtn' id='finish' value='Save' />
									</form>
									<c:if test="${UpdateInfoCusMes!=null}">
										<script type="text/javascript">
											alert("Your Update Successful!");
										</script>
									</c:if>
									<c:if test="${UpdateInfoCusFailed!=null}">
										<script type="text/javascript">
											alert("Your Update Failed!!!");
										</script>
									</c:if>
								</div>
							</div>
						</div>

						<div class="tab-pane" id="viewticket">
							<h4>Paid / Canceled</h4>
							<div class="col-md-12">
								<div class="table-responsive">
									<table id="mytableticket"
										class="table table-bordred table-striped">
										<thead>
											<th>ID</th>
											<th>Date Go</th>
											<th>Date Book</th>
											<th>Seat Number</th>
											<th>Price</th>
											<th>Start Place</th>
											<th>End Place</th>
											<th>Time Go</th>
											<th>Time Estimate</th>
											<th>Time End</th>
											<th>Car Position</th>
										</thead>
										<tbody>
											<c:forEach items="${listTicketBooked}" var="a">
												<c:set var="status" value="${a.status}"></c:set>
												<c:if test="${status==1}">
													<tr>
														<td>${a.id_ticket}</td>
														<td>${a.date_go}</td>
														<td>${a.date_book}</td>
														<td>${a.seat_number}</td>
														<td>${a.price}</td>
														<td>${a.start_place}</td>
														<td>${a.end_place}</td>
														<td>${a.time_go}</td>
														<td>${a.time_estimate}</td>
														<td>${a.time_end}</td>
														<td>${a.car_position}</td>
														<!-- <td>
															<p data-placement="top" data-toggle="tooltip"
																title="Delete">
																<button class="btn btn-danger" data-title="Delete"
																	data-toggle="modal" onclick="deleteTicket()">
																	<span class="fa fa-trash"></span>
																</button>
															</p>
														</td> -->
													</tr>
												</c:if>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<h4>UnPaid</h4>
							<div class="col-md-12">
								<div class="table-responsive">
									<table id="mytableticket"
										class="table table-bordred table-striped">
										<thead>
											<th>ID</th>
											<th>Date Go</th>
											<th>Date Book</th>
											<th>Seat Number</th>
											<th>Price</th>
											<th>Start Place</th>
											<th>End Place</th>
											<th>Time Go</th>
											<th>Time Estimate</th>
											<th>Time End</th>
											<th>Car Position</th>
											<th>Cancel</th>
										</thead>
										<tbody>
											<c:forEach items="${listTicketBooked}" var="a">
												<c:set var="status" value="${a.status}"></c:set>
												<c:if test="${status==0}">
													<tr>
														<td>${a.id_ticket}</td>
														<td>${a.date_go}</td>
														<td>${a.date_book}</td>
														<td>${a.seat_number}</td>
														<td>${a.price}</td>
														<td>${a.start_place}</td>
														<td>${a.end_place}</td>
														<td>${a.time_go}</td>
														<td>${a.time_estimate}</td>
														<td>${a.time_end}</td>
														<td>${a.car_position}</td>
														<td>
															<!-- <p data-placement="top" data-toggle="tooltip"
																title="Delete"> -->
															<form method="POST"
																action="${pageContext.request.contextPath}/cus-viewInfo?id=${a.id_ticket}&action=delete">
																<button class="btn btn-danger" data-title="Delete"
																	data-toggle="modal">
																	<span class="fa fa-trash"></span>
																</button>
															</form>
															</p>
														</td>
													</tr>
												</c:if>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
							<c:if test="${DeleteTicketCus!=null}">
								<script type="text/javascript">
									alert("The ticket have been deleted!!!");
								</script>
							</c:if>
							<c:if test="${DeleteTicketCusFailed!=null}">
								<script type="text/javascript">
									alert("Can't delete this ticket!!!");
								</script>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<!--   Creative Tim Branding   -->
			<!--   Big container   -->
			<div class="col-sm-8 col-sm-offset-2" style="padding-top: 120px">
				<!--      Wizard container        -->

				<!-- wizard container -->
			</div>
			<!-- end row -->
			<!--  big container -->
			</br>
			<hr>
			</br> </br> </br> </br> </br>
			<!-- Footer -->
		</div>
	</section>
	<!--== Login Page Content End ==-->

	<!--== Footer Area Start ==-->
	<section id="footer-area">
		<!-- Footer Widget Start -->
		<div class="footer-widget-area">
			<div class="container">
				<div class="row">
					<!-- Single Footer Widget Start -->
					<div class="col-lg-4 col-md-6">
						<div class="single-footer-widget">
							<h2>About Us</h2>
							<div class="widget-body">
								<img src="assets/img/logo.png" alt="JSOFT">
								<p>Lorem ipsum dolored is a sit ameted consectetur
									adipisicing elit. Nobis magni assumenda distinctio debitis, eum
									fuga fugiat error reiciendis.</p>

								<div class="newsletter-area">
									<form action="index.html">
										<input type="email" placeholder="Subscribe Our Newsletter">
										<button type="submit" class="newsletter-btn">
											<i class="fa fa-send"></i>
										</button>
									</form>
								</div>

							</div>
						</div>
					</div>
					<!-- Single Footer Widget End -->

					<!-- Single Footer Widget Start -->
					<div class="col-lg-4 col-md-6">
						<div class="single-footer-widget">
							<h2>Recent Posts</h2>
							<div class="widget-body">
								<ul class="recent-post">
									<li><a href="#"> Hello Bangladesh! <i
											class="fa fa-long-arrow-right"></i>
									</a></li>
									<li><a href="#"> Lorem ipsum dolor sit amet <i
											class="fa fa-long-arrow-right"></i>
									</a></li>
									<li><a href="#"> Hello Bangladesh! <i
											class="fa fa-long-arrow-right"></i>
									</a></li>
									<li><a href="#"> consectetur adipisicing elit? <i
											class="fa fa-long-arrow-right"></i>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Single Footer Widget End -->

					<!-- Single Footer Widget Start -->
					<div class="col-lg-4 col-md-6">
						<div class="single-footer-widget">
							<h2>get touch</h2>
							<div class="widget-body">
								<p>Lorem ipsum doloer sited amet, consectetur adipisicing
									elit. nibh auguea, scelerisque sed</p>

								<ul class="get-touch">
									<li><i class="fa fa-map-marker"></i> 800/8, Kazipara,
										Dhaka</li>
									<li><i class="fa fa-mobile"></i> +880 01 86 25 72 43</li>
									<li><i class="fa fa-envelope"></i> kazukamdu83@gmail.com</li>
								</ul>
								<a href="https://goo.gl/maps/b5mt45MCaPB2" class="map-show"
									target="_blank">Show Location</a>
							</div>
						</div>
					</div>
					<!-- Single Footer Widget End -->
				</div>
			</div>
		</div>
		<!-- Footer Widget End -->

		<!-- Footer Bottom Start -->
		<div class="footer-bottom-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Bottom End -->
	</section>
	<!--== Footer Area End ==-->

	<!--== Scroll Top Area Start ==-->
	<div class="scroll-top">
		<img src="assets/img/scroll-top.png" alt="JSOFT">
	</div>
	<!--== Scroll Top Area End ==-->

	<!--=======================Javascript============================-->
	<!--=== Jquery Min Js ===-->
	<script src="assets/js/jquery-3.2.1.min.js"></script>
	<!--=== Jquery Migrate Min Js ===-->
	<script src="assets/js/jquery-migrate.min.js"></script>
	<!--=== Popper Min Js ===-->
	<script src="assets/js/popper.min.js"></script>
	<!--=== Bootstrap Min Js ===-->
	<script src="assets/js/bootstrap.min.js"></script>
	<!--=== Gijgo Min Js ===-->
	<script src="assets/js/plugins/gijgo.js"></script>
	<!--=== Vegas Min Js ===-->
	<script src="assets/js/plugins/vegas.min.js"></script>
	<!--=== Isotope Min Js ===-->
	<script src="assets/js/plugins/isotope.min.js"></script>
	<!--=== Owl Caousel Min Js ===-->
	<script src="assets/js/plugins/owl.carousel.min.js"></script>
	<!--=== Waypoint Min Js ===-->
	<script src="assets/js/plugins/waypoints.min.js"></script>
	<!--=== CounTotop Min Js ===-->
	<script src="assets/js/plugins/counterup.min.js"></script>
	<!--=== YtPlayer Min Js ===-->
	<script src="assets/js/plugins/mb.YTPlayer.js"></script>
	<!--=== Magnific Popup Min Js ===-->
	<script src="assets/js/plugins/magnific-popup.min.js"></script>
	<!--=== Slicknav Min Js ===-->
	<script src="assets/js/plugins/slicknav.min.js"></script>

	<!--=== Mian Js ===-->
	<script src="assets/js/main.js"></script>
	<script src="Admin/assets/js/jquery-2.2.4.min.js"
		type="text/javascript"></script>
	<script src="Admin/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="Admin/assets/js/jquery.bootstrap.wizard.js"
		type="text/javascript"></script>
	<!--  Plugin for the Wizard -->
	<script src="Admin/assets/js/gsdk-bootstrap-wizard.js"></script>
	<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
	<script src="Admin/assets/js/jquery.validate.min.js"></script>
</body>

</html>