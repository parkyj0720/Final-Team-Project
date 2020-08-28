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

<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/footable-bootstrap/css/footable.bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/footable-bootstrap/css/footable.standalone.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">


</head>




<body class="ls-closed ls-toggle-menu ">
<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12 ">
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
										<a href="${pageContext.request.contextPath}/myPage.do"><h5>마이페이지</h5></a>
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
								<div
									class="container-fluid col-lg-11 col-md-12 col-sm-11 inbox right">
									<div class="row clearfix">
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="card">
												<div class="body">
													<div class="table-responsive">
														<table
															class="table table-striped m-b-0 footable footable-1 footable-paging footable-paging-center breakpoint-md"
															style="">
															<thead>
																<tr class="footable-header">
																	<th class="footable-sortable footable-first-visible"
																		style="display: table-cell;">First Name<span
																		class="fooicon fooicon-sort"></span></th>
																	<th data-breakpoints="xs" class="footable-sortable"
																		style="display: table-cell;">Last Name<span
																		class="fooicon fooicon-sort"></span></th>
																	<th
																		class="footable-sortable footable-last-visible footable-desc"
																		style="display: table-cell;">Status<span
																		class="fooicon fooicon-sort-desc"></span></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="footable-first-visible"
																		style="display: table-cell;">가나다</td>
																	<td style="display: table-cell;">Brielle</td>
																	<td style="display: table-cell;">하하하</td>

																</tr>
																<tr>
																	<td class="footable-first-visible"
																		style="display: table-cell;">가하나</td>
																	<td style="display: table-cell;">Brielle</td>
																	<td style="display: table-cell;">하나가</td>

																</tr>
																<tr>
																	<td class="footable-first-visible"
																		style="display: table-cell;">하하하</td>
																	<td style="display: table-cell;">Accountant</td>
																	<td style="display: table-cell;">가나다</td>

																</tr>
															</tbody>
															<tfoot>
																<tr class="footable-paging">
																	<td colspan="2"><ul class="pagination">

																			<li class="footable-page-nav disabled"
																				data-page="prev"><a class="footable-page-link"
																				href="#">‹</a></li>
																			<li class="footable-page visible active"
																				data-page="1"><a class="footable-page-link"
																				href="#">1</a></li>
																			<li class="footable-page visible" data-page="2"><a
																				class="footable-page-link" href="#">2</a></li>
																			<li class="footable-page-nav" data-page="next"><a
																				class="footable-page-link" href="#">›</a></li>

																		</ul>
																		<div class="divider"></div> <span
																		class="label label-default">1 of 2</span></td>
																</tr>
															</tfoot>
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

	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>

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
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/footable.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/tables/footable.js"></script>

</body>
</html>