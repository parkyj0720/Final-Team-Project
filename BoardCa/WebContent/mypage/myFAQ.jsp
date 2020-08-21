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

<title>:: Aero Bootstrap4 Admin ::</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/summernote/dist/summernote.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap-select/css/bootstrap-select.css" />
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
</head>

<body class="ls-closed ls-toggle-menu theme-orange">

	<!-- Loding Page -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="zmdi-hc-spin"
					src="${pageContext.request.contextPath}/stylesheet/assets/images/loader.svg"
					style="width: 48px; height: 48px; alt: Aero;">
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

			<a href="index.html"><img
				src="${pageContext.request.contextPath}/stylesheet/assets/images/logo.svg"
				style="width: 25px; alt: Aero"><span class="m-l-10">Aero</span></a>
		</div>
		<div class="menu">
			<ul class="list">
				<li>
					<div class="user-info" style="border-bottom: 0px;">
						<a class="image"
							href="${pageContext.request.contextPath}/myPage.do"><img
							src="${pageContext.request.contextPath}/mypage/imgs/02.jpg"
							alt="User"></a>
						<div class="detail">
							<h4>Michael</h4>
							<small>Super Admin</small>
						</div>
					</div>
				</li>
				<li><a href="${pageContext.request.contextPath}/myWriteList.do"><i
						class="zmdi zmdi-hc-fw ti-write"></i><span>내가 쓴 글</span></a></li>
				<li><a href="${pageContext.request.contextPath}/myFAQ.do"><i
						class="zmdi zmdi-hc-fw ti-comments"></i><span>FAQ/1:1 문의</span> </a></li>
				<li><a href="${pageContext.request.contextPath}/myFavorite.do"><i
						class="zmdi zmdi-hc-fw ti-thumb-up"></i><span>관심글 (상품  / 게시글)</span> </a></li>
				<li><a href="${pageContext.request.contextPath}/myCoupon.do"><i
						class="zmdi zmdi-hc-fw ti-stamp"></i><span>Coupon</span> </a></li>
			</ul>
			<div class="slimScrollBar"
				style="background: rgb(238, 238, 238); width: 1px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 3px; z-index: 99; right: 1px; height: 781.277px;"></div>
			<div class="slimScrollRail"
				style="width: 1px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
		</div>
	</aside>

	<section class="content blog-page">
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>문의</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">문의</li>
						</ul>
						<button class="btn btn-primary btn-icon mobile_menu" type="button">
							<i class="zmdi zmdi-sort-amount-desc"></i>
						</button>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="body">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter Blog title" />
								</div>
								<select class="form-control show-tick">
									<option>Select Category --</option>
									<option>Web Design</option>
									<option>Photography</option>
									<option>Technology</option>
									<option>Lifestyle</option>
									<option>Sports</option>
								</select>
							</div>
						</div>
						<div class="card">
							<div class="body">
								<div class="summernote">
									Hello there, <br />
									<p>
										The toolbar can be customized and it also supports various
										callbacks such as
										<code>oninit</code>
										,
										<code>onfocus</code>
										,
										<code>onpaste</code>
										and many more.
									</p>
									<p>
										Please try <b>paste some texts</b> here
									</p>
								</div>
								<button type="button" class="btn btn-info waves-effect m-t-20 bg-orange">POST</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/dropzone/dropzone.js"></script>
	<!-- Dropzone Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/summernote/dist/summernote.js"></script>
</body>
</html>