<%@page import="java.util.ArrayList"%>
<%@page import="CommunityModel.Comment"%>
<%@page import="CommunityModel.CommunityDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardCa</title>
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
	ArrayList<Comment> comment = new ArrayList<Comment>();
		CommunityDto dto = (CommunityDto) request.getAttribute("dto");
	if (dto.getComment_num() != 0) {
		comment = (ArrayList<Comment>) request.getAttribute("comment");
	}
	String boardname = (String) request.getAttribute("board");
	String viewname = "";
	if ("숙취게시판".equals(boardname)) {
		viewname = "/Community_list_sook.do";
	} else if ("정보공유".equals(boardname)) {
		viewname = "/Community_list_jeong.do";
	} else if ("QnA".equals(boardname)) {
		viewname = "/Community_list_Q.do";
	} else if ("신고하기".equals(boardname)) {
		viewname = "/Community_list_shin.do";
	}
	%>
	<section class="content"
		style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;">
		<div class="body_scroll" style="max-width: none;">
			<div class="row">
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
			</div>
			<div class="block-header">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/Community_main.do">Community</a></li>
						<li class="breadcrumb-item active"><a
							href="${pageContext.request.contextPath}<%=viewname %>"><%=boardname%></a></li>
					</ul>
					<button class="btn btn-primary btn-icon mobile_menu" type="button">
						<i class="zmdi zmdi-sort-amount-desc"></i>
					</button>
				</div>
				<div class="col-lg-5 col-md-6 col-sm-12"></div>
			</div>
			<div class="col-lg-8 col-md-12" style="max-width: none;">
				<div class="card">
					<div class="blogitem mb-5">
						<div class="blogitem-content">
							<h5>
								<%=dto.getTitle()%>(<%=dto.getViews()%>)
								<div class="blogitem-meta" style="float: right;">
									<span><i class="zmdi zmdi-account"></i><%=dto.getWriter_id()%></a></span>
								</div>
							</h5>
							<%=dto.getContent()%>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="header">
						<h2>
							<i class="zmdi zmdi-comments"></i><strong>댓글</strong> (<%=dto.getComment_num()%>)
						</h2>
					</div>
					<div class="card">
						<div class="header">
							<h2>
								<strong>Leave</strong> a Comment
							</h2>
						</div>
						<div class="">
							<small>Your email address will not be published. Required
								fields are marked*</small>
							<form class="row comment-form mt-2">
								<div class="col-sm-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Your Name">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Email Address">
									</div>
								</div>
								<div class="col-sm-12">
									<div class="form-group">
										<textarea rows="4" class="form-control no-resize"
											placeholder="Please type what you want..."></textarea>
									</div>
									<button type="submit" class="btn btn btn-primary"
										style="float: right;">SUBMIT</button>
								</div>
							</form>
						</div>
					</div>
					<div>
						<ul class="comment-reply list-unstyled">
							<li>
							<% for(int i = 0; i<comment.size();i++){
							 	Comment Comm = comment.get(i);
							 %>
								<div class="text-box">
									<h5><%=Comm.getComment_id() %></h5>
									<span class="comment-date"><%=Comm.getComment_date() %></span>
									<p><%=Comm.getComment_content() %></p>
								</div>
								<%} %>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>