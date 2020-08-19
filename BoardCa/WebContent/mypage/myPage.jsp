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
	<!-- Main Content  -->
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

						<a href="${pageContext.request.contextPath}/myPageEdit.do"
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
								<a href="${pageContext.request.contextPath}/myPage.do"><img
									src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
									class="rounded-circle shadow " alt="profile-image"
									style="width: 20%; height: 20%;"></a>
								<h4 class="m-t-10">UserName</h4>
								/
								<h4 class="m-t-10">NickName</h4>
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
										<p class="text-muted">address</p>
									</div>
									<div class="col-4">a</div>
									<div class="col-4">b</div>
									<div class="col-4">c</div>
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
										<div class="body">
											<p>내 게시물</p>
											<div class="list-unstyled row clearfix">
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 m-b-30">
													<a href="${pageContext.request.contextPath}/myPage.do">게시글1</a>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 m-b-30">
													<a>게시글1</a>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 m-b-30">
													<a>게시글1</a>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 m-b-30">
													<a>게시글1</a>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 m-b-30">
													<a>게시글1</a>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 m-b-30">
													<a>게시글1</a>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 m-b-30">
													<a>게시글1</a>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 m-b-30">
													<a>게시글1</a>
												</div>
											</div>
										</div>
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