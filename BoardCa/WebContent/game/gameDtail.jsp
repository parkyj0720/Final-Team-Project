<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype html>
<html class="no-js " lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin ::</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
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
<body>
	<!-- Loding Page -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="zmdi-hc-spin"
					src="${pageContext.request.contextPath}/stylesheet/assets/images/loader.svg"
					style="width: 48px; height: 48px; alt: Aero;">
			</div>
			<p>Please wait...</p>
		</div>
	</div>


	<section class="content file_manager" style="margin: auto;">
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Media</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item"><a href="file-dashboard.html">File
									Manager</a></li>
							<li class="breadcrumb-item active">Media</li>
						</ul>
					</div>

					<div class="col-lg-12 col-md-12">
						<button id="heart"
							class="bg-orange btn btn-primary btn-round float-right">
							<i class="zmdi zmdi-favorite-outline6 ti-heart"><br> <small
								class="bg-orange" id="like">0</small></i>
						</button>
					</div>
					<div class="col-lg-8 col-md-12">
						<div class="card">
							<div class="blogitem mb-5">
								<div class="blogitem-image">
									<a href="blog-details.html"><img
										src="${pageContext.request.contextPath}/game/img/01.PNG"></a>

								</div>
								<div class="blogitem-content">
									<div class="blogitem-header">
										<div class="blogitem-meta">
											<span><i class="zmdi zmdi-account"></i>By <a
												href="javascript:void(0);">Michael</a></span> <span><i
												class="zmdi zmdi-comments"></i><a href="blog-details.html">Comments(3)</a></span>
										</div>
									</div>
									<h5>
										<a href="blog-details.html">The Most Advance Business Plan</a>
									</h5>
									<p>It is a long established fact that a reader will be
										distracted by the readable content of a page when looking at
										its layout. The point of using Lorem of letters, as opposed to
										using 'Content here, content here', making it look like
										readable English. There are many variations of passages of
										Lorem Ipsum available, but the majority have suffered
										alteration in some form, by injected humour.</p>
									<blockquote class="blockquote">
										<p>Lorem ipsum dolor sit amet consectetur adipiscing elit.
											Aliquam vulputate tortor nec commodo ultricies lectus nisl
											facilisis enim trpis.</p>
										<footer>
											by <a href="blog.html">ThemeMakker</a>
										</footer>
									</blockquote>
									<p>The point of using Lorem of letters, as opposed to using
										'Content here, content here', making it look like readable
										English.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
										sed do eiusmod tempor incdidunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam, quis nostrud exercitation
										ullaco laboris nisi ut aliquip ex ea commodo consequat. Duis
										aute irure dolor in reprehenderit in voluptate velit esse
										cillum dolore eu fugiat nulla pariatur. Excepteur sint occaeca
										cupidatat non proident.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="header">
								<h2>
									<strong>Leave</strong> a Comment
								</h2>
							</div>
							<div class="">
								<small>Your email address will not be published.
									Required fields are marked*</small>
								<form class="row comment-form mt-2">
									<div class="col-sm-12">
										<div class="form-group">
											<textarea rows="4" class="form-control no-resize"
												placeholder="Please type what you want..."></textarea>
										</div>
										<button type="submit" class="btn btn btn-primary bg-orange">작성</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="header">
						<h2>
							<strong>Comments</strong> (2)
						</h2>
					</div>
					<div class="">
						<ul class="comment-reply list-unstyled">
							<li>
								<div class="icon-box">
									<img class="img-fluid img-thumbnail"
										src="assets/images/sm/avatar2.jpg" alt="Awesome Image">
								</div>
								<div class="text-box">
									<h5>Kareem Todd</h5>
									<span class="comment-date">Wednesday, October 17, 2018
										at 4:00PM.</span> 
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour.</p>
								</div>
							</li>
							<li>
								<div class="icon-box">
									<img class="img-fluid img-thumbnail"
										src="assets/images/sm/avatar1.jpg" alt="Awesome Image">
								</div>
								<div class="text-box">
									<h5>Stillnot david</h5>
									<span class="comment-date">Wednesday, October 17, 2018
										at 4:00PM.</span> 
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy.</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</section>



	<!-- Jquery Core Js -->
	<script src="https://embed.tawk.to/5c6d4867f324050cfe342c69/default"
		charset="UTF-8"></script>
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