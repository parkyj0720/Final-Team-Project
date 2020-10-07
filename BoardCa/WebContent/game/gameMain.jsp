<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Game.GameDto"%>
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


<title>:: BoardCa :: GameMain</title>
<link rel="icon" href="/BoardCa/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">

<script src="http://code.jquery.com/jquery.js"></script>

<style>
</style>
</head>
<%
	String search = "";
// 검색 했는지 체크
if (request.getParameter("inputSearch") != null) {
	search = request.getParameter("inputSearch");
}

// 최대 보일 리스트 개수
int maxList = 10;
request.setAttribute("maxList", maxList);

// 페이지당 리스트 개수
int listNum = 12;

int now_page = 1;

//보여줄 리스트 배열 번호 선언
int itemCount = 0;

// 리스트 목록
List<GameDto> list = (List<GameDto>) request.getAttribute("gameList");

// 보여줄 리스트 배열 번호 (페이지번호 * 페이지에 보여주는 리스트 개수)
if (request.getParameter("page") != null) {
	now_page = Integer.parseInt(request.getParameter("page"));
	if (now_page <= 0)
		response.sendRedirect("${pageContext.request.contextPath}/gameMain.do?page=1");
	itemCount = (Integer.parseInt(request.getParameter("page")) - 1) * listNum;
}

// 리스트 개수
int listCount = (list.size() % listNum == 0 && list.size() != 0) ? list.size() / listNum : list.size() / listNum + 1;

// 시작 페이지
int startList = (now_page % maxList == 0) ? ((now_page / maxList) - 1) : (now_page / maxList);
startList = startList * maxList + 1;

// 최대 페이지
int endList = (now_page % maxList == 0) ? ((now_page / maxList) - 1) : (now_page / maxList);
endList = endList * maxList + maxList;
%>



<script>

	function Request() {
		var requestParam = "";

		//getParameter 펑션
		this.getParameter = function(param) {
			//현재 주소를 decoding
			var url = unescape(location.href);
			//파라미터만 자르고, 다시 &그분자를 잘라서 배열에 넣는다. 
			var paramArr = (url.substring(url.indexOf("?") + 1, url.length))
					.split("&");

			for (var i = 0; i < paramArr.length; i++) {
				var temp = paramArr[i].split("="); //파라미터 변수명을 담음

				if (temp[0].toUpperCase() == param.toUpperCase()) {
					// 변수명과 일치할 경우 데이터 삽입
					requestParam = paramArr[i].split("=")[1];
					break;
				}
			}
			return requestParam;
		}
	}
</script>

<body class="ls-closed ls-toggle-menu ">
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>GameMain</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/main.do"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item">GameMain</li>

					</ul>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row clearfix">
				<div class="col-lg-12">
					<div class="card">
						<div class="tab-content">
							<div class="tab-pane active">
								<div class="search_div" style="position: relative;">
									<div class="card">
										<form action="/BoardCa/gameSearch.do" method="POST"
											style="display: inline-block">
											<input type="text" size="34" name="inputSearch"> <input
												type="submit" value="검색" name="inputSearchButton"
												style="margin-left: -15px">
										</form>
									</div>
								</div>
								<div class="row clearfix">
									<%
										
									%>

									<%
										for (int i = 0; i < list.size(); i++) {
										GameDto dto = list.get(i);
									%>
									<div class="col-lg-3 col-md-4 col-sm-12">
										<div class="card">
											<div class="file">

												<a href="${pageContext.request.contextPath}/gameDetail.do?no=<%=dto.getGAME_IDX() %>">
													<div class="icon">
														<img src="<%=dto.getGAME_IMG()%>">
													</div >
													<div class="file-name">
														<h5 class="m-b-5 text-muted"><%=dto.getGAME_TIT()%></h5>
													</div>
												</a>
											</div>
										</div>
									</div>
									<%
										}
									%>
								</div>
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
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
</body>
</html>