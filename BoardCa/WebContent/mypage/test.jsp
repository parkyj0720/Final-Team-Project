<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">

<head>
<title></title>
<link rel="icon"
	href="${pageContext.request.contextPath}/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">

</head>

<body class="theme-blush">

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
											<li><a href="javascript:void(0);">마이페이지</a></li>
											<li><a href="javascript:void(0);">정보수정</a></li>
											<li><a href="javascript:void(0);">1:1문의</a></li>
											<li><a href="javascript:void(0);">로그아웃</a></li>
										</ul></li>
								</ul>
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
										href=""> <i class="zmdi zmdi-email"></i>커뮤니티
									</a></li>
									<li class="nav-item col-md-3" role="presentation"><a
										href="${pageContext.request.contextPath}/search_list.do">
											<i class="zmdi zmdi-email"></i>술집찾기
									</a></li>
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

			<!-- body -->
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<div class="card">
						<div class="blogitem mb-5">
							<div class="blogitem-image">
								<a href="blog-details.html"><img
									src="assets/images/image-gallery/5.jpg" alt="blog image"></a>

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
									distracted by the readable content of a page when looking at
									its layout. The point of using Lorem of letters, as opposed to
									using 'Content here, content here', making it look like
									readable English.</p>
								<a href="blog-details.html" class="btn btn-info">Read More</a>
							</div>
						</div>
						<div class="blogitem mb-5">
							<div class="blogitem-image">
								<a href="blog-details.html"><img
									src="assets/images/image-gallery/7.jpg" alt="blog image"></a>

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
									distracted by the readable content of a page when looking at
									its layout. The point of using Lorem of letters, as opposed to
									using 'Content here, content here', making it look like
									readable English.</p>
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


			<div class="body" align="center">
				<div class="justify-content-center">
					<ul class="pagination pagination-primary">
						<li class="page-item arrow-margin-left"><a class="page-link"
							href="javascript:void(0);" aria-label="Previous"> <span
								aria-hidden="true"><i class="zmdi zmdi-chevron-left"
									aria-hidden="true"></i></span>
						</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:void(0);">1</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:void(0);">2</a></li>
						<li class="page-item active"><a class="page-link"
							href="javascript:void(0);">3</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:void(0);">4</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:void(0);">5</a></li>
						<li class="page-item arrow-margin-right"><a class="page-link"
							href="javascript:void(0);" aria-label="Next"><span
								aria-hidden="true"><i class="zmdi zmdi-chevron-right"
									aria-hidden="true"></i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<hr>

		<div class="col-lg-12 ">
			<ul class="list-inline bottom-font  ">
				<li><a href="manager_introduction.do" type="button">회사소개</a></li>
				<li><a href="manager_agreement.do" type="button">이용약관</a></li>
				<li><a href="manager_individual.do" type="button">개인정보취급방침</a></li>
				<li><a href="help.do" type="button">도움말</a></li>
				<li><a href="notice.do" type="button">공지사항</a></li>
			</ul>
		</div>
		<hr>

		<div class="col-lg-12">
			<address>
				<strong class="bottom-font">(주)BoardCa</strong><br> 대표이사 : 박원준,
				최유선, 황민규, 장재은, 민희수, 문성균, 박찬준, 정태진<br> 사업자등록번호 118-82-02004 <br>
				<i class="fa fa-home" aria-hidden="true"></i> 서울특별시 금천구 <br> <br>
				<i class="fa fa-phone-square" aria-hidden="true"></i> 1544-1234
				(오전10시- 오후6시)<br> <i class="fa fa-fax" aria-hidden="true"></i>
				1544-1234 (팩스번호)<br>
			</address>
			<p>Copyright &copy; BoardCa 2020</p>
		</div>

	</section>

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