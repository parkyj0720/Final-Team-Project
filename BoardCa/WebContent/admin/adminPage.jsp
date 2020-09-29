<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="Member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/sweetalert/sweetalert.css">
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
						<h2>AdminPage</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/main.do"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item active">관리자 페이지</li>

						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>


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
				<div class="inbox left collapse" id="mypage-nav">
					<div class="mail-side">

						<ul class="nav">
							<li><a
								href="${pageContext.request.contextPath}/adminPage.do">
									<h5>
										<i class="zmdi zmdi-menu"></i>메뉴
									</h5>
							</a></li>
							<li><a
								href="${pageContext.request.contextPath}/adminPage.do"><i
									class="zmdi zmdi-chart"></i>통계 페이지</a></li>
							<li><a
								href="${pageContext.request.contextPath}/adminEdit.do"><i
									class="zmdi zmdi-assignment-account"></i>유저 관리</a></li>
							<li><a
								href="${pageContext.request.contextPath}/adminList.do"><i
									class="zmdi zmdi-alert-circle"></i>신고 관리</a></li>
							<li><a href="${pageContext.request.contextPath}/adminFAQ.do"><i
									class="zmdi zmdi-comments"></i>문의 답변</a></li>
							<li><a href="${pageContext.request.contextPath}/myFAQ.do"><i
									class="zmdi zmdi-comments"></i>FAQ 답변</a></li>

						</ul>
					</div>
				</div>

				<div class="col-lg-11 col-md-12 col-sm-11 inbox right row">

					<div class="col-lg-6 col-md-12">
						<div class="card">
							<div class="header">
								<h2>
									<strong>성별 분포도</strong>
								</h2>
							</div>
							<div class="body">
								<div id="chart"></div>
							</div>
						</div>
					</div>

					<div class="col-lg-6 col-md-12">
						<div class="card">
							<div class="header">
								<h2>
									<strong>지역 분포도</strong>
								</h2>
							</div>
							<div class="body">
								<div id="chart2"></div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-6 col-md-12">
						<div class="card">
							<div class="header">
								<h2>
									<strong>유저 연령층</strong>
								</h2>
							</div>
							<div class="body">
								<div id="chart3"></div>
							</div>
						</div>
					</div>
					
						<div class="col-lg-6 col-md-12">
						<div class="card">
							<div class="header">
								<h2>
									<strong>주요 접속 시간</strong>
								</h2>
							</div>
							<div class="body">
								<div id="chart4"></div>
							</div>
						</div>
					</div>
					
					
					<div class="col-lg-6 col-md-12">
						<div class="card">
							<div class="header">
								<h2>
									<strong>일간 가입자수</strong>
								</h2>
							</div>
							<div class="body">
								<div id="chart5"></div>
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
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/charts/c3.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/c3.bundle.js"></script>

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/light-gallery/js/lightgallery-all.min.js"></script>
	<!-- Light Gallery Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->


<script>


var man = <%=request.getAttribute("man")%>
var woman = <%=request.getAttribute("woman")%>
var secret = <%=request.getAttribute("secret")%>

var chart = c3.generate({
	bindto: '#chart',
    data: {
        columns: [
            ['남성', man],
            ['여성', woman],
            ['비공개', secret]
        ],
        type : 'donut',
        onclick: function (d, i) { console.log("onclick", d, i); },
        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
    },
    donut: {
        title: "성별 분포도"
    }
});

var chart = c3.generate({
	bindto: '#chart2',
    data: {
        columns: [
            ['경기도', 2000],
            ['서울', 2000],
            ['인천', 1000],
            ['강원도', 500],
            ['충청도', 500],
            ['제주도', 500],
        ],
        type : 'donut',
        onclick: function (d, i) { console.log("onclick", d, i); },
        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
    },
    donut: {
        title: "지역 분포도"
    }
});

var twenty = <%=request.getAttribute("twenty")%>
var thirty = <%=request.getAttribute("thirty")%>
var forty = <%=request.getAttribute("forty")%>
var fifty = <%=request.getAttribute("fifty")%>
var agesecret = <%=request.getAttribute("agesecret")%>

var chart = c3.generate({
	bindto: '#chart3',
    data: {
        columns: [
            ['20대', twenty],
            ['30대', thirty],
            ['40대', forty],
            ['50대이상', fifty],
            ['비공개', agesecret]
        ],
        type : 'donut',
        onclick: function (d, i) { console.log("onclick", d, i); },
        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
    },
    donut: {
        title: "유저 연령층"
    }
});

var chart = c3.generate({
	bindto: '#chart4',
    data: {
        columns: [
            ['18시~20시', 60],
            ['20시~22시', 80],
            ['22시~24시', 60],
            ['24시~06시', 22],
            ['06시~18시', 100],
        ],
        type : 'donut',
        onclick: function (d, i) { console.log("onclick", d, i); },
        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
    },
    donut: {
        title: "주요 접속 시간"
    }
});



var chart = c3.generate({
	bindto: '#chart5',
	
    data: {
    	
    	x: 'x',
        xFormat: '%Y-%m-%d',
        columns: [
        	['x', '2020-09-20', '2020-09-21', '2020-09-22', '2020-09-23', '2020-09-24', '2020-09-25'],
            ['일간 가입자수', 0, 30, 200, 100, 200, 110],
            ['누적 가입자수', 0, 30, 230, 330, 530, 640]
        ],
        type: 'spline',
		types: {
		
			'누적 가입자수': 'bar',
                
		},
		
    },
    axis: {
        x: {
            type: 'timeseries',
            // if true, treat x value as localtime (Default)
            // if false, convert to UTC internally
            localtime: false,
            tick: {
                format: '%Y-%m-%d'
            }
        }
    }
    
});


</script>




</body>
</html>