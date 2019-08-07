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
		<div class="container">
			<h5 style="text-align: center">${message}</h5>
			<c:if test="${not empty busList}">
				<%-- <table id="mytable" class="table table-bordred table-striped">
					<thead>
						<th>Time go</th>
						<th>Car Position</th>
						<th>Time Estimating</th>
					</thead>
					<tbody>
						<c:forEach items="${busList}" var="a">
							<div>
								
							</div>
							<tr>
								<td>${a.time_go}</td>
								<td>${a.car_position}</td>
								<td>${a.time_estimate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table> --%>
				<form action="">
					<c:forEach items="${busList}" var="a">
					<div id="bus">
						<div style="float:right">
							<p>${a.time_go}</p>
							<p>${a.car_position}</p>
							<p>${a.time_estimate}</p>
							<p>${a.price}</p>
						</div>
						<div>
							<img class="bus-img"
								src="https://image.flaticon.com/icons/svg/174/174237.svg" alt="">
							<img class="arrow"
								src=" https://image.flaticon.com/icons/svg/1971/1971260.svg"
								alt="">
						</div>
						<div id="wifi-water">
							<img class="wifi-img"
								src="https://image.flaticon.com/icons/svg/179/179428.svg" alt="">
							<img class="wifi-img"
								src="https://image.flaticon.com/icons/svg/824/824239.svg" alt="">
						</div>
						<!-- <button type="button" class="btn btn-primary">Primary</button> -->
					</div>
				</c:forEach>
				</form>
			</c:if>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>

</html>