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

<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap-select/css/bootstrap-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/sweetalert/sweetalert.css">
<script src="http://code.jquery.com/jquery.js"></script>

</head>
<body class="ls-closed ls-toggle-menu ">
	<!-- header -->
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row clearfix js-sweetalert">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>AdminFAQ</h2>

						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/main.do"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">FAQ</li>

						</ul>
					</div>
				</div>

				<div class="container-fluid">
					<div class="row clearfix">

						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="d-flex">
								<div class="mobile-left">
									<a class="btn btn-info btn-icon toggle-email-nav collapsed"
										data-toggle="collapse" href="#mypage-nav" role="button"
										aria-expanded="false" aria-controls="email-nav"> <span
										class="btn-label"><i class="zmdi zmdi-account"></i></span>
									</a>
								</div>
								<div class="inbox left collapse" id="mypage-nav">
									<div class="mail-side">

										<ul class="nav">
											<li><a
												href="${pageContext.request.contextPath}/adminPage.do">
													<h5>
														<i class="zmdi zmdi-menu"></i>메뉴
													</h5>
											</a></li>
											<li><a
												href="${pageContext.request.contextPath}/adminPage.do"><i
													class="zmdi zmdi-chart"></i>통계 페이지</a></li>
											<li><a
												href="${pageContext.request.contextPath}/adminEdit.do"><i
													class="zmdi zmdi-assignment-account"></i>유저 관리</a></li>
											<li><a
												href="${pageContext.request.contextPath}/adminList.do"><i
													class="zmdi zmdi-alert-circle"></i>신고 관리</a></li>
											<li><a
												href="${pageContext.request.contextPath}/adminFAQ.do"><i
													class="zmdi zmdi-comments"></i>문의 답변</a></li>
											<li><a
												href="${pageContext.request.contextPath}/myFAQ.do"><i
													class="zmdi zmdi-comments"></i>FAQ 답변</a></li>

										</ul>
									</div>
								</div>

<div class=" inbox right">
									<div class="header">
										<h2>
											<strong>문의 답변</strong>
										</h2>
									</div>

									<div class="table-responsive">
										<div id="DataTables_Table_0_wrapper"
											class="dataTables_wrapper dt-bootstrap4">

											<div class="row">
												<div class="col-sm-12">
													<table
														class="table table-bordered table-striped table-hover js-basic-example dataTable"
														id="DataTables_Table_0" role="grid"
														aria-describedby="DataTables_Table_0_info">
														<thead>
															<tr role="row">
																<th class="sorting" tabindex="0"
																	aria-controls="DataTables_Table_0" rowspan="1"
																	colspan="1" aria-label="No" style="width: 61px;">No</th>
																<th class="sorting" tabindex="0"
																	aria-controls="DataTables_Table_0" rowspan="1"
																	colspan="1" aria-label="Date" style="width: 83px;">Date</th>
																<th class="sorting" tabindex="0"
																	aria-controls="DataTables_Table_0" rowspan="1"
																	colspan="1" aria-label="Title" style="width: 60px;">Title</th>
																<th class="sorting" tabindex="0"
																	aria-controls="DataTables_Table_0" rowspan="1"
																	colspan="1" aria-label="reply" style="width: 28px;">reply</th>

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
																<td>답변대기</td>
															</tr>
															<tr>
																<td>3</td>
																<td>2020/08/23</td>
																<td>가나다</td>
																<td>답변완료</td>
															</tr>
															<tr>
																<td>4</td>
																<td>2020/08/24</td>
																<td>가나다</td>
																<td>답변완료</td>
															</tr>
															<tr>
																<td>5</td>
																<td>2020/08/25</td>
																<td>가나다</td>
																<td>답변완료</td>
															</tr>
															<tr>
																<td>6</td>
																<td>2020/08/21</td>
																<td>가나다</td>
																<td>답변완료</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
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
															<a href="${pageContext.request.contextPath}/myFAQ.do"
																class="btn btn-primary btn-lg bg-orange waves-effect waves-light float-right">
																문의 답변</a>
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



	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>


	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/summernote/dist/summernote.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>


</body>
</html>