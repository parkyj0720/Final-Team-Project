<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<head>
<title></title>
<link rel="icon" href="${pageContext.request.contextPath}/stylesheet/favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Custom Css -->
<link  rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">

</head>

<body class="theme-blush">

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="assets/images/loader.svg" width="48" height="48" alt="Aero"></div>
        <p>Please wait...</p>
    </div>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<!-- Main Search -->
<div id="search">
    <button id="close" type="button" class="close btn btn-primary btn-icon btn-icon-mini btn-round">x</button>
    <form>
        <input type="search" value="" placeholder="Search..." />
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>

<section class="content" style="margin: auto;">
    <div class="body_scroll">
        <div class="container-fluid">
            <!-- Tabs With Icon Title -->
            <div class="row clearfix">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="header">
                            <ul class="header-dropdown">
                                <li class="dropdown"> 
	                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 
	                                	<p>${userId}님 반갑습니다.</p>
	                                </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">                            
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs p-0 mb-3 nav-tabs-success" role="tablist">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home_with_icon_title"> <i class="zmdi zmdi-home"></i> HOME </a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#profile_with_icon_title"><i class="zmdi zmdi-account"></i> PROFILE </a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#messages_with_icon_title"><i class="zmdi zmdi-email"></i> MESSAGES </a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#settings_with_icon_title"><i class="zmdi zmdi-settings"></i> SETTINGS </a></li>
                            </ul>
                            
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane in active" id="home_with_icon_title"> <b>Home Content</b>
                                    <p> </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="profile_with_icon_title"> <b>Profile Content</b>
                                    <p> </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="messages_with_icon_title"> <b>Message Content</b>
                                    <p></p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="settings_with_icon_title"> <b>Settings Content</b>
                                    <p>  </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
