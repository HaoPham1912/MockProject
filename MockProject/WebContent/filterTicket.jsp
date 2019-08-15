<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>EMPLOYEE</title>
<!-- Custom fonts for this template-->
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


</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">
			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="#" onclick="callContent('manageTicket'); return false;">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink" style="color: rgb(245, 164, 13);"></i>
				</div>
				<div class="sidebar-brand-text">&nbsp; EMPLOYEE</div>
			</a>
			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			<!-- Nav Item - Dashboard -->
			<!-- <li class="nav-item active"><a class="nav-link" href="#"
				onclick="callContent('manageUser'); return false;"> <i
					class="fa fa-id-card" style="color: rgb(245, 164, 13)"></i> <span
					class="text-nav">Manage Buses</span></a></li> -->
			<!-- Nav Item-Manage Seller -->
			<li class="nav-item active"><a class="nav-link" href="#"
				onclick="callContent('manageTicket'); return false;"> <i
					class="far fa-calendar-alt" style="color: rgb(245, 164, 13)"></i> <span
					class="text-nav">Manage Ticket</span></a></li>

			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/emp-dashboard"> <i
					class="far fa-arrow-alt-circle-left"
					style="color: rgb(245, 164, 13)"></i> <span class="text-nav">Back</span></a></li>
			<!-- Divider -->
			<hr class="sidebar-divider">
			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>
		<!-- End of Sidebar -->
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<!-- Topbar Search -->
					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">
						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a>
							<div class="topbar-divider d-none d-sm-block"></div> <!-- Nav Item - User Information -->
							<!-- Tên thằng admin -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">${user.username}</span>
								<img class="img-profile rounded-circle"
								src="Admin/assets/img/avataradmin.jpg">
						</a></li>
					</ul>
				</nav>
				<!-- End of Topbar -->
				<!-- Begin Page Content -->
				<!-- ManageSeller-Start -->
				<!-- ManageSeller-Start -->
				<div class="container-fluid generalClass" id="manageTicket">
					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">
							<strong>Manage Ticket</strong>
						</h1>
						<!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
						class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
					</div>

					<div>
						<div class="col-md-12">
							<form method="post"
								action="http://localhost:8080/MockProject/emp-filterTicket?id_bus=${id_bus}&action=filter">
								<div class="row">
									<div class=" col-md-5" style="align: center">
										<div class="form-group">
											<label>Select list:</label> 
											<select class="custom-select" name="cusInfo">
												<c:forEach items="${cusList}" var="a">
													<option value="${a.id_cus}">
														Name: ${a.name}		&emsp;&emsp;&emsp;&emsp;	Phone: ${a.phone} 
													</option>
												</c:forEach>
											</select>
										</div>
									</div>		
									<div class=" col-md-2" style="align: center">
										<div class="form-group">
											<label>Select list:</label> <select class="custom-select"
												name="date_go">
												<c:forEach items="${date_go}" var="a">
													<option value="${a}">${a}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class=" col-md-2" style="align: center">
										<div class="form-group">
											<button type="submit" class="btn btn-warning"
												style="margin-top: 35px;">Search</button>
											<a style="margin-top: 35px;"
												href="http://localhost:8080/MockProject/emp-filterTicket?action=show&id_bus=${id_bus}"
												class="btn btn-warning">Show All</a>
										</div>
									</div>
								</div>
							</form>
						</div>
						<!-- EmployeeStart -->
						<div class="table-responsive">
							<table id="mytableticket"
								class="table table-bordred table-striped">
								<thead>
									<th>ID</th>
									<th>Date Go</th>
									<th>Date Book</th>
									<th>Seat Number</th>
									<th>Status</th>
									<th>Price</th>
									<th>Phone</th>
									<th>Name</th>
									<th>ID KH</th>
									<th>Update</th>
									<th>Cancel</th>
								</thead>
								<tbody>
									<c:if test="${not empty listFilterTicket}">
										<c:forEach items="${listFilterTicket}" var="a">
											<tr>
												<td>${a.id_ticket}</td>
												<td>${a.date_go}</td>
												<td>${a.date_book}</td>
												<td>${a.seat_number}</td>
												<td>${a.status}</td>
												<td>${a.price}</td>
												<td>${a.phone}</td>
												<td>${a.name}</td>
												<td>${a.id_cus}</td>
												<td>
													<!-- 				<p data-placement="top" data-toggle="tooltip" title="Edit"> -->
													<form></form>
													<button class="btn btn-primary" data-title="Edit"
														data-toggle="modal" onclick="editTicket()">
														<span class="fas fa-edit"></span>
													</button>
													</p>
												</td>
												<td>
													<form method="POST"
														action="${pageContext.request.contextPath}/emp-customTicket?action=delete&id=${a.id_ticket}">
														<p data-placement="top" data-toggle="tooltip"
															title="Delete">
															<button class="btn btn-danger" data-title="Delete"
																data-toggle="modal">
																<span class="fa fa-trash"></span>
															</button>
													</form>

													</p>
												</td>
											</tr>
										</c:forEach>
									</c:if>
									<c:if test="${not empty filterList}">
										<c:forEach items="${filterList}" var="a">
											<tr>
												<td>${a.id_ticket}</td>
												<td>${a.date_go}</td>
												<td>${a.date_book}</td>
												<td>${a.seat_number}</td>
												<td>${a.status}</td>
												<td>${a.price}</td>
												<td>${a.phone}</td>
												<td>${a.name}</td>
												<td>${a.id_cus}</td>
												<td>
													<button class="btn btn-primary" data-title="Edit"
														data-toggle="modal" onclick="editTicket()">
														<span class="fas fa-edit"></span>
													</button>
													</p>
												</td>

												<td>
													<form method="POST"
														action="${pageContext.request.contextPath}/emp-customTicket?action=delete&id=${a.id_ticket}">
														<p data-placement="top" data-toggle="tooltip"
															title="Delete">
															<button class="btn btn-danger" data-title="Delete"
																data-toggle="modal">
																<span class="fa fa-trash"></span>
															</button>
													</form>

													</p>
												</td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
					</div>
					<div class="modal fade" id="editTicket" tabindex="-1" role="dialog"
						aria-labelledby="edit" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="submit-form"
									action="${pageContext.request.contextPath}/emp-customTicket?action=update"
									method="POST">
									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title" style="margin-left: auto">
											<strong>Your Selected</strong>
										</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
									<div class="modal-body">
										<div class="form-group">
											<h4 class="text-black-50">ID Ticket:</h4>
											<input class="form-control" id="idTicketEdit" type="text"
												name="idTicketEdit" required readonly>
										</div>
										<div class="form-group">
											<h4 class="text-black-50">Date Go:</h4>
											<input class="form-control " id="dateGoEdit" type="text"
												name="dateGoEdit" required readonly>
										</div>
										<div class="form-group">
											<h4 class="text-black-50">Date Book:</h4>
											<input class="form-control " id="dateBookEdit" type="text"
												name="dateBookEdit" required readonly>
										</div>
										<!-- Phone user -->
										<div class="form-group">
											<h4 class="text-black-50">Seat Number:</h4>
											<input class="form-control " id="seatNumberEdit"
												type="number" name="seatNumberEdit"
												title="Distance of start place to end place" required
												readonly>
										</div>
										<div class="form-group">
											<h4 class="text-black-50">Phone:</h4>
											<input class="form-control " id="phoneEdit" type="text"
												name="phoneEdit"
												title="Distance of start place to end place" required
												readonly>
										</div>
										<div class="form-group">
											<h4 class="text-black-50">Name:</h4>
											<input class="form-control " id="nameEdit" type="text"
												name="nameEdit" required readonly>
										</div>
										<!-- Phone user -->
										<!-- Email User -->
										<div class="form-group">
											<h4 class="text-black-50">Status:</h4>
											<input class="form-control" id="statusEdit" type="text"
												name="statusEdit" pattern="[0,1]" maxlength="1" required
												title="Value is only 0 and 1 (0 is unpaid and 1 is paid)">
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-warning btn-lg"
												style="width: 100%;">
												<span class="fas fa-check-circle"></span>Update Status
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>

					<c:if test="${UpdateTicketSuccess!=null}">
						<script type="text/javascript">
							alert("Update Successful!!!");
						</script>
					</c:if>
					<c:if test="${UpdateTicketFail!=null}">
						<script type="text/javascript">
							alert("Can't update status ticket!!!");
						</script>
					</c:if>
					<c:if test="${DeleteTicketSuccess!=null}">
						<script type="text/javascript">
							alert("Ticket have been deleted!!!");
						</script>
					</c:if>
					<c:if test="${DeleteTicketFail!=null}">
						<script type="text/javascript">
							alert("Can't delete ticket!!!");
						</script>
					</c:if>
					<!-- Modal edit user-end -->
					<!-- Modal delete Seller-Start -->
					<div class="modal fade" id="deleteTicket" tabindex="-1"
						role="dialog" aria-labelledby="delete" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title custom_align" id="Heading"
										style="margin-left: auto;">
										<strong>Delete Ticket </strong>
									</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<div class="alert alert-danger">
										<span class="glyphicon glyphicon-warning-sign"></span> Do you
										want to delete this ticket?
									</div>
								</div>
								<div class="modal-footer ">
									<button id="yesdeleteSeller" type="button"
										class="btn btn-success">
										<span class="	fas fa-check-circle"></span>Yes
									</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<span class="fas fa-remove"></span>No
									</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal delete Seller-End -->
					<!-- ManageSeller-End -->


				</div>

				<!-- End of Main Content -->
				<!-- Footer -->
				<!-- <footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Duy Trân Hảo Văn 2019</span>
					</div>
				</div>
			</footer> -->
				<!-- End of Footer -->
			</div>
			<!-- End of Content Wrapper -->
		</div>
		<!-- End of Page Wrapper -->
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>
		<!-- Bootstrap core JavaScript-->
		<script src="Admin/vendor/jquery/jquery.min.js"></script>
		<script src="Admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="Admin/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="Admin/js/sb-admin-2.min.js"></script>
		<!-- Page level plugins -->
		<script src="Admin/vendor/datatables/jquery.dataTables.min.js"></script>
		<script src="Admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>
		<!-- Page level custom scripts -->
		<script src="Admin/js/user-table.js"></script>
		<script src="Admin/js/seller-table.js"></script>
		<script src="Admin/js/buses.js"></script>
		<script src="Admin/js/ticket.js"></script>
		<script
			src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
</body>

</html>