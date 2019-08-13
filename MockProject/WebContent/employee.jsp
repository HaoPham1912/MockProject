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
				href="http://localhost:8080/MockProject/emp-dashboard">
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
				onclick="callContent('manageBuses'); return false;"> <i
					class="fas fa-route" style="color: rgb(245, 164, 13)"></i> <span
					class="text-nav">Manage Buses</span></a></li>
			<li class="nav-item active"><a class="nav-link"
				href="http://localhost:8080/MockProject/emp-dashboard?action=updateTicket">
					<i class="fas fa-route" style="color: rgb(245, 164, 13)"></i> <span
					class="text-nav">Update ticket</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/logout"> <i
					class="fa fa-cogs" style="color: rgb(245, 164, 13)"></i> <span
					class="text-nav">Log Out</span></a></li>
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
							<!-- TÃªn tháº±ng admin -->
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
				<div class="container-fluid generalClass" id="manageBuses">
					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">
							<strong>Manage Buses</strong>
						</h1>
						<!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
						class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
					</div>

					<div>
						<!-- EmployeeStart -->
						<div class="col-md-12">
							<div class="row">
								<form action="${${pageContext.request.contextPath}/?action=filter">
									<div class=" col-md-2" style="align: center">
										<div class="form-group">
											<label>Select list:</label> 
											<select class="custom-select"
												name="start_place">
												<option selected>Ho Chi Minh</option>
												<option value="Ho Chi Minh">Ho Chi Minh</option>
												<option value="Da Nang">Da Nang</option>
												<option value="Da Lat">Da Lat</option>
												<option value="Ha Noi">Ha Noi</option>
											</select>
										</div>
									</div>
									<div class=" col-md-2" style="align: center">
										<div class="form-group">
											<label>Select list:</label> 
											<select class="custom-select"
												name="end_place">
												<option selected>Ha Noi</option>
												<option value="Ho Chi Minh">Ho Chi Minh</option>
												<option value="Da Nang">Da Nang</option>
												<option value="Da Lat">Da Lat</option>
												<option value="Ha Noi">Ha Noi</option>
											</select>
										</div>
									</div>
									<div class=" col-md-2" style="align: center">
										<div class="form-group">
											<button type="button" class="btn btn-warning"
												style="margin-top: 35px;">Search</button>
										</div>
									</div>
								</form>
							</div>
							<div class="table-responsive">
								<table id="mytablebuses"
									class="table table-bordred table-striped">
									<thead>
										<th>ID</th>
										<th>Start Place</th>
										<th>End Place</th>
										<th>Distance</th>
										<th>Price</th>
										<th>View Bus</th>
									</thead>
									<tbody>
										<c:forEach items="${listBuses}" var="a">
											<tr>
												<td>${a.id_buses}</td>
												<td>${a.start_place}</td>
												<td>${a.end_place}</td>
												<td>${a.distance}</td>
												<td>${a.price}</td>
												<td>
													<p data-placement="top" data-toggle="tooltip" title="View">
													<form method="POST"
														action="${pageContext.request.contextPath}/emp-filterbus?id_buses=${a.id_buses}">
														<button class="btn btn-primary" data-title="Edit"
															data-toggle="modal">
															<span class="fas fa-bus-alt"></span>
														</button>
													</form>
													</p>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- Modal edit user-end -->
					<!-- Modal delete Seller-Start -->
					<div class="modal fade" id="deleteSeller" tabindex="-1"
						role="dialog" aria-labelledby="delete" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title custom_align" id="Heading"
										style="margin-left: auto;">
										<strong>Delete Seller </strong>
									</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<div class="alert alert-danger">
										<span class="glyphicon glyphicon-warning-sign"></span> Do you
										want to delete this seller?
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
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- Modal delete Seller-End -->
					<!-- ManageSeller-End -->


				</div>

				<!-- End of Main Content -->
				<!-- Footer -->
				<!-- <footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Duy TrÃ¢n Háº£o VÄn 2019</span>
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
		<script
			src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
</body>

</html>