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

<title>:: Aero Bootstrap4 Admin ::</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
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
					style="position: fixed; will-change: transform; top: 0px; left: 0px; transform: translate3d(-110px, 50px, 0px); width: 230px;">
					<li class="header" style="min-width: 230px;">내 정보</li>
					<li class="body" style="width: auto; height: 330px;">
						<ul class="menu app_sortcut list-unstyled ">

							<li style="width: 90px;"><a
								href="${pageContext.request.contextPath}/myPage.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>myPage</p>
									</div>
							</a></li>
							<li style="width: 90px;"><a
								href="${pageContext.request.contextPath}/myPageEdit.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>Edit</p>
									</div>
							</a></li>
							<li style="width: 90px;"><a
								href="${pageContext.request.contextPath}/myFAQ.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>1:1문의</p>
									</div>
							</a></li>
							<li style="width: 90px;"><a
								href="${pageContext.request.contextPath}/signIn.do">
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
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Product Detail</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item">eCommerce</li>
							<li class="breadcrumb-item active">Product Detail</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card">
							<div class="body">
								<div class="row">
									<div class="col-xl-12 col-lg-12	col-md-12">
										<div class="preview preview-pic tab-content">
											<div class="tab-pane active" id="product_1">
												<img 
													src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
													class="img-fluid" alt="">
												<div>
													<h1>오렌지 게임</h1>

												</div>
											</div>
										</div>
									</div>

									<div class="product details">
										<p>오렌지 오렌지 오렌지</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="card">
					<div class="body">
						<div class="row">
							<div class="col-xl-12 col-lg-12	col-md-12">
								<div class="tab-pane active" id="description">
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy text ever since the 1500s, when an unknown
										printer took a galley of type and scrambled it to make a type
										specimen book.</p>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable.</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="body">
						<div class="row">
							<div class="col-xl-12 col-lg-12	col-md-12">

								<ul class="preview thumbnail nav nav-tabs">
									<li class="nav-item"><a class="nav-link active"
										data-toggle="tab" href="#product_1"><img
											src="${pageContext.request.contextPath}/mypage/imgs/01.jpg" alt=""></a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#product_2"><img src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
											alt=""></a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#product_3"><img src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
											alt=""></a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#product_4"><img src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
											alt=""></a></li>
								</ul>


							</div>
						</div>
					</div>



					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-xl-12 col-lg-12	col-md-12">


									<div class="tab-content">
										<small>Your email address will not be published.
											Required fields are marked*</small>
										<form class="row comment-form mt-2">
											<div class="col-xl-6 col-lg-6	col-md-6">
												<div class="form-group">
													<input type="text" class="form-control"
														placeholder="Your Name">
												</div>
											</div>
											<div class="col-xl-6 col-lg-6	col-md-6">
												<div class="form-group">
													<input type="text" class="form-control"
														placeholder="Email Address">
												</div>
											</div>

											<div class="col-xl-12 col-lg-12	col-md-12">
												<div class="form-group">
													<textarea rows="4" class="form-control no-resize"
														placeholder="Please type what you want..."></textarea>
												</div>
												<button type="submit" class="btn btn btn-primary">SUBMIT</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="card">
						<div class="header">
							<div class="body">
								<div class="row">
									<div class="col-xl-12 col-lg-12	col-md-12">
										<h2>
											<strong>Comments</strong> (2)
										</h2>
									</div>
									<div class="col-xl-12 col-lg-12	col-md-12">
										<ul class="comment-reply ">
											<li>
												<div class="text-box " style="width: auto;">
													<h5>Kareem Todd</h5>
													<span class="comment-date">Wednesday, October 17,
														2018 at 4:00PM.</span> 
													<p>There are many variations of passages of Lorem Ipsum
														available, but the majority have suffered alteration in
														some form, by injected humour.</p>
												</div>
											</li>
											<li>

												<div class="text-box " style="width: auto;">
													<h5>Stillnot david</h5>
													<span class="comment-date">Wednesday, October 17,
														2018 at 4:00PM.</span> 
													<p>Lorem Ipsum is simply dummy text of the printing and
														typesetting industry. Lorem Ipsum has been the industry's
														standard dummy.</p>
												</div>
											</li>
										</ul>
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
	<script src="https://embed.tawk.to/5c6d4867f324050cfe342c69/default"
		charset="UTF-8"></script>
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