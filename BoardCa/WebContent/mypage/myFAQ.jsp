<%@page import="CommunityModel.BoardList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>:: BoardCa :: MYFAQ</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">

<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<!--  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/sweetalert/sweetalert.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap-select/css/bootstrap-select.css">
<script src="http://code.jquery.com/jquery.js"></script>

</head>
<body class="ls-closed ls-toggle-menu ">
	<%
		ArrayList<BoardList> boardList = (ArrayList<BoardList>) request.getAttribute("write");
	%>
	<!-- header -->
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>
	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row clearfix js-sweetalert">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>myFAQ</h2>

						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/main/main.jsp"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/myPage.do">myPage</a></li>
							<li class="breadcrumb-item active">FAQ</li>

						</ul>
					</div>
				</div>

				<div class="container-fluid">
					<div class="row clearfix">

						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="d-flex">
								<div class="mobile-left">
									<a class="btn btn-info btn-icon toggle-email-nav collapsed"
										data-toggle="collapse" href="#mypage-nav" role="button"
										aria-expanded="false" aria-controls="email-nav"> <span
										class="btn-label"><i class="zmdi zmdi-account"></i></span>
									</a>
								</div>
								<div class="inbox left collapse" id="mypage-nav" style="">
									<div class="mail-side">
										<a href="${pageContext.request.contextPath}/myPage.do"><h5>MYPAGE</h5></a>
										<ul class="nav">
											<li><a
												href="${pageContext.request.contextPath}/myPageEdit.do"><i
													class="zmdi zmdi-edit"></i>Edit</a></li>
											<li><a
												href="${pageContext.request.contextPath}/myWriteList.do"><i
													class="zmdi zmdi-file"></i>Writted</a></li>
											<li><a
												href="${pageContext.request.contextPath}/myFAQ.do"><i
													class="zmdi zmdi-comments"></i>FAQ</a></li>
											<li><a
												href="${pageContext.request.contextPath}/myFavorite.do"><i
													class="zmdi zmdi-favorite"></i>Favorite</a></li>
											<li><a
												href="${pageContext.request.contextPath}/mySaved.do"><i
													class="zmdi zmdi-folder-star"></i>Saved</a></li>


										</ul>
									</div>
								</div>
								<div class="col-lg-11 col-md-12 col-sm-11 inbox right">
									<div class="card">
										<div class="body">
											<div class="form-group">
												<input type="text" class="form-control" id="title"
													placeholder="제목을 입력해주세요" maxlength="200" />
											</div>
											<select class="form-control show-tick" id="select">
												<option>게시판을 선택해주세요.</option>
												<%
													for (int i = 0; i < boardList.size(); i++) {
												%>
												<option><%=boardList.get(i).getCAT_NAME()%></option>
												<%
													} // end of for
												%>
											</select>
										</div>
									</div>
									<div class="card">
										<div class="body">
											<div class="summernote" id="content"></div>
											<button type="button" id="submit"
												class="btn btn-info waves-effect m-t-20">전송</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	  $( document ).ready( function() {
    	  $('#submit').click(function() {
    		  var select = $('#select').val(); // 게시판
    		  var title = $('#title').val(); // 제목
    		  var username = "${userId}"; // 작성자 아이디
    		  var content = $( '.note-editable' ).html(); // 내용
    		  var title_trim = $.trim($("#title").val());
    		  var content_sub;
    		  var boardnum;
  			<%for (int i = 0; i < boardList.size(); i++) {%>
  				if((select)=="<%=boardList.get(i).getCAT_NAME()%>"){
  					boardnum=<%=boardList.get(i).getBRD_CAT_IDX()%>
  					console.log(boardnum)
  				}
  				<%}%>
    		  
    		  if(select == "게시판을 선택해주세요."){
    	 		  alert("게시판을 선택해주세요")
    		  }else{
    			  if(title == "" || title_trim == ""){
    				  alert("제목을 입력해주세요")  
    			  }
    			  else{
 					var dto = {
 							BRD_TIT: title,
 							CATEGORY_IDX: boardnum,
 							BRD_WRT_ID: username,
 							BRD_CONTENT: content
							};
					
					$.ajax({
						url: "myPageFaQinsert.do",
						type: "POST",
						datatype: 'application/json',
						data: dto,
						success: function() {
							alert('게시글 작성이 완료되었습니다!');
							// 게시글 작성후 해당 리스트로
							$(location).attr('href', '${pageContext.request.contextPath}/myPage.do');
						}
					})

    		  }
    			
		};
      })
      });
	</script>


	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>


	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/summernote/dist/summernote.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>


</body>
</html>