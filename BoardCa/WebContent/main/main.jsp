<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>BoardCa :: main</title>
<%-- <link rel="icon"
	href="${pageContext.request.contextPath}/imgs/logo2.png"
	type="image/x-icon"> --%>
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">

<style>
.bor {
	padding: 1%;
	text-align: center;
	background-color: #deb8fb70;
}

.right-mar {
	margin-right: 1%
}

.font-col {
	color: #915def;
}

#followChat {position: absolute; display: none; z-index: 99; top: 30%; left: 10%; opacity: 0.9; border: 1px solid #006DCC; }
#chatBtn {position: absolute; display:inline-block; z-index: 99; top: 0%; left: 100%; border-radius: 50px; width:35px; height:35px; background-color: none;}
#chatBtnImg{position: absolute; width:30px; height:30px; z-index: 99;}  
</style>


</head>

<script>
$(document).ready( function() {
		$( '#chatBtn' ).click( function() {
			$( '#followChat' ).toggle( 'slow' );
	});
});

$(function() {
	var userToken = '${userToken2}';
	
	$('#logoutBtn').click(function() {
		if(userToken == '1'){
			window.location.href="kakaoLogout.do";
		}else{
			window.location.href="logout.do";
		}
		
	})
})
	
	
</script>

<body>
	<div class="container" style="padding: 15%;">

		<div class="card">
			<div class="header">
				<ul class="header-dropdown">

					<div id="chatBtn">
						<img id="chatBtnImg" src="${pageContext.request.contextPath}/imgs/chatBtn.png">
					</div> 
					<c:choose>
						<c:when test="${sessionScope.userId == null}">
							<li><a href="${pageContext.request.contextPath}/signIn.do">로그인</a></li>
						</c:when>

						<c:when test="${sessionScope.adgwon == 1}">
							<li class="dropdown"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">
									<p>${sessionScope.userNickname}님 반갑습니다.</p>
							</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li><a
										href="${pageContext.request.contextPath}/adminPage.do"><i
											class="zmdi zmdi-chart"></i>통계 페이지</a></li>
									<li><a
										href="${pageContext.request.contextPath}/adminEdit.do"><i
											class="zmdi zmdi-assignment-account"></i>유저 관리</a></li>
									<li><a
										href="${pageContext.request.contextPath}/adminList.do"><i
											class="zmdi zmdi-alert-circle"></i>신고 관리</a></li>
									<li><a
										href="${pageContext.request.contextPath}/adminFAQ.do"><i
											class="zmdi zmdi-comments"></i>문의 답변</a></li>
									<li><a id="logoutBtn" href=#><i
											class="zmdi zmdi-flight-takeoff"></i>로그 아웃</a></li>
								</ul></li>
						</c:when>

						<c:otherwise>
							<li class="dropdown"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">
									<p>${sessionScope.userNickname}님 반갑습니다.</p>
							</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li><a href="${pageContext.request.contextPath}/myPage.do">마이페이지</a></li>
									<li><a
										href="${pageContext.request.contextPath}/myPageEdit.do">정보수정</a></li>
									<li><a href="${pageContext.request.contextPath}/myFAQ.do">1:1문의</a></li>
									<li><a id="logoutBtn" href=#>로그아웃</a></li>
								</ul></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>

		<div class="logoImg" style="width: 80%; margin: auto">
			<img alt="logo"
				src="${pageContext.request.contextPath}/imgs/logo1.png" style="">
		</div>
		<h3 style="text-align: center;">BoardCa는 건전한 음주문화를 지향합니다.</h3>
		<div class="body_scroll">
			<!-- Nav tabs -->
			<!-- data-tab에 탭경로 주기 -->
			<ul class="nav nav-tabs nav-tabs-success" role="tablist"
				style="place-content: center;">
				<li class="nav-item col-md-2 bor right-mar"><a
					href="${pageContext.request.contextPath}/cListAll.do"
					class="font-col"> 안주레시피 </a></li>
				<li class="nav-item col-md-2 bor right-mar"><a
					href="${pageContext.request.contextPath}/gameMain.do"
					class="font-col">술게임 </a></li>
				<li class="nav-item col-md-2 bor right-mar"><a
					href="${pageContext.request.contextPath}/Community_main.do"
					class="font-col">커뮤니티 </a></li>
				<li class="nav-item col-md-2 bor"><a
					href="${pageContext.request.contextPath}/search_list.do"
					class="font-col">근처 술집 </a></li>
			</ul>
		</div>
	</div>
	
	<div id="followChat">
		<iframe id="chatFrame" src="${pageContext.request.contextPath}/index.jsp" width=400px; height=600px; frameborder=0 scrolling=yes></iframe>
	</div>  
</body>
</html>