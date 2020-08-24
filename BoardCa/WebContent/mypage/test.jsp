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
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css" type="text/css">    
<style>
	#menu li:hover{
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
							<li><a href="${pageContext.request.contextPath}/myPageEdit.do">
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
<section class="content" style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;">

</section>







	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>