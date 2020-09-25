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
				<div class="inbox left collapse" id="mypage-nav">
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
								href="${pageContext.request.contextPath}/adminEdit.do"><i
									class="zmdi zmdi-assignment-account"></i>유저 관리</a></li>
							<li><a
								href="${pageContext.request.contextPath}/adminList.do"><i
									class="zmdi zmdi-alert-circle"></i>신고 관리</a></li>
							<li><a href="${pageContext.request.contextPath}/adminFAQ.do"><i
									class="zmdi zmdi-comments"></i>문의 답변</a></li>
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
												<div class="col-lg-6 col-md-12">
													<div class="card">
														<div class="header">
															<h2>
																<strong>Donut</strong> Chart
															</h2>
														</div>
														<div class="body">
															<div id="chart-donut" class="c3_chart c3"
																style="max-height: 320px; position: relative;">
																<svg width="357.703125" height="320"
																	style="overflow: hidden;">
																	<defs>
																	<clipPath id="c3-1601006938432-clip">
																	<rect width="357.703125" height="293"></rect></clipPath>
																	<clipPath id="c3-1601006938432-clip-xaxis">
																	<rect x="-31" y="-20" width="419.703125" height="43"></rect></clipPath>
																	<clipPath id="c3-1601006938432-clip-yaxis">
																	<rect x="-29" y="-4" width="20" height="317"></rect></clipPath>
																	<clipPath id="c3-1601006938432-clip-grid">
																	<rect width="357.703125" height="293"></rect></clipPath>
																	<clipPath id="c3-1601006938432-clip-subchart">
																	<rect width="357.703125"></rect></clipPath></defs>
																	<g transform="translate(0.5,4.5)">
																	<text class="c3-text c3-empty" text-anchor="middle"
																		dominant-baseline="middle" x="178.8515625" y="146.5"
																		style="opacity: 0;"></text>
																	<rect class="c3-zoom-rect" width="357.703125"
																		height="293" style="opacity: 0;"></rect>
																	<g
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip)"
																		class="c3-regions" style="visibility: hidden;"></g>
																	<g
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip-grid)"
																		class="c3-grid" style="visibility: hidden;">
																	<g class="c3-xgrid-focus">
																	<line class="c3-xgrid-focus" x1="-10" x2="-10" y1="0"
																		y2="293" style="visibility: hidden;"></line></g></g>
																	<g
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip)"
																		class="c3-chart">
																	<g class="c3-event-rects c3-event-rects-single"
																		style="fill-opacity: 0;">
																	<rect class=" c3-event-rect c3-event-rect-0"
																		x="0.1484375" y="0" width="357.703125" height="293"></rect></g>
																	<g class="c3-chart-bars">
																	<g class="c3-chart-bar c3-target c3-target-data1"
																		style="pointer-events: none;">
																	<g
																		class=" c3-shapes c3-shapes-data1 c3-bars c3-bars-data1"
																		style="cursor: pointer;"></g></g>
																	<g class="c3-chart-bar c3-target c3-target-data2"
																		style="pointer-events: none;">
																	<g
																		class=" c3-shapes c3-shapes-data2 c3-bars c3-bars-data2"
																		style="cursor: pointer;"></g></g></g>
																	<g class="c3-chart-lines">
																	<g class="c3-chart-line c3-target c3-target-data1"
																		style="opacity: 1; pointer-events: none;">
																	<g
																		class=" c3-shapes c3-shapes-data1 c3-lines c3-lines-data1"></g>
																	<g
																		class=" c3-shapes c3-shapes-data1 c3-areas c3-areas-data1"></g>
																	<g
																		class=" c3-selected-circles c3-selected-circles-data1"></g>
																	<g
																		class=" c3-shapes c3-shapes-data1 c3-circles c3-circles-data1"
																		style="cursor: pointer;"></g></g>
																	<g class="c3-chart-line c3-target c3-target-data2"
																		style="opacity: 1; pointer-events: none;">
																	<g
																		class=" c3-shapes c3-shapes-data2 c3-lines c3-lines-data2"></g>
																	<g
																		class=" c3-shapes c3-shapes-data2 c3-areas c3-areas-data2"></g>
																	<g
																		class=" c3-selected-circles c3-selected-circles-data2"></g>
																	<g
																		class=" c3-shapes c3-shapes-data2 c3-circles c3-circles-data2"
																		style="cursor: pointer;"></g></g></g>
																	<g class="c3-chart-arcs"
																		transform="translate(178.8515625,141.5)">
																	<text class="c3-chart-arcs-title"
																		style="text-anchor: middle; opacity: 1;"></text>
																	<g class="c3-chart-arc c3-target c3-target-data1">
																	<g
																		class=" c3-shapes c3-shapes-data1 c3-arcs c3-arcs-data1">
																	<path class=" c3-shape c3-shape c3-arc c3-arc-data1"
																		transform=""
																		style="fill: rgb(70, 182, 254); cursor: pointer;"
																		d="M8.231157298769147e-15,-134.42499999999998A134.42499999999998,134.42499999999998 0 1,1 -97.99160774112325,92.02024471446394L-58.79496464467395,55.212146828678364A80.65499999999999,80.65499999999999 0 1,0 4.938694379261488e-15,-80.65499999999999Z"></path></g>
																	<text dy=".35em" class=""
																		transform="translate(98.69533244605532,42.709284158864314)"
																		style="opacity: 1; text-anchor: middle; pointer-events: none;">63.0%</text></g>
																	<g class="c3-chart-arc c3-target c3-target-data2">
																	<g
																		class=" c3-shapes c3-shapes-data2 c3-arcs c3-arcs-data2">
																	<path class=" c3-shape c3-shape c3-arc c3-arc-data2"
																		transform=""
																		style="fill: rgb(92, 197, 205); cursor: pointer;"
																		d="M-97.99160774112325,92.02024471446394A134.42499999999998,134.42499999999998 0 0,1 -2.469347189630744e-14,-134.42499999999998L-1.4816083137784464e-14,-80.65499999999999A80.65499999999999,80.65499999999999 0 0,0 -58.79496464467395,55.212146828678364Z"></path></g>
																	<text dy=".35em" class=""
																		transform="translate(-98.69533244605532,-42.70928415886432)"
																		style="opacity: 1; text-anchor: middle; pointer-events: none;">37.0%</text></g></g>
																	<g class="c3-chart-texts">
																	<g class="c3-chart-text c3-target c3-target-data1"
																		style="opacity: 1; pointer-events: none;">
																	<g class=" c3-texts c3-texts-data1"></g></g>
																	<g class="c3-chart-text c3-target c3-target-data2"
																		style="opacity: 1; pointer-events: none;">
																	<g class=" c3-texts c3-texts-data2"></g></g></g></g>
																	<g
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip-grid)"
																		class="c3-grid c3-grid-lines">
																	<g class="c3-xgrid-lines"></g>
																	<g class="c3-ygrid-lines"></g></g>
																	<g class="c3-axis c3-axis-x"
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip-xaxis)"
																		transform="translate(0,293)"
																		style="visibility: visible; opacity: 0;">
																	<text class="c3-axis-x-label" transform=""
																		style="text-anchor: end;" x="357.703125" dx="-0.5em"
																		dy="-0.5em"></text>
																	<g class="tick" transform="translate(179, 0)"
																		style="opacity: 1;">
																	<line x1="0" x2="0" y2="6"></line>
																	<text x="0" y="9" transform=""
																		style="text-anchor: middle; display: block;">
																	<tspan x="0" dy=".71em" dx="0">0</tspan></text></g>
																	<path class="domain" d="M0,6V0H357.703125V6"></path></g>
																	<g class="c3-axis c3-axis-y"
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip-yaxis)"
																		transform="translate(0,0)"
																		style="visibility: visible; opacity: 0;">
																	<text class="c3-axis-y-label" transform="rotate(-90)"
																		style="text-anchor: end;" x="0" dx="-0.5em" dy="1.2em"></text>
																	<g class="tick" transform="translate(0,288)"
																		style="opacity: 1;">
																	<line x2="-6"></line>
																	<text x="-9" y="0" style="text-anchor: end;">
																	<tspan x="-9" dy="3">35</tspan></text></g>
																	<g class="tick" transform="translate(0,241)"
																		style="opacity: 1;">
																	<line x2="-6"></line>
																	<text x="-9" y="0" style="text-anchor: end;">
																	<tspan x="-9" dy="3">40</tspan></text></g>
																	<g class="tick" transform="translate(0,194)"
																		style="opacity: 1;">
																	<line x2="-6"></line>
																	<text x="-9" y="0" style="text-anchor: end;">
																	<tspan x="-9" dy="3">45</tspan></text></g>
																	<g class="tick" transform="translate(0,147)"
																		style="opacity: 1;">
																	<line x2="-6"></line>
																	<text x="-9" y="0" style="text-anchor: end;">
																	<tspan x="-9" dy="3">50</tspan></text></g>
																	<g class="tick" transform="translate(0,101)"
																		style="opacity: 1;">
																	<line x2="-6"></line>
																	<text x="-9" y="0" style="text-anchor: end;">
																	<tspan x="-9" dy="3">55</tspan></text></g>
																	<g class="tick" transform="translate(0,54)"
																		style="opacity: 1;">
																	<line x2="-6"></line>
																	<text x="-9" y="0" style="text-anchor: end;">
																	<tspan x="-9" dy="3">60</tspan></text></g>
																	<g class="tick" transform="translate(0,7)"
																		style="opacity: 1;">
																	<line x2="-6"></line>
																	<text x="-9" y="0" style="text-anchor: end;">
																	<tspan x="-9" dy="3">65</tspan></text></g>
																	<path class="domain" d="M-6,1H0V293H-6"></path></g>
																	<g class="c3-axis c3-axis-y2"
																		transform="translate(357.703125,0)"
																		style="visibility: hidden; opacity: 0;">
																	<text class="c3-axis-y2-label" transform="rotate(-90)"
																		style="text-anchor: end;" x="0" dx="-0.5em"
																		dy="-0.5em"></text>
																	<g class="tick" transform="translate(0,293)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0</tspan></text></g>
																	<g class="tick" transform="translate(0,264)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.1</tspan></text></g>
																	<g class="tick" transform="translate(0,235)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.2</tspan></text></g>
																	<g class="tick" transform="translate(0,206)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.3</tspan></text></g>
																	<g class="tick" transform="translate(0,177)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.4</tspan></text></g>
																	<g class="tick" transform="translate(0,147)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.5</tspan></text></g>
																	<g class="tick" transform="translate(0,118)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.6</tspan></text></g>
																	<g class="tick" transform="translate(0,89)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.7</tspan></text></g>
																	<g class="tick" transform="translate(0,60)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.8</tspan></text></g>
																	<g class="tick" transform="translate(0,31)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">0.9</tspan></text></g>
																	<g class="tick" transform="translate(0,1)"
																		style="opacity: 1;">
																	<line x2="6" y2="0"></line>
																	<text x="9" y="0" style="text-anchor: start;">
																	<tspan x="9" dy="3">1</tspan></text></g>
																	<path class="domain" d="M6,1H0V293H6"></path></g></g>
																	<g transform="translate(0.5,320.5)"
																		style="visibility: hidden;">
																	<g
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip-subchart)"
																		class="c3-chart">
																	<g class="c3-chart-bars"></g>
																	<g class="c3-chart-lines"></g></g>
																	<g
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip)"
																		class="c3-brush"
																		style="pointer-events: all; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
																	<rect class="background" x="0" width="701.5"
																		style="visibility: hidden; cursor: crosshair;"></rect>
																	<rect class="extent" x="0" width="0"
																		style="cursor: move;"></rect>
																	<g class="resize e" transform="translate(0,0)"
																		style="cursor: ew-resize; display: none;">
																	<rect x="-3" width="6" height="6"
																		style="visibility: hidden;"></rect></g>
																	<g class="resize w" transform="translate(0,0)"
																		style="cursor: ew-resize; display: none;">
																	<rect x="-3" width="6" height="6"
																		style="visibility: hidden;"></rect></g></g>
																	<g class="c3-axis-x" transform="translate(0,0)"
																		clip-path="url(file:///C:/BoardCa/Final-Team-Project/BoardCa/WebContent/stylesheet/c3.html#c3-1601006938432-clip-xaxis)"
																		style="visibility: hidden; opacity: 0;">
																	<g class="tick" transform="translate(179, 0)"
																		style="opacity: 1;">
																	<line x1="0" x2="0" y2="6"></line>
																	<text x="0" y="9" transform=""
																		style="text-anchor: middle; display: block;">
																	<tspan x="0" dy=".71em" dx="0">0</tspan></text></g>
																	<path class="domain" d="M0,6V0H357.703125V6"></path></g></g>
																	<g transform="translate(0,297)">
																	<g class="c3-legend-item c3-legend-item-data1"
																		style="visibility: visible; cursor: pointer; opacity: 1;">
																	<text x="112.40625" y="9" style="pointer-events: none;">Maximum</text>
																	<rect class="c3-legend-item-event" x="98.40625" y="-5"
																		width="86.5625" height="23" style="fill-opacity: 0;"></rect>
																	<line class="c3-legend-item-tile" x1="96.40625" y1="4"
																		x2="106.40625" y2="4" stroke-width="10"
																		style="stroke: rgb(70, 182, 254); pointer-events: none;"></line></g>
																	<g class="c3-legend-item c3-legend-item-data2"
																		style="visibility: visible; cursor: pointer; opacity: 1;">
																	<text x="198.96875" y="9" style="pointer-events: none;">Minimum</text>
																	<rect class="c3-legend-item-event" x="184.96875" y="-5"
																		width="74.328125" height="23" style="fill-opacity: 0;"></rect>
																	<line class="c3-legend-item-tile" x1="182.96875" y1="4"
																		x2="192.96875" y2="4" stroke-width="10"
																		style="stroke: rgb(92, 197, 205); pointer-events: none;"></line></g></g>
																	<text class="c3-title" x="178.8515625" y="0"></text></svg>
																<div class="c3-tooltip-container"
																	style="position: absolute; pointer-events: none; display: none; top: 142.5px; left: 482px;">
																	<table class="c3-tooltip">
																		<tbody>
																			<tr class="c3-tooltip-name--data1">
																				<td class="name"><span
																					style="background-color: #46b6fe"></span>Maximum</td>
																				<td class="value">63.0%</td>
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