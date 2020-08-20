<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js " lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Profile Edit</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css"
	type="text/css">
</head>

<body class="theme-blush">

	<!-- Loding Page -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="zmdi-hc-spin" src="assets/images/loader.svg" width="48"
					height="48" alt="Aero">
			</div>
			<p>Please wait...</p>
		</div>
	</div>
		<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- Left Sidebar -->
	<aside id="leftsidebar" class="sidebar">
		<div class="navbar-brand" style="border-bottom: 0px;">
			<button class="btn-menu ls-toggle-btn" type="button">
				<i class="zmdi zmdi-menu"></i>
			</button>
			<a href="index.html"><img src="assets/images/logo.svg" width="25"
				alt="Aero"><span class="m-l-10">Aero</span></a>
		</div>
		<div class="menu">
			<ul class="list">
				<li>
					<div class="user-info" style="border-bottom: 0px;">
						<a class="image" href="${pageContext.request.contextPath}/myPage.do"><img
							src="${pageContext.request.contextPath}/mypage/imgs/02.jpg"
							alt="User"></a>
						<div class="detail">
							<h4>Michael</h4>
							<small>Super Admin</small>
						</div>
					</div>
				</li>
				<li><a href="index.html"><i class="zmdi zmdi-home"></i><span>Dashboard</span></a></li>
				<li><a href="my-profile.html"><i class="zmdi zmdi-account"></i><span>Our
							Profile</span></a></li>

			</ul>
		</div>
	</aside>

	<!-- Main Content  -->
	<section class="content" style="margin: 5% 10%;">
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Profile Edit</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item">Pages</li>
							<li class="breadcrumb-item">Profile</li>
							<li class="breadcrumb-item active">Edit</li>
						</ul>
					</div>
					<div class="col-lg-5 col-md-6 ">

						<a href="${pageContext.request.contextPath}/myPage.do"
							class="btn btn-info btn-icon float-right"><i
							class="zmdi zmdi-check"></i></a>
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
											<input type="text" class="form-control"
												placeholder="Username">
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
										<button class="btn btn-info">Save Changes</button>
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
											<input type="text" class="form-control"
												placeholder="Last Name">
										</div>
									</div>
									<div class="row clearfix" style="width: 100%;">
										<div class="col-lg-12 col-md-12 col-sm-12"
											style="padding-right: 0px;">
											<div class="card">
												<div class="header">
													<h2>
														<strong>City</strong>
													</h2>
												</div>
												<div class="body"
													style="padding-left: 0px; padding-right: 0px;">
													<div class="row clearfix">
														<div class="col-sm-6">
															<select class="form-control show-tick">
																<option value="">-- Please select --</option>
																<option value="10">10</option>
																<option value="20">20</option>
																<option value="30">30</option>
																<option value="40">40</option>
																<option value="50">50</option>
															</select>
														</div>
														<div class="col-sm-6">
															<select class="form-control show-tick">
																<option value="">-- Please select --</option>
																<option value="10">10</option>
																<option value="20">20</option>
																<option value="30">30</option>
																<option value="40">40</option>
																<option value="50">50</option>
															</select>
														</div>
														<div class="col-lg-12 col-md-12">
															<div class="header">
																<h2>
																	<strong>Email</strong>
																</h2>
																<input type="text" class="form-control"
																	placeholder="E-mail">
															</div>
															<div class="header">
																<h2>
																	<strong>Phone</strong>
																</h2>
																<input type="text" class="form-control"
																	placeholder="Phone">
															</div>
														</div>
														<!--  -->
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
																	for="procheck3">New friend request
																	notifications</label>
															</div>
														</div>
														<div class="col-md-12">
															<button class="btn btn-primary">Save Changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
	</section>
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
</body>
</html>