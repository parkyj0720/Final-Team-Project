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
	<section class="content"
		style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;">
		<div class="row">
			<div>
				<img src="${pageContext.request.contextPath}/imgs/logo1.png"
					height="250em" />
			</div>
		</div>
		<div class="alert alert-warning" id="menu" role="alert">
			<ul
				style="list-style: none; padding: 0; margin: 0; overflow: hidden;">
				<li style="width: 25%; float: left; text-align: center;">안주 레시피</li>
				<li style="width: 25%; float: left; text-align: center;">술게임</li>
				<li style="width: 25%; float: left; text-align: center;">커뮤니티</li>
				<li style="width: 25%; float: left; text-align: center;">근처 술집</li>
			</ul>
		</div>
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>(수정예정)</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="zmdi zmdi-home"></i> BoardCa</a></li>
							<li class="breadcrumb-item">Community</li>
							<li class="breadcrumb-item active">(수정예정)</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card"">
							<div class="table-responsive" style="overflow-x: visible">
								<table
									class="table table-hover product_item_list c_table theme-color mb-0" style="width: 100%;"
									>
									<tbody>
										<tr style="box-sizing: content-box;">
											<td width="10%" height="auto" align="center" style="white-space: normal;">1</td>
											<td width="10%" height="auto" align="center" style="white-space: normal;">정태진</td>
											<td width="40%" height="auto" align="center" style="white-space: normal;">가나다라마바사아자차카타파하rrrrrrrrrrrr</td>
											<td width="10%" height="auto" align="center" style="white-space: normal;">date</td>
											<td width="10%" height="auto" align="center" style="white-space: normal;">100</td>
											<td width="10%" height="auto" align="center" style="white-space: normal;">10</td>
											<td width="10%" height="auto" align="center" style="white-space: normal;"><i
												class="zmdi zmdi-hc-fw"></i></td>
										</tr>
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
									<li class="page-item"><a class="page-link"
										href="javascript:void(0);">2</a></li>
									<li class="page-item"><a class="page-link"
										href="javascript:void(0);">3</a></li>
									<li class="page-item"><a class="page-link"
										href="javascript:void(0);">4</a></li>
									<li class="page-item"><a class="page-link"
										href="javascript:void(0);"><i
											class="zmdi zmdi-arrow-right"></i></a></li>
									<div style="width: 100%">
										<button
											class="btn btn-primary float-right right_icon_toggle_btn"
											type="button">
											<i class="zmdi zmdi-hc-fw"></i>
										</button>
									</div>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>