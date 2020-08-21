<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype html>
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
		$('#heart').click(function() {
			count++;
			console.log(count)
			$('#like').html('<small class="bg-orange" id="like">'+count+'</small>')
			})
	})
</script>
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
														<a href="${pageContext.request.contextPath}/game/gameDtail.jsp"><img
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