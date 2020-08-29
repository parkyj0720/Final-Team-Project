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

	<div class="col-xl-12 col-lg-12 col-md-12">
		<div class="row clearfix">

			<div class="container">

				<!-- Page Heading -->
				<h1 class="my-4">
					Page Heading <small>Secondary Text</small>
				</h1>

				<div class="row">
					<div class="col-lg-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Project One</a>
								</h4>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam viverra euismod odio, gravida pellentesque
									urna varius vitae.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Project Two</a>
								</h4>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor
									nobis numquam, rem expedita, aliquid optio, alias illum eaque.
									Non magni, voluptates quae, necessitatibus unde temporibus.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Project Three</a>
								</h4>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam viverra euismod odio, gravida pellentesque
									urna varius vitae.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Project Four</a>
								</h4>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor
									nobis numquam, rem expedita, aliquid optio, alias illum eaque.
									Non magni, voluptates quae, necessitatibus unde temporibus.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Project Five</a>
								</h4>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam viverra euismod odio, gravida pellentesque
									urna varius vitae.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Project Six</a>
								</h4>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor
									nobis numquam, rem expedita, aliquid optio, alias illum eaque.
									Non magni, voluptates quae, necessitatibus unde temporibus.</p>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

				<!-- Pagination -->
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
					</a></li>
				</ul>

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