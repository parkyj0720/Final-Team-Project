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

.modal-body {
	margin: 7%;
	padding: 0;
	text-align: left;
}

label {
	display: inline-block;
	margin-bottom: .5rem;
	margin-top: .5rem;
}

select {
	word-wrap: normal;
	margin-top: .5rem;
}
</style>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	/* 비밀번호 일치하는지 확인 하는 함수 */
	function checkPwd() {
		$("#checkPwd").show();

		var pw1 = $("#inputPw").value;
		var pw2 = $("#inputPwCk").value;

		if (pw1 != pw2) {
			document.getElementById("checkPwd").innerHTML = "<font color=red>비밀번호를 확인해주세요.</font>";
		} else {
			document.getElementById("checkPwd").innerHTML = "<font color=green>비밀번호가 동일합니다.</font>";
		}
	}

	/* ID 중복 체크  */
	function checkId() {
		$.ajax({
			type : "post",
			url : "/BoardCa/idOverlapCheck.do",
			data : {
				id : $("#inputId").val()
			},
			success : function test(a) {
				$("#checkId").html(a);
			},
			error : function error() {
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

		var target = document.getElementById("area");

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
	}
	$(function() {
		$("#close").click(function() {
			alert("작성 취소")
		})
	})
	$(function() {
		$("#complete").click(function() {
			alert("작성 완료")
		})
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
						<input type="text" class="form-control" placeholder="아이디"
							value="${inputId}" name="inputId" id="inputId" onblur="checkId()">
					</div>
					<div class="form-group form-float col-sm-9" id="checkId"></div>

					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="비밀번호"
							style="display: inline-block;" value="" name="inputPw"
							id="inputPw">
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" onkeyup="checkPwd()"
							placeholder="비밀번호 확인" style="display: inline-block;" value=""
							name="inputPwCk" id="inputPwCk">
					</div>
					<div class="form-group form-float col-sm-9" id="checkPwd"
						style="display: none;"></div>

					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="이름"
							style="display: inline-block;" value="" name="inputName">
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="이메일"
							style="display: inline-block;" value="" name="inputEmail">
					</div>
					<div class="form-group form-float col-sm-6"
						style="display: inline-flex;">
						<input type="text" class="form-control" placeholder="핸드폰번호"
							style="display: inline-block;" value="" name="inputPhone">
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
					<div class="form-group form-float col-sm-6"
						style="display: inline-block;">
						이메일 : <input type="text" name="str_email01" id="str_email01"
							class="form-control"> <input type="text"
							name="str_email02" id="str_email02" class="form-control" disabled
							value="naver.com"> <select class="form-control"
							style="margin-right: 10px" name="selectEmail" id="selectEmail">
							<option value="1">직접입력</option>
							<option value="naver.com" selected>naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="hotmail.com">hotmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="yahoo.co.kr">yahoo.co.kr</option>
							<option value="empas.com">empas.com</option>
							<option value="dreamwiz.com">dreamwiz.com</option>
							<option value="freechal.com">freechal.com</option>
							<option value="lycos.co.kr">lycos.co.kr</option>
							<option value="korea.com">korea.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmir.com">hanmir.com</option>
							<option value="paran.com">paran.com</option>
						</select>
						<script type="text/javascript"
							src="http://code.jquery.com/jquery-latest.min.js"></script>
						<script type="text/javascript">
							$('#selectEmail')
									.change(
											function() {
												$(
														"#selectEmail option:selected")
														.each(
																function() {
																	if ($(this)
																			.val() == '1') {
																		$(
																				"#str_email02")
																				.val(
																						'');
																		$(
																				"#str_email02")
																				.attr(
																						"disabled",
																						false);
																	} else {
																		$(
																				"#str_email02")
																				.val(
																						$(
																								this)
																								.text());
																		$(
																				"#str_email02")
																				.attr(
																						"disabled",
																						true);
																	}
																});
											});
						</script>
					</div>


					<div class="checkbox">
						<input id="remember_me" type="checkbox"> <label
							for="remember_me">I read and agree to the <a
							href="javascript:void(0);">terms of usage</a></label>
					</div>

					<div class="col-sm-6 center" style="padding: 0;">
						<button class="btn btn-raised btn-primary waves-effect"
							type="button" style="width: inherit;" data-toggle="modal"
							data-target=".bd-example-modal-lg">회원가입</button>
						<div class="modal fade bd-example-modal-lg " tabindex="-1"
							role="dialog" aria-labelledby="myLargeModalLabel"
							data-backdrop="static" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h3 class="modal-title" id="exampleModalLabel">설문조사</h3>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">x</span>
										</button>
									</div>
									<div class="modal-body">설문조사를 하시겠습니까?</div>
									<div class="modal-footer">
										<button type="submit" class="btn btn-secondary">NO</button>
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#exampleModal">YES</button>
										<!-- Modal -->
										<div class="modal fade" id="exampleModal" tabindex="-1"
											role="dialog" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h3 class="modal-title" id="exampleModalLabel">설문조사</h3>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">x</span>
														</button>
													</div>
													<div class="modal-body">
														<label>주종</label> <select class="form-control">
															<option>소주</option>
															<option>맥주</option>
															<option>양주</option>
															<option>막걸리</option>
															<option>와인</option>
														</select> <label>관심지역 선택</label> <select
															onchange="categoryChange(this)" class="form-control">
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
														</select> <select id="area" class="form-control">
															<option>시·군·구 선택</option>
														</select>
														<div>
															<label>가입 경로</label>
															<div>
																<label class="radio-inline"> <input type="radio"
																	name="inlineRadioOptions" id="inlineRadio1"
																	value="option1"> 인터넷
																</label> <label class="radio-inline"> <input
																	type="radio" name="inlineRadioOptions"
																	id="inlineRadio2" value="option2"> 지인소개
																</label> <label class="radio-inline"> <input
																	type="radio" name="inlineRadioOptions"
																	id="inlineRadio3" value="option3"> 이벤트
																</label>
															</div>
														</div>
														<div>
															<label>가입 목적</label>
															<div>
																<label class="checkbox-inline"> <input
																	type="checkbox" id="inlineCheckbox1" value="option1">
																	술 게임
																</label> <label class="checkbox-inline"> <input
																	type="checkbox" id="inlineCheckbox2" value="option2">
																	술 안주 레시피
																</label> <label class="checkbox-inline"> <input
																	type="checkbox" id="inlineCheckbox3" value="option3">
																	친목도모
																</label>
															</div>
														</div>
													</div>
													<div class="modal-footer">
														<button type="submit" class="btn btn-secondary" id="close">Close</button>
														<button type="submit" class="btn btn-primary"
															id="complete">OK</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 center" style="padding: 0">
							<a class="link"
								href="${pageContext.request.contextPath}/signIn.do">이미
								회원이신가요?</a>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>


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