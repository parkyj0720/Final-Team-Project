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
						<h2>
							myFavorite
							<button class="btn btn-primary btn-icon float-right n"
								type="button">
								<i class="zmdi zmdi-sort-amount-desc"></i>
							</button>
						</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">myFavorite</li>

						</ul>

					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Main2 Content  -->
	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12">
				<div class="card mcard_3">
					<div class="body">
						<a href="${pageContext.request.contextPath}/myPage.do"><img
							src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
							class="rounded-circle shadow " alt="profile-image"
							style="width: 20%; height: 20%;"></a>
						<h4 class="m-t-10">UserName/NickName</h4>
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
							</div>
						</div>
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