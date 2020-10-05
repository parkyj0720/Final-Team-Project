<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Member.MemberDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<style>
select {
	margin-bottom: 5em;
	padding: 10px;
}
</style>

<%
	MemberDto dto = (MemberDto) request.getAttribute("memInfo");
%>

<script src="http://code.jquery.com/jquery.js"></script>
<script>

// pw 정규식 
// 8-20자리 , 영문,숫자,특수문자 포함, 공백x 
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

// nickname 중복 체크  
function nickNameCheck(){
	$.ajax({
		type : "post",
		url : "/BoardCa/nickNameCheck.do",
		data :{
			nickName : $("#nickname").val()
		},
		success : function test(a){ 
			$("#checkNickName").html(a); 
		},
		error : function error(){ 
			alert("error"); 
		}
	});		
}


	

// 바꿀 비밀번호가 일치한지 체크
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
	
		var target = document.getElementById("state");
	
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
		else if (e.value == "areas")
			var d = areas;
	
		target.options.length = 0;
	
		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
		var mem_rocal = $('#area0 option:selected').text();
		
		$('#rocal').val(mem_rocal);
		
	}

	function checkPassword(inputPw, inputPwCk) {
        //비밀번호가 입력되었는지 확인하기
        if (!checkExistData(inputPw, "비밀번호를"))
            return false;
        //비밀번호 확인이 입력되었는지 확인하기
        if (!checkExistData(inputPwCk, "비밀번호 확인을"))
            return false;
        return true;
	}
</script>
</head>


<body class="ls-closed ls-toggle-menu ">
	<!-- header -->
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>myPageEdit</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/main/main.jsp"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">Edit</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row clearfix">

			<div class="col-md-12">
				<div class="d-flex">
					<div class="mobile-left">
						<a class="btn btn-info btn-icon toggle-email-nav collapsed"
							data-toggle="collapse" href="#mypage-nav" role="button"
							aria-expanded="false" aria-controls="email-nav"> <span
							class="btn-label"><i class="zmdi zmdi-account"></i></span>
						</a>
					</div>
					<div class="inbox left collapse" id="mypage-nav" style="">
						<div class="mail-side">
							<a href="${pageContext.request.contextPath}/myPage.do"><h5>마이페이지</h5></a>
							<ul class="nav">
								<li><a
									href="${pageContext.request.contextPath}/myPageEdit.do"><i
										class="zmdi zmdi-edit"></i>Edit</a></li>
								<li><a
									href="${pageContext.request.contextPath}/myWriteList.do"><i
										class="zmdi zmdi-file"></i>Writted</a></li>
								<li><a href="${pageContext.request.contextPath}/myFAQ.do"><i
										class="zmdi zmdi-comments"></i>FAQ</a></li>
								<li><a
									href="${pageContext.request.contextPath}/myFavorite.do"><i
										class="zmdi zmdi-favorite"></i>Favorite</a></li>
								<li><a href="${pageContext.request.contextPath}/mySaved.do"><i
										class="zmdi zmdi-folder-star"></i>Saved</a></li>


							</ul>
						</div>
					</div>

					<div class="col-lg-11 col-md-11 col-sm-11 inbox right">
						<div class="card">
							<div class="header">
								<h2>
									<strong>EditPage</strong>
								</h2>
							</div>
							<div class="body">
								<form action="${pageContext.request.contextPath}/Edit.do"
									method="POST">
									<div class="row">
										<div class="col-lg-12 col-md-12">
											<div class="form-group">
												<input type="text" class="form-control" id="nickname"
													name="nickname" onblur="nickNameCheck()"
													placeholder="NickName">
											</div>
											<div class="form-group col-lg-3 col-md-12" id="checkNickName"></div>
										</div>


										<div class="col-lg-6 col-md-12">
											<div class="form-group">
												<input type="password" class="form-control"
													placeholder="New Password" name="inputPw" id="inputPw"
													onblur="chkPW()">
											</div>
											<div class="form-group col-lg-6 col-md-12" id="checkPwd"></div>
										</div>


										<div class="col-lg-6 col-md-12">
											<div class="form-group">
												<input type="password" class="form-control"
													placeholder="Password Chcek" name="newPwck" id="inputPwCk"
													onblur="equalPwCk()">
											</div>
										</div>
										<div class="form-group col-lg-6 col-md-12" id="checkPwd"></div>
									</div>



									<div class="row">
										<c:if test="${email1 == null}">
											<div class="form-group col-lg-12 col-md-12">
												<input type="text" class="form-control" placeholder="이메일"
													value="" name="email1">
											</div>
										</c:if>
										<c:if test="${email1 != null}">
											<div class="form-group col-lg-12 col-md-12">
												<input type="text" class="form-control" placeholder="이메일"
													value="${email1}" name="email1" readonly>
											</div>
										</c:if>
										<p style="margin-left: 50%;">@</p>
										<c:if test="${email1 == null}">
											<div class="form-group  col-lg-12 col-md-12">
												<select class="form-control show-tick ms select2"
													data-placeholder="Select" name=email2>
													<option value="" selected>선택하세요</option>
													<option value="naver.com">naver.com</option>
													<option value="nate.com">nate.com</option>
													<option value="kakao.com">kakao.com</option>
													<option value="gmail.com">gmail.com</option>
													<option value="hanmail.com">hanmail.com</option>
												</select>
											</div>
										</c:if>
										<c:if test="${email1 != null}">
											<div class="form-group  col-lg-12 col-md-12">
												<input type="text" class="form-control " placeholder="이메일"
													value="${email2}" name="email2" readonly>
											</div>
										</c:if>


										<div class="col-lg-6 col-md-12">
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
										<div class="col-lg-6 col-md-12">
											<div>
												<select id="state" class="form-control" name="state">
													<option>시·군·구 선택</option>
												</select>
											</div>
											<input type="text" id="rocal" name="rocal"
												style="visibility: hidden;">
										</div>
										<!-- 성별 체크 라디오 버튼  -->
										<div class="form-group col-sm-12 margin-auto"
											style="text-align: left;">
											<c:choose>
												<c:when test="${userGender == null or userGender == 'male'}">
													<div class="form-group">
														<div class="radio inlineblock m-r-20" style="margin: 0;">
															<input type="radio" name="gender" id="male"
																class="with-gap" value="남" checked> <label
																for="male">남성</label>
														</div>
														<div class="radio inlineblock" style="margin: 0;">
															<input type="radio" name="gender" id="Female"
																class="with-gap" value="여"> <label for="Female">여성</label>
														</div>
														<div class="radio inlineblock" style="margin: 0;">
															<input type="radio" name="gender" id="secret"
																class="with-gap" value=""> <label for="secret">비공개</label>
														</div>
													</div>
												</c:when>
												<c:when test="${userGender == 'female'}">
													<div class="form-group">
														<div class="radio inlineblock m-r-20" style="margin: 0;">
															<input type="radio" name="gender" id="male"
																class="with-gap" value="남"> <label for="male">남성</label>
														</div>
														<div class="radio inlineblock" style="margin: 0;">
															<input type="radio" name="gender" id="Female"
																class="with-gap" value="여" checked> <label
																for="Female">여성</label>
														</div>
														<div class="radio inlineblock" style="margin: 0;">
															<input type="radio" name="gender" id="secret"
																class="with-gap" value=""> <label for="secret">비공개</label>
														</div>
													</div>
												</c:when>
											</c:choose>
										</div>
										
										<!-- 연령대 -->
										<div class="form-group  col-sm-9 margin-auto"
											style="text-align: left;">
											<div class="form-group">
												<div class="radio inlineblock m-r-20" style="margin: 0;">
													<input type="radio" name="ageRange" id="one"
														class="with-gap" value="20대"> <label for="one">20대</label>
												</div>
												<div class="radio inlineblock m-r-20" style="margin: 0;">
													<input type="radio" name="ageRange" id="two"
														class="with-gap" value="30대" checked> <label
														for="two">30대</label>
												</div>
												<div class="radio inlineblock" style="margin: 0;">
													<input type="radio" name="ageRange" id="three"
														class="with-gap" value="40대"> <label for="three">40대</label>
												</div>
												<div class="radio inlineblock" style="margin: 0;">
													<input type="radio" name="ageRange" id="four"
														class="with-gap" value="50대 이상"> <label for="four">50대
														이상</label>
												</div>
												<div class="radio inlineblock" style="margin: 0;">
													<input type="radio" name="ageRange" id="five"
														class="with-gap" value=""> <label for="five">비공개</label>
												</div>
											</div>
										</div>
										<div class="col-md-12" style="margin-top: 15px;">
											<button type="submit" class="btn btn-primary bg-orange">Save
												Changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
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