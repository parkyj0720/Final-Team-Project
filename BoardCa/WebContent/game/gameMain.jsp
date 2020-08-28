<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title></title>
<link rel="icon" href="/BoardCa/stylesheet/favicon.ico"
	type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet"
	href="/BoardCa/stylesheet/assets/css/style.min.css">

<script src="http://code.jquery.com/jquery.js"></script>

<style>
</style>
</head>

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
	})
</script>


<body class="ls-closed ls-toggle-menu ">
	<jsp:include page="/WEB-INF/header.jsp"></jsp:include>


	<!-- body -->

	<div class="col-xl-12 col-lg-12 col-md-12">
		<div class="row clearfix">
			<div class="col-md-3 col-sm-12">
				<div class="card">
					<div class="body">
						<a> <img class="img-fluid img-thumbnail"
							src="${pageContext.request.contextPath}/mypage/imgs/01.jpg"
							alt="">
						</a>
						<h5 class="mt-3">Arrowlite - Responsive Admin Dashboard
							Template</h5>
						<p>Arrowlite, a next generation modern and clean Bootstrap 4x
							dashboard and admin template using flat, modern and minimal
							design.</p>
						<div class="d-flex justify-content-between">
							<a
								href="https://themeforest.net/item/arrowlite-responsive-admin-dashboard-template/23656497"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/arrowlite-responsive-admin-dashboard-template/23656497"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/lucid-angular-7-admin-template/23294743">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/lucid-angular.png"
							alt="">
						</a>
						<h5 class="mt-3">Lucid - Angular 8 Admin Template</h5>
						<p>Lucid Angular Admin Template is a popular open source
							WebApp Angular template for Angular admin dashboards and admin
							panels.</p>
						<div class="d-flex justify-content-between">
							<a
								href="https://themeforest.net/item/lucid-angular-7-admin-template/23294743"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/lucid-angular-7-admin-template/23294743"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/compass-the-ultimate-bootstrap-4-admin-dashboard/21202530">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/compass.png"
							alt="">
						</a>
						<h5 class="mt-3">Compass Bundle -Bootstrap 4 Admin for
							Hospital RealEstate eCommerce</h5>
						<p>Compass Admin is Material Design premium admin dashboard
							theme. It’s builded on popular Twitter Bootstrap4 framework.</p>
						<div class="d-flex justify-content-between">
							<a href="http://www.wrraptheme.com/templates/compass/marketing/"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/compass-the-ultimate-bootstrap-4-admin-dashboard/21202530"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/lucid-hospital-powerful-bootstrap-4-hospital-admin-template/22397928">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/lucid-hospital.png"
							alt="">
						</a>
						<h5 class="mt-3">Lucid - Hospital Management Admin Dashboard
							Template</h5>
						<p>It is really appropriate template for Doctors, Dentists,
							Hospitals, Health clinics, Surgeons and medical organization.</p>
						<div class="d-flex justify-content-between">
							<a
								href="http://www.wrraptheme.com/templates/lucid/hospital/marketing/"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/lucid-hospital-powerful-bootstrap-4-hospital-admin-template/22397928"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
			</div>


			<div class="col-md-3 col-sm-12">
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/nexa-bootstrap4-material-design-premium-admin-dashboard/21122489">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/nexa.png"
							alt="">
						</a>
						<h5 class="mt-3">Nexa - Bootstrap4 Material Design Premium
							Admin Dashboard</h5>
						<p>Nexa Admin is Material Design premium admin dashboard
							theme. It’s builded on popular Twitter Bootstrap 4 framework.</p>
						<div class="d-flex justify-content-between">
							<a href="http://www.wrraptheme.com/templates/nexa/marketing/"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/nexa-bootstrap4-material-design-premium-admin-dashboard/21122489"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/hexabit.png"
							alt="">
						</a>
						<h5 class="mt-3">HexaBit - Bootstrap 4x Admin Template ui kit</h5>
						<p>Easy and elegant interface which gives you an outstanding
							experience. Take a stab at HexaBit demos and find it out by
							yourself.</p>
						<div class="d-flex justify-content-between">
							<a
								href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/lucid-hr.png"
							alt="">
						</a>
						<h5 class="mt-3">Lucid - HR and Project Management Admin
							Template</h5>
						<p>It comes with extensive profiles for candidates, agents,
							teams of agents, jobs, professionals &amp; companies.</p>
						<div class="d-flex justify-content-between">
							<a
								href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/square-the-ultimate-bootstrap-4-angular-5-admin-dashboard-ui-kit/21322297">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/square.png"
							alt="">
						</a>
						<h5 class="mt-3">sQuare - Bootstrap 4 Admin Dashboard
							Template</h5>
						<p>sQuare Admin is Material Design premium admin dashboard
							theme. It’s builded on popular Twitter Bootstrap4 framework.</p>
						<div class="d-flex justify-content-between">
							<a href="http://www.wrraptheme.com/templates/square/landing/"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/square-the-ultimate-bootstrap-4-angular-5-admin-dashboard-ui-kit/21322297"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-12">
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/nexa-bootstrap4-material-design-premium-admin-dashboard/21122489">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/nexa.png"
							alt="">
						</a>
						<h5 class="mt-3">Nexa - Bootstrap4 Material Design Premium
							Admin Dashboard</h5>
						<p>Nexa Admin is Material Design premium admin dashboard
							theme. It’s builded on popular Twitter Bootstrap 4 framework.</p>
						<div class="d-flex justify-content-between">
							<a href="http://www.wrraptheme.com/templates/nexa/marketing/"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/nexa-bootstrap4-material-design-premium-admin-dashboard/21122489"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/hexabit.png"
							alt="">
						</a>
						<h5 class="mt-3">HexaBit - Bootstrap 4x Admin Template ui kit</h5>
						<p>Easy and elegant interface which gives you an outstanding
							experience. Take a stab at HexaBit demos and find it out by
							yourself.</p>
						<div class="d-flex justify-content-between">
							<a
								href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/lucid-hr.png"
							alt="">
						</a>
						<h5 class="mt-3">Lucid - HR and Project Management Admin
							Template</h5>
						<p>It comes with extensive profiles for candidates, agents,
							teams of agents, jobs, professionals &amp; companies.</p>
						<div class="d-flex justify-content-between">
							<a
								href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/square-the-ultimate-bootstrap-4-angular-5-admin-dashboard-ui-kit/21322297">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/square.png"
							alt="">
						</a>
						<h5 class="mt-3">sQuare - Bootstrap 4 Admin Dashboard
							Template</h5>
						<p>sQuare Admin is Material Design premium admin dashboard
							theme. It’s builded on popular Twitter Bootstrap4 framework.</p>
						<div class="d-flex justify-content-between">
							<a href="http://www.wrraptheme.com/templates/square/landing/"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/square-the-ultimate-bootstrap-4-angular-5-admin-dashboard-ui-kit/21322297"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-12">
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/nexa-bootstrap4-material-design-premium-admin-dashboard/21122489">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/nexa.png"
							alt="">
						</a>
						<h5 class="mt-3">Nexa - Bootstrap4 Material Design Premium
							Admin Dashboard</h5>
						<p>Nexa Admin is Material Design premium admin dashboard
							theme. It’s builded on popular Twitter Bootstrap 4 framework.</p>
						<div class="d-flex justify-content-between">
							<a href="http://www.wrraptheme.com/templates/nexa/marketing/"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/nexa-bootstrap4-material-design-premium-admin-dashboard/21122489"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/hexabit.png"
							alt="">
						</a>
						<h5 class="mt-3">HexaBit - Bootstrap 4x Admin Template ui kit</h5>
						<p>Easy and elegant interface which gives you an outstanding
							experience. Take a stab at HexaBit demos and find it out by
							yourself.</p>
						<div class="d-flex justify-content-between">
							<a
								href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/hexabit-bootstrap-4x-admin-template-ui-kit/22611789"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/lucid-hr.png"
							alt="">
						</a>
						<h5 class="mt-3">Lucid - HR and Project Management Admin
							Template</h5>
						<p>It comes with extensive profiles for candidates, agents,
							teams of agents, jobs, professionals &amp; companies.</p>
						<div class="d-flex justify-content-between">
							<a
								href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/lucid-hr-and-project-management-admin-template/22308861"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="body">
						<a
							href="https://themeforest.net/item/square-the-ultimate-bootstrap-4-angular-5-admin-dashboard-ui-kit/21322297">
							<img class="img-fluid img-thumbnail"
							src="http://www.wrraptheme.com//templates/preview/square.png"
							alt="">
						</a>
						<h5 class="mt-3">sQuare - Bootstrap 4 Admin Dashboard
							Template</h5>
						<p>sQuare Admin is Material Design premium admin dashboard
							theme. It’s builded on popular Twitter Bootstrap4 framework.</p>
						<div class="d-flex justify-content-between">
							<a href="http://www.wrraptheme.com/templates/square/landing/"
								class="btn btn-info">Preview</a> <a
								href="https://themeforest.net/item/square-the-ultimate-bootstrap-4-angular-5-admin-dashboard-ui-kit/21322297"
								class="btn btn-danger">Download Now</a>
						</div>
					</div>
				</div>
			</div>
			<ul class="pagination pagination-primary">
				<li class="page-item active"><a class="page-link"
					href="javascript:void(0);">1</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0);">2</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0);">3</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0);">4</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0);">5</a></li>
			</ul>
		</div>
	</div>

	<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>
	<!-- Jquery Core Js -->
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