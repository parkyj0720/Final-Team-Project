<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

</head>


<body class="ls-closed ls-toggle-menu ">
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>GameDetail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/main.do"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/gameMain.do">GameMain</a></li>
						<li class="breadcrumb-item active">GameDetail</li>
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
								<div class="col-xl-3 col-lg-4 col-md-12">
									<div class="preview preview-pic tab-content">
										<div class="tab-pane active" id="product_1">
											<img src="/BoardCa/stylesheet/assets/images/ecommerce/1.png"
												class="img-fluid" alt="">
										</div>
									</div>
								</div>
								<div class="col-xl-9 col-lg-8 col-md-12">
									<div class="product details">
										<h3 class="mb-0">오렌지 게임</h3>
										<hr>
										<p class="product-description">오렌지 오렌지 오렌지</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="container-fluid">
						<div class="row clearfix">
							<div class="card">
								<div class="body">
									<div class="row">
										<div class="col-lg-12">
											<div>
												<h6>유튜브 링크 가져오기</h6>
												<p>오렌지 룰 설명</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="body">
									<div class="row">
										<div class="col-lg-12">
											<div>추천 게임</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>




					<div class="container-fluid">
						<div class="row clearfix">
							<div class="card">
								<div class="body">
									<div class="row">
										<div class="col-lg-12">
											<div class="body">
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
						</div>
					</div>


					<div class="container-fluid">
						<div class="row clearfix">
							<div class="card">
								<div class="body">
									<div class="row">
										<div class="col-lg-12">
											<div class="col-xl-9 col-lg-8 col-md-12">
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
															<p>There are many variations of passages of Lorem
																Ipsum available, but the majority have suffered
																alteration in some form, by injected humour.</p>
														</div>
													</li>
													<li>

														<div class="text-box " style="width: auto;">
															<h5>Stillnot david</h5>
															<span class="comment-date">Wednesday, October 17,
																2018 at 4:00PM.</span>
															<p>Lorem Ipsum is simply dummy text of the printing
																and typesetting industry. Lorem Ipsum has been the
																industry's standard dummy.</p>
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
			</div>
		</div>
	</div>


	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>


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