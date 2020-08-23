<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
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
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
<body class="ls-closed ls-toggle-menu ">

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
						class="zmdi zmdi-hc-fw ti-thumb-up"></i><span>관심글 (상품 /
							게시글)</span> </a></li>
				<li><a href="${pageContext.request.contextPath}/myCoupon.do"><i
						class="zmdi zmdi-hc-fw ti-stamp"></i><span>Coupon</span> </a></li>
			</ul>
			<div class="slimScrollBar"
				style="background: rgb(238, 238, 238); width: 1px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 3px; z-index: 99; right: 1px; height: 781.277px;"></div>
			<div class="slimScrollRail"
				style="width: 1px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
		</div>
	</aside>
	
	
	<div class="navbar-right user-info">
		<ul class="navbar-nav">
			<li class="dropdown mobile_menu"><a
				class="ropdown-toggle image waves-effect waves-orange"
				data-toggle="dropdown" role="button"><img
					src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
					alt="User"></a>
				<ul class="dropdown-menu slideUp2 " x-placement="bottom-start"
					style="position: fixed; will-change: transform; top: 0px; left: 0px; transform: translate3d(-110px, 50px, 0px);">
					<li class="header" style="text-align: right;">내 정보</li>
					<li class="body" style="width: auto; height: 330px;">
						<ul class="menu app_sortcut list-unstyled ">

							<li><a href="${pageContext.request.contextPath}/myPage.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>myPage</p>
									</div>
							</a></li>
							<li><a
								href="${pageContext.request.contextPath}/myPageEdit.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>Edit</p>
									</div>
							</a></li>
							<li><a href="${pageContext.request.contextPath}/myFAQ.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>1:1문의</p>
									</div>
							</a></li>
							<li><a href="${pageContext.request.contextPath}/myPage.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>LogOut</p>
									</div>
							</a></li>
						</ul>
					</li>
				</ul></li>
		</ul>


		<div class="slimScrollBar"
			style="background: rgba(0, 0, 0, 0.2); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 3px; z-index: 99; right: 1px; height: 330px;"></div>
		<div class="slimScrollRail"
			style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
	</div>

	<section class="content">
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Profile Edit</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">Edit</li>
						</ul>
					</div>
					<div class="col-lg-12 col-md-12 ">
						<button class="btn btn-primary btn-icon mobile_menu" type="button">
							<i class="zmdi zmdi-sort-amount-desc"></i>
						</button>
						<a href="${pageContext.request.contextPath}/myPage.do"
							class="btn btn-info btn-icon float-right"><i
							class="zmdi zmdi-edit"></i></a>
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
												<input type="text" class="form-control"
													placeholder="Last Name">
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


										<div class="col-lg-6 col-md-12"style="hide">
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
											<button class="btn btn-primary bg-orange">Save
												Changes</button>
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
</body>
</html>