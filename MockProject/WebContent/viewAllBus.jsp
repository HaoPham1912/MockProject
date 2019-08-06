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
	<c:if test="${empty busList}">
		<section id="what-do-area" class="section-padding">
			<div class="container">
				<h1>Dit me ko co xe nhe!</h1>
			</div>
		</section>
	</c:if>
	<c:if test="${not empty busList}">
		<section id="what-do-area" class="section-padding">
			<div class="container">
				<table id="mytable" class="table table-bordred table-striped">
					<thead>
						<th>Time go</th>
						<th>Car Position</th>
						<th>Time Estimating</th>
					</thead>
					<tbody>
						<c:forEach items="${busList}" var="a">
							<tr>
								<td>${a.time_go}</td>
								<td>${a.car_position}</td>
								<td>${a.time_estimate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
	</c:if>
	<jsp:include page="footer.jsp" />
</body>

</html>