<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: BoardCa :: MYSAVED</title>
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
<body class="ls-closed ls-toggle-menu ">
	<!-- header -->
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row clearfix ">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>mySaved</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/main/main.jsp"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">saved</li>

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
								<div class="inbox left collapse" id="mypage-nav" style="">
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

								<div
									class="container-fluid col-lg-11 col-md-12 col-sm-11 inbox right">
									<div class="row clearfix">
										<div class="col-lg-12 col-md-12 col-sm-12">
											<div class="card">
												<div class="body">
													<div class="table-responsive">
														<table
																class="table table-bordered table-striped table-hover js-basic-example dataTable"
																id="DataTables_Table_0" role="grid"
																aria-describedby="DataTables_Table_0_info">
																<thead>
																	<tr role="row">
																		<th class="sorting" tabindex="0"
																			aria-controls="DataTables_Table_0" rowspan="1"
																			colspan="1" aria-label="No" style="width: 61px;">Title</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="DataTables_Table_0" rowspan="1"
																			colspan="1" aria-label="Title" style="width: 83px;">Date</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="DataTables_Table_0" rowspan="1"
																			colspan="1" aria-label="Date" style="width: 60px;">Cateory</th>
																	</tr>
																</thead>
																<tbody>
																	<%
																	
																	
																		for (int i = 0; i < writeList.size(); i++) {
																			
																			CommunityDto dto = writeList.get(i);
																			String boardname="";
																			for (int y = 0; y < boardList.size(); y++) {
																				System.out.println(boardList);
																				if(y==4){
																					continue;
																				}
																				else{
																				if(boardList.get(y).getBRD_CAT_IDX() == dto.getCATEGORY_IDX()){
																					boardname = boardList.get(y).getCAT_NAME();
																				}
																				}
																			}
																	%>
																	<tr>
																		<td><a class="text-muted"
																			href="${pageContext.request.contextPath}/Community_detail.do?num=<%=dto.getBRD_IDX()%>"><%=dto.getBRD_TIT()%></a>
																		</td>
																		<td><%=dto.getBRD_SYSDATE()%></td>
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


	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/footable.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/tables/footable.js"></script>
</body>
</html>