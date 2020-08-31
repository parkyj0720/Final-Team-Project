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
<link rel="icon" href="/BoardCa/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">

<script src="http://code.jquery.com/jquery.js"></script>

<style>
</style>
</head>

<script>
	$('#like').text();
	var count = 0;
	$(function() {
		$('#heart').click(
				function() {
					count++;
					console.log(count)
					$('#like').html(
							'<small class="bg-orange" id="like">' + count
									+ '</small>')
				})
	})
</script>


<body class="ls-closed ls-toggle-menu ">
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>GameDetail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/main.do"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item">GameMain</li>
						
					</ul>
				</div>
			</div>
		</div>

		<div class="container-fluid">
			<div class="row clearfix">
				<div class="row">

					<!-- Team Member 1 -->
					<div class="col-xl-3 col-md-3 col-mb-3">
						<div class="card border-0 shadow">
							<img src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
								class="card-img-top" alt="...">
							<div class="card-body text-center">
								<h5 class="card-title mb-0">Team Member</h5>
								<div class="card-text text-black-50">Web Developer</div>
							</div>
						</div>
					</div>
					<!-- Team Member 2 -->
					<div class="col-xl-3 col-md-3 col-mb-3">
						<div class="card border-0 shadow">
							<img src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
								class="card-img-top" alt="...">
							<div class="card-body text-center">
								<h5 class="card-title mb-0">Team Member</h5>
								<div class="card-text text-black-50">Web Developer</div>
							</div>
						</div>
					</div>
					<!-- Team Member 3 -->
					<div class="col-xl-3 col-md-3 col-mb-3">
						<div class="card border-0 shadow">
							<img src="https://source.unsplash.com/sNut2MqSmds/500x350"
								class="card-img-top" alt="...">
							<div class="card-body text-center">
								<h5 class="card-title mb-0">Team Member</h5>
								<div class="card-text text-black-50">Web Developer</div>
							</div>
						</div>
					</div>
					<!-- Team Member 4 -->
					<div class="col-xl-3 col-md-3 col-mb-3">
						<div class="card border-0 shadow">
							<img src="https://source.unsplash.com/ZI6p3i9SbVU/500x350"
								class="card-img-top" alt="...">
							<div class="card-body text-center">
								<h5 class="card-title mb-0">Team Member</h5>
								<div class="card-text text-black-50">Web Developer</div>
							</div>
						</div>
					</div>

					<div class="col-xl-3 col-md-3 col-mb-3">
						<div class="card border-0 shadow">
							<img src="https://source.unsplash.com/ZI6p3i9SbVU/500x350"
								class="card-img-top" alt="...">
							<div class="card-body text-center">
								<h5 class="card-title mb-0">Team Member</h5>
								<div class="card-text text-black-50">Web Developer</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.row -->


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
</body>
</html>