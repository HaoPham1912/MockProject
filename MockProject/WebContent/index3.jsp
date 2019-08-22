<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpSession" %>
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
	<section id="what-do-area" class="section-padding">
		<div class="container">
			<jsp:include page="content.jsp" />
			<c:if test="${BookingMessage != null}">
				<script type="text/javascript">
					alert("Booking Successful!");
				</script>
				<%
					request.getSession().removeAttribute("BookingMessage");
				%>
			</c:if>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>