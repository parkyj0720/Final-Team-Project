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

	<!-- Page Loader -->
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




	<section class="content"style="margin: 5% 10%;">
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

							<a href="${pageContext.request.contextPath}/myPage.do" class="btn btn-info btn-icon float-right"><i
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
									<div class="col-lg-4 col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="City">
										</div>
									</div>
									<div class="col-lg-4 col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="E-mail">
										</div>
									</div>
									<div class="col-lg-4 col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Country">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea rows="4" class="form-control no-resize"
												placeholder="Address Line 1"></textarea>
										</div>
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