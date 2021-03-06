<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--=== Favicon ===-->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

<title>Booking Bus</title>
<link href="assets/css/main.css" rel="stylesheet">
<!--=== Bootstrap CSS ===-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<!--=== Animate CSS ===-->
<link href="assets/css/plugins/animate.css" rel="stylesheet">
<!--=== Vegas Min CSS ===-->
<link href="assets/css/plugins/vegas.min.css" rel="stylesheet">
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
<!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
						<i class="fa fa-map-marker"></i> 01, Vo Van Ngan
					</div>
					<!--== Single HeaderTop End ==-->

					<!--== Single HeaderTop Start ==-->
					<div class="col-lg-3 text-center">
						<i class="fa fa-mobile"></i> +84 934 021 059
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
								<li class="active"><a
									href="http://localhost:8080/MockProject/cus-dashboard">Home</a>
								</li>
								<li><a href="#" style="color: yellow">Hi! ${username}</a>
									<ul>
									<li><a href="${pageContext.request.contextPath}/cus-viewInfo">YOUR PROFILE</a></li>
								 <li><a href="${pageContext.request.contextPath}/logout">LOG OUT</a></li> 
								</ul>
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

	<!--== Slider Area Start ==-->
	<!--== Slider Area Start ==-->
	<section id="home-slider-area">
		<div class="home-slider-item slider-bg-1">
			<div class="container" style="max-height: 30px">
				<div class="row">
					<div class="col-lg-12">
						<div class="slideshowcontent">
							<h1>BOOK A TRIP TODAY!</h1>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="home-slider-item slider-bg-2">
			<div class="container" style="max-height: 30px">
				<div class="row">
					<div class="col-lg-12">
						<div class="slideshowcontent">
							<h1>SAVE YOUR MONEY</h1>

						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="home-slider-item slider-bg-3">
			<div class="container" style="max-height: 30px">
				<div class="row">
					<div class="col-lg-12">
						<div class="slideshowcontent">
							<h1>ENJOY YOUR JOURNEY</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--== Slider Area End ==-->

	<!--== Book A Car Area Start ==-->
	<div id="book-a-car">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="booka-car-content" style="padding-left: 200px">
						<form
							action="${pageContext.request.contextPath}/cus-viewBusServlet">
							<div class="header-text">
								<p>BusBooking.com- The Biggest Booking System</p>
								<br />
							</div>
							<c:if test="${bookingInfo!=null}">
								<div class="pick-location bookinput-item">
									<input class="form-control" type="text" list="start_place"
										name="start_place" value="${bookingInfo.start_place}"
										placeholder="Depart place" required />
									<datalist id="start_place">
										<option value="Ho Chi Minh">Ho Chi Minh</option>
										<option value="Da Nang">Da Nang</option>
										<option value="Da Lat">Da Lat</option>
										<option value="Ha Noi">Ha Noi</option>
									</datalist>
									<%-- <select class="custom-select" name="start_place">
                                          <option selected>${bookingInfo.start_place}</option>
                                          <option value="Ho Chi Minh">Ho Chi Minh</option>
                                          <option value="Da Nang">Da Nang</option>
                                          <option value="Da Lat">Da Lat</option>
                                          <option value="Ha Noi">Ha Noi</option>
                                       </select> --%>
								</div>
								<div class="pick-location bookinput-item">
									<input class="form-control" type="text" list="end_place"
										name="end_place" value="${bookingInfo.end_place}"
										placeholder="Destination" required />
									<datalist id="end_place">
										<option value="Ha Noi">Ha Noi</option>
										<option value="Da Nang">Da Nang</option>
										<option value="Da Lat">Da Lat</option>
										<option value="Ho Chi Minh">Ho Chi Minh</option>
									</datalist>
									<%--  <select class="custom-select" name="end_place">
                                          <option selected>${bookingInfo.end_place}</option>
                                          <option value="Ha Noi">Ha Noi</option>
                                          <option value="Da Nang">Da Nang</option>
                                          <option value="Da Lat">Da Lat</option>
                                          <option value="Ho Chi Minh">Ho Chi Minh</option>
                                   		</select> --%>
								</div>
							</c:if>
							<c:if test="${bookingInfo==null}">
								<div class="pick-location bookinput-item">
									<input class="form-control" type="text" list="start_place"
										name="start_place" value="${bookingInfo.start_place}"
										placeholder="Depart place" required />
									<datalist id="start_place">
										<option value="Ho Chi Minh">Ho Chi Minh</option>
										<option value="Da Nang">Da Nang</option>
										<option value="Da Lat">Da Lat</option>
										<option value="Ha Noi">Ha Noi</option>
									</datalist>
									<!--  <select class="custom-select" name="start_place">
                                          <option selected>Ho Chi Minh</option>
                                          <option value="Da Nang">Da Nang</option>
                                          <option value="Da Lat">Da Lat</option>
                                          <option value="Ha Noi">Ha Noi</option>
                                       </select>           -->
								</div>
								<div class="pick-location bookinput-item">
									<input class="form-control" type="text" list="end_place"
										name="end_place" value="${bookingInfo.end_place}"
										placeholder="Destination" required />
									<datalist id="end_place">
										<option value="Ha Noi">Ha Noi</option>
										<option value="Da Nang">Da Nang</option>
										<option value="Da Lat">Da Lat</option>
										<option value="Ho Chi Minh">Ho Chi Minh</option>
									</datalist>
									<!-- <select class="custom-select" name="end_place">
                                          <option selected>Ha Noi</option>
                                          <option value="Da Nang">Da Nang</option>
                                          <option value="Da Lat">Da Lat</option>
                                          <option value="Ho Chi Minh">Ho Chi Minh</option>
                                   		</select> -->
								</div>
							</c:if>
							<div class="pick-date bookinput-item">
								<input id="startDate2" placeholder="Pick Date" name="startDate"
									value="${bookingInfo.start_date}" required
									onkeydown="event.preventDefault()" />
							</div>
							<div class="bookcar-btn bookinput-item">
								<button type="submit">Search</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--== Book A Car Area End ==-->



	<!--== Scroll Top Area Start ==-->
	<div class="scroll-top">
		<img src="assets/img/scroll-top.png" alt="JSOFT">
	</div>
	<!--== Scroll Top Area End ==-->
	<!-- <<<<<<< HEAD
	=======================Javascript============================
=======
    <script>
    $( function() {
        $( "#startDate2" ).datepicker();
    });
    </script>

    =======================Javascript============================
>>>>>>> 8f2432a8709e10d0a17be6810c556613aef24a75 -->
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
	<!--=== Mian Js ===-->
	<script src="assets/js/main.js"></script>

</body>

</html>