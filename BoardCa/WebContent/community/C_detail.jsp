<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardCa</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css"
	type="text/css">
</head>
<body>
	<section class="content"
		style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;">
		<div class="body_scroll" style="max-width: none;">
			<div class="row">
				<div>
					<img src="${pageContext.request.contextPath}/imgs/logo1.png"
						height="250em" />
				</div>
			</div>
			<div class="alert alert-warning" id="menu" role="alert">
				<ul
					style="list-style: none; padding: 0; margin: 0; overflow: hidden;">
					<li style="width: 25%; float: left; text-align: center;">안주
						레시피</li>
					<li style="width: 25%; float: left; text-align: center;">술게임</li>
					<li style="width: 25%; float: left; text-align: center;"><a href="${pageContext.request.contextPath}/Community_main.do">커뮤니티</a></li>
					<li style="width: 25%; float: left; text-align: center;">근처 술집</li>
				</ul>
			</div>
			<div class="block-header">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>detail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Community_main.do">Community</a></li>
						<li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/Community_list.do">(수정예정)</a></li>
						<li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/Community_detail.do">detail</li>
					</ul>
					<button class="btn btn-primary btn-icon mobile_menu" type="button">
						<i class="zmdi zmdi-sort-amount-desc"></i>
					</button>
				</div>
				<div class="col-lg-5 col-md-6 col-sm-12"></div>
			</div>
			<div class="col-lg-8 col-md-12" style="max-width: none;">
				<div class="card">
					<div class="blogitem mb-5">
						<div class="blogitem-content">
							<h5>(제목)<div class="blogitem-meta" style="float: right;"><span><i class="zmdi zmdi-account"></i><a
											href="javascript:void(0);">작성자</a></span>
									</div>
							</h5>
							(내용)
						</div>
					</div>
				</div>
				<div class="card">
					<div class="header">
						<h2>
							<i class="zmdi zmdi-comments"></i><strong>댓글</strong> (2)
						</h2>
					</div>
					<div class="card">
					<div class="header">
						<h2>
							<strong>Leave</strong> a Comment
						</h2>
					</div>
					<div class="">
						<small>Your email address will not be published. Required
							fields are marked*</small>
						<form class="row comment-form mt-2">
							<div class="col-sm-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Your Name">
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
								<button type="submit" class="btn btn btn-primary" style="float: right;">SUBMIT</button>
							</div>
						</form>
					</div>
				</div>
					<div>
						<ul class="comment-reply list-unstyled">
							<li>
								<div class="text-box">
									<h5>(댓글 닉네임)</h5>
									<span class="comment-date">(댓글단 시간)</span>-
									<p>댓글내용</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>