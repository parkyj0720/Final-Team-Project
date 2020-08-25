<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<title>BoardCa :: main</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<script>

</script>
</head>
<body>
	<div class="container">
		<img alt="logo"
			src="${pageContext.request.contextPath}/imgs/logo1.png"
			style="width: 30%">
		<h2>BoardCa는 건전한 음주문화를 지향합니다.</h2>
		<div class="body_scroll">
			<div class="container-fluid">
				<!-- Tabs With Icon Title -->
				<div class="row clearfix">
					<div class="col-sm-12">
						<div class="card">
							<div class="body">
								<!-- Nav tabs -->
								<!-- data-tab에 탭경로 주기 -->
								<ul class="nav nav-tabs p-0 md-12 nav-tabs-success"
									role="tablist">
									<li class="nav-item col-md-3"><a href="cListAll.do"> 안주레시피 </a></li>
									<li class="nav-item col-md-3"><a href="gameMain.do">술게임 </a></li>
									<li class="nav-item col-md-3"><a href="">커뮤니티 </a></li>
									<li class="nav-item col-md-3"><a href="search_list.do">근처 술집 </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>