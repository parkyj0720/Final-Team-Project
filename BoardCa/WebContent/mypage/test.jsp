<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta name="description"
	content="Responsive Bootstrap 4 and web Application ui kit.">
<title>BoardCa Community</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css" type="text/css">    
<style>
	#menu li:hover{
		text-decoration: underline;
	}
</style>
</head>
<body>
<section class="content" style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;">
		<div class="row">
			<div>
				<img src="${pageContext.request.contextPath}/imgs/logo1.png"
					height="250em" />
			</div>
		</div>
		<div class=" col-md-12 alert alert-warning" id="menu" role="alert col-md-12"  >
			<ul
				style="list-style: none; padding: 0; margin: 0; overflow: hidden;">
				<li class="col-md-4" >안주 레시피</li>
				<li  class="col-md-4">술게임</li>
				<li style="width: 25%; float: left; text-align: center;">커뮤니티</li>
				<li style="width: 25%; float: left; text-align: center;">근처 술집</li>
			</ul>
		</div>
		<div class="body_scroll">
			<div class="block-header">
				<div class="row">
					<div class="col-lg-7 col-md-6 col-sm-12">
						<h2>Product List</h2>
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
                <div class="col-lg-6">
                    <div class="card">
                        <div class="header" align="center">
                            <h2><a href="Clist.jsp">숙취게시판</a></h2>
                        </div>
                        <div class="body" style="height: 30em">
                            
                        </div>
                    </div>                    
                    <div class="card">
                        <div class="header" align="center">
                            <h2><a href="Clist.jsp">정보공유</a></h2>
                        </div>
                        <div class="body" style="height: 30em">
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header" align="center">
                            <h2><a href="Clist.jsp">QnA</a></h2>
                        </div>
                        <div class="body" style="height: 30em">
                            
                        </div>
                    </div>                    
                    <div class="card">
                        <div class="header" align="center">
                            <h2><a href="Clist.jsp">신고하기</a></h2>
                        </div>
                        <div class="body" style="height: 30em">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>