<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/sweetalert/sweetalert.css">
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
						<h2>AdminPage</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/main.do"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item active">관리자 페이지</li>

						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>


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
						
						<ul class="nav">
						<li>
						<a href="${pageContext.request.contextPath}/adminPage.do">
						<h5><i class="zmdi zmdi-menu"></i>메뉴</h5></a>
						</li>
							<li><a
								href="${pageContext.request.contextPath}/adminPage.do"><i
									class="zmdi zmdi-chart"></i>통계 페이지</a></li>						
							<li><a
								href="${pageContext.request.contextPath}/myPageEdit.do"><i
									class="zmdi zmdi-assignment-account"></i>유저 관리</a></li>
							<li><a
								href="${pageContext.request.contextPath}/myWriteList.do"><i
									class="zmdi zmdi-alert-circle"></i>신고 관리</a></li>
							<li><a href="${pageContext.request.contextPath}/myFAQ.do"><i
									class="zmdi zmdi-comments"></i>FAQ 답변</a></li>
							<li><a href="${pageContext.request.contextPath}/myFAQ.do"><i
									class="zmdi zmdi-comments"></i>FAQ 답변</a></li>

						</ul>
					</div>
				</div>

				<div class="col-lg-11 col-md-12 col-sm-11 inbox right">
					
					<div class="card">
						<div class="body">
							<div class="col-lg-12 col-md-12 col-sm-12">
								<div class="card">
									<div class="header">
										<h2>
											<strong>통계 페이지</strong>
										</h2>
										<div class="body">
											<div>
												<div class="table-responsive">
													<table class="table table-hover">
														<thead>
															<tr>
																<th>No</th>
																<th>Date</th>
																<th>Title</th>
																<th>reply</th>
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




	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
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

</body>
</html>