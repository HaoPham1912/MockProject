<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--=== Favicon ===-->
</head>
<body class="loader-active">
	<jsp:include page="headerforUser.jsp" />
	<!--== What We Do Area Start ==-->
	<section id="what-do-area" class="">
		<div class="container" style="margin-top:50px;margin-bottom:50px;">
			<c:if test="${message != null}">
				<h5 style="text-align: center">${message}</h5>
				<img style="transform: translate(170px, 10px);" 
				src="https://storage.googleapis.com/fe-production/images/route-no-schedule.png">
			</c:if>
			<c:if test="${not empty busList}">
				<c:forEach items="${busList}" var="a">
					<c:if test="${a.status == 1}">
						<form
						action="${pageContext.request.contextPath}/cus-viewSeatServlet?id_bus=${a.id_bus}">
							<div id="bus">
								<div class="row" style="padding-left: 15px; padding-right: 15px">
									<div class="col-md-3"
										style="text-align: center; padding-top: 10px">
										<div class="row1" style="text-align: center">
											<b><p>${a.id_bus}</p></b>
											<%-- <p>${a.status}</p> --%>
											<img class="bus-img"
												src="https://image.flaticon.com/icons/svg/174/174237.svg"
												alt="">
											<p>Service</p>
										</div>
										<hr>
										<div class="row1" style="text-align: center">
											<%-- <b><p name="id_bus" style="width:120px">${a.id_bus}</p>	</b> --%>
											<input type="hidden" name="id_bus" value="${a.id_bus}">
											<img class="wifi-img"
												src="https://image.flaticon.com/icons/svg/179/179428.svg"
												alt=""> <img class="wifi-img"
												src="https://image.flaticon.com/icons/svg/824/824239.svg"
												alt="">
										</div>
									</div>
									<div class=" col-md-3"
										style="text-align: center; padding-top: 20px">
										<div class="row" style="padding-top: 40px">
											<div class=" col-md-4" style="width: 30px">
												<b><p name="time_go" style="width: 120px">${a.time_go}</p></b>
												<p name="start_place" style="width: 120px">${bookingInfo.start_place}</p>
											</div>
											<div class=" col-md-4">
												<p name="time_go" style="width: 120px; text-size: 3px;">
													<i>${a.time_estimate}</i>
												</p>
												<img class="arrow"
													src="https://image.flaticon.com/icons/svg/25/25426.svg"
													style="margin-top: 10px; margin-bottom: 10px; transform: translate(300%, -10%); width: 10px; height: 10px"
													alt="">
											</div>
											<div class=" col-md-4">
												<b><p name="time_estimate" style="width: 120px">${a.time_end}</p></b>
												<p name="end_place" style="width: 120px">${bookingInfo.end_place}</p>
											</div>
										</div>
									</div>
									<div class=" col-md-3"
										style="text-align: center; padding-top: 40px">
										<img class="wifi-img"
											src="https://icon-library.net/images/position-icon/position-icon-8.jpg"
											alt=""> <b><p name="car_position">Port:
												${a.car_position}</p> </b>
												<b><p>Available Seats: ${a.seatAvailable}</p></b>
									</div>
									<div class=" col-md-3"
										style="text-align: center; padding-top: 40px">
										<%-- <input type="hidden" name="price"  value="${a.price}"> --%>
										<b><p style="padding-bottom: 10px;">${a.price}</p></b>
										<button type="submit" class="btn btn-warning">
											<i class="fa fa-sign-in"></i><b>Book Ticket</b>
										</button>
									</div>
								</div>
							</div>
						</form>				
					</c:if>
				</c:forEach>
			</c:if>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>

</html>