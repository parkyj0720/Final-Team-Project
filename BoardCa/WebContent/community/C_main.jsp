<%@page import="java.util.List"%>
<%@page import="CommunityModel.BoardList"%>
<%@page import="CommunityModel.CommunityDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardCa Community</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css"
	type="text/css">
<style>
#menu li:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<%
	List<BoardList> boardList = (List<BoardList>) request.getAttribute("boardList");
	%>
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
	<!-- <section class="content"
		style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;"> -->
		<%-- <div class="row">
			<div>
				<img src="${pageContext.request.contextPath}/imgs/logo1.png"
					height="250em" />
			</div>
		</div> --%>
		<%-- <div class="alert alert-warning" id="menu" role="alert">
			<ul
				style="list-style: none; padding: 0; margin: 0; overflow: hidden;">
				<li style="width: 25%; float: left; text-align: center;">안주 레시피</li>
				<li style="width: 25%; float: left; text-align: center;">술게임</li>
				<li style="width: 25%; float: left; text-align: center;"><a
					href="${pageContext.request.contextPath}/Community_main.do">커뮤니티</a></li>
				<li style="width: 25%; float: left; text-align: center;">근처 술집</li>
			</ul>
		</div> --%>
		<div class="body_scroll">
			<div class="block-header">
				<div>
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Community</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/Community_main.do"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item">Community</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="row">
					<div class="col-lg-6" style="float: left;">
					<%
					for(int i = 0; i<boardList.size(); i+=2){
						String listname = "list"+(i+1);
						List<CommunityDto> list = (List<CommunityDto>)request.getAttribute(listname);
						BoardList blist = boardList.get(i); 
						int nel = 7 - list.size();
					%>
						<div class="card">
							<div class="header" align="center">
								<a
									href="${pageContext.request.contextPath}/Community_list.do?list=<%=i+1%>"><h2
										id="listname1"><%=blist.getBOARDNAME()%></h2></a>
							</div>
							<div class="body" style="height: 30em;">
								<table
									class="table-hover product_item_list c_table theme-color mb-0"
									style="height: 100%; width: 100%">
									<%
										if (list.size()==0) {
											%>
											<div align="center" style="margin-top: 14em;">
												아직 게시글이 없습니다.
											</div>
											<%
										}else{
										for (int j = 0; j < list.size(); j++) {
											CommunityDto dto = list.get(j);
											String title = dto.getTitle();
											int endidx = title.length();
											if (endidx > 20) {
										title = title.substring(0, 20);
										title += "...";
											}
									%>
									<tr class="list" height="14.2%" width="100%" style="box-sizing: content-box;">
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getNum()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWriter_id()%></td>
										<td width="50%" height="auto" align="center"
											style="white-space: normal;"><%=title%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWritten_date()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getViews()%></td>
									</tr>
									<%
										}
										for(int j = 0; j<nel; j++){%>
											<tr>
											</tr>
											<%
										}
									}
									%>
								</table>
							</div>
						</div>
						<%
						}
						%>
					</div>
					<div class="col-lg-6" style="float: right;">
					<%
					for(int i = 1; i<boardList.size(); i+=2){
						String listname = "list"+(i+1);
						List<CommunityDto> list = (List<CommunityDto>)request.getAttribute(listname);
						BoardList blist = boardList.get(i);
						int nel = 7 - list.size();
					%>
						<div class="card">
							<div class="header" align="center">
								<a
									href="${pageContext.request.contextPath}/Community_list.do?list=<%=i+1%>"><h2
										id="listname1"><%=blist.getBOARDNAME()%></h2></a>
							</div>
							<div class="body" style="height: 30em;">
								<table
									class="table-hover product_item_list c_table theme-color mb-0"
									style="height: 100%; width: 100%">
									<%
										if (list.size()==0) {
											%>
											<div>
												아직 게시글이 없습니다.
											</div>
											<%
										}else{
										for (int j = 0; j < list.size(); j++) {
											CommunityDto dto = list.get(j);
											String title = dto.getTitle();
											int endidx = title.length();
											if (endidx > 20) {
										title = title.substring(0, 20);
										title += "...";
											}
									%>
									<tr class="list" width="14.2%" style="box-sizing: content-box;">
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getNum()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWriter_id()%></td>
										<td width="50%" height="auto" align="center"
											style="white-space: normal;"><%=title%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWritten_date()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getViews()%></td>

									</tr>
									<%
										}
										for(int j = 0; j<nel; j++){%>
											<tr>
											</tr>
											<%
										}
									}
									%>
								</table>
							</div>
						</div>
						<%
						}
						%>
					</div>
					
				</div>
			</div>
		</div>
<!-- 	</section> -->
		<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>

		$(document).ready(
				function() {
					$('.list').click(
							function() {
								var num = $(this).children(0).eq(0).text();
								var viewname = $('#listname1').text();
								$(location).attr(
										'href',
										'${pageContext.request.contextPath}/Community_detail.do?num='
												+ num);

							});

				});
	</script>
		<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>