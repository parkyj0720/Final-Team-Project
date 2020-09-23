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
.margin-auto{
	margin: auto;
}
</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">


	/* 지역 select box */
	function categoryChange(e) {
	
		var area1 = [ "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구",
				"노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구",
				"성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구" ];
		var area2 = [ "계양구", "남구", "남동구", "동구", "부평구", "서구", "연수구", "중구",
				"강화군", "옹진군" ];
		var area3 = [ "대덕구", "동구", "서구", "유성구", "중구" ];
		var area4 = [ "광산구", "남구", "동구", "북구", "서구" ];
		var area5 = [ "남구", "달서구", "동구", "북구", "서구", "수성구", "중구", "달성군" ];
		var area6 = [ "남구", "동구", "북구", "중구", "울주군" ];
		var area7 = [ "강서구", "금정구", "남구", "동구", "동래구", "부산진구", "북구", "사상구",
				"사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구", "기장군" ];
		var area8 = [ "고양시", "과천시", "광명시", "광주시", "구리시", "군포시", "김포시", "남양주시",
				"동두천시", "부천시", "성남시", "수원시", "시흥시", "안산시", "안성시", "안양시", "양주시",
				"오산시", "용인시", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천시", "하남시",
				"화성시", "가평군", "양평군", "여주군", "연천군" ];
		var area9 = [ "강릉시", "동해시", "삼척시", "속초시", "원주시", "춘천시", "태백시", "고성군",
				"양구군", "양양군", "영월군", "인제군", "정선군", "철원군", "평창군", "홍천군", "화천군",
				"횡성군" ];
		var area10 = [ "제천시", "청주시", "충주시", "괴산군", "단양군", "보은군", "영동군", "옥천군",
				"음성군", "증평군", "진천군", "청원군" ];
		var area11 = [ "계룡시", "공주시", "논산시", "보령시", "서산시", "아산시", "천안시", "금산군",
				"당진군", "부여군", "서천군", "연기군", "예산군", "청양군", "태안군", "홍성군" ];
		var area12 = [ "군산시", "김제시", "남원시", "익산시", "전주시", "정읍시", "고창군", "무주군",
				"부안군", "순창군", "완주군", "임실군", "장수군", "진안군" ];
		var area13 = [ "광양시", "나주시", "목포시", "순천시", "여수시", "강진군", "고흥군", "곡성군",
				"구례군", "담양군", "무안군", "보성군", "신안군", "영광군", "영암군", "완도군", "장성군",
				"장흥군", "진도군", "함평군", "해남군", "화순군" ];
		var area14 = [ "경산시", "경주시", "구미시", "김천시", "문경시", "상주시", "안동시", "영주시",
				"영천시", "포항시", "고령군", "군위군", "봉화군", "성주군", "영덕군", "영양군", "예천군",
				"울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군" ];
		var area15 = [ "거제시", "김해시", "마산시", "밀양시", "사천시", "양산시", "진주시", "진해시",
				"창원시", "통영시", "거창군", "고성군", "남해군", "산청군", "의령군", "창녕군", "하동군",
				"함안군", "함양군", "합천군" ];
		var area16 = [ "서귀포시", "제주시", "남제주군", "북제주군" ];
		var a = [ area1, area2, area3, area4, area5, area6, area7, area8,
				area9, area10, area11, area12, area13, area14, area15, area16 ];
		// 시/도 선택 박스 초기화
	
		var target = document.getElementById("mem_state");
	
		if (e.value == "area1")
			var d = area1;
		else if (e.value == "area2")
			var d = area2;
		else if (e.value == "area3")
			var d = area3;
		else if (e.value == "area4")
			var d = area4;
		else if (e.value == "area5")
			var d = area5;
		else if (e.value == "area6")
			var d = area6;
		else if (e.value == "area7")
			var d = area7;
		else if (e.value == "area8")
			var d = area8;
		else if (e.value == "area9")
			var d = area9;
		else if (e.value == "area10")
			var d = area10;
		else if (e.value == "area11")
			var d = area11;
		else if (e.value == "area12")
			var d = area12;
		else if (e.value == "area13")
			var d = area13;
		else if (e.value == "area14")
			var d = area14;
		else if (e.value == "area15")
			var d = area15;
		else if (e.value == "area16")
			var d = area16;
	
		target.options.length = 0;
	
		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
		var mem_rocal = $('#area0 option:selected').text();
		
		$('#mem_rocal').val(mem_rocal);
		
	}

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
	function idOverlapCheck(){
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
	function chkID(){
		var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
        if (!idRegExp.test(form.inputId.value)) {
            alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
            form.userId.value = "";
            form.userId.focus();
            return false;
        }
        idOverlapCheck();
        return true;
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
	
	<%-- function userAgeRangeChk(){
		var a =(String) <%= request.getAttribute("userGender")%>
		alert(a);
		//var ageRangeVal = $('input[name="ageRange"]:checked').val
		
	} --%>
	
	
	
	/* 회원 가입 클릭시 전체 입력창 확인  */
	$(function() {		
		var ageRange = <%= request.getAttribute("userAgeRange")%>
		
		switch(ageRange){
			case 10:
				$("input:radio[id='one']").prop("checked", true);
				$("input:radio[id='two']").prop("checked", false);
				break;
			case 20:
				break;
			case 30:
				$("input:radio[id='three']").prop("checked", true);
				$("input:radio[id='two']").prop("checked", false);
				break;
			default:
				$("input:radio[id='four']").prop("checked", true);
				$("input:radio[id='two']").prop("checked", false);			
		}
		
		
		$('#submitBtn').click(function() {		
			
			if (!checkInputId(form.inputId.value)) {			        
	            return false;
	        } else if (!checkPassword(form.inputPw.value, form.inputPwCk.value)) {	        	
	            return false;
	        } else if (!checkNickName(form.inputNickName.value)) {	        
	            return false;
	        } else if (!checkEmail1(form.email1.value)) {	      
	            return false;	            
	        } else if (!checkEmail2(form.email2.value)) {	      
	            return false;	            
	        } else if (!checkRocal(form.mem_rocal.value)) {
	            return false;
	        } else if (!checkState(form.mem_state.value)) {	        
	            return false;
	        }
	        	    
		})
		/* ID입력창 확인 */
		function checkInputId(id) {
        //Id가 입력되었는지 확인하기
	        if (!checkExistData(id, "아이디를"))
	            return false;
        	return true;
	    }
		/* PW입력창 확인 */
		function checkPassword(inputPw, inputPwCk) {
	        //비밀번호가 입력되었는지 확인하기
	        if (!checkExistData(inputPw, "비밀번호를"))
	            return false;
	        //비밀번호 확인이 입력되었는지 확인하기
	        if (!checkExistData(inputPwCk, "비밀번호 확인을"))
	            return false;
	        return true;
		}
		/* 이름 입력창 확인 */
		function checkNickName(inputNickName) {
			if (!checkExistData(inputNickName, "닉네임을"))
	            return false;
			return true;
		}
		/* 이메일1 입력창 확인 */
		function checkEmail1(inputEmail) {
			if (!checkExistData(inputEmail, "이메일을"))
	            return false;
			return true;
		}
		/* 이메일2 입력창 확인 */
		function checkEmail2(email1) {
			if (!checkExistData(email1, "이메일을"))
	            return false;
			return true;
		}
		/* 광역시.도 선택 확인 */
		function checkRocal(email2) {
			if (!checkExistData(email2, "지역을"))
	            return false;
			return true;
		}
		/* 시.군.구 선택 확인 */
		function checkState(mem_state) {
			if (!checkExistData(mem_state, "지역을"))
	            return false;
			return true;
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
				<div class="st_inline margin-auto" style="width: 80%;">
				<form id="form_validation" method="POST" name="form"
					action="${pageContext.request.contextPath}/signUpPro.do">
					<div class="form-group form-float col-sm-9 margin-auto">
						<c:if test="${inputId == null}">
							<input type="text" class="form-control" placeholder="아이디( 4~12자, 영문 대소문자, 숫자  포함 )"
								value="" name="inputId" id="inputId" onblur="chkID()">
						</c:if>
						<c:if test="${inputId != null}">
							<input type="text" class="form-control" placeholder="아이디"
								value="${inputId}" name="inputId" id="inputId" readonly>
						</c:if>

					</div>
					<div class="form-group form-float col-sm-9" id="checkId"></div>

					<div class="form-group form-float col-sm-9 margin-auto" style="padding-bottom: 1rem;">
						<input type="text" class="form-control" onblur="chkPW()"
							placeholder="비밀번호 ( 8~20자, 영문, 숫자, 특수문자 포함 )"
							style="display: inline-block;" value="" name="inputPw"
							id="inputPw">
					</div>
					<div class="form-group form-float col-sm-9 margin-auto">
						<input type="text" class="form-control" onblur="equalPwCk()"
							placeholder="비밀번호 확인" style="display: inline-block;"
							name="inputPwCk" id="inputPwCk">
					</div>
					<div class="form-group form-float col-sm-9" id="checkPwd"></div>

					<div class="form-group form-float col-sm-9 margin-auto"  style="padding-bottom: 1rem;">
						<input type="text" class="form-control" placeholder="닉네임"
							style="display: inline-block;" value="" name="inputNickName">
					</div>
					
					<div class="form-group form-float col-sm-9 margin-auto" style="display: inline-block; padding: 0;">
						<div class="form-group form-float col-sm-6"
							style="display: inline-flex; float: left;">
							<c:if test="${email1 == null}">
								<input type="text" class="form-control" placeholder="이메일"
									style="display: inline-block;" value="" name="email1">
							</c:if>
							<c:if test="${email1 != null}">
								<input type="text" class="form-control" placeholder="이메일"
									style="display: inline-block;" value="${email1}"
									name="email1" readonly>
							</c:if>
						</div>
						<span>@</span>						
						<c:if test="${email1 == null}">
							<div class="form-group form-float col-sm-5" style="display: inline-block; float: right;">							
		                        <select class="form-control show-tick ms select2" data-placeholder="Select" name=email2>
		                            <option value="" selected>선택하세요</option>
		                            <option value="naver.com">naver.com</option>
		                            <option value="nate.com">nate.com</option>
		                            <option value="kakao.com" >kakao.com</option>
		                            <option value="gmail.com">gmail.com</option>
		                            <option value="hanmail.com">hanmail.com</option>
		                        </select>
		                    </div>
	                    </c:if>
	                    <c:if test="${email1 != null}">
	                    	<div class="form-group form-float col-sm-5" style="display: inline-block; float: right;">
								<input type="text" class="form-control" placeholder="이메일"
									style="display: inline-block;" value="${email2}"
									name="email2" readonly>
							</div>
						</c:if>
                    </div>
					<!-- <div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="핸드폰번호"
							style="display: inline-block;" value="" name="inputPhone">
					</div> -->

					<!-- 성별 체크 라디오 버튼  -->
					<div class="form-group form-float col-sm-9 margin-auto"
						style="text-align: left;">
						<c:choose>
							<c:when test="${userGender == null or userGender == 'male'}">
								<div class="form-group">
									<div class="radio inlineblock m-r-20" style="margin: 0;">
										<input type="radio" name="gender" id="male" class="with-gap"
											value="남" checked> <label for="male">남성</label>
									</div>
									<div class="radio inlineblock" style="margin: 0;">
										<input type="radio" name="gender" id="Female" class="with-gap"
											value="여"> <label for="Female">여성</label>
									</div>
								</div>
							</c:when>
							<c:when test="${userGender == 'female'}">
								<div class="form-group">
									<div class="radio inlineblock m-r-20" style="margin: 0;">
										<input type="radio" name="gender" id="male" class="with-gap"
											value="남"> <label for="male">남성</label>
									</div>
									<div class="radio inlineblock" style="margin: 0;">
										<input type="radio" name="gender" id="Female" class="with-gap"
											value="여" checked> <label for="Female">여성</label>
									</div>
								</div>
							</c:when>
						</c:choose>
					</div>
					<!-- 연령대 --> 
					<div class="form-group form-float col-sm-9 margin-auto"
						style="text-align: left;">
						<div class="form-group">
							<div class="radio inlineblock m-r-20" style="margin: 0;">
								<input type="radio" name="ageRange" id="one" class="with-gap"
									value="10대" > <label for="one">10대</label>
							</div>
							<div class="radio inlineblock m-r-20" style="margin: 0;">
								<input type="radio" name="ageRange" id="two" class="with-gap"
									value="20대" checked> <label for="two">20대</label>
							</div>
							<div class="radio inlineblock" style="margin: 0;">
								<input type="radio" name="ageRange" id="three" class="with-gap"
									value="30대"> <label for="three">30대</label>
							</div>
							<div class="radio inlineblock" style="margin: 0;">
								<input type="radio" name="ageRange" id="four" class="with-gap"
									value="40대 이상"> <label for="four">40대 이상</label>
							</div>
						</div>
					</div>
					
					<div class="form-group form-float col-sm-9 margin-auto" style="padding: 0;">
						<div class="form-group form-float col-sm-6"
							style="margin-bottom: 1%; display: inline-block; float: left;">
							<div>
								<select onchange="categoryChange(this)" class="form-control"
									id="area0">
									<option>광역시·도 선택</option>
									<option value="area1">서울특별시</option>
									<option value="area2">인천광역시</option>
									<option value="area3">대전광역시</option>
									<option value="area4">광주광역시</option>
									<option value="area5">대구광역시</option>
									<option value="area6">울산광역시</option>
									<option value="area7">부산광역시</option>
									<option value="area8">경기도</option>
									<option value="area9">강원도</option>
									<option value="area10">충청북도</option>
									<option value="area11">충청남도</option>
									<option value="area12">전라북도</option>
									<option value="area13">전라남도</option>
									<option value="area14">경상북도</option>
									<option value="area15">경상남도</option>
									<option value="area16">제주도</option>
								</select>
							</div>
						</div>
						
						<div class="form-group form-float col-sm-6"
							style="margin-bottom: 1%;     display: inline-block; float: right;">
							<div>
								<select id="mem_state" class="form-control" name="mem_state">
									<option>시·군·구 선택</option>
								</select>
							</div>
						</div>
						<input type="text" id="mem_rocal" name="mem_rocal"
							style="visibility: hidden;">
					</div>
					
					<div class="col-sm-9 margin-auto">
						<button class="btn btn-raised btn-primary waves-effect"
							type="submit" style="width: inherit;" id="submitBtn">회원가입</button>
					</div>
					<div class="col-sm-9 margin-auto">
						<a class="link"
							href="${pageContext.request.contextPath}/signIn.do">이미
							회원이신가요?</a>
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>


	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<%-- <script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js --> --%>
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