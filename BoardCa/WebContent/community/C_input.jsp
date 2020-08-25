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
<%-- <jsp:include page="/WEB-INF/header.jsp"/> --%>
	<section class="content blog-page"
		style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;">
		<div class="body_scroll">
			<div class="block-header">
				<div class="col-lg-7 col-md-6 col-sm-12">
					<h2>글쓰기</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html"><i
								class="zmdi zmdi-home"></i> BoardCa</a></li>
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/Community_main.do">Community</a></li>
						<li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/Community_list">(수정예정)</a></li>
						<li class="breadcrumb-item active">글올리기</li>
					</ul>
					<button class="btn btn-primary btn-icon mobile_menu" type="button">
						<i class="zmdi zmdi-sort-amount-desc"></i>
					</button>
				</div>
				<div class="col-lg-5 col-md-6 col-sm-12"></div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="body">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="제목" id="title" />
								</div>
								<select class="form-control show-tick">
									<option>Select Option</option>
									<option>숙취 게시판</option>
									<option>정보공유</option>
									<option>QnA</option>
									<option>신고하기</option>
								</select>
							</div>
						</div>
						<div class="card">
							<div class="body">
								<div class="summernote">
									<textarea name="ourtext" class="form-control" rows=30 id="content"></textarea>
								</div>
								<button type="button" class="btn btn-info waves-effect m-t-20" id="submit">글올리기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%-- <jsp:include page="/WEB-INF/footer.jsp"/> --%>
	<script>
		var submit = document.getElementById("submit");
		var title = document.getElementById("title");
		var content = document.getElementById("content");
		
		submit.onclick = function(){
			
		}
	</script>
</body>
</html>