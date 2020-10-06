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

<link rel="icon" href="/BoardCa/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/sweetalert/sweetalert.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">


</head>




<body class="theme-blush ls-closed ls-toggle-menu ">
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
							<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/main/main.jsp"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">Favorite</li>

						</ul>
					</div>
				</div>

			</div>


			<div class="container-fluid">
				<div class="row clearfix">

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
									<a href="${pageContext.request.contextPath}/myPage.do"><h5>MYPAGE</h5></a>
									<ul class="nav">
										<li><a
											href="${pageContext.request.contextPath}/myPageEdit.do"><i
												class="zmdi zmdi-edit"></i>Edit</a></li>
										<li><a
											href="${pageContext.request.contextPath}/myWriteList.do"><i
												class="zmdi zmdi-file"></i>Writted</a></li>
										<li><a href="${pageContext.request.contextPath}/myFAQ.do"><i
												class="zmdi zmdi-comments"></i>FAQ</a></li>
										<li><a
											href="${pageContext.request.contextPath}/myFavorite.do"><i
												class="zmdi zmdi-favorite"></i>Favorite</a></li>
										<li><a
											href="${pageContext.request.contextPath}/mySaved.do"><i
												class="zmdi zmdi-folder-star"></i>Saved</a></li>
										

									</ul>
								</div>
							</div>

							<div class="col-lg-11 col-md-12 col-sm-11 inbox right">
								<div class="card">
									<div class="body">
										<div class="table-responsive">
											<table
												class="table table-hover product_item_list c_table theme-color mb-0">
												<thead>
													<tr>

														<th>Product Name</th>

													</tr>
												</thead>
												<tbody>
													<tr>

														<td><h5>Simple Black Clock</h5></td>

													</tr>
													<tr>

														<td><h5>Brone Candle</h5></td>

													</tr>
													<tr>

														<td><h5>Wood Simple Clock</h5></td>

													</tr>
													<tr>

														<td><h5>Unero Small Bag</h5></td>


													</tr>
													<tr>
														<td><h5>Simple Black Clock</h5></td>
													<tr>
														<td><h5>Simple Black Clock</h5></td>
													</tr>
													<tr>
														<td><h5>Simple Black Clock</h5></td>
													</tr>
												</tbody>
											</table>
										</div>

										<ul class="pagination pagination-primary m-b-0">
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);"><i
													class="zmdi zmdi-arrow-left"></i></a></li>
											<li class="page-item active"><a class="page-link"
												href="javascript:void(0);">1</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);">2</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);">3</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);">4</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);"><i
													class="zmdi zmdi-arrow-right"></i></a></li>
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

	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>

	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="/BoardCa/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/footable.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/tables/footable.js"></script>
	<!-- Custom Js -->
	<script src="/BoardCa/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->


</body>
</html>