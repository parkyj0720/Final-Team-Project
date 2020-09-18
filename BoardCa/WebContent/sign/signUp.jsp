<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">


	/* 비밀번호 일치하는지 확인 하는 함수 */
	function equalPwCk(){
		$.ajax({
			type : "post",
			url : "/BoardCa/equalPwCk.do",
			data :{
				pw1 : $("#inputPw").val(),
				pw2 : $("#inputPwCk").val()
			},
			success : function test(a){ 
				$("#checkPwd").html(a); 
			},
			error : function error(){ 
				alert("error"); 
			}
		});
	}
	
	/* ID 중복 체크  */
	function checkId(){
		$.ajax({
			type : "post",
			url : "/BoardCa/idOverlapCheck.do",
			data :{
				id : $("#inputId").val()
			},
			success : function test(a){ 
				$("#checkId").html(a); 
			},
			error : function error(){ 
				alert("error"); 
			}
		});		
	}
	
	/* pw 정규식 */
	/* 8-20자리 , 영문,숫자,특수문자 포함, 공백x */
	function chkPW(){
		 var pw = $("#inputPw").val();
		 var num = pw.search(/[0-9]/g);
		 var eng = pw.search(/[a-z]/ig);
		 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

		 if(pw.length < 8 || pw.length > 20){

		  alert("8자리 ~ 20자리 이내로 입력해주세요.");
		  return false;
		 }else if(pw.search(/\s/) != -1){
		  alert("비밀번호는 공백 없이 입력해주세요.");
		  return false;
		 }else if(num < 0 || eng < 0 || spe < 0 ){
		  alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
		  return false;
		 }else {
			console.log("통과"); 
		    return true;
		 }
	}
	/* 회원 가입 클릭시 전체 입력창 확인  */
	$(function() {
		$('#submitBtn').click(function() {
			if (!checkUserId(form.inputId.value)) {
	            return false;
	        } else if (!checkPassword(form.inputId.value, form.inputPw.value,
	                form.inputPwCk.value)) {
	            return false;
	        } else if (!checkName(form.name.value)) {
	            return false;
	        } else if (!checkMail(form.mail.value)) {
	            return false;
	        } else if (!checkIntro()) {
	            return false;
	        }
	        return true;
	    
		})
		/* ID입력창 확인 */
		function checkUserId(id) {
        //Id가 입력되었는지 확인하기
	        if (!checkExistData(id, "아이디를"))
	            return false;
	 
	        var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
	        if (!idRegExp.test(id)) {
	            alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
	            form.userId.value = "";
	            form.userId.focus();
	            return false;
	        }
	        return true; //확인이 완료되었을 때
	    }


	
		// 공백확인 함수
	    function checkExistData(value, dataName) {
	        if (value == "") {
	            alert(dataName + " 입력해주세요!");
	            return false;
	        }
	        return true;
	    }


	})
</script>
</head>

<body class="theme-blush">
	<div class="authentication">
		<div class="container">
			<img src="${pageContext.request.contextPath}/imgs/logo1.png"
				alt="logo" style="width: 50%" />
			<div class="body">
				<form id="form_validation" method="POST"
					action="${pageContext.request.contextPath}/signUpPro.do">
					<div class="form-group form-float col-sm-6"
						style="display: inline-block;">
						<c:if test="${inputId == null}">
							<input type="text" class="form-control" placeholder="아이디"
								value="" name="inputId" id="inputId" onblur="checkId()">
						</c:if>
						<c:if test="${inputId != null}">
							<input type="text" class="form-control" placeholder="아이디"
								value="${inputId}" name="inputId" id="inputId" readonly>
						</c:if>

					</div>
					<div class="form-group form-float col-sm-9" id="checkId"></div>

					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" onblur="chkPW()"
							placeholder="비밀번호 ( 8~20자, 영문, 숫자, 특수문자 포함 )"
							style="display: inline-block;" value="" name="inputPw"
							id="inputPw">
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" onblur="equalPwCk()"
							placeholder="비밀번호 확인" style="display: inline-block;"
							name="inputPwCk" id="inputPwCk">
					</div>
					<div class="form-group form-float col-sm-9" id="checkPwd"></div>

					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="닉네임"
							style="display: inline-block;" value="" name="inputName">
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<c:if test="${account_email == null}">
							<input type="text" class="form-control" placeholder="이메일"
								style="display: inline-block;" value="" name="inputEmail">
						</c:if>
						<c:if test="${account_email != null}">
							<input type="text" class="form-control" placeholder="이메일"
								style="display: inline-block;" value="${account_email}"
								name="inputEmail" readonly>
						</c:if>
					</div>
					<!-- <div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="핸드폰번호"
							style="display: inline-block;" value="" name="inputPhone">
					</div> -->

					<!-- 성별 체크 라디오 버튼  -->
					<div class="form-group form-float col-sm-6 center"
						style="text-align: left;">
						<c:choose>
							<c:when test="${userGender == null or userGender == 'male'}">
								<div class="form-group">
									<div class="radio inlineblock m-r-20" style="margin: 0;">
										<input type="radio" name="gender" id="male" class="with-gap"
											value="option1" checked> <label for="male">남성</label>
									</div>
									<div class="radio inlineblock" style="margin: 0;">
										<input type="radio" name="gender" id="Female" class="with-gap"
											value="option2"> <label for="Female">여성</label>
									</div>
								</div>
							</c:when>
							<c:when test="${userGender == 'female'}">
								<div class="form-group">
									<div class="radio inlineblock m-r-20" style="margin: 0;">
										<input type="radio" name="gender" id="male" class="with-gap"
											value="option1"> <label for="male">남성</label>
									</div>
									<div class="radio inlineblock" style="margin: 0;">
										<input type="radio" name="gender" id="Female" class="with-gap"
											value="option2" checked> <label for="Female">여성</label>
									</div>
								</div>
							</c:when>
						</c:choose>

					</div>
					<div class="checkbox">
						<input id="remember_me" type="checkbox"> <label
							for="remember_me">I read and agree to the <a
							href="javascript:void(0);">terms of usage</a></label>
					</div>
					<div class="col-sm-6 center" style="padding: 0;">
						<button class="btn btn-raised btn-primary waves-effect"
							type="submit" style="width: inherit;" id="submitBtn">회원가입</button>
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