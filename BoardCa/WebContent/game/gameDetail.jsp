<%@page import="Food.ReviewAndMember"%>
<%@page import="Food.ReviewDto"%>
<%@page import="java.util.List"%>
<%@page import="Member.MemberDto"%>
<%@page import="Game.GameDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

</head>

<body class="ls-closed ls-toggle-menu ">
	<%
		GameDto dto = (GameDto) request.getAttribute("dto");
	
	MemberDto mDto = null;
	if (request.getAttribute("infocheck") != null) {
		mDto = (MemberDto) request.getAttribute("infocheck");
	}
	System.out.println(mDto);

	List<ReviewAndMember> reviewList = null;
	if (request.getAttribute("reviewList") != null) {
		reviewList = (List<ReviewAndMember>) request.getAttribute("reviewList");
	}
	System.out.println(reviewList);
	%>
	<script>
		// 2. This code loads the IFrame Player API code asynchronously.
		var tag = document.createElement('script');

		tag.src = "https://www.youtube.com/iframe_api";
		var firstScriptTag = document.getElementsByTagName('script')[0];
		firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

		// 3. This function creates an <iframe> (and YouTube player)
		//    after the API code downloads.
		var player;
		function onYouTubeIframeAPIReady() {
			player = new YT.Player('player', {
				height : '600',
				width : '100%',
				videoId : '<%=dto.getGAME_VIDEO()%>',
				events : {
					'onReady' : onPlayerReady,
					'onStateChange' : onPlayerStateChange
				}
			});
		}

		// 4. The API will call this function when the video player is ready.
		function onPlayerReady(event) {
			event.target.playVideo();
		}

		// 5. The API calls this function when the player's state changes.
		//    The function indicates that when playing a video (state=1),
		//    the player should play for six seconds and then stop.
		var done = false;
		function onPlayerStateChange(event) {
			if (event.data == YT.PlayerState.PLAYING && !done) {
				setTimeout(stopVideo, 400000);
				done = true;
			}
		}
		function stopVideo() {
			player.stopVideo();
		}
		$('#reviewBtn').on('click', function() {
			if ($('#review_text').val() == '') {
				alert('내용을 입력해주세요.');
			} else if (
	<%=session.getAttribute("userIdx")%>
		!= null) {
				$('#reviewForm').submit();
			} else {
				alert('로그인 후 이용하실 수 있습니다.');
			}

		});
	</script>

	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>GameDetail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/main.do"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/gameMain.do">GameMain</a></li>
						<li class="breadcrumb-item active">GameDetail</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row clearfix">
				<div class="col-lg-12">
					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-xl-12 col-lg-12 col-md-12">
									<div class="preview preview-pic tab-content">
										<h3 class="mb-0"><%=dto.getGAME_TIT()%></h3>
										<div class="tab-pane active" id="player"></div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="container-fluid">
						<div class="row clearfix">
							<div class="card">
								<div class="body">
									<div class="row">
										<div class="col-lg-12">
											<div>
												<h3>추천영상</h3>
											</div>
											<div class="row clearfix">
												<%
													List<GameDto> list = (List<GameDto>) request.getAttribute("gameList");
												%>

												<%
													for (int i = 0; i < 6; i++) {
													GameDto dto1 = list.get(i);
												%>
												<div class="col-lg-2 col-md-2 col-sm-2">
													<div class="card">
														<div class="file">

															<a
																href="${pageContext.request.contextPath}/gameDetail.do?no=<%=dto1.getGAME_IDX() %>">

																<div class="thumbnail icon">
																	<img src="<%=dto1.getGAME_IMG()%>">
																</div>
																<div class="file-name">
																	<h5 class="m-b-5 text-muted"><%=dto1.getGAME_TIT()%><h5>
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

				<div class="container-fluid">
					<div class="row clearfix">
						<div class="col-lg-12">
							<div class="card">
								<div class="body">
									<form id="reviewForm" class="row comment-form mt-2"
										action="reviewInsert.do" method="post">
										<div class="col-xl-12 col-lg-12	col-md-12">
											<div class="form-group">
												<textarea rows="4" class="form-control no-resize"
													placeholder="한줄평 입력" name="review_text" id="review_text"></textarea>
											</div>
											<button id="reviewBtn" type="button"
												class="btn btn btn-primary">한줄평 등록</button>
											<input type="text" value="<%=dto.getGAME_IDX()%>" name="no"
												style="visibility: hidden;">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="container-fluid">
					<div class="row clearfix">
						<div class="col-lg-12">
							<div class="card">
								<div class="body">
									<div class="col-xl-9 col-lg-8 col-md-12">
										<h5 style="margin: 0;">
											<strong>한줄평</strong> (<%=reviewList.size()%>)
										</h5>
									</div>
									<div class="col-xl-12 col-lg-12	col-md-12">
										<ul class="comment-reply " style="padding: 5px;">
											<%
												for (int s = 0; s < reviewList.size(); s++) {
												ReviewAndMember reviewDto = reviewList.get(s);
											%>
											<hr>
											<li>
												<div class="text-box " style="width: auto;">
													<h5 style="display: inline-block;"><%=reviewDto.getMemberDto().getMem_nickname()%></h5>
													<span style="margin-left: 10px;" class="comment-date">작성
														<%=reviewDto.getReviewDto().getRev_sysdate()%></span>
													<%
														if (session.getAttribute("userIdx") != null
															&& Integer.parseInt(session.getAttribute("userIdx") + "") == reviewDto.getReviewDto().getMem_idx()) {
													%>
													<a
														href="${pageContext.request.contextPath}/deleteReview.do?no=<%=dto.getGAME_IDX()%>&del=<%=reviewDto.getReviewDto().getRev_idx() %>">삭제</a>
													<%
														}
													%>
													<p><%=reviewDto.getReviewDto().getRev_content()%></p>
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
					</div>
				</div>



			</div>
		</div>
	</div>


	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>


	<!-- Jquery Core Js -->
	<script src="https://embed.tawk.to/5c6d4867f324050cfe342c69/default"
		charset="UTF-8"></script>
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