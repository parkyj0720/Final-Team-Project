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
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/plugins/light-gallery/css/lightgallery.css">
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/plugins/fullcalendar/fullcalendar.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">

<script src="http://code.jquery.com/jquery.js"></script>

<style>
.num_btn_div {
	width: 230px;
	margin: 0 auto;
}

.search_div {
	margin-top: 10px;
	margin-left: 15px;
	margin-bottom: 20px;
	white-space: nowrap;
}
</style>
</head>
<%
	String keyword = "";
// 검색 했는지 체크
if (request.getParameter("inputSearch") != null) {
	keyword = request.getParameter("inputSearch");
}
// 리스트 목록
List<GameDto> gameList = (List<GameDto>) request.getAttribute("gameList");

//최대 보일 페이지 개수
int maxList = 5;
request.setAttribute("maxList", maxList);

// 페이지당 리스트 개수
int listNum = 12;

int now_page = 1;

//보여줄 리스트 배열 번호 선언
int itemCount = 1;

// 리스트 목록
System.out.println("리스트 개수: " + gameList.size());

// 보여줄 리스트 배열 번호 (페이지번호 * 페이지에 보여주는 리스트 개수)
if (request.getParameter("page") != null) {
	now_page = Integer.parseInt(request.getParameter("page"));
	if (now_page <= 0)
		response.sendRedirect("${pageContext.request.contextPath}/gameMainApp.do?page=1");
	itemCount = (Integer.parseInt(request.getParameter("page")) - 1) * listNum;
}

// 리스트 개수
int listCount = (gameList.size() / listNum == 0 && gameList.size() != 0)
		? gameList.size() / listNum
		: gameList.size() / listNum + 1;

// 시작 페이지
int startList = (now_page % maxList == 0) ? ((now_page / maxList) - 1) : (now_page / maxList);
startList = startList * maxList + 1;

// 최대 페이지
int endList = (now_page % maxList == 0) ? ((now_page / maxList) - 1) : (now_page / maxList);
endList = endList * maxList + maxList;
%>



	<script>
		var request = new Request();
		var page = request.getParameter("page");
		var maxList = <%= request.getAttribute("maxList") %>
		$('document').ready(function() {
			if (page <= 0)
				page = 1;
			if (page >= maxList + 1) {
				page = page % maxList;
				if (page == 0)
					page = 10;
			}
			// 하단 목록 버튼 사이즈 조절 및 위치조정 
			var wd = 0;
			if ($('.page-item').length >= maxList + 2) {
				wd = 40 * (maxList + 2) - 40;
			} else {
				wd = 40 * $('.page-item').length - 40;
			}
			$('.num_btn_div').css('width', wd + 'px');

			// 버튼 눌림 효과클래스 추가
			$('.page-item').eq(page).addClass('active');
		});
	</script>

<body class="ls-closed ls-toggle-menu ">
	
	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="col-lg-7 col-md-6 col-sm-12">
					
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
										for (int i = itemCount; i < gameList.size(); i++) {
										if (i > itemCount + listNum - 1)
											break;
										GameDto dto = gameList.get(i);
									%>
									<div class="col-lg-3 col-md-4 col-sm-12">
										<div class="card">
											<div class="file">

												<a
													href="${pageContext.request.contextPath}/gameDetailApp.do?no=<%=dto.getGAME_IDX() %>">
													<div class="icon">
														<img src="<%=dto.getGAME_IMG()%>">
													</div>
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
		<div class="num_btn_div">
			<ul class="pagination pagination-primary m-b-0">
				<li class="page-item"><a class="page-link"
					href="${pageContext.request.contextPath}/<%=(keyword.equals(""))?"gameMain":"gameSearch"%>.do?page=<%=(startList-maxList>0)?startList-maxList:1 %>&inputSearch=<%=keyword%>"><i
						class="zmdi zmdi-arrow-left"></i></a></li>
				<!-- class = "active" -->
								<%
									for (int i = startList - 1; i < endList; i++) {
									if (i > listCount)
										break;

									if (now_page == i + 1) {
								%>


								<li class="page-item active"><a class="page-link"
									href="${pageContext.request.contextPath}/<%=(keyword.equals(""))?"gameMainApp":"gameSearch"%>.do?page=<%=i+1%>&inputSearch=<%=keyword%>"><%=i + 1%></a></li>
								<%
									} else {
								%>

								<li class="page-item"><a class="page-link"
									href="${pageContext.request.contextPath}/<%=(keyword.equals(""))?"gameMainApp":"gameSearch"%>.do?page=<%=i+1%>&inputSearch=<%=keyword%>"><%=i + 1%></a></li>
								<%
									}
								}
								%>

				<li class="page-item"><a class="page-link"
					href="${pageContext.request.contextPath}/<%=(keyword.equals(""))?"gameMainApp":"gameSearch"%>.do?page=<%=(endList+1>listCount)?listCount:endList+1%>&inputSearch=<%=keyword%>"><i
						class="zmdi zmdi-arrow-right"></i></a></li>
			</ul>
		</div>
	</div>

	<!-- Jquery Core Js -->
	
	<script src="/BoardCa/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="/BoardCa/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="/BoardCa/stylesheet/assets/plugins/light-gallery/js/lightgallery-all.min.js"></script>
	<!-- Light Gallery Plugin Js -->

	<script src="/BoardCa/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="/BoardCa/stylesheet/assets/js/pages/medias/image-gallery.js"></script>
</body>
</html>