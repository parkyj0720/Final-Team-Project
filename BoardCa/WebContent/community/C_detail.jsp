<%@page import="CommunityModel.BoardList"%>
<%@page import="CommunityModel.Heart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="CommunityModel.Comment"%>
<%@page import="CommunityModel.CommunityDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery.js"></script>
<style>
.heart {
	width: 100px;
	height: 100px;
	position: absolute;
	left: 100px;
	top: 60%;
	transform: translate(-50%, -50%);
	background: url(http://imagizer.imageshack.com/img923/4545/XdJDuY.png)
		no-repeat;
	background-size: 1000px 1000px'
  cursor: pointer;
}

.heart-blast {
	background-position: -2800px 0;
	transition: background 1s steps(28);
}

.heart1 {
	width: 100px;
	height: 100px;
	position: absolute;
	left: 100px;
	top: 60%;
	transform: translate(-50%, -50%);
	background: url(http://imagizer.imageshack.com/img923/4545/XdJDuY.png)
		no-repeat;
	cursor: pointer;
	background-position: -2800px 0;
	transition: background 1s steps(28);
}

.heart-blast1 {
	background-position: 0px 0;
	transition: none;
}
</style>
<meta charset="UTF-8">
<title>BoardCa</title>
<!-- Favicon-->
<!-- <link rel="icon" href="favicon.ico" type="image/x-icon"> -
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
		CommunityDto dto = (CommunityDto) request.getAttribute("dto");
	ArrayList<Heart> heart = (ArrayList<Heart>) request.getAttribute("heart");
	ArrayList<Comment> comment = (ArrayList<Comment>) request.getAttribute("comment");
	BoardList viewname = (BoardList) request.getAttribute("board");
	String community_title = viewname.getBOARDNAME();
	int heart_ssize = heart.size();
	String heart_size;
	if (heart_ssize > 1000) {
		if (heart_ssize > 100000) {
			heart_size = (heart_ssize / 10000) + "." + ((heart_ssize % 10000 + "").substring(0, 2) + "m");
		} else {
			heart_size = (heart_ssize / 1000) + "." + ((heart_ssize % 1000 + "").substring(0, 2) + "k");
		}
	} else {
		heart_size = heart_ssize + "";
	}
	%>

	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>

	<!-- <section class="content"
		style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;"> -->
	<div class="body_scroll" style="max-width: none;">
		<%-- <div class="row">
				<div>
					<img src="${pageContext.request.contextPath}/imgs/logo1.png"
						height="250em" />
				</div>
			</div>
			<div class="alert alert-warning" id="menu" role="alert">
				<ul
					style="list-style: none; padding: 0; margin: 0; overflow: hidden;">
					<li style="width: 25%; float: left; text-align: center;">안주
						레시피</li>
					<li style="width: 25%; float: left; text-align: center;">술게임</li>
					<li style="width: 25%; float: left; text-align: center;"><a
						href="${pageContext.request.contextPath}/Community_main.do">커뮤니티</a></li>
					<li style="width: 25%; float: left; text-align: center;">근처 술집</li>
				</ul>
			</div>  --%>
		<div class="block-header">
			<div class="col-lg-7 col-md-6 col-sm-12">
				<ul class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html"><i
							class="zmdi zmdi-home"></i> BoardCa</a></li>
					<li class="breadcrumb-item"><a
						href="${pageContext.request.contextPath}/Community_main.do">Community</a></li>
					<li id="listname" class="breadcrumb-item active"><a
						href="${pageContext.request.contextPath}/Community_list.do?list=<%=viewname.getBOARDNUM()%>"><%=community_title%></a></li>
				</ul>
				<button class="btn btn-primary btn-icon mobile_menu" type="button">
					<i class="zmdi zmdi-sort-amount-desc"></i>
				</button>
			</div>
			<div class="col-lg-5 col-md-6 col-sm-12"></div>
		</div>
		<div class="col-lg-8 col-md-12" style="max-width: none;">
			<div class="card" style="">
				<div class="blogitem mb-5">
					<div class="blogitem-content">
						<h5>
							<%=dto.getTitle()%>(<%=dto.getViews()%>)
							<div class="blogitem-meta" style="float: right;">
								<span><i class="zmdi zmdi-account"></i><%=dto.getWriter_id()%></a></span>
							</div>
						</h5>
						<div style="margin-top: 50px;">
							<%=dto.getContent()%>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="header">
					<h2>
						<i class="zmdi zmdi-comments"></i><strong>댓글</strong> (<%=comment.size()%>)
					</h2>
					<%
						String username = "정태진";
					boolean tf = false;
					for (int i = 0; i < heart.size(); i++) {
						Heart h = heart.get(i);
						if (h.getUsername().equals(username)) {
							tf = true;
						}
					}
					if (tf == false) {
					%>
					<div class="heart">
						<div id="heart_size"
							style="margin-top: 40%; text-align: center; margin-left: 70%; position: absolute;"><%=heart_size%></div>
					</div>
					<%
						} else {
					%>
					<div id="heart1">
						<div class="heart_size"	style="margin-top: 40%; text-align: center; margin-left: 70%;"><%=heart_size%></div>
					</div>
					<%
						}
					%>
				</div>
				<div class="card">
					<div class="header"></div>
					<div>
						<form class="row comment-form mt-2">
							<div class="col-sm-12">
								<div class="form-group">
									<textarea id="comment_area" rows="4"
										class="form-control no-resize"
										placeholder="Please type what you want..."></textarea>
								</div>
								<button id="comment_submit" type="submit"
									class="btn btn btn-primary" style="float: right;">SUBMIT</button>
							</div>
						</form>
					</div>
				</div>
				<div>
					<ul class="comment-reply list-unstyled">
						<li>
							<%
								for (int i = 0; i < comment.size(); i++) {
								Comment Comm = comment.get(i);
							%>
							<div class="text-box">
								<h5><%=Comm.getWriter_id()%></h5>
								<span class="comment-date"><%=Comm.getWritten_date()%></span>
								<p><%=Comm.getContent()%></p>
							</div> <%
 	}
 %>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- </section>   -->

	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>

	<script>
		$(function() {

			$(".heart").on("click", function() {
				$(this).toggleClass("heart-blast");
				console.log("y");
				
			});
			$(".heart1").on("click", function() {
				$(this).toggleClass("heart-blast1");
				console.log("x");
			});
			$(".comment_submit").on("click", function() {
				
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