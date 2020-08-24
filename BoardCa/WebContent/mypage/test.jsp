<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">
<title>BoardCa Community</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="https://mm.pstatic.net/css/deploy/ncache/w.20200820a.css">
<link rel="stylesheet" type="text/css"
	href="https://mm.pstatic.net/css/deploy/greendot.20200625.css">
<style>
#menu li:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="navbar-right user-info">
		<ul class="navbar-nav">
			<li class="dropdown mobile_menu"><a
				class="ropdown-toggle image waves-effect waves-orange"
				data-toggle="dropdown" role="button"><img
					src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
					alt="User"></a>
				<ul class="dropdown-menu slideUp2 " x-placement="bottom-start"
					style="position: fixed; will-change: transform; top: 0px; left: 0px; transform: translate3d(-110px, 50px, 0px);">
					<li class="header" style="text-align: right;">내 정보</li>
					<li class="body" style="width: auto; height: 330px;">
						<ul class="menu app_sortcut list-unstyled ">

							<li><a href="${pageContext.request.contextPath}/myPage.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>myPage</p>
									</div>
							</a></li>
							<li><a
								href="${pageContext.request.contextPath}/myPageEdit.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>Edit</p>
									</div>
							</a></li>
							<li><a href="${pageContext.request.contextPath}/myFAQ.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>1:1문의</p>
									</div>
							</a></li>
							<li><a href="${pageContext.request.contextPath}/myPage.do">
									<div class="icon-circle bg-orange">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="menu-info">

										<p>LogOut</p>
									</div>
							</a></li>
						</ul>
					</li>
				</ul></li>
		</ul>


		<div class="slimScrollBar"
			style="background: rgba(0, 0, 0, 0.2); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 3px; z-index: 99; right: 1px; height: 330px;"></div>
		<div class="slimScrollRail"
			style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
	</div>



	<section class="content" style="margin: auto;">
		<div class="row">
			<div>
				<img src="${pageContext.request.contextPath}/imgs/logo1.png"
					height="250em" />
			</div>
		</div>
		<div class="col-sm-12 bg-orange">
			<h2></h2>
			<ul class="breadcrumb col-sm-12 bg-orange">
				<li class="col-md-3" style="text-align: center;">안주/레시피</li>
				<li class="col-md-3" style="text-align: center;">게임</li>
				<li class="col-md-3" style="text-align: center;">커뮤니티</li>
				<li class="col-md-3" style="text-align: center;">근처 술집</li>
			</ul>
		</div>
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Product List</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item">Community</li>
							<li class="breadcrumb-item active">(수정예정)</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-6">
						<div class="card">
							<div class="header" align="center">
								<h2>
									<a href="Clist.jsp">숙취게시판</a>
								</h2>
							</div>
							<div class="body" style="height: 30em"></div>
						</div>
						<div class="card">
							<div class="header" align="center">
								<h2>
									<a href="Clist.jsp">정보공유</a>
								</h2>
							</div>
							<div class="body" style="height: 30em"></div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12">
						<div class="card">
							<div class="header" align="center">
								<h2>
									<a href="Clist.jsp">QnA</a>
								</h2>
							</div>
							<div class="body" style="height: 30em"></div>
						</div>
						<div class="card">
							<div class="header" align="center">
								<h2>
									<a href="Clist.jsp">신고하기</a>
								</h2>
							</div>
							<div class="body" style="height: 30em"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>




	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>