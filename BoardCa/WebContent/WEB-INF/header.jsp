<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<head>
<link rel="icon"
	href="${pageContext.request.contextPath}/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<style type="text/css">
</style>

<script>
/* 	$(function() {
		$('.tab-pane').click(function() {
			var activeTab = $(this).attr('data-tab');
			$.ajax({
				type : 'GET', // get 방식으로 통신
				url : activeTab + ".do", // 탭의 data-tab속성의 값으로된 html파일로 통신
				dataType : "jsp", // html 형식으로 값 읽기
				error : function() { // 통신실패시 안내창
					alert('통신실패');
				},
				success : function(data) { // 통신 성공시 탭 내용의 div 가져오기
					$('#tabContent').html(data);
				}
			});
		});
		$('#default').click();

	}); */
</script>
</head>

<body class="theme-blush">

	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="zmdi-hc-spin" src="assets/images/loader.svg" width="48"
					height="48" alt="Aero">
			</div>
			<p>Please wait...</p>
		</div>
	</div>

	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>

	<section class="content" style="margin: auto;">
		<div class="body_scroll">
			<div class="container-fluid">
				<!-- Tabs With Icon Title -->
				<div class="row clearfix">
					<div class="col-sm-12">
						<div class="card">
							<div class="header">
								<ul class="header-dropdown">
									<li class="dropdown"><a href="javascript:void(0);"
										class="dropdown-toggle" data-toggle="dropdown" role="button"
										aria-haspopup="true" aria-expanded="false">
											<p>${userId}님반갑습니다.</p>
									</a>
										<ul class="dropdown-menu dropdown-menu-right">
											<li><a href="${pageContext.request.contextPath}/myPage.do">마이페이지</a></li>
											<li><a href="${pageContext.request.contextPath}/myPageEdit.do">정보수정</a></li>
											<li><a href="${pageContext.request.contextPath}/myFAQ.do">1:1문의</a></li>
											<li><a href="javascript:void(0);">로그아웃</a></li>
										</ul>
									</li>
								</ul>
							</div>
							<div>
								<!-- Nav tabs -->

								<ul class="nav col-md-12 col-xs-12 nav-tabs">
									<li class="nav-item col-md-12 col-xs-1" role="presentation" class="active">
										<a	href="${pageContext.request.contextPath}/main.do"> 
											<img alt="logo" src="${pageContext.request.contextPath}/imgs/logo2.png">
										</a>
									</li>
									<li class="nav-item col-md-3" role="presentation">
										<a href="${pageContext.request.contextPath}/cListAll.do">
											<i class="zmdi zmdi-email"></i>안주레시피
										</a>
									</li>
									<li class="nav-item col-md-3" role="presentation">
										<a href="${pageContext.request.contextPath}/gameMain.do">
										<i class="zmdi zmdi-email"></i>술게임</a>
									</li>
									<li class="nav-item col-md-3" role="presentation">
										<a href="">
										<i class="zmdi zmdi-email"></i>커뮤니티</a>
									</li>
									<li class="nav-item col-md-3" role="presentation">
										<a href="${pageContext.request.contextPath}/search_list.do">
										<i class="zmdi zmdi-email"></i>술집찾기</a>
									</li>									
								</ul>

								<!-- Tab panes -->
								<!-- <div class="tab-content">
									<div role="tabpanel" class="tab-pane in active"
										id="home_with_icon_title">
										<b>Home Content</b>
										<p></p>
									</div>
									<div role="tabpanel" class="tab-pane"
										id="profile_with_icon_title">
										<b>Profile Content</b>
										<p></p>
									</div>
									<div role="tabpanel" class="tab-pane"
										id="messages_with_icon_title">
										<b>Message Content</b>
										<p></p>
									</div>
									<div role="tabpanel" class="tab-pane"
										id="settings_with_icon_title">
										<b>Settings Content</b>
										<p></p>
									</div>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>