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
<link rel="icon"
	href="${pageContext.request.contextPath}/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
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

			$("#ex1_Result1").html("<p>" + tr.text() + "<p>");

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
						<h2>myFavorite</h2>
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
					<div class="card">
						<div class="body">
							<div class="row clearfix">
								<div class="col-md-12">
									<div class="d-flex">
										<div class="mobile-left">
											<a class="btn btn-info btn-icon toggle-email-nav collapsed"
												data-toggle="collapse" href="#mypage-nav" role="button"
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
													<li><a
														href="${pageContext.request.contextPath}/myFAQ.do"><i
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
										<div class=" inbox right">
											<div class="header">
												<h2>
													<strong>내가 쓴 글</strong>
												</h2>
											</div>
											<div class="table">
												<div id="DataTables_Table_0_wrapper"
													class="dataTables_wrapper dt-bootstrap4">

													<div class="col-sm-12 col-md-12">
														<div id="DataTables_Table_0_filter"
															class="dataTables_filter">
															<label>Search:<input type="search"
																class="form-control form-control-sm" placeholder=""
																aria-controls="DataTables_Table_0"></label>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12 col-md-12 col-sm-12">
														<table
															class="table table-bordered table-striped table-hover js-basic-example dataTable"
															id="DataTables_Table_0" role="grid"
															aria-describedby="DataTables_Table_0_info">
															<thead>
																<tr role="row">
																	<th class="sorting_asc" tabindex="0"
																		aria-controls="DataTables_Table_0" rowspan="1"
																		colspan="1" aria-sort="ascending"
																		aria-label="Name: activate to sort column descending"
																		style="width: 20px;">No</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="DataTables_Table_0" rowspan="1"
																		colspan="1"
																		aria-label="Position: activate to sort column ascending"
																		style="width: 150px;">Date</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="DataTables_Table_0" rowspan="1"
																		colspan="1"
																		aria-label="Office: activate to sort column ascending"
																		style="width: 80px;">Title</th>
																	<th class="sorting" tabindex="0"
																		aria-controls="DataTables_Table_0" rowspan="1"
																		colspan="1"
																		aria-label="Office: activate to sort column ascending"
																		style="width: 80px;">Answer</th>

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



														<div class="container-fluid">
															<div class="row clearfix">
																<div class="col-lg-12">
																	<div class="card">
																		<div class="header">
																			<h5 style="color: orange">선택한 글</h5>
																		</div>
																		<div class="body" id="ex1_Result1">
																			<p>선택한 글이 보여집니다!</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12 col-md-12 col-sm-12">
														<div class="dataTables_paginate paging_simple_numbers"
															id="DataTables_Table_0_paginate">
															<ul class="pagination">
																<li class="paginate_button page-item previous disabled"
																	id="DataTables_Table_0_previous"><a href="#"
																	aria-controls="DataTables_Table_0" data-dt-idx="0"
																	tabindex="0" class="page-link">Previous</a></li>
																<li class="paginate_button page-item active"><a
																	href="#" aria-controls="DataTables_Table_0"
																	data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
																<li class="paginate_button page-item "><a href="#"
																	aria-controls="DataTables_Table_0" data-dt-idx="2"
																	tabindex="0" class="page-link">2</a></li>
																<li class="paginate_button page-item "><a href="#"
																	aria-controls="DataTables_Table_0" data-dt-idx="3"
																	tabindex="0" class="page-link">3</a></li>
																<li class="paginate_button page-item "><a href="#"
																	aria-controls="DataTables_Table_0" data-dt-idx="4"
																	tabindex="0" class="page-link">4</a></li>
																<li class="paginate_button page-item "><a href="#"
																	aria-controls="DataTables_Table_0" data-dt-idx="5"
																	tabindex="0" class="page-link">5</a></li>
																<li class="paginate_button page-item "><a href="#"
																	aria-controls="DataTables_Table_0" data-dt-idx="6"
																	tabindex="0" class="page-link">6</a></li>
																<li class="paginate_button page-item next"
																	id="DataTables_Table_0_next"><a href="#"
																	aria-controls="DataTables_Table_0" data-dt-idx="7"
																	tabindex="0" class="page-link">Next</a></li>
															</ul>
															<a href="${pageContext.request.contextPath}/myFAQ.do"
																class="btn btn-primary btn-lg bg-orange waves-effect waves-light float-right">
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