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
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
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

	$(function() {
		//발급받은 JavaScript Key
		Kakao.init("ba17cff478a4c1a7991132264b4d34bf");
		var userID;
		// 카카오 로그인 버튼을 생성
		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) {
				// 로그인 성공시, API를 호출합니다.
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(res) {
						console.log(res);

						userId = res.id; //유저의 카카오톡 고유 id
						var userGender = res.kakao_account.gender; //유저의 성별
						var userAgeRange = res.kakao_account.age_range; //유저의 연령대
						var joinDate = res.connected_at;

						console.log(userId);
						console.log(userGender);
						console.log(userAgeRange);
						console.log(joinDate);
						
						

					},
					fail : function(error) {
						alert(JSON.stringify(error));
					}
				});
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		})
		/* $("#kakao-login-btn").on(
				"click",
				function() {
					$.post(
							"${pageContext.request.contextPath}/signUp.do", {
								userId : userID
							})

				}
		) */
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
								<!-- <button
									class="btn btn-primary btn-icon btn-icon-mini btn-round facebook">
									<i class="zmdi zmdi-facebook"></i>
								</button> -->
								<div class="btn btn-primary btn-icon btn-icon-mini btn-round"
									style="background-color: whitesmoke">
									<img id="kakao-login-btn" alt="kakaoSignImg"
										src="${pageContext.request.contextPath}/sign/imgs/kakaoSign.png">
								</div>
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