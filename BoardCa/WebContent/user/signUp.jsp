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

<title>:: BoardCa :: Sign Up</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">

<style type="text/css">
.checkBtn {
	margin: 0;
}
</style>


</head>

<body class="theme-blush">

	<div class="authentication">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12">
					<form class="card auth_form">
						<div class="header">
							<img src="${pageContext.request.contextPath}/imgs/logo1.png"
								alt="logo" />
						</div>
						<div class="body">
							<div>
								<div class="input-group mb-3" style="display: inline-block;">
									<div class="input-group-append" style="display: inline-block;">
										<span class="input-group-text" style="display: inline-block;">
										<i class="zmdi zmdi-account-circle" style="display: inline-block;"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="아이디" style="display: inline-block;">
									<div class="input-group-append" style="display: inline-block;">
										<button class="btn btn-primary btn-block waves-effect waves-light checkBtn" style="display: inline-block;">중복확인</button>
									</div>
								</div>
								<div style="display: inline-block;">가나다라마바사</div>
							</div>

							<div class="input-group mb-3">
								<div class="input-group-append">
									<span class="input-group-text"><i
										class="zmdi zmdi-account-circle"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="닉네임">
								<div class="input-group-append">
									<p>사용가능한 닉네임 입니다. / 이미 사용중인 닉네임 입니다.</p>
								</div>
							</div>

							<div class="input-group mb-3">
								<div class="input-group-append">
									<span class="input-group-text"><i class="zmdi zmdi-lock"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="비밀번호">
							</div>

							<div class="input-group mb-3">
								<div class="input-group-append">
									<span class="input-group-text"><i class="zmdi zmdi-lock"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="비밀번호 확인">
							</div>

							<div class="input-group mb-3">
								<div class="input-group-append">
									<span class="input-group-text"><i
										class="zmdi zmdi-account-circle"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="이름">
							</div>

							<div class="input-group mb-3">
								<div class="input-group-append">
									<span class="input-group-text"><i
										class="zmdi zmdi-email"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="이메일">
							</div>
							<div class="input-group mb-3">
								<div class="input-group-append">
									<span class="input-group-text"><i class="zmdi zmdi-lock"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="핸드폰 번호">
							</div>
							<div class="checkbox">
								<input id="remember_me" type="checkbox"> <label
									for="remember_me">I read and agree to the <a
									href="javascript:void(0);">terms of usage</a></label>
							</div>
							<a href="index.html"
								class="btn btn-primary btn-block waves-effect waves-light">SIGN
								UP</a>
							<div class="signin_with mt-3">
								<a class="link" href="sign-in.html">You already have a
									membership?</a>
							</div>
						</div>
					</form>
					<!-- <div class="copyright text-center">
                    &copy;
                    <script>document.write(new Date().getFullYear())</script>,
                    <span>Designed by <a href="https://thememakker.com/" target="_blank">ThemeMakker</a></span>
                </div> -->
				</div>
			</div>
		</div>
	</div>


	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
</body>
</html>