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
	function remove_list(item){
		$(item).parent().parent().remove();
	}
	$(document).ready(function() {
		var $main_img = $('#main_img');
		var flex_check = $('.flex_check');
		
		var r_detail_h = $('.r_detail').height() - 110;
		if($main_img.width() >= 350){
			r_detail_h = $('.r_detail').height() - $main_img.height();
		}
		$('#content_area').css('height',r_detail_h+'px');
		
		$(window).resize(function(){
			console.log(flex_check.css('flex'));
			r_detail_h = $('.r_detail').height() - 110;
			console.log($('#content_area').val());
			/* if($main_img.width() >= 350){
				r_detail_h = 300;
			} */
			if(flex_check.css('flex') == '0 0 100%' || flex_check.css('flex') == '0 1 auto'){
				r_detail_h = 300;
			}
			$('#content_area').css('height',r_detail_h+'px');
		});
		
		
		
		$('#ingre_addBtn').on('click',function(){
			var ingre = $('#ingre_text').val();
			if(ingre == '')
			{
				alert('재료를 입력해 주세요.');
				return;
			}
			
			
			var tag = '<tr><td style="width: 150px;">'+ingre+'</td><td>수량: <input type="text" size="10"></td>';
			tag += '<td><button type="button" onclick="remove_list(this)">삭제</button></td></tr>';
			$('#ingre_list').append(tag);
			
			$('#ingre_text').val('');
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
		<form action="" method="post">
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card">
							<div class="body">
								<div class="row r_detail">
									<div class="col-xl-3 col-lg-4 col-md-12 flex_check">
										<img id="main_img" src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/25/0fbfab533f6ade9b81906d52a91585551.jpg" style="width:100%; height:100%">
									</div>
									<div class="col-xl-9 col-lg-8 col-md-12">
										<div class="product details detail_header">
											제목 <input type="text" style="width:100%;" value="초간단 맥주안주:모짜렐라치즈없이 콘치즈만들기">
	
											<hr>
											음식 설명 <textarea id="content_area" style="width:100%; height:200px; resize:none;">맥주는 먹고 싶고 안주는 없어서 간단히 만들어봤어요.</textarea>
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
											<p>
											기준인원: <input type="text" value="1" size="5" dir="rtl"> 인분<br>
											조리시간: <input type="text" value="10" size="5" dir="rtl"> 분<br>
											난이도: <input type="text" value="쉬움" style="margin-left:14px" size="5" dir="rtl">
											</p>
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
											<input id="ingre_text" type="text" placeholder="재료이름"><button id="ingre_addBtn" type="button">재료추가</button>
											<table id="ingre_list" style="margin-top: 20px;">
												<!-- 재료 추가 부분 -->
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
											<p>조리순서 ~~~~</p>
										</div>
									</div>
								</div>
							</div>
						</div>
	
					</div>
				</div>
			</div>
		</form>




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