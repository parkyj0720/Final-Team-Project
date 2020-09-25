<%@page import="org.springframework.web.context.support.SpringBeanAutowiringSupport"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="java.util.List"%>
<%@page import="Member.MemberDao"%>
<%@page import="Member.MemberDto"%>
<%@page import="java.util.ArrayList"%>
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
	href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
<style>
select {
	margin-bottom: 5em;
	padding: 10px;
}
</style>
<script src="http://code.jquery.com/jquery.js"></script>
</head>
<script>
	$(function() {
		$(".clickBtn").click(function() {
			var str = ""
			var tdArr = new Array(); // 배열 선언

			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();

			// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
			console.log("클릭한 Row의 모든 데이터 : " + tr.text());

			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
			td.each(function(i) {
				tdArr.push(td.eq(i).text());
			});

			// td.eq(index)를 통해 값을 가져올 수도 있다.
			var no = td.eq(0).text();
			var date = td.eq(1).text();
			var title = td.eq(2).text();
			var reply = td.eq(3).text();

			$("#ex1_Result1").html("<p>" + tr.text() + "<p>");

		})
	});
</script>



<body class="ls-closed ls-toggle-menu ">
	<!-- header -->
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>

	<!-- body -->
	<div class="body_scroll">
		<div class="block-header">
			<div class="row">
				<div class="card">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<h2>AdminEdit</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/main.do"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/adminPage.do">admin</a></li>
							<li class="breadcrumb-item active">Edit</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row clearfix">

			<div class="col-md-12">
				<div class="d-flex">
					<div class="mobile-left">
						<a class="btn btn-info btn-icon toggle-email-nav collapsed"
							data-toggle="collapse" href="#mypage-nav" role="button"
							aria-expanded="false" aria-controls="email-nav"> <span
							class="btn-label"><i class="zmdi zmdi-account"></i></span>
						</a>
					</div>
					<div class="inbox left collapse" id="mypage-nav">
						<div class="mail-side">

							<ul class="nav">
								<li><a
									href="${pageContext.request.contextPath}/adminPage.do">
										<h5>
											<i class="zmdi zmdi-menu"></i>메뉴
										</h5>
								</a></li>
								<li><a
									href="${pageContext.request.contextPath}/adminPage.do"><i
										class="zmdi zmdi-chart"></i>통계 페이지</a></li>
								<li><a
									href="${pageContext.request.contextPath}/adminEdit.do"><i
										class="zmdi zmdi-assignment-account"></i>유저 관리</a></li>
								<li><a
									href="${pageContext.request.contextPath}/adminList.do"><i
										class="zmdi zmdi-alert-circle"></i>신고 관리</a></li>
								<li><a
									href="${pageContext.request.contextPath}/adminFAQ.do"><i
										class="zmdi zmdi-comments"></i>문의 답변</a></li>
								<li><a href="${pageContext.request.contextPath}/myFAQ.do"><i
										class="zmdi zmdi-comments"></i>FAQ 답변</a></li>

							</ul>
						</div>
					</div>

					<div class=" inbox right">
						<div class="header">
							<h2>
								<strong>유저 관리</strong>
							</h2>
						</div>

						<div class="table-responsive">
							<div id="DataTables_Table_0_wrapper"
								class="dataTables_wrapper dt-bootstrap4">

								<div class="row">
									<div class="col-sm-12">
										<table
											class="table table-bordered table-striped table-hover js-basic-example dataTable"
											id="DataTables_Table_0" role="grid"
											aria-describedby="DataTables_Table_0_info">
											<thead>
												<tr role="row">
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="No" style="width: 30px;">No</th>
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="Date" style="width: 53px;">닉네임</th>
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="Title" style="width: 30px;">관리자 권한</th>
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="reply" style="width: 30px;">로그인 권한</th>
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="reply" style="width: 30px;">게시판 권한</th>
													<th class="sorting" tabindex="0"
														aria-controls="DataTables_Table_0" rowspan="1" colspan="1"
														aria-label="reply" style="width: 60px;">가입 일자</th>

												</tr>
											</thead>

											<tbody>

											<%
											
											List<Object> list = (List<Object>)request.getAttribute("list");							
											
											for(int i=0; i<list.size();i++){
												
												MemberDto dto = (MemberDto)list.get(i);
												
																							
												if(dto.getMem_id().equals("ADMIN")){
													continue;
												}
												
												%>
												
												<tr class="clickBtn">
												
												<td><%= dto.getMem_idx()%></td>
												<td><%=dto.getMem_nickname()%></td>
												<td><%=dto.getMem_mng_gwonhan()%></td>
												<td><%=dto.getMem_login_gwonhan()%></td>
												<td><%=dto.getMem_board_gwonhan()%></td>
												<td><%=dto.getMEM_SYSDATE()%></td>
												
												</tr>
											
											<%} %>
																					
											</tbody>
											
										</table>
									</div>
								</div>
								<div class="container-fluid">
									<div class="row clearfix">
										<div class="col-lg-12">
											<div class="card">
												<div class="header">
													<h5 style="color: orange">선택한 글</h5>
												</div>
												<div class="body" id="ex1_Result1">
													<p>선택한 글이 보여집니다!</p>
												</div>
												<a href="${pageContext.request.contextPath}/myFAQ.do"
													class="btn btn-primary btn-lg bg-orange waves-effect waves-light float-right">
													1:1문의하기</a>
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
	</div>




	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
	<!-- Jquery Core Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script>
	<!-- Lib Scripts Plugin Js -->

	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-validation/jquery.validate.js"></script>
	<!-- Jquery Validation Plugin Css -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/plugins/jquery-steps/jquery.steps.js"></script>
	<!-- JQuery Steps Plugin Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script>
	<!-- Custom Js -->
	<script
		src="${pageContext.request.contextPath}/stylesheet/assets/js/pages/forms/form-validation.js"></script>
</body>
</html>