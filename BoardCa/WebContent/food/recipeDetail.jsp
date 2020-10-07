<%@page import="Food.ReviewAndMember"%>
<%@page import="Food.ReviewDto"%>
<%@page import="java.util.List"%>
<%@page import="Member.MemberDto"%>
<%@page import="Food.CDto"%>
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
<script src="http://code.jquery.com/jquery.js"></script>

<% CDto dto = (CDto)request.getAttribute("dto");
	MemberDto mDto = null;
	if(request.getAttribute("detailCheck") != null){
		mDto = (MemberDto)request.getAttribute("detailCheck");
	}
	System.out.println(mDto);
	
	List<ReviewAndMember> reviewList = null;
	if(request.getAttribute("reviewList") != null){
		reviewList =(List<ReviewAndMember>) request.getAttribute("reviewList");
	}
	System.out.println(reviewList);
	
%>

<script>
	$('#like').text();
	var count = 0;
	$(function() {
		$('#heart').click(
				function() {
					count++;
					console.log(count)
					$('#like').html(
							'<small class="bg-orange" id="like">' + count
									+ '</small>')
				})
	});
	
	$(document).ready(function(){
		
		$('#modifyBtn').on('click',function(){
			$('#btnForm').attr('action','${pageContext.request.contextPath}/cModify.do?no='+<%=dto.getREC_IDX()%>);

			$('#btnForm').submit();
		});
		

		$('#deleteBtn').on('click',function(){
			$('#btnForm').attr('action','${pageContext.request.contextPath}/cDelete.do?no='+<%=dto.getREC_IDX()%>);
			yesno = window.confirm("정말 삭제하시겠습니까?");
			if(yesno == 1){
				$('#btnForm').submit();				
			}else{
				return false;
			}
		});
		
		$('#reviewBtn').on('click',function(){
			if($('#review_text').val() ==''){
				alert('내용을 입력해주세요.');
			}else if(<%=session.getAttribute("userIdx")%> != null){
				$('#reviewForm').submit();				
			}else{
				alert('로그인 후 이용하실 수 있습니다.');
			}
			
		});
		
		/* $(window).resize(function() {
			var detail_h = $('.r_detail').height();
			var header_h = $('.detail_header').height();
			console.log(detail_h);
			console.log(header_h);
			var mg = detail_h - header_h;
			console.log(mg);
			if(mg-37>0){
				mg = mg - 37;
				$('.detail_footer').css('margin-top', mg+'px');
			}else{
				$('.detail_footer').css('margin-top', '0px');
			}
		}); */
	});
</script>
</head>


<body class="ls-closed ls-toggle-menu ">
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>RecipeDetail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/main.do"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/cListAll.do">RecipeDetail</a></li>
						<li class="breadcrumb-item active">RecipeDetail</li>
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
								<div class="col-xl-3 col-lg-4 col-md-12">
									<img src="<%=(!dto.getREC_MAIN_IMG().equals(""))?dto.getREC_MAIN_IMG():request.getContextPath()+"/upload/"+dto.getREC_IMG_NAME() %>" width="100%">
								</div>
								<div class="col-xl-9 col-lg-8 col-md-12 r_detail" style="positon:relative;">
									<div class="product details detail_header">
										<h3 class="mb-0"><%=dto.getREC_TIT() %></h3>


										<hr>
										<p class="product-description"><%=dto.getREC_CONTENT() %></p>


									</div>
									
								</div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-lg-12">
									<div>
										<h6>레시피정보</h6>
										<hr>
										<table>
											<tr>
												<td>기준인원: </td>
												<td style="padding-left: 10px;"><%=dto.getREC_PEOPLE() %></td>
											</tr>
											<tr>
												<td>조리시간: </td>
												<td style="padding-left: 10px;"><%=dto.getREC_COOKING_TIME() %></td>
											</tr>
											<tr>
												<td>난이도: </td>
												<td style="padding-left: 10px;"><%=dto.getREC_DIFICULTY() %></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-lg-12">
									<div>
										<h6>재료</h6>
										<hr>
										<% String ingre_str = dto.getREC_INGREDIENT();
											String[] ingre_arr = ingre_str.split("&");
											boolean checkOne = true;
										%>
										<table id="ingre_list" style="margin-top: 20px;">
											<% for(int i=0;i<ingre_arr.length;i++){ 
											if(ingre_arr[i].indexOf("[") == -1){
											%>
											<tr>
												<% if(checkOne){ %>
												<td style="width: 150px;" class="ingre_info"><%=ingre_arr[i] %></td>
												<% checkOne = false;
													i++;}
												if(!checkOne && i < ingre_arr.length){ %>
												<td><%=ingre_arr[i] %></td>
												<% checkOne = true;} %>
											</tr>
											<% }
											} %>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="body">
							<div class="row">
								<div class="col-lg-12">
									<div>
										<h6>조리순서</h6>
										<hr>
										<% String order_str = dto.getREC_COOKING_METHOD();
											String[] order_arr = order_str.split("&");
											int cnt = 1;
										%>
										<table>
											<% for(int i=0;i<order_arr.length;i++){ %>
											<tr>
												<td style="padding-left: 20px;"><%=cnt %></td>
												<td style="padding-left: 100px;"><%=order_arr[i] %></td>
												<% i++; %>
												<% if(i < order_arr.length || order_arr[i].indexOf("jpg") != -1 || order_arr[i].indexOf("png") != -1 || order_arr[i].indexOf("gif") != -1){ %>
												<td style="padding-left: 150px; padding-bottom:20px; width:400px; height:200px;">
												<img src="<%=(order_arr[i].indexOf("http") != -1)?order_arr[i]:request.getContextPath()+"/upload/"+order_arr[i]%>"></td>
												<% } %>
											</tr>
											<% cnt++;} %>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<form action="" method="post" id="btnForm" style="margin-top:-10px; padding-left: 15px; padding-right:15px; padding-bottom:15px; visibility: <%=(mDto != null && mDto.getMem_mng_gwonhan() == 1)?"visible":"hidden"%>;">
			<!-- <button type="button" id="modifyBtn">글 수정</button> -->
			<button type="button" id="deleteBtn">글 삭제</button>
		</form>

		<div class="container-fluid">
			<div class="row clearfix">
				<div class="col-lg-12">
					<div class="card">


						<div class="body">
							<form id="reviewForm" class="row comment-form mt-2" action="reviewInsert.do" method="post">
								<div class="col-xl-12 col-lg-12	col-md-12">
									<div class="form-group">
										<textarea rows="4" class="form-control no-resize"
											placeholder="한줄평 입력" name="review_text" id="review_text"></textarea>
									</div>
									<button id="reviewBtn" type="button" class="btn btn btn-primary">한줄평 등록</button>
									<input type="text" value="<%=dto.getREC_IDX() %>" name="no" style="visibility: hidden;">
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
									<strong>한줄평</strong> (<%=reviewList.size() %>)
								</h5>
							</div>
							<div class="col-xl-12 col-lg-12	col-md-12">
								<ul class="comment-reply " style="padding: 5px;">
								<% for(int i=0;i<reviewList.size();i++){
									ReviewAndMember reviewDto = reviewList.get(i);
								%>
									<hr>
									<li>
										<div class="text-box " style="width: auto;">
											<h5 style="display:inline-block;"><%=reviewDto.getMemberDto().getMem_nickname() %></h5><span style="margin-left:10px;" class="comment-date">작성 <%=reviewDto.getReviewDto().getRev_sysdate() %></span>
											<%if(session.getAttribute("userIdx")!=null && Integer.parseInt(session.getAttribute("userIdx")+"") == reviewDto.getReviewDto().getMem_idx()){ %>
											<a href="${pageContext.request.contextPath}/deleteReview.do?no=<%=dto.getREC_IDX()%>&del=<%=reviewDto.getReviewDto().getRev_idx() %>">삭제</a>
											<%} %>
											<p><%=reviewDto.getReviewDto().getRev_content() %></p>
										</div>
									</li>
								<% } %>
								</ul>
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