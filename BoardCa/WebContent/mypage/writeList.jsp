<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js " lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Jquery DataTables</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- JQuery DataTable Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/dataTables.bootstrap4.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<script src="http://code.jquery.com/jquery.js"></script>
</head>
<script>
	$(function() {
		$(".clickBtn").click(function() {
			var str = ""
			var tdArr = new Array(); // 배열 선언

			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();

			// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
			console.log("클릭한 Row의 모든 데이터 : " + tr.text());

			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
			td.each(function(i) {
				tdArr.push(td.eq(i).text());
			});

			// td.eq(index)를 통해 값을 가져올 수도 있다.
			var no = td.eq(0).text();
			var date = td.eq(1).text();
			var title = td.eq(2).text();
			var reply = td.eq(3).text();

			$("#ex1_Result1").html(" * 클릭한 Row의 모든 데이터 = " + tr.text());

		})
	});
</script>
<body class="ls-toggle-menu ls-closed theme-orange">

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
	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- Left Sidebar -->
	<aside id="leftsidebar" class="sidebar">
		<div class="navbar-brand" style="border-bottom: 0px;">
			<button class="btn-menu ls-toggle-btn" type="button">
				<i class="zmdi zmdi-menu"></i>
			</button>

			<a href="index.html"><img
				src="${pageContext.request.contextPath}/stylesheet/assets/images/logo.svg"
				style="width: 25px; alt: Aero"><span class="m-l-10">Aero</span></a>
		</div>
		<div class="menu">
			<ul class="list">
				<li>
					<div class="user-info" style="border-bottom: 0px;">
						<a class="image"
							href="${pageContext.request.contextPath}/myPage.do"><img
							src="${pageContext.request.contextPath}/mypage/imgs/02.jpg"
							alt="User"></a>
						<div class="detail">
							<h4>Michael</h4>
							<small>Super Admin</small>
						</div>
					</div>
				</li>
						<li><a href="${pageContext.request.contextPath}/myWriteList.do"><i
						class="zmdi zmdi-hc-fw ti-write"></i><span>내가 쓴 글</span></a></li>
				<li><a href="${pageContext.request.contextPath}/myFavorite.do"><i
						class="zmdi zmdi-hc-fw ti-comments"></i><span>FAQ/1:1 문의</span> </a></li>
				<li><a href="${pageContext.request.contextPath}/myFavorite.do"><i
						class="zmdi zmdi-hc-fw ti-thumb-up"></i><span>관심글 (상품  / 게시글)</span> </a></li>
				<li><a href="${pageContext.request.contextPath}/myFavorite.do"><i
						class="zmdi zmdi-hc-fw ti-stamp"></i><span>Coupon</span> </a></li>
			</ul>
			<div class="slimScrollBar"
				style="background: rgb(238, 238, 238); width: 1px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 3px; z-index: 99; right: 1px; height: 781.277px;"></div>
			<div class="slimScrollRail"
				style="width: 1px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
		</div>
	</aside>

	<!-- mainContent -->
	<section class="content" >
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<button class="btn btn-primary btn-icon mobile_menu" type="button">
							<i class="zmdi zmdi-sort-amount-desc"></i>
						</button>
						<h2>쓴 글 목록</h2>
						<ul class="breadcrumb" style="background-color: #f5f5f5;">
							<li class="breadcrumb-item"><a href="index.html"> <i
									class="zmdi zmdi-home"></i> Aero
							</a></li>
							<li class="breadcrumb-item">myPages</li>
							<li class="breadcrumb-item active">목록</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="body_scroll">
			<div class="block-header">
				<button class="btn btn-primary btn-icon mobile_menu" type="button">
					<i class="zmdi zmdi-sort-amount-desc"></i>
				</button>
				<div class="container-fluid">
					<!-- Basic Examples -->
					<div>
						<div class="row clearfix">
							<div class="col-lg-12">
								<div class="card">
									<div class="header">
										<h2>
											<strong>내가 쓴 글</strong>
										</h2>
									</div>
									<div class="body">
										<div class="table-responsive">
											<table id="example-table-1"
												class="bg-orange table table-bordered table-striped js-basic-example dataTable ">
												<thead>
													<tr>
														<th>no</th>
														<th>date</th>
														<th>title</th>
														<th>reply</th>
													</tr>
												</thead>
												<tbody>
													<tr class="clickBtn">

														<td>1</td>
														<td>2020/08/20</td>
														<td>하이</td>
														<td>답변대기</td>

													</tr>

													<tr>
														<td>2</td>
														<td>2020/08/21</td>
														<td>가나다</td>
														<td>답변완료</td>
													</tr>
												</tbody>
											</table>
											<div class="col-lg-12" id="ex1_Result1"></div>

										</div>
										<a href="${pageContext.request.contextPath}/myFavorite.do"
											class="btn btn-primary btn-lg bg-orange waves-effect waves-light">
											1:1문의하기</a>
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
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<!-- Jquery DataTable Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/datatablescripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.colVis.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.flash.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.html5.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.print.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/tables/jquery-datatable.js"></script>
</body>
</html>