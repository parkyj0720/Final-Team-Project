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
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">

</head>




<body class="ls-closed ls-toggle-menu ">
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
						<a href="${pageContext.request.contextPath}/myPageEdit.do"
							class="btn btn-info btn-icon float-right"><i
							class="zmdi zmdi-edit"></i></a>

					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Main2 Content  -->
	
		<div class="row clearfix">
			<div class="card">
				<div class="body">
					<div class="col-md-12">
						<div class="d-flex">
							<div class="mobile-left">
								<a class="btn btn-info btn-icon toggle-email-nav collapsed"
									data-toggle="collapse" href="mypage-nav" role="button"
									aria-expanded="false" aria-controls="email-nav"> <span
									class="btn-label"><i class="zmdi zmdi-more"></i></span>
								</a>
							</div>
							<div class="inbox left collapse" id="mypage-nav" style="">
								<div class="mail-side">
									<h5>마이페이지</h5>
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
							<div class="col-lg-11 col-md-12 col-sm-11 inbox right">
								<div class="card mcard_3">
									<div class="body">
										<h4 class="m-t-10">UserName</h4>
										<a href="${pageContext.request.contextPath}/myPage.do"><img
											src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
											class="rounded-circle shadow " alt="profile-image"
											style="width: 20%; height: 20%;"></a>
										<h4 class="m-t-10">NickName</h4>
										
									</div>
								</div>
								<div class="card">
									<div class="body">
										<small class="text-muted">gender: </small>
										<p>male/female</p>
										<hr>
										<small class="text-muted">Address: </small>
										<p>Address</p>
										<hr>
										<small class="text-muted">Email address: </small>
										<p>michael_dorsey@gmail.com</p>
										<hr>
										<small class="text-muted">Phone: </small>
										<p>+ 202-555-0191</p>
										<hr>
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="card">
												<div class="header">
													<h2>
														<strong>내가 쓴글</strong>
													</h2>
													<div class="body">
														<div>
															<div class="table-responsive">
																<table class="table table-hover">
																	<thead>
																		<tr>
																			<th>#</th>
																			<th>FIRST NAME</th>
																			<th>LAST NAME</th>
																			<th>USERNAME</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<th scope="row">1</th>
																			<td>Mark</td>
																			<td>Otto</td>
																			<td>@mdo</td>
																		</tr>
																		<tr>
																			<th scope="row">2</th>
																			<td>Jacob</td>
																			<td>Thornton</td>
																			<td>@fat</td>
																		</tr>
																		<tr>
																			<th scope="row">3</th>
																			<td>Larry</td>
																			<td>the Bird</td>
																			<td>@twitter</td>
																		</tr>
																		<tr>
																			<th scope="row">4</th>
																			<td>Larry</td>
																			<td>Jellybean</td>
																			<td>@lajelly</td>
																		</tr>
																		<tr>
																			<th scope="row">5</th>
																			<td>Larry</td>
																			<td>Kikat</td>
																			<td>@lakitkat</td>
																		</tr>
																	</tbody>
																</table>
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
			</div>
		</div>
	</div>


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

	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>