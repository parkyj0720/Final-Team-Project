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
<!-- JQuery DataTable Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/dataTables.bootstrap4.min.css">

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
<body class="ls-toggle-menu ls-closed ">
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>



	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>
							myFavorite
							<button class="btn btn-primary btn-icon float-right "
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

		<div class="body_scroll">
			<div class="block-header">

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
												class="table table-bordered table-striped js-basic-example dataTable ">
												<thead>
													<tr>
														<th>no</th>
														<th>date</th>
														<th>title</th>
														<th>reply</th>
													</tr>
												</thead>
												<tbody>
													<tr class="clickBtn ">

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
										<a href="${pageContext.request.contextPath}//myFAQ.do"
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
	</div>


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
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/tables/jquery-datatable.js"></script>

	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>