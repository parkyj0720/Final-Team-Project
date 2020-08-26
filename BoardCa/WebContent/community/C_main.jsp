<%@page import="CommunityModel.CommunityDto"%>
<%@page import="java.util.ArrayList"%>
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
	ArrayList<CommunityDto> list1 = (ArrayList<CommunityDto>) request.getAttribute("list1");
	ArrayList<CommunityDto> list2 = (ArrayList<CommunityDto>) request.getAttribute("list2");
	ArrayList<CommunityDto> list3 = (ArrayList<CommunityDto>) request.getAttribute("list3");
	ArrayList<CommunityDto> list4 = (ArrayList<CommunityDto>) request.getAttribute("list4");
	%>
	<section class="content"
		style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;">
		<div class="row">
			<div>
				<img src="${pageContext.request.contextPath}/imgs/logo1.png"
					height="250em" />
			</div>
		</div>
		<div class="alert alert-warning" id="menu" role="alert">
			<ul
				style="list-style: none; padding: 0; margin: 0; overflow: hidden;">
				<li style="width: 25%; float: left; text-align: center;">안주 레시피</li>
				<li style="width: 25%; float: left; text-align: center;">술게임</li>
				<li style="width: 25%; float: left; text-align: center;"><a
					href="${pageContext.request.contextPath}/Community_main.do">커뮤니티</a></li>
				<li style="width: 25%; float: left; text-align: center;">근처 술집</li>
			</ul>
		</div>
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
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
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-6">
						<div class="card"">
							<div class="header" align="center">
								<a
									href="${pageContext.request.contextPath}/Community_list_sook.do"><h2>숙취게시판</h2></a>
							</div>
							<div class="body" style="height: 30em;">
								<table
									class="table-hover product_item_list c_table theme-color mb-0" style="height: 100%;">
									<%
										for (int i = 0; i < 10; i++) {
										CommunityDto dto = list1.get(i);
										String title = dto.getTitle();
										int endidx = title.length();
										if(endidx > 20){
											title = title.substring(0,20);
											title += "...";
										}
									%>
									<tr height="10%" style=" box-sizing: content-box;">
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getNum()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWriter_id()%></td>
										<td width="50%" height="auto" align="center"
											style="white-space: normal;"><a
											href="${pageContext.request.contextPath}/Community_detail.do"><%=title%></a></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWritten_date()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getViews()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getHeart()%></td>
									</tr>
									<%
										}
									%>
								</table>
							</div>
						</div>
						<div class="card">
							<div class="header" align="center">
								<a
									href="${pageContext.request.contextPath}/Community_list_jeong.do"><h2>정보공유</h2></a>
							</div>
							<div class="body" style="height: 30em;">
								<table
									class="table-hover product_item_list c_table theme-color mb-0" style="height: 100%;">
									<%
										for (int i = 0; i < 10; i++) {
										CommunityDto dto = list2.get(i);
										String title = dto.getTitle();
										int endidx = title.length();
										if(endidx > 20){
											title = title.substring(0,20);
											title += "...";
										}
									%>
									<tr height="10%" style=" box-sizing: content-box;">
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getNum()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWriter_id()%></td>
										<td width="50%" height="auto" align="center"
											style="white-space: normal;"><a
											href="${pageContext.request.contextPath}/Community_detail.do"><%=title %></a></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWritten_date()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getViews()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getHeart()%></td>
									</tr>
									<%
										}
									%>
								</table>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12">
						<div class="card">
							<div class="header" align="center">
								<a href="${pageContext.request.contextPath}/Community_list_Q.do"><h2>QnA</h2></a>
							</div>
							<div class="body" style="height: 30em;">
								<table
									class="table-hover product_item_list c_table theme-color mb-0" style="height: 100%;">
									<%
										for (int i = 0; i < 10; i++) {
										CommunityDto dto = list3.get(i);
										String title = dto.getTitle();
										int endidx = title.length();
										if(endidx > 20){
											title = title.substring(0,20);
											title += "...";
										}
									%>
									<tr height="10%" style=" box-sizing: content-box;">
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getNum()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWriter_id()%></td>
										<td width="50%" height="auto" align="center"
											style="white-space: normal;"><a
											href="${pageContext.request.contextPath}/Community_detail.do"><%=title%></a></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWritten_date()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getViews()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getHeart()%></td>
									</tr>
									<%
										}
									%>
								</table>
							</div>
						</div>
						<div class="card">
							<div class="header" align="center">
								<a
									href="${pageContext.request.contextPath}/Community_list_shin.do"><h2>신고하기</h2></a>
							</div>
							<div class="body" style="height: 30em;">
								<table
									class="table-hover product_item_list c_table theme-color mb-0" style="height: 100%;">
									<%
										for (int i = 0; i < 10; i++) {
										CommunityDto dto = list4.get(i);
										String title = dto.getTitle();
										int endidx = title.length();
										if(endidx > 20){
											title = title.substring(0,20);
											title += "...";
										}
									%>
									<tr height="10%" style=" box-sizing: content-box;">
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getNum()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWriter_id()%></td>
										<td width="50%" height="auto" align="center"
											style="white-space: normal;"><a
											href="${pageContext.request.contextPath}/Community_detail.do"><%=title%></a></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getWritten_date()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getViews()%></td>
										<td width="10%" height="auto" align="center"
											style="white-space: normal;"><%=dto.getHeart()%></td>
									</tr>
									<%
										}
									%>

								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>