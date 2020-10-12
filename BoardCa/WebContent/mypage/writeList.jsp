<%@page import="CommunityModel.BoardList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="CommunityModel.CommunityDto"%>
<%@page import="java.util.List"%>
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

<title>:: BoardCa :: MY WRITE LIST</title>
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
	
<%List<CommunityDto> writeList = (List<CommunityDto>) request.getAttribute("writeList");
ArrayList<BoardList> boardList = (ArrayList<BoardList>) request.getAttribute("write");%>
	
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
								href="${pageContext.request.contextPath}/main/main.jsp"><i
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
										<a href="${pageContext.request.contextPath}/myPage.do"><h5>MYPAGE</h5></a>
										<ul class="nav">
											<li><a
												href="${pageContext.request.contextPath}/myPageEdit.do"><i
													class="zmdi zmdi-edit"></i>Edit</a></li>
											<li><a
												href="${pageContext.request.contextPath}/myWriteList.do"><i
													class="zmdi zmdi-file"></i>Writted</a></li>
											<li><a
												href="${pageContext.request.contextPath}/myFAQ.do"><i
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
								<div class="col-lg-11 col-md-11 col-sm-11 inbox right">
									<div class="card">
										<div class="header">
											<h2>
												<strong>내가 쓴 글</strong>
											</h2>
										</div>
										<div class="body">
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
																			colspan="1" aria-label="Title" style="width: 83px;">글 쓴 시간</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="DataTables_Table_0" rowspan="1"
																			colspan="1" aria-label="No" style="width: 61px;">제목</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="DataTables_Table_0" rowspan="1"
																			colspan="1" aria-label="Date" style="width: 60px;">카테고리</th>
																	</tr>
																</thead>
																<tbody>
																	<%
																		for (int i = 0; i < writeList.size(); i++) {

																		CommunityDto dto = writeList.get(i);
																		
																		
																		String boardname = "";
																		
																		for (int y = 0; y < boardList.size(); y++) {

																			if (boardList.get(y).getBRD_CAT_IDX() == dto.getCATEGORY_IDX()) {
																		boardname = boardList.get(y).getCAT_NAME();
																			}
																		}
																		
																	%>
																	<tr>
																		<td><%=dto.getBRD_SYSDATE()%></td>
																		<td><a class="text-muted"
																			href="${pageContext.request.contextPath}/Community_detail.do?num=<%=dto.getBRD_IDX()%>"><%=dto.getBRD_TIT()%></a>
																		</td>
																		<td><%=boardname%></td>
																	</tr>
																	<%
																		}
																	%>
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