<!DOCTYPE html>
<html class="no-js" lang="zxx">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--=== Favicon ===-->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

<title>Booking Bus</title>

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
						<i class="fa fa-mobile"></i> +84 934021059
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
						<a href="http://localhost:8080/MockProject/guest-dashboard" class="logo"> <img
							src="assets/img/logo.png" alt="JSOFT">
						</a>
					</div>
					<!--== Logo End ==-->

					<!--== Main Menu Start ==-->
					<div class="col-lg-8 d-none d-xl-block">
						<nav class="mainmenu alignright">
							<ul>
								<li class="active"><a
									href="http://localhost:8080/MockProject/guest-dashboard">
										Home</a> <!-- <ul>
                                        <li><a href="index.html">Home 1</a></li>
                                        <li><a href="index2.html">Home 2</a></li>
                                        <li><a href="index3.html">Home 3</a></li>
                                    </ul> --></li>
								<li><a href="#">About</a></li>
								<li><a href="#">services</a></li>
								<li><a href="#">Coach</a></li>
								<li><a href="#">Contact</a></li>
								<li><a href="http://localhost:8080/MockProject/login">Log In</a></li>
								<li><a href="http://localhost:8080/MockProject/register">Register</a></li>
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
			<div class="row">
				<div class="col-lg-5 col-md-8 m-auto">
					<div class="login-page-content">
						<div class="login-form">
							<h3>Sign Up</h3>
							<form action="${pageContext.request.contextPath}/register"
								method="POST">
								<div class="name">
									<input type="text" placeholder="Name" name="name" onkeyup="vietnameseNoNumbers(this)" size="50" 	 	
									title="Please fill data correctly"
										value="${customerHo.name}" required>
									<script>
									    function vietnameseNoNumbers(input) {
									        var regex = /[^-a-z !@&*():;"',./\u0080-\u024F\u0300-\u036F\u1E00-\u1Eff\u1DC4]/ig;
									        input.value = input.value.replace(regex, "");
									    }
									</script>
								</div>
								<div class="email">
									<input type="email" placeholder="Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}"
									title="Invalid Email"
										value="${customerHo.email}" required>
								</div>
								<div class="phone">
									<!-- 	<input type="number" placeholder="Phone Number" name="phone" -->
									<input type="text" pattern="[0-9]{10}"
										value="${customerHo.phone}" placeholder="Phone Number"
										name="phone"
										title="Phone must be a number that contains 10 characters long"
										required />
								</div>
								<div class="address">
									<input type="text" placeholder="Address"
										value="${customerHo.address}" name="address">
								</div>
								<div class="username">
									<input type="text" placeholder="Username" name="username"
										pattern="[A-Za-z0-9]{1,}" minlength="5" maxlength="15"
										title="Username less than 15 character and more than 5 character!!!"
										required>
								</div>
								<div class="password">
									<input type="password" placeholder="Password" id="password"
										name="password" maxlength="15" minlength="8"
										pattern="[A-Za-z0-9]{1,}" required>
								</div>
								<div class="password">
									<input type="password" id="confirm_password"
										placeholder="Retype Password" name="password" maxlength="15"
										minlength="8" pattern="[A-Za-z0-9]{1,}" required>
								</div>
								<script>
									var password = document
											.getElementById("password"), confirm_password = document
											.getElementById("confirm_password");

									function validatePassword() {
										if (password.value != confirm_password.value) {
											confirm_password
													.setCustomValidity("Passwords Don't Match");
										} else {
											confirm_password
													.setCustomValidity('');
										}
									}
									password.onchange = validatePassword;
									confirm_password.onkeyup = validatePassword;
								</script>
								<p style="color: red">${message}</p>
								<div class="log-btn">
									<button type="submit">
										<i class="fa fa-check-square"></i> Sign Up
									</button>
								</div>
							</form>
						</div>

						<!-- <div class="login-other">
                			<span class="or">or</span>
                			<a href="#" class="login-with-btn facebook"><i class="fa fa-facebook"></i> Signup With Facebook</a>
                			<a href="#" class="login-with-btn google"><i class="fa fa-google"></i> Signup With Google</a>
                		</div> -->
						<div class="create-ac">
							<p>
								Have an account? <a
									href="http://localhost:8080/MockProject/login">Sign In</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--== Login Page Content End ==-->

	<!--== Footer Area Start ==-->
	<section id="footer-area">
		<!-- Footer Widget Start -->

		<!-- Footer Widget End -->

		<!-- Footer Bottom Start -->
	<jsp:include page="footer.jsp" /> 
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

</body>

</html>