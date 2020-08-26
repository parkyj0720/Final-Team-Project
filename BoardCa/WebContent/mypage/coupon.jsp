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

		<div class="container-fluid">
			<!-- Basic Table -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="body">
						<div class="table-responsive">
							<table class="table table-striped m-b-0">
								<thead>
									<tr>
										<th>쿠폰명</th>
										<th data-breakpoints="xs">내 용</th>
										<th>유효기간 날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>

									</tr>
									<tr>
										<td>Garrett</td>
										<td>Accountant</td>
										<td>Tokyo</td>

									</tr>
									<tr>
										<td>Cox</td>
										<td>Author</td>
										<td>San</td>

									</tr>
									<tr>
										<td>Kelly</td>
										<td>Brielle</td>
										<td>Edinburgh</td>

									</tr>
									<tr>
										<td>Airi Satou</td>
										<td>Accountant</td>
										<td>Tokyo</td>

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

	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>