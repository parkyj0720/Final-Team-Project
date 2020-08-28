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

<title>:: Aero Bootstrap4 Admin :: Images</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Font Icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<style>
.img-fluid {
	max-width: 100%;
	height: auto;
}
</style>
</head>
<body class="theme-blush">

	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="zmdi-hc-spin" src="assets/images/loader.svg" width="48"
					height="48" alt="Aero">
			</div>
			<p>Please wait...</p>
		</div>
	</div>


	<section class="content">
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Product Detail</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> Aero</a></li>
							<li class="breadcrumb-item">eCommerce</li>
							<li class="breadcrumb-item active">Product Detail</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card">
							<div class="body">
								<div class="row">
									<div class="col-xl-12 col-lg-12 col-md-12">
										<div class="preview preview-pic tab-content">
											<div class="tab-pane active" id="product_1">
												<img
													src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
													class="img-fluid" alt="">
											</div>
										</div>
									</div>

									<div class="product details">
										<h1>오렌지게임</h1>


									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="card">
					<div class="body">
						<div class="row">
							<div class="col-xl-12 col-lg-12 col-md-12">

								<ul class="preview thumbnail nav nav-tabs">
									<li class="nav-item"><a class="nav-link active"
										data-toggle="tab" href="#product_1"><img
											src="assets/images/ecommerce/1.png" alt=""></a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#product_2"><img src="assets/images/ecommerce/2.png"
											alt=""></a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#product_3"><img src="assets/images/ecommerce/3.png"
											alt=""></a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab"
										href="#product_4"><img src="assets/images/ecommerce/4.png"
											alt=""></a></li>
								</ul>


							</div>
						</div>
					</div>

					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-xl-12 col-lg-12 col-md-12">

									<div class="tab-pane active" id="description">
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry's
											standard dummy text ever since the 1500s, when an unknown
											printer took a galley of type and scrambled it to make a type
											specimen book.</p>
										<p>There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form, by injected humour, or randomised words which don't
											look even slightly believable.</p>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-xl-12 col-lg-12 col-md-12">


									<div class="tab-content">
										<small>Your email address will not be published.
											Required fields are marked*</small>
										<form class="row comment-form mt-2">
											<div class="col-sm-6">
												<div class="form-group">
													<input type="text" class="form-control"
														placeholder="Your Name">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<input type="text" class="form-control"
														placeholder="Email Address">
												</div>
											</div>
											<div class="col-sm-12">
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


					<div class="card">
						<div class="header">
							<div class="body">
								<div class="row">
									<div class="col-xl-3 col-lg-4 col-md-12">
										<h2>
											<strong>Comments</strong> (2)
										</h2>
									</div>
									<div class="">
										<ul class="comment-reply list-unstyled">
											<li>
												<div class="text-box">
													<h5>Kareem Todd</h5>
													<span class="comment-date">Wednesday, October 17,
														2018 at 4:00PM.</span> <a href="javascript:void(0);"
														class="replybutton"><i
														class="zmdi zmdi-mail-reply-all"></i> Reply</a>
													<p>There are many variations of passages of Lorem Ipsum
														available, but the majority have suffered alteration in
														some form, by injected humour.</p>
												</div>
											</li>
											<li>

												<div class="text-box">
													<h5>Stillnot david</h5>
													<span class="comment-date">Wednesday, October 17,
														2018 at 4:00PM.</span> <a href="javascript:void(0);"
														class="replybutton"><i
														class="zmdi zmdi-mail-reply-all"></i> Reply</a>
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
		</div>
		<section class="content">
			<div class="body_scroll">
				<div class="block-header">
					<div class="row">
						<div class="col-lg-7 col-md-6 col-sm-12">
							<h2>Product</h2>
							<ul class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html"><i
										class="zmdi zmdi-home"></i> Aero</a></li>
								<li class="breadcrumb-item">eCommerce</li>
								<li class="breadcrumb-item active">Product</li>
							</ul>
							<button class="btn btn-primary btn-icon mobile_menu"
								type="button">
								<i class="zmdi zmdi-sort-amount-desc"></i>
							</button>
						</div>
						<div class="col-lg-5 col-md-6 col-sm-12">
							<button
								class="btn btn-primary btn-icon float-right right_icon_toggle_btn"
								type="button">
								<i class="zmdi zmdi-arrow-right"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row clearfix">
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<span class="label onsale">Sale!</span> <img
										src="assets/images/ecommerce/1.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Simple Black Clock</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$52.00</li>
											<li class="new_price">$45.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<img src="${pageContext.request.contextPath}/mypage/imgs/01.jpg" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Knit beanie with patch</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$16.00</li>
											<li class="new_price">$13.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<img src="${pageContext.request.contextPath}/mypage/imgs/02.jpg" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Printed color block
											T-shirt</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$341.00</li>
											<li class="new_price">$313.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<img src="assets/images/ecommerce/4.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Simple Black Clock</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$16.00</li>
											<li class="new_price">$13.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<span class="label new">New!</span> <img
										src="assets/images/ecommerce/5.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Simple Black Clock</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$89.00</li>
											<li class="new_price">$66.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<span class="label trending">Trending!</span> <img
										src="assets/images/ecommerce/6.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Simple Black Clock</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$16.00</li>
											<li class="new_price">$13.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<img src="assets/images/ecommerce/7.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Habitasse dictumst</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$206.00</li>
											<li class="new_price">$113.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<img src="assets/images/ecommerce/8.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Backpack with tab detail</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$189.00</li>
											<li class="new_price">$143.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<img src="assets/images/ecommerce/9.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Faux Fur Stole</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$504.00</li>
											<li class="new_price">$455.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<img src="assets/images/ecommerce/10.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Chest-pocket Printed
											Shirt</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$325.00</li>
											<li class="new_price">$289.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
							<div class="card">
								<div class="body product_item">
									<img src="assets/images/ecommerce/11.png" alt="Product"
										class="img-fluid cp_img" />
									<div class="product_details">
										<a href="ec-product-detail.html">Blend Classic Coat</a>
										<ul class="product_price list-unstyled">
											<li class="old_price">$99.00</li>
											<li class="new_price">$79.00</li>
										</ul>
									</div>
									<div class="action">
										<a href="javascript:void(0);"
											class="btn btn-info waves-effect"><i
											class="zmdi zmdi-eye"></i></a> <a href="javascript:void(0);"
											class="btn btn-primary waves-effect">ADD TO CART</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


<!-- Jquery Core Js -->
<script
	src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
<script
	src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>

<script
	src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>