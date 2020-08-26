<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">

<title></title>
<link rel="icon" href="/BoardCa/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
</head>
<body class="ls-closed ls-toggle-menu ">
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>
							myFavorite
							<button class="btn btn-primary btn-icon float-right "
								type="button">
								<i class="zmdi zmdi-sort-amount-desc"></i>
							</button>
							<a href="${pageContext.request.contextPath}/myPage.do"
								class="btn btn-info btn-icon float-right"><i
								class="zmdi zmdi-edit"></i></a>
						</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">myFavorite</li>

						</ul>

					</div>


				</div>

			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-md-12">
				<div class="card">
					<div class="header">
						<h2>
							<strong>Security</strong> Settings
						</h2>
					</div>
					<div class="body">
						<div class="row">
							<div class="col-lg-4 col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Username">
								</div>
							</div>
							<div class="col-lg-4 col-md-12">
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Current Password">
								</div>
							</div>
							<div class="col-lg-4 col-md-12">
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="New Password">
								</div>
							</div>
							<div class="col-12">
								<button class="btn btn-info bg-orange">Save Changes</button>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="header">
						<h2>
							<strong>Account</strong> Settings
						</h2>
					</div>
					<div class="body">
						<div class="row clearfix">
							<div class="col-lg-6 col-md-12">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="First Name">
								</div>
							</div>
							<div class="col-lg-6 col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Last Name">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="E-mail">
								</div>
							</div>

							<div class="col-lg-6 col-md-12">
								<select class="form-control show-tick" tabindex="-98">
									<option value="">-- Please select --</option>
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
								</select>
							</div>


							<div class="col-lg-6 col-md-12" style="">
								<select class="form-control show-tick" tabindex="-98">
									<option value="">-- Please select --</option>
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
								</select>
							</div>

							<div class="col-md-12">
								<div class="checkbox">
									<input id="procheck1" type="checkbox" checked> <label
										for="procheck1">Profile Visibility For Everyone</label>
								</div>
								<div class="checkbox">
									<input id="procheck2" type="checkbox"> <label
										for="procheck2">New task notifications</label>
								</div>
								<div class="checkbox">
									<input id="procheck3" type="checkbox"> <label
										for="procheck3">New friend request notifications</label>
								</div>
							</div>
							<div class="col-md-12">
								<button class="btn btn-primary bg-orange">Save Changes</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>



	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

	<!-- (Optional) Latest compiled and minified JavaScript translation files -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/i18n/defaults-*.min.js"></script>
	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->


	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>