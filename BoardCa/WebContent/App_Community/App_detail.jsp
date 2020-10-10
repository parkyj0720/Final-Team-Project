<%@page import="java.net.UnknownHostException"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.util.List"%>
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
<title>BoardCa :: Community</title>
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

	
	CommunityDto dto = (CommunityDto) request.getAttribute("dto"); //
	ArrayList<Heart> heart = (ArrayList<Heart>) request.getAttribute("heart");
	List<Comment> comment = (List<Comment>) request.getAttribute("comment");
	BoardList viewname = (BoardList) request.getAttribute("board");
	String community_title = viewname.getCAT_NAME();
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


	 <section class="content">
		<!-- style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;"> -->
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
						href="${pageContext.request.contextPath}/Community_list.do?list=<%=viewname.getBRD_CAT_IDX()%>"><%=community_title%></a></li>
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
						<div id="content_num" style="visibility: hidden;"><%=dto.getBRD_IDX()%></div>
						<h5>
							<%=dto.getBRD_TIT()%>(<%=dto.getBRD_VIEWS()%>)
							<div class="blogitem-meta" style="float: right;">
								<span><i class="zmdi zmdi-account"></i><%=dto.getBRD_WRT_ID()%></a></span>
							</div>
						</h5>
						<div style="margin-top: 50px;">
							<%=dto.getBRD_CONTENT()%>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="header">
					<h2>
						<i class="zmdi zmdi-comments"></i><strong>댓글</strong> (<%=comment.size()%>)
						<%
							String username = dto.getBRD_WRT_ID();
							if (username.equals((String) session.getAttribute("userId"))) {
						%>
						<a
							href="${pageContext.request.contextPath}/Community_Modify.do?num=<%=dto.getBRD_IDX()%>"><strong
							style="margin-left: 80px; color: gray">수정</strong></a> <span
							id="delete" style="cursor: pointer;"><strong
							style="margin-left: 20px; color: gray">삭제</strong></span>
						<%
							}
						%>
					</h2>
					<%
					int usernum;
					if(session.getAttribute("userIdx")==null){
						usernum=0;
					}else{
						usernum = (int)session.getAttribute("userIdx");
					}
					boolean tf = false;
					for (int i = 0; i < heart.size(); i++) {
						Heart h = heart.get(i);
					if (h.getMEM_IDX()==(usernum)) {
							tf = true;
						}
					}
					if (tf == false) {
					%>
					<div class="heart">
						<div id="heart_size"
							style="margin-top: 40%; text-align: center; margin-left: 70%; position: absolute;"
							oncontextmenu="return false" ondragstart="return false"
							onselectstart="return false"><%=heart_size%></div>
					</div>
					<%
						} else {
					%>
					<div class="heart1">
						<div id="heart_size"
							style="margin-top: 40%; text-align: center; margin-left: 70%; position: absolute;"
							oncontextmenu="return false" ondragstart="return false"
							onselectstart="return false"><%=heart_size%></div>
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
										class="form-control no-resize" placeholder="댓글을 작성해주세요" maxlength="300"></textarea>
								</div>
								<div id="comment_submit" class="btn btn btn-primary"
									style="float: right;">SUBMIT</div>
							</div>
						</form>
					</div>
				</div>
				<div>
					<ul class="comment-reply list-unstyled">
						<%
							for (int i = 0; i < comment.size(); i++) {
							Comment Comm = comment.get(i);
						%>
						<li>
							<div class="text-box" style="padding-left: 10px">
								<h5><%=Comm.getBRD_WRT_ID()%></h5>
								<span class="comment-date"><%=Comm.getCOMT_SYSDATE()%></span>
								<%
							if (username.equals((String) session.getAttribute("userId"))) {
						%>
								<span class="delete_comment" style="cursor: pointer;" id="<%=Comm.getCOMT_IDX()%>">
								<strong	style="margin-left: 20px; color: gray">삭제</strong></span>
								<%
							}
						%>
								<p><%=Comm.getCOMT_CONTENT()%></p>
							</div>
						</li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>  

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

	<script>
		$(function() {
			var BOARD_IDX = <%=dto.getBRD_IDX()%>
			var MEM_IDX = " ${sessionScope.userIdx}";
			
			$(".heart").on("click",	function() {
						if (MEM_IDX == null || MEM_IDX == 0) {
							alert("로그인후 재시도해주세요")
						} else {
							
							$(this).toggleClass("heart-blast");
							var dto = {
								HEART_IDX : 0,
								MEM_IDX : MEM_IDX,
								BOARD_IDX : BOARD_IDX
							};
							$.ajax({
								url: "Community_heart.do",
								type: "POST",
								data: dto,
								success: function () {
									recCount();
						           }
							})
							
						}
					});
			$(".heart1").on("click", function() {
				if (MEM_IDX ==null || MEM_IDX == 0) {
				alert("로그인후 재시도해주세요")
			} else {
				
				$(this).toggleClass("heart-blast1");
				var dto = {
						HEART_IDX : 0,
						MEM_IDX : MEM_IDX,
						BOARD_IDX : BOARD_IDX
				};
				$.ajax({
					url: "Community_heart.do",
					type: "POST",
					data: dto,
					success: function () {
						recCount();
			           }
				})
				
			}
			});
			
			
			$("#delete").on("click", function() {
				console.log('삭제버튼')
				var dto = {
					MEM_IDX : MEM_IDX,
					BOARD_IDX : BOARD_IDX
					};
				$.ajax({
					url: "Community_delete.do",
					type: "POST",
					data: dto,
					success: function () {
						alert('삭제성공');
						delete_success();
			           }
				})
			});
			function delete_success() {
    		 	$(location).attr('href', '${pageContext.request.contextPath}/Community_list.do?list=<%=viewname.getBRD_CAT_IDX()%>');
			}

			$("#comment_submit").on("click", function() {
				console.log('댓글입력버튼');
				var comment_content = $('#comment_area').val()
				console.log(comment_content);
				if (comment_content == "" || comment_content == null) {
					alert('댓글 내용을 입력해주세요');
				} else {
					var dto = {
						MEM_IDX : MEM_IDX,
						COMT_CONTENT : comment_content,
						BRD_IDX : BOARD_IDX
					};
					$.ajax({
						url : "Community_comment.do",
						type : "POST",
						data : dto,
						success : function() {
							alert('댓글 입력완료')
							location.reload();
						}
					})
				}

			});
			$(".delete_comment").on("click", function() {
				console.log('댓글삭제버튼')
				var COMT_IDX = $(this).attr('id');
				console.log(COMT_IDX)
 				var dto = {
					COMT_IDX : COMT_IDX,
					};
				$.ajax({
					url: "Community_delete_comment.do",
					type: "POST",
					data: dto,
					success: function () {
						alert('삭제성공');
						location.reload();
			           }
				})
			});
			function recCount() {
				$.ajax({
					url : "Community_heart_count.do",
					type : "POST",
					datatype : "text",
					data : {
						no : BOARD_IDX
					},
					success : function(count) {
						console.log(count);
						$('#heart_size').text(count);
					},
					error : function() {
						console.log('error');
					}
				})
			}
			;
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