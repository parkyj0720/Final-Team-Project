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

<title>:: Aero Bootstrap4 Admin :: Profile</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">
<!-- Light Gallery Plugin Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/light-gallery/css/lightgallery.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/fullcalendar/fullcalendar.min.css"
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

	<section class="content" style="margin: 5% 10%;">
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-12 col-md-12 ">
						<h2>Profile</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item">Pages</li>
							<li class="breadcrumb-item active">Profile</li>
						</ul>
					</div>
					<div class="col-lg-12 col-md-12 ">

						<a href="profile-edit.html"
							class="btn btn-info btn-icon float-right"><i
							class="zmdi zmdi-edit"></i></a>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12 col-md-12">
						<div class="card mcard_3">
							<div class="body">
								<a href="profile.html"><img src="imgs/01.jpg"
									class="rounded-circle shadow " alt="profile-image"
									style="width: 20%; height: 20%;"></a>
								<h4 class="m-t-10">Michael Dorsey</h4>
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<ul class="social-links list-unstyled">
											<li><a title="facebook" href="javascript:void(0);"><i
													class="zmdi zmdi-facebook"></i></a></li>
											<li><a title="twitter" href="javascript:void(0);"><i
													class="zmdi zmdi-twitter"></i></a></li>
											<li><a title="instagram" href="javascript:void(0);"><i
													class="zmdi zmdi-instagram"></i></a></li>
										</ul>
										<p class="text-muted">795 Folsom Ave, Suite 600 San
											Francisco, CADGE 94107</p>
									</div>
									<div class="col-4">
										<small>Following</small>
										<h5>852</h5>
									</div>
									<div class="col-4">
										<small>Followers</small>
										<h5>13k</h5>
									</div>
									<div class="col-4">
										<small>Post</small>
										<h5>234</h5>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="body">
								<small class="text-muted">Email address: </small>
								<p>michael_dorsey@gmail.com</p>
								<hr>
								<small class="text-muted">Phone: </small>
								<p>+ 202-555-0191</p>
								<hr>


								<div class="card">
									<div class="header">
										<h2>
											<strong>Media</strong> Gallery
										</h2>
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
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/light-gallery/js/lightgallery-all.min.js"></script>
	<!-- Light Gallery Plugin Js -->


	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/medias/image-gallery.js"></script>

</body>