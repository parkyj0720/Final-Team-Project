<%@page import="java.util.ArrayList"%>
<%@page import="CommunityModel.Heart"%>
<%@page import="java.util.List"%>
<%@page import="CommunityModel.BoardList"%>
<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="CommunityModel.CommunityDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#menu li:hover {
	text-decoration: underline;
}
</style>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css"
	type="text/css">
</head>
<body>
<%
	ArrayList<Object> heartList = (ArrayList<Object>)request.getAttribute("heart");
	List<CommunityDto> list = (List<CommunityDto>) request.getAttribute("list");
	BoardList viewname = (BoardList)request.getAttribute("viewname");
	String community_title = viewname.getCAT_NAME();
	int boardnum = viewname.getBRD_CAT_IDX();
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
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>List</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/Community_main.do">Community</a></li>
						<li id="listname" class="breadcrumb-item active"><a
							href="${pageContext.request.contextPath}/Community_list.do?list=<%=boardnum%>"><%=community_title%></a></li>
					</ul>
					<button class="btn btn-primary btn-icon mobile_menu" type="button">
						<i class="zmdi zmdi-sort-amount-desc"></i>
					</button>
				</div>
				<div class="col-lg-5 col-md-6 col-sm-12"></div>
			</div>
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card"">
							<div class="table-responsive" style="overflow: scroll;">
								<table
									class="table table-hover product_item_list c_table theme-color mb-0"
									style="width: 100%; ">
									<tbody>
									<%
									for(int i = 0; i<list.size(); i++){ 
									CommunityDto dto = list.get(i);
									int heart = (int)heartList.get(i);
									%>
										<tr class="list" style="box-sizing: content-box;">
											<td class="Ctd" width="10%" height="auto" align="center"
												style="white-space: normal;"><%=dto.getBRD_IDX()%></td>
											<td width="10%" height="auto" align="center"
												style="white-space: normal;"><%=dto.getBRD_WRT_ID()%></td>
											<td width="40%" height="auto" align="center"
												style="white-space: normal;"><%=dto.getBRD_TIT()%></td>
											<td width="10%" height="auto" align="center"
												style="white-space: normal;"><%=dto.getBRD_SYSDATE()%></td>
											<td width="10%" height="auto" align="center"
												style="white-space: normal;"><%=dto.getBRD_VIEWS()%></td>
											<td width="10%" height="auto" align="center"
												style="white-space: normal;"><%=heart%></td>
										</tr>
										<%} %>
									</tbody>
								</table>
							</div>
						</div>
						<div class="card">
							<div class="body">
								<ul class="pagination pagination-primary m-b-0">
									<li class="page-item"><a class="page-link"
										href="javascript:void(0);"><i class="zmdi zmdi-arrow-left"></i></a></li>
									<li class="page-item active"><a class="page-link"
										href="javascript:void(0);">1</a></li>
									<!-- <li class="page-item"><a class="page-link"
										href="javascript:void(0);">2</a></li> -->
									<li class="page-item"><a class="page-link"
										href="javascript:void(0);"><i
											class="zmdi zmdi-arrow-right"></i></a></li>
									<div style="width: 100%">
									</div>
										<button
												class="btn btn-primary float-right"
												type="button" id="input">
												<i class="zmdi zmdi-hc-fw"></i>
										</button>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- </section> -->
	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
<script src="http://code.jquery.com/jquery.js"></script>
    <script>
        $(document).ready(function(){
            $('.list').click(function() {
                var num = $(this).children(0).eq(0).text();
                $(location).attr('href', '${pageContext.request.contextPath}/Community_detail.do?num='+num);
            });
            $('#input').click(function() {
            	if("${sessionScope.userId}"==null || "${sessionScope.userId}"==""){
            		alert('로그인후 다시 시도해주세요')
            	}else{
            		$(location).attr('href', '${pageContext.request.contextPath}/Community_input.do')
            	}
			})
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