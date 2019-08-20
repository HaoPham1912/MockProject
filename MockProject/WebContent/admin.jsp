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
<title>ADMIN</title>
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
				href="${pageContext.request.contextPath}/admin-dashboard">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink" style="color: rgb(245, 164, 13);"></i>
				</div>
				<div class="sidebar-brand-text">&nbsp; ADMIN</div>
			</a>
			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			<!-- Nav Item - Dashboard -->
			<li class="nav-item active" id="test"><a class="nav-link"
				href="#" onclick="callContent('manageUser'); return false;"> <i
					class="fa fa-id-card" style="color: rgb(245, 164, 13)"></i> <span
					class="text-nav">Manage Customer</span></a></li>
			<!-- Nav Item-Manage Seller -->
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/admin-manageSeller">
					<i class="fas fa-portrait" style="color: rgb(245, 164, 13)"></i> <span
					class="text-nav">Manage Seller</span>
			</a></li>
			<!-- Nav Item-Manage System -->
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/admin-manageAdmin"> <i
					class="fa fa-cogs" style="color: rgb(245, 164, 13)"></i> <span
					class="text-nav">Manage System</span></a></li>
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



				<!-- ManageUser-Start -->
				<div class="container-fluid generalClass" id="manageUser">
					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">
							<strong>Manage Customer</strong>
						</h1>
					</div>
					<div>
						<!-- ThÃªm user-Start -->
						<div class="modal fade" id="addUser" tabindex="-1" role="dialog"
							aria-labelledby="add" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<form class=""
										action="${pageContext.request.contextPath}/admin-dashboard?action=register"
										method="POST">
										<!-- Modal Header -->
										<div class="modal-header">
											<h4 class="modal-title" style="margin-left: auto">
												<strong>Create new user</strong>
											</h4>
											<button type="button" class="close" data-dismiss="modal">&times;</button>
										</div>
										<!-- Modal Äá» create new user-Start -->
										<div class="modal-body">
											<div class="form-group">
												<h4 class="text-black-50">User Name:</h4>
												<input class="form-control " id="User" type="text"
													placeholder="Username" name="username1"
													pattern="[A-Za-z0-9]{1,}" minlength="5" maxlength="15"
													title="Username less than 15 character and more than 5 character!!!"
													required>
											</div>
											<!-- Username End -->
											<!-- Begin pass -->
											<div class="form-group">
												<h4 class="text-black-50">Password:</h4>
												<input class="form-control " id="password" type="text"
													placeholder="Password" name="password1" maxlength="15"
													minlength="8" pattern="[A-Za-z0-9]{1,}" required>
											</div>
											<div class="form-group">
												<h4 class="text-black-50">ReType Password:</h4>
												<input class="form-control " id="confirm_password"
													type="text" placeholder="Password" name="password1"
													maxlength="15" minlength="8" pattern="[A-Za-z0-9]{1,}"
													required>
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
											<!-- End Pass -->

											<!-- Tên thằng user -->
											<!-- TÃªn tháº±ng user -->
											<div class="form-group">
												<h4 class="text-black-50">Name:</h4>
												<input class="form-control " id="nameUser" type="text"
													placeholder="Le Van Duy" name="name1" required>
											</div>
											<!-- TÃªn tháº±ng user -->
											<!-- Phone user -->
											<div class="form-group">
												<h4 class="text-black-50">Phone:</h4>
												<input class="form-control " id="phoneUser" type="number"
													placeholder="01293948384" name="phone1" pattern="[0-9]{1,}"
													title="" required>
											</div>
											<!-- Phone user -->
											<!-- Email User -->
											<div class="form-group">
												<h4 class="text-black-50">Email:</h4>
												<input class="form-control " id="emailUser" type="email"
													accept="" placeholder="example@gmail.com" name="email1"
													title="Email is unvalid!" required>
											</div>
											<!-- Email User -->
											<!-- Address User- Start -->
											<div class="form-group">
												<h4 class="text-black-50">Address:</h4>
												<input class="form-control " id="addressUser" type="text"
													placeholder="1 Vo Van Ngan Thu Duc Ho Chi Minh City"
													name="address1" title="" required>
											</div>
											<!-- Address User- End -->
											<!-- Set role-Start -->
											<div class="form-group">
												<h4 class="text-black-50">Role:</h4>
												<!-- <input class="form-control " id="Role" type="text"
														placeholder="Role Customer" name="role1" value="1"
														title="Role of Seller" required readonly>  -->
												<select class="form-control" name="role1">
													<option value="1">1:Customer</option>
													<option value="2">2:Seller</option>
													<option value="3">3:Admin</option>
												</select>
												<!-- <input id="toggle-event" type="checkbox" data-size="large"
													data-toggle="toggle" data-on="Customer" data-off="Ticket Seller"
													checked> -->
											</div>
											<!-- Set role-End -->
											<div class="modal-footer">
												<button type="submit" id="submitAddPokestop"
													class="btn btn-warning btn-lg" style="width: 100%;">
													<span class="fas fa-check-circle"></span>Create
												</button>
											</div>
										</div>
								</div>
								<!-- Modal Äá» create new user-End -->
								</form>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<div class="col-md-12">
						<div class="table-responsive">
							<p data-placement="top" data-toggle="tooltip"
								title="Create new user">
								<button class="btn btn-primary" data-title="Create new user"
									data-toggle="modal" data-target="#addUser">
									<span class="fas fa-plus-circle">&nbsp; Create new user</span>
								</button>
							</p>
							<form method="POST"
								action="http://localhost:8080/MockProject/admin-dashboard?action=filterCus">
								<div class="row">
									<div class="col-md-2" style="align: center">
										<div class="form-group">
											<label>Name:</label> <input type="text" name="search"
												placeholder="Searching...."
												style="height: 40px; width: 100%;"> </input>
										</div>
									</div>
									<div class="col-md-2" style="align: center">
										<div class="form-group">
											<button class="btn btn-warning" style="margin-top: 35px;">
												<span class="glyphicon glyphicon-search">&nbsp;
													Search</span>
											</button>
											<a style="margin-top: 35px;"
												href="http://localhost:8080/MockProject/admin-dashboard"
												class="btn btn-warning">Show All</a>
										</div>
									</div>
								</div>
							</form>
							<table id="mytable" class="table table-bordred table-striped">
								<thead>
									<th>#</th>
									<th>Username</th>
									<th>Name</th>
									<th>Phone</th>
									<th>Email</th>
									<th>Address</th>
									<th>Edit</th>
								</thead>
								<tbody>
									<c:forEach items="${customerList}" var="a">
										<tr>
											<td>${a.id_acc_cus}</td>
											<td>${a.username}</td>
											<td>${a.name}</td>
											<td>${a.phone}</td>
											<td>${a.email}</td>
											<td>${a.address}</td>
											<td>
												<p data-placement="top" data-toggle="tooltip" title="Edit">
													<button class="btn btn-primary" data-title="Edit"
														data-toggle="modal" onclick="editUser()">
														<span class="	fa fa-edit"></span>
													</button>
												</p>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- Modal delete User-End -->
					<!-- Modal edit User-Start -->
					<div class="modal fade" id="editUser" tabindex="-1" role="dialog"
						aria-labelledby="edit" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<form class=""
									action="${pageContext.request.contextPath}/admin-dashboard?action=updateCustomer"
									method="POST">
									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title" style="margin-left: auto">
											<strong>Update User Information</strong>
										</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
									<div class="modal-body">
										<div class="form-group">
											<h4 class="text-black-50">ID User:</h4>
											<input class="form-control" id="idUserEdit" type="text"
												name="idUserEdit" required readonly>
										</div>
										<div class="form-group">
											<h4 class="text-black-50">User Name:</h4>
											<input class="form-control " id="usernameUserEdit"
												type="text" name="usernameUserEdit" required readonly>
										</div>
										<div class="form-group">
											<h4 class="text-black-50">Name:</h4>
											<input class="form-control " id="nameUserEdit" type="text"
												name="nameUserEdit" placeholder="Le Van Duy" required>
										</div>
										<!-- Phone user -->
										<div class="form-group">
											<h4 class="text-black-50">Phone:</h4>
											<input class="form-control " id="phoneUserEdit" type="number"
												name="phoneUserEdit" placeholder="01293948384"
												pattern="[0-9]{1,}" title="" required>
										</div>
										<!-- Phone user -->
										<!-- Email User -->
										<div class="form-group">
											<h4 class="text-black-50">Email:</h4>
											<input class="form-control " id="emailUserEdit" type="email"
												name="emailUserEdit" name="Email" accept=""
												placeholder="example@gmail.com" title="Email is unvalid!"
												required>
										</div>
										<!-- Email User -->
										<!-- Address User- Start -->
										<div class="form-group">
											<h4 class="text-black-50">Address:</h4>
											<input class="form-control " id="addressUserEdit" type="text"
												name="addressUserEdit"
												placeholder="1 Vo Van Ngan Thu Duc Ho Chi Minh City"
												title="" required>
										</div>
										<div class="modal-footer">
											<button type="submit" id="submitEditUser"
												class="btn btn-warning btn-lg" style="width: 100%;">
												<span class="fas fa-check-circle"></span>Update
											</button>
											<!-- <button type="submit" class="btn btn-primary btn-block">Log In</button> -->
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<%-- <c:if test="${UpdateCusSuccess!=null}">
						<script type="text/javascript">
							alert("Update Infor customer successful!!!");
						</script>
					</c:if>
					<c:if test="${UpdateCusFailed!=null}">
						<script type="text/javascript">
							alert("Update Failed!!!");
						</script>
					</c:if> --%>
					<!-- Modal edit user-end -->
				</div>
				<!-- Modal ManageUser End -->
				<!-- ManageSeller-Start -->
				<!-- ManageSeller-End -->
			</div>
			<!-- End of Main Content -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Bootstrap core JavaScript-->
	<script src="Admin/js/ticket.js"></script>
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
	<script
		src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

</body>

</html>