<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">

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
${pageContext.request.contextPath}/mypage/imgs/01

<body class="ls-closed ls-toggle-menu ">
<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


		<!-- body -->
		<div class="row">
			<div class="col-lg-6 col-md-12">
				<div class="card">
					<div class="blogitem mb-5">
						<div class="icon">
							<a href="blog-details.html"><img
								src="" alt="blog image"></a>

						</div>
						<div class="blogitem-content">
							<div class="blogitem-header">
								<div class="blogitem-meta">
									<span><i class="zmdi zmdi-account"></i>By <a
										href="javascript:void(0);">Michael</a></span> <span><i
										class="zmdi zmdi-comments"></i><a href="blog-details.html">Comments(3)</a></span>
								</div>
								<div class="blogitem-share">
									<ul class="list-unstyled mb-0">
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-facebook-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-instagram"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-twitter-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-linkedin-box"></i></a></li>
									</ul>
								</div>
							</div>
							<h5>
								<a href="blog-details.html">The Most Advance Business Plan</a>
							</h5>
							<p>It is a long established fact that a reader will be
								distracted by the readable content of a page when looking at its
								layout. The point of using Lorem of letters, as opposed to using
								'Content here, content here', making it look like readable
								English.</p>
							<a href="blog-details.html" class="btn btn-info">Read More</a>
						</div>
					</div>
					<div class="blogitem mb-5">
						<div class="blogitem-image icon">
							<a href="blog-details.html"><img
								src="" alt="blog image"></a>

						</div>
						<div class="blogitem-content">
							<div class="blogitem-header">
								<div class="blogitem-meta">
									<span><i class="zmdi zmdi-account"></i>By <a
										href="javascript:void(0);">Michael</a></span> <span><i
										class="zmdi zmdi-comments"></i><a href="blog-details.html">Comments(3)</a></span>
								</div>
								<div class="blogitem-share">
									<ul class="list-unstyled mb-0">
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-facebook-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-instagram"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-twitter-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-linkedin-box"></i></a></li>
									</ul>
								</div>
							</div>
							<h5>
								<a href="blog-details.html">WTCR from 2018: new rules, more
									cars, more races</a>
							</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incdidunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullaco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<a href="blog-details.html" class="btn btn-info">Read More</a>
						</div>
					</div>
					<div class="blogitem mb-5">
						<div class="blogitem-image">
							<a href="blog-details.html"><img
								src="assets/images/image-gallery/8.jpg" alt="blog image"></a>

						</div>
						<div class="blogitem-content">
							<div class="blogitem-header">
								<div class="blogitem-meta">
									<span><i class="zmdi zmdi-account"></i>By <a
										href="javascript:void(0);">Michael</a></span> <span><i
										class="zmdi zmdi-comments"></i><a href="blog-details.html">Comments(13)</a></span>
								</div>
								<div class="blogitem-share">
									<ul class="list-unstyled mb-0">
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-facebook-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-instagram"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-twitter-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-linkedin-box"></i></a></li>
									</ul>
								</div>
							</div>
							<h5>
								<a href="blog-details.html">All photographs are accurate.
									None of them is the truth</a>
							</h5>
							<p>Contrary to popular belief, Lorem Ipsum is not simply
								random text. It has roots in a piece of classical Latin
								literature from 45 BC, making it over 2000 years old. Richard
								McClintock.</p>
							<a href="blog-details.html" class="btn btn-info">Read More</a>
						</div>
					</div>
				</div>
			</div>



			<div class="col-lg-6 col-md-12">
				<div class="card">
					<div class="blogitem mb-5">
						<div class="blogitem-image">
							<a href="blog-details.html"><img
								src="assets/images/image-gallery/1.jpg" alt="blog image"></a>

						</div>
						<div class="blogitem-content">
							<div class="blogitem-header">
								<div class="blogitem-meta">
									<span><i class="zmdi zmdi-account"></i>By <a
										href="javascript:void(0);">Michael</a></span> <span><i
										class="zmdi zmdi-comments"></i><a href="blog-details.html">Comments(3)</a></span>
								</div>
								<div class="blogitem-share">
									<ul class="list-unstyled mb-0">
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-facebook-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-instagram"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-twitter-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-linkedin-box"></i></a></li>
									</ul>
								</div>
							</div>
							<h5>
								<a href="blog-details.html">The Most Advance Business Plan</a>
							</h5>
							<p>It is a long established fact that a reader will be
								distracted by the readable content of a page when looking at its
								layout. The point of using Lorem of letters, as opposed to using
								'Content here, content here', making it look like readable
								English.</p>
							<a href="blog-details.html" class="btn btn-info">Read More</a>
						</div>
					</div>
					<div class="blogitem mb-5">
						<div class="blogitem-image">
							<a href="blog-details.html"><img
								src="assets/images/image-gallery/10.jpg" alt="blog image"></a>

						</div>
						<div class="blogitem-content">
							<div class="blogitem-header">
								<div class="blogitem-meta">
									<span><i class="zmdi zmdi-account"></i>By <a
										href="javascript:void(0);">Michael</a></span> <span><i
										class="zmdi zmdi-comments"></i><a href="blog-details.html">Comments(3)</a></span>
								</div>
								<div class="blogitem-share">
									<ul class="list-unstyled mb-0">
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-facebook-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-instagram"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-twitter-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-linkedin-box"></i></a></li>
									</ul>
								</div>
							</div>
							<h5>
								<a href="blog-details.html">WTCR from 2018: new rules, more
									cars, more races</a>
							</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incdidunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullaco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<a href="blog-details.html" class="btn btn-info">Read More</a>
						</div>
					</div>
					<div class="blogitem mb-5">
						<div class="blogitem-image">
							<a href="blog-details.html"><img
								src="assets/images/image-gallery/2.jpg" alt="blog image"></a>

						</div>
						<div class="blogitem-content">
							<div class="blogitem-header">
								<div class="blogitem-meta">
									<span><i class="zmdi zmdi-account"></i>By <a
										href="javascript:void(0);">Michael</a></span> <span><i
										class="zmdi zmdi-comments"></i><a href="blog-details.html">Comments(13)</a></span>
								</div>
								<div class="blogitem-share">
									<ul class="list-unstyled mb-0">
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-facebook-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-instagram"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-twitter-box"></i></a></li>
										<li><a href="javascript:void(0);"><i
												class="zmdi zmdi-linkedin-box"></i></a></li>
									</ul>
								</div>
							</div>
							<h5>
								<a href="blog-details.html">All photographs are accurate.
									None of them is the truth</a>
							</h5>
							<p>Contrary to popular belief, Lorem Ipsum is not simply
								random text. It has roots in a piece of classical Latin
								literature from 45 BC, making it over 2000 years old. Richard
								McClintock.</p>
							<a href="blog-details.html" class="btn btn-info">Read More</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		
			<div class="body"align="center">
				<div class>
					<ul class="pagination pagination-primary">
						<li class="page-item arrow-left"><a class="page-link"
							href="javascript:void(0);" aria-label="Previous"> <span
								aria-hidden="true"><i class="zmdi zmdi-chevron-left"
									aria-hidden="true"></i></span>
						</a></li>
						<li class="page-item active"><a class="page-link"
							href="javascript:void(0);">1</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:void(0);">2</a></li>
						<li class="page-item "><a class="page-link"
							href="javascript:void(0);">3</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:void(0);">4</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:void(0);">5</a></li>
							
							
						<li class="page-item arrow-left"><a class="page-link"
							href="javascript:void(0);" aria-label="Next"><span
								aria-hidden="true"><i class="zmdi zmdi-chevron-right"
									aria-hidden="true"></i></span>
						</a></li>
					</ul>
				</div>
			</div>
		
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
		
	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>