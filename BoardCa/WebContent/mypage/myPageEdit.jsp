<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">

<title></title>
<link rel="icon" href="/BoardCa/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/sweetalert/sweetalert.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
</head>
<body class="ls-closed ls-toggle-menu ">
	<!-- header -->
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>

	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>myFavorite</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">myFavorite</li>
						</ul>
						<a href="${pageContext.request.contextPath}/myPage.do"
							class="btn btn-info btn-icon float-right"><i
							class="zmdi zmdi-check"></i></a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row clearfix">
			<div class="card">
				<div class="body">
					<div class="col-md-12">
						<div class="d-flex">
							<div class="mobile-left">
								<a class="btn btn-info btn-icon toggle-email-nav collapsed"
									data-toggle="collapse" href="#mypage-nav" role="button"
									aria-expanded="false" aria-controls="email-nav"> <span
									class="btn-label"><i class="zmdi zmdi-account"></i></span>
								</a>
							</div>
							<div class="inbox left collapse" id="mypage-nav" style="">
								<div class="mail-side">
									<a href="${pageContext.request.contextPath}/myPage.do"><h5>마이페이지</h5></a>
									<ul class="nav">
										<li><a
											href="${pageContext.request.contextPath}/myWriteList.do"><i
												class="zmdi zmdi-edit"></i>Writted</a></li>
										<li><a href="${pageContext.request.contextPath}/myFAQ.do"><i
												class="zmdi zmdi-comments"></i>FAQ</a></li>
										<li><a
											href="${pageContext.request.contextPath}/myFavorite.do"><i
												class="zmdi zmdi-favorite"></i>Favorite</a></li>
										<li><a
											href="${pageContext.request.contextPath}/myCoupon.do"><i
												class="zmdi zmdi-ticket-star"></i>COUPON</a></li>

									</ul>
								</div>
							</div>
							<div class="col-lg-11 col-md-11 col-sm-11 inbox right">
								<div class="card">
									<div class="header">
										<h2>
											<strong>Security</strong> Settings
										</h2>
									</div>
									<div class="body">
										<div class="row">
											<div class="col-lg-12 col-md-12">
												<div class="form-group">
													<input type="text" class="form-control"
														placeholder="Username">
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="form-group">
													<input type="password" class="form-control"
														placeholder="Current Password">
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
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

											<div class="col-lg-12 col-md-12">
												<div class="form-group">
													<input type="text" class="form-control"
														placeholder="PhoneNumber">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<input type="text" class="form-control"
														placeholder="E-mail">
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
		</div>
	</div>




	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
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