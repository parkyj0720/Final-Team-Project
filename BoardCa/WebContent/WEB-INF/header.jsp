<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/charts-c3/plugin.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/morrisjs/morris.min.css" />
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">

<!-- Page Loader -->
<div class="page-loader-wrapper">
	<!-- 	<div class="loader"> -->
	<div class="m-t-30">
		<img class="zmdi-hc-spin" src="assets/images/loader.svg" width="48"
			height="48" alt="Aero">
	</div>
	<p>Please wait...</p>
</div>

<%
	String userId = (String) session.getAttribute("userId");
System.out.println(userId);
%>
<section class="content" style="margin: auto;">
	<div class="body_scroll">
		<div class="container-fluid">
			<!-- Tabs With Icon Title -->
			<div class="row clearfix">
				<div class="col-sm-12">
					<div class="card">
						<div class="header">
							<ul class="header-dropdown">
								<li class="dropdown">
									<a href="javascript:void(0);"
										class="dropdown-toggle" title="Notifications"
										data-toggle="dropdown" role="button">
										<i class="zmdi zmdi-notifications"></i>
										<div class="notify">
											<span class="heartbit"></span><span class="point"></span>
										</div> 
									</a>
									<!-- 알림페이지 안에 목록 list -->
									<ul class="dropdown-menu slideUp2">
										<li class="header">Notifications</li>
										<li class="body">
											<ul class="menu list-unstyled">
												<li><a href="javascript:void(0);">
														<div class="icon-circle bg-blue">
															<i class="zmdi zmdi-account"></i>
														</div>
														<div class="menu-info">
															<h4>8 New Members joined</h4>
															<p>
																<i class="zmdi zmdi-time"></i> 14 mins ago
															</p>
														</div>
												</a></li>
												<li><a href="javascript:void(0);">
														<div class="icon-circle bg-amber">
															<i class="zmdi zmdi-shopping-cart"></i>
														</div>
														<div class="menu-info">
															<h4>4 Sales made</h4>
															<p>
																<i class="zmdi zmdi-time"></i> 22 mins ago
															</p>
														</div>
												</a></li>
												<li><a href="javascript:void(0);">
														<div class="icon-circle bg-red">
															<i class="zmdi zmdi-delete"></i>
														</div>
														<div class="menu-info">
															<h4>
																<b>Nancy Doe</b> Deleted account
															</h4>
															<p>
																<i class="zmdi zmdi-time"></i> 3 hours ago
															</p>
														</div>
												</a></li>
												<li><a href="javascript:void(0);">
														<div class="icon-circle bg-green">
															<i class="zmdi zmdi-edit"></i>
														</div>
														<div class="menu-info">
															<h4>
																<b>Nancy</b> Changed name
															</h4>
															<p>
																<i class="zmdi zmdi-time"></i> 2 hours ago
															</p>
														</div>
												</a></li>
												<li><a href="javascript:void(0);">
														<div class="icon-circle bg-grey">
															<i class="zmdi zmdi-comment-text"></i>
														</div>
														<div class="menu-info">
															<h4>
																<b>John</b> Commented your post
															</h4>
															<p>
																<i class="zmdi zmdi-time"></i> 4 hours ago
															</p>
														</div>
												</a></li>
												<li><a href="javascript:void(0);">
														<div class="icon-circle bg-purple">
															<i class="zmdi zmdi-refresh"></i>
														</div>
														<div class="menu-info">
															<h4>
																<b>John</b> Updated status
															</h4>
															<p>
																<i class="zmdi zmdi-time"></i> 3 hours ago
															</p>
														</div>
												</a></li>
												<li><a href="javascript:void(0);">
														<div class="icon-circle bg-light-blue">
															<i class="zmdi zmdi-settings"></i>
														</div>
														<div class="menu-info">
															<h4>Settings Updated</h4>
															<p>
																<i class="zmdi zmdi-time"></i> Yesterday
															</p>
														</div>
												</a></li>
											</ul>
										</li>
										<li class="footer"><a href="javascript:void(0);">View
												All Notifications</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="javascript:void(0);"
										class="dropdown-toggle" data-toggle="dropdown" role="button"
										aria-haspopup="true" aria-expanded="false">
											<p><%=userId%>님반갑습니다.</p>
									</a>
									<ul class="dropdown-menu dropdown-menu-right">
										<li><a
											href="${pageContext.request.contextPath}/myPage.do">마이페이지</a></li>
										<li><a
											href="${pageContext.request.contextPath}/myPageEdit.do">정보수정</a></li>
										<li><a href="${pageContext.request.contextPath}/myFAQ.do">1:1문의</a></li>
										<li><a href="javascript:void(0);">로그아웃</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<div>
						<!-- Nav tabs -->
						<ul class="nav col-md-12 col-xs-12 nav-tabs">
							<li class="nav-item col-md-12 col-xs-1" role="presentation"
								class="active"><a
								href="${pageContext.request.contextPath}/main.do"> <img
									alt="logo"
									src="${pageContext.request.contextPath}/imgs/logo2.png">
							</a></li>
							<li class="nav-item col-md-3" role="presentation"><a
								href="${pageContext.request.contextPath}/cListAll.do"> <i
									class="zmdi zmdi-email"></i>안주레시피
							</a></li>
							<li class="nav-item col-md-3" role="presentation"><a
								href="${pageContext.request.contextPath}/gameMain.do"> <i
									class="zmdi zmdi-email"></i>술게임
							</a></li>
							<li class="nav-item col-md-3" role="presentation"><a
								href="${pageContext.request.contextPath}/Community_main.do">
									<i class="zmdi zmdi-email"></i>커뮤니티
							</a></li>
							<li class="nav-item col-md-3" role="presentation"><a
								href="${pageContext.request.contextPath}/search_list.do"> <i
									class="zmdi zmdi-email"></i>술집찾기
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>