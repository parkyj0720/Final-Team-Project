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
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
<script src="http://code.jquery.com/jquery.js"></script>
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
	});

	$(document).ready(function() {
		var $main_img = $('#main_img');
		
		var r_detail_h = $('.r_detail').height() - 110;
		if($main_img.width() >= 350){
			r_detail_h = $('.r_detail').height() - $main_img.height();
		}
		$('#content_area').css('height',r_detail_h+'px');
		
		$(window).resize(function(){
			r_detail_h = $('.r_detail').height() - 110;
			console.log($('#content_area').val());
			if($main_img.width() >= 350){
				r_detail_h = 300;
			}
			$('#content_area').css('height',r_detail_h+'px');
		});
		/* $(window).resize(function() {
			var detail_h = $('.r_detail').height();
			var header_h = $('.detail_header').height();
			console.log(detail_h);
			console.log(header_h);
			var mg = detail_h - header_h;
			console.log(mg);
			if(mg-37>0){
				mg = mg - 37;
				$('.detail_footer').css('margin-top', mg+'px');
			}else{
				$('.detail_footer').css('margin-top', '0px');
			}
		}); */
	});
</script>
</head>


<body class="ls-closed ls-toggle-menu ">
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>

	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>RecipeDetail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/main.do"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/cListAll.do">RecipeDetail</a></li>
						<li class="breadcrumb-item active">RecipeDetail</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row clearfix">
				<div class="col-lg-12">
					<div class="card">
						<div class="body">
							<div class="row r_detail">
								<div class="col-xl-3 col-lg-4 col-md-12">
									<img id="main_img" src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/25/0fbfab533f6ade9b81906d52a91585551.jpg" style="width:100%; height:100%">
								</div>
								<div class="col-xl-9 col-lg-8 col-md-12">
									<div class="product details detail_header">
										제목 <input type="text" style="width:100%;" value="초간단 맥주안주:모짜렐라치즈없이 콘치즈만들기">

										<hr>
										음식 설명 <textarea id="content_area" style="width:100%; height:200px; resize:none;">맥주는 먹고 싶고 안주는 없어서 간단히 만들어봤어요.</textarea>
									</div>
									
								</div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-lg-12">
									<div>
										<h6>레시피정보</h6>
										<p>기준인원: ?인분, 조리시간: ?분, 난이도: ??</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-lg-12">
									<div>
										<h6>재료</h6>
										<p>재료설명</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-lg-12">
									<div>
										<h6>조리순서</h6>
										<p>조리순서 ~~~~</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>


		<div class="container-fluid">
			<div class="row clearfix">
				<div class="col-lg-12">
					<div class="card">


						<div class="body">
							<small>Your email address will not be published. Required
								fields are marked*</small>
							<form class="row comment-form mt-2">
								<div class="col-xl-6 col-lg-6	col-md-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Your Name">
									</div>
								</div>
								<div class="col-xl-6 col-lg-6	col-md-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Email Address">
									</div>
								</div>

								<div class="col-xl-12 col-lg-12	col-md-12">
									<div class="form-group">
										<textarea rows="4" class="form-control no-resize"
											placeholder="Please type what you want..."></textarea>
									</div>
									<button type="submit" class="btn btn btn-primary">SUBMIT</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container-fluid">
			<div class="row clearfix">
				<div class="col-lg-12">
					<div class="card">
						<div class="body">
							<div class="col-xl-9 col-lg-8 col-md-12">
								<h2>
									<strong>Comments</strong> (2)
								</h2>
							</div>
							<div class="col-xl-12 col-lg-12	col-md-12">
								<ul class="comment-reply ">
									<li>
										<div class="text-box " style="width: auto;">
											<h5>Kareem Todd</h5>
											<span class="comment-date">Wednesday, October 17, 2018
												at 4:00PM.</span>
											<p>There are many variations of passages of Lorem Ipsum
												available, but the majority have suffered alteration in some
												form, by injected humour.</p>
										</div>
									</li>
									<li>

										<div class="text-box " style="width: auto;">
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
			</div>
		</div>
	</div>


	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-lg-12">
				<div class="card">


					<div class="body">
						<small>Your email address will not be published. Required
							fields are marked*</small>
						<form class="row comment-form mt-2">
							<div class="col-xl-6 col-lg-6	col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Your Name">
								</div>
							</div>
							<div class="col-xl-6 col-lg-6	col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Email Address">
								</div>
							</div>

							<div class="col-xl-12 col-lg-12	col-md-12">
								<div class="form-group">
									<textarea rows="4" class="form-control no-resize"
										placeholder="Please type what you want..."></textarea>
								</div>
								<button type="submit" class="btn btn btn-primary">SUBMIT</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-lg-12">
				<div class="card">
					<div class="body">
						<div class="col-xl-9 col-lg-8 col-md-12">
							<h2>
								<strong>Comments</strong> (2)
							</h2>
						</div>
						<div class="col-xl-12 col-lg-12	col-md-12">
							<ul class="comment-reply ">
								<li>
									<div class="text-box " style="width: auto;">
										<h5>Kareem Todd</h5>
										<span class="comment-date">Wednesday, October 17, 2018
											at 4:00PM.</span>
										<p>There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form, by injected humour.</p>
									</div>
								</li>
								<li>

									<div class="text-box " style="width: auto;">
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
		</div>
	</div>
	</div>




	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>


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