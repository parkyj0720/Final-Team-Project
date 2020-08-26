<%@page import="Food.CDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js " lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Profile</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css"
	type="text/css">
<!-- Light Gallery Plugin Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/light-gallery/css/lightgallery.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/fullcalendar/fullcalendar.min.css"
	type="text/css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css"
	type="text/css">
<style>
.num_btn_div{
width: 230px;
margin: 0 auto;
font-size: 20pt;
}
</style>
</head>

<% List<CDto> list = (List<CDto>)request.getAttribute("cList");
	System.out.println(list.size());
%>

<body class="ls-closed ls-toggle-menu theme-orange">
	<header class="body_header">
		<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
	</header>
	</script>
	<!-- Loding Page -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="zmdi-hc-spin"
					src="${pageContext.request.contextPath}/stylesheet/assets/images/loader.svg"
					style="width: 48px; height: 48px; alt: Aero;">
			</div>
			<p>Please wait...</p>
		</div>
	</div>

	
<section class="content file_manager"style="margin: auto;">
    <div class="body_scroll">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="tab-content">
                            <div class="tab-pane active" id="2019">
                                <div class="row clearfix">
                                <% for(int i=0;i<list.size();i++) { 
                                	CDto dto = list.get(i);
                                %> 
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <div class="file">
                                                <a href="<%=dto.getR_crawling_addr()%>">
                                                    <div class="hover">
                                                        <button type="button" class="bg-orange btn btn-icon btn-icon-mini btn-round bg-orange">
                                                            <i class="ti-heart"></i>
                                                        </button>
                                                    </div>
                                                    <div class="icon" >
                                                        <img src="<%=dto.getR_main_thumbs()%>" height="150" >
                                                    </div>
                                                    <div class="file-name" style="height:100px">
                                                        <p class="m-b-5 text-muted"><%=dto.getR_title() %></p>
                                                       
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <% }%>
                                </div>
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
            <div class="num_btn_div">
            	<ul class="pagination pagination-primary m-b-0">
                     <li class="page-item"><a class="page-link" href="javascript:void(0);"><i class="zmdi zmdi-arrow-left"></i></a></li>
                     <li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
                     <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                     <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                     <li class="page-item"><a class="page-link" href="javascript:void(0);">4</a></li>
                     <li class="page-item"><a class="page-link" href="javascript:void(0);"><i class="zmdi zmdi-arrow-right"></i></a></li>
                  </ul>
            </div>
        </div>
    </div>
</section>
<footer>
	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
</footer>
	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/light-gallery/js/lightgallery-all.min.js"></script>
	<!-- Light Gallery Plugin Js -->


	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/medias/image-gallery.js"></script>
</body>
</html>