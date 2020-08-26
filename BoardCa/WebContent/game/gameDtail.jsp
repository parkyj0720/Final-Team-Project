<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">

<title></title>
<link rel="icon" href="/BoardCa/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
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
<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


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
	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>