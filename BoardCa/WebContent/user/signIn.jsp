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

<title>:: BoardCa :: Sign In</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css"
	type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	$(function() {
		$('#submitBtn').click(function() {
			
			if (!$("#userId").val()) {
				event.preventDefault();
				alert("아이디를 입력해주세요");
				$("#userId").focus();
				return;
			}

			if (!$("#userPw").val()) {
				event.preventDefault();
				alert("패스워드를 입력해주세요");
				$("#userPw").focus();
				return;
			}
		})
	})
</script>
</head>

<body class="theme-blush">

	<div class="authentication">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12">
					<%--  --%>
					<form class="card auth_form"
						action="${pageContext.request.contextPath}/signPro.do"
						method="post" name="userinput">
						<div class="header">
							<img src="${pageContext.request.contextPath}/imgs/logo1.png"
								alt="logo" />
						</div>
						<div class="body">
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="UserId"
									name="userId" id="userId">
								<div class="input-group-append">
									<span class="input-group-text"><i
										class="zmdi zmdi-account-circle"></i></span>
								</div>
							</div>
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Password"
									name="userPw" id="userPw">
								<div class="input-group-append">
									<span class="input-group-text"><a
										href="forgot-password.html" class="forgot"
										title="Forgot Password"><i class="zmdi zmdi-lock"></i></a></span>
								</div>
							</div>
							<div class="checkbox">
								<input id="remember_me" type="checkbox"> <label
									for="remember_me">Remember Me</label>
							</div>
							<a href="${pageContext.request.contextPath}/signUp.do"
								class="btn btn-primary btn-block waves-effect waves-light">JOIN</a>
							<%-- <a href="${pageContext.request.contextPath}/signPro.do" class="btn btn-primary btn-block waves-effect waves-light" type="submit" >SIGN IN</a>     --%>
							<input class="btn btn-primary btn-block waves-effect waves-light"
								type="submit" value="SIGN IN" id="submitBtn">
							<div class="signin_with mt-3">
								<p class="mb-0">or Sign Up using</p>
								<button
									class="btn btn-primary btn-icon btn-icon-mini btn-round facebook">
									<i class="zmdi zmdi-facebook"></i>
								</button>
								<button
									class="btn btn-primary btn-icon btn-icon-mini btn-round twitter">
									<i class="zmdi zmdi-twitter"></i>
								</button>
								<button
									class="btn btn-primary btn-icon btn-icon-mini btn-round google">
									<i class="zmdi zmdi-google-plus"></i>
								</button>
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