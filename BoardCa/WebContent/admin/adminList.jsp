<%@page import="CommunityModel.CommunityDto"%>
<%@page import="java.util.List"%>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/sweetalert/sweetalert.css">
<!-- JQuery DataTable Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-datatable/dataTables.bootstrap4.min.css">


<script src="http://code.jquery.com/jquery.js"></script>
</head>
<script>

var tr
var td
	$(function() {
		$(".clickBtn").click(function() {
			var str = ""
			var tdArr = new Array(); // 배열 선언

			// 현재 클릭된 Row(<tr>)
			tr = $(this);
			td = tr.children();

			console.log(tr);
			
			// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
			console.log("클릭한 Row의 모든 데이터 : " + tr.text());

			
			/*
			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
			td.each(function(i) {
				tdArr.push(td.eq(i).text());
			});
			*/

			// td.eq(index)를 통해 값을 가져올 수도 있다.
			
			var date = td.eq(0).text();
			var id = td.eq(1).text();
			var title = td.eq(2).text();

			var cont = td.eq(3).text();
			
			
			
			$("#ex1_Result1").html("<p>" + cont + "<p>");

		})
	});
</script>
<body class="ls-toggle-menu ls-closed ">
	<!-- header -->
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>writeList</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/main.do"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">Writted</li>

						</ul>

					</div>
				</div>
			</div>
		</div>

		<div class="body_scroll">
			<div class="block-header">

				<div class="container-fluid">
					<!-- Basic Examples -->

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
											<strong>신고 관리</strong>
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
																	colspan="1" aria-label="Date" style="width: 60px;">글쓴 시간</th>
																<th class="sorting" tabindex="0"
																	aria-controls="DataTables_Table_0" rowspan="1"
																	colspan="1" aria-label="Id" style="width: 61px;">신고자 ID</th>
																<th class="sorting" tabindex="0"
																	aria-controls="DataTables_Table_0" rowspan="1"
																	colspan="1" aria-label="Title" style="width: 83px;">글 제목</th>
																<th class="sorting" tabindex="0"
																	aria-controls="DataTables_Table_0" rowspan="1"
																	colspan="1" aria-label="Content" style="display: none;">글 내용</th>
																

															</tr>
														</thead>

														<tbody>
														
														<%
														
														
														List<CommunityDto> rplist = (List<CommunityDto>)request.getAttribute("rplist");
														
														for(int i=0; i<rplist.size(); i++){
															
															CommunityDto report = rplist.get(i);
															
														
														
														%>
														
														
															<tr class="clickBtn ">

																<td><%=report.getBRD_SYSDATE()%></td>
																<td><%=report.getBRD_WRT_ID()%></td>
																<td><%=report.getBRD_TIT()%></td>
																<td style="display: none;"><%=report.getBRD_CONTENT()%></td>
																

															</tr>
														
														<%
														
															}
														
														%>
															
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

	<script src="/BoardCa/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="/BoardCa/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<!-- Jquery DataTable Plugin Js -->
	<script
		src="/BoardCa/stylesheet/assets/bundles/datatablescripts.bundle.js"></script>
	<script
		src="/BoardCa/stylesheet/assets/plugins/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
	<script
		src="/BoardCa/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
	<script
		src="/BoardCa/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.colVis.min.js"></script>
	<script
		src="/BoardCa/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.flash.min.js"></script>
	<script
		src="/BoardCa/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.html5.min.js"></script>
	<script
		src="/BoardCa/stylesheet/assets/plugins/jquery-datatable/buttons/buttons.print.min.js"></script>

	<script src="/BoardCa/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="/BoardCa/stylesheet/assets/js/pages/tables/jquery-datatable.js"></script>

</body>
</html>