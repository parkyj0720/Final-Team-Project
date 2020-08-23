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

<title>:: Aero Bootstrap4 Admin :: Profile</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">

<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css"
	type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
</head>

<script>
	$('#like').text();
	var count = 0;
	$(function() {
		$('#heart').click(
				function() {
					count++;
					console.log(count)
					$('#like').html(
							'<small class="bg-orange" id="like">' + count
									+ '</small>')
				})
	})
</script>
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

	<section class="content file_manager" style="margin: auto;">
		<!-- header -->

	
		<!-- body -->
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Media</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item"><a href="file-dashboard.html">File
									Manager</a></li>
							<li class="breadcrumb-item active">Media</li>
						</ul>

					</div>

				</div>
			</div>

			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card">
							<div class="tab-content">
								<div class="tab-pane active" id="2019">
									<div class="row clearfix">
										<div class="col-lg-3 col-md-4 col-sm-12">
											<div class="card">
												<div class="file">
													<div class="icon">
														<a
															href="${pageContext.request.contextPath}/game/gameDtail.jsp"><img
															src="${pageContext.request.contextPath}/game/img/01.PNG"></a>
													</div>
													<div align="right">
														<button id="heart"
															class="bg-orange btn btn-primary btn-round">
															<i class="zmdi zmdi-favorite-outline6 ti-heart"><br>
																<small class="bg-orange" id="like">0</small></i>
														</button>
													</div>
												</div>
											</div>
										</div>
										
										<div class="col-lg-3 col-md-4 col-sm-12">
											<div class="card">
												<div class="file">
													<div class="icon">
														<a
															href="${pageContext.request.contextPath}/game/gameDtail.jsp"><img
															src="${pageContext.request.contextPath}/game/img/01.PNG"></a>
													</div>
													<div align="right">
														<button id="heart"
															class="bg-orange btn btn-primary btn-round">
															<i class="zmdi zmdi-favorite-outline6 ti-heart"><br>
																<small class="bg-orange" id="like">0</small></i>
														</button>
													</div>
												</div>
											</div>
										</div>
										
																				
										<div class="col-lg-3 col-md-4 col-sm-12">
											<div class="card">
												<div class="file">
													<div class="icon">
														<a
															href="${pageContext.request.contextPath}/game/gameDtail.jsp"><img
															src="${pageContext.request.contextPath}/game/img/01.PNG"></a>
													</div>
													<div align="right">
														<button id="heart"
															class="bg-orange btn btn-primary btn-round">
															<i class="zmdi zmdi-favorite-outline6 ti-heart"><br>
																<small class="bg-orange" id="like">0</small></i>
														</button>
													</div>
												</div>
											</div>
										</div>
										
																				
										<div class="col-lg-3 col-md-4 col-sm-12">
											<div class="card">
												<div class="file">
													<div class="icon">
														<a
															href="${pageContext.request.contextPath}/game/gameDtail.jsp"><img
															src="${pageContext.request.contextPath}/game/img/01.PNG"></a>
													</div>
													<div align="right">
														<button id="heart"
															class="bg-orange btn btn-primary btn-round">
															<i class="zmdi zmdi-favorite-outline6 ti-heart"><br>
																<small class="bg-orange" id="like">0</small></i>
														</button>
													</div>
												</div>
											</div>
										</div>
										
																				
										<div class="col-lg-3 col-md-4 col-sm-12">
											<div class="card">
												<div class="file">
													<div class="icon">
														<a
															href="${pageContext.request.contextPath}/game/gameDtail.jsp"><img
															src="${pageContext.request.contextPath}/game/img/01.PNG"></a>
													</div>
													<div align="right">
														<button id="heart"
															class="bg-orange btn btn-primary btn-round">
															<i class="zmdi zmdi-favorite-outline6 ti-heart"><br>
																<small class="bg-orange" id="like">0</small></i>
														</button>
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
		</div>
	</section>
	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>