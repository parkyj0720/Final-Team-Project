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
.container {
	text-align: center;
}

.checkBtn {
	margin: 0;
}

.center {
	margin: auto;
}

.inputForm {
	width: 70%;
	height: auto;
	padding: .375rem .75rem;
	margin-right: 5%;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s;
	font-size: 14px;
	background: rgba(0, 0, 0, 0);
}
</style>
<script type="text/javascript">
	
</script>

</head>

<body class="theme-blush">

	<div class="authentication">
		<div class="container">
			<img src="${pageContext.request.contextPath}/imgs/logo1.png"
				alt="logo" style="width: 50%" />
			<div class="body">
				<form id="form_validation" method="POST">

					<div class="form-group form-float col-sm-6"
						style="display: inline-block;">
						<input type="text" class="form-control" placeholder="아이디"
							value="${userId}" name="inputId" required>
					</div>
					<div class="" style="display: inline-block;">
						<a class="btn btn-raised btn-primary waves-effect checkBtn"
							href="${pageContext.request.contextPath}/idOverlapCheck.do">중복확인</a>
					</div>

					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="비밀번호"
							style="display: inline-block;" value="" name="inputPw" required>
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="비밀번호 확인"
							style="display: inline-block;" value="" name="inputPwCk" required>
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="이름"
							style="display: inline-block;" value="" name="inputName" required>
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="이메일"
							style="display: inline-block;" value="" name="inputEmail"
							required>
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="핸드폰번호"
							style="display: inline-block;" value="" name="inputPhone"
							required>
					</div>

					<!-- 성별 체크 라디오 버튼  -->
					<div class="form-group form-float col-sm-6 center"
						style="text-align: left;">
						<div class="form-group">
							<div class="radio inlineblock m-r-20" style="margin: 0;">
								<input type="radio" name="gender" id="male" class="with-gap"
									value="option1"> <label for="male">남성</label>
							</div>
							<div class="radio inlineblock" style="margin: 0;">
								<input type="radio" name="gender" id="Female" class="with-gap"
									value="option2" checked=""> <label for="Female">여성</label>
							</div>
						</div>
					</div>
					<div class="checkbox">
						<input id="remember_me" type="checkbox"> <label
							for="remember_me">I read and agree to the <a
							href="javascript:void(0);">terms of usage</a></label>
					</div>
					<div class="col-sm-6 center" style="padding: 0;">
						<button class="btn btn-raised btn-primary waves-effect"
							type="submit" style="width: inherit;">회원가입</button>
					</div>
					<div class="col-sm-6 center" style="padding: 0">
						<a class="link"
							href="${pageContext.request.contextPath}/signIn.do">이미
							회원이신가요?</a>
					</div>
				</form>
			</div>
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
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-validation/jquery.validate.js"></script>
	<!-- Jquery Validation Plugin Css -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-steps/jquery.steps.js"></script>
	<!-- JQuery Steps Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/forms/form-validation.js"></script>
</body>
</html>