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
					<h2>GameMain</h2>
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
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<Img src="https://i.ytimg.com/vi/XgI2-r1oEuU/mqdefault.jpg">
							<div class="caption">
								<h6>[술게임] 20학번 새내기도 이정도는 알아야지 &quot;베이직 술게임&quot;</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<Img src="https://i.ytimg.com/vi/XgI2-r1oEuU/mqdefault.jpg">
							<div class="caption">
								<h6>[술게임] 20학번 새내기도 이정도는 알아야지 &quot;베이직 술게임&quot;</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<Img src="https://i.ytimg.com/vi/XgI2-r1oEuU/mqdefault.jpg">
							<div class="caption">
								<h6>[술게임] 20학번 새내기도 이정도는 알아야지 &quot;베이직 술게임&quot;</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<Img src="https://i.ytimg.com/vi/XgI2-r1oEuU/mqdefault.jpg">
							<div class="caption">
								<h6>[술게임] 20학번 새내기도 이정도는 알아야지 &quot;베이직 술게임&quot;</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<Img src="https://i.ytimg.com/vi/XgI2-r1oEuU/mqdefault.jpg">
							<div class="caption">
								<h6>[술게임] 20학번 새내기도 이정도는 알아야지 &quot;베이직 술게임&quot;</h6>
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