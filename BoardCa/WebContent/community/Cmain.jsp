<%@page import="CommunityModel.CommunityDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.xml.ws.Response"%>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<%
	ArrayList<CommunityDto> list1 = (ArrayList<CommunityDto>)request.getAttribute("list1");
	ArrayList<CommunityDto> list2 = (ArrayList<CommunityDto>)request.getAttribute("list2");
	ArrayList<CommunityDto> list3 = (ArrayList<CommunityDto>)request.getAttribute("list3");
	ArrayList<CommunityDto> list4 = (ArrayList<CommunityDto>)request.getAttribute("list4");
	
%>
<section class="content" style="margin-left: auto; margin-right: auto; padding-left: 10%; padding-right: 10%;">
		<div class="row">
			<div>
				<img src="${pageContext.request.contextPath}/imgs/logo1.png"
					height="250em" />
			</div>
		</div>
		<div class="alert alert-warning" id="menu" role="alert" >
			<ul
				style="list-style: none; padding: 0; margin: 0; overflow: hidden;">
				<li style="width: 25%; float: left; text-align: center;">안주 레시피</li>
				<li style="width: 25%; float: left; text-align: center;">술게임</li>
				<li style="width: 25%; float: left; text-align: center;"><a href="<%=request.getContextPath()%>/Community?action=C_main">커뮤니티</a></li>
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
						</ul>
					</div>
				</div>
			</div>
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="header" align="center">
                            <h2>숙취게시판</h2>
                        </div>
                        <div class="body" style="height: 30em">
                            <table>
                            	<tr>
                            	<% for(int i=0; i<list1.size(); i++){ %>
                            		<td><%=list1.get(i).getCommunity_num() %></td>
                            		<% } %>
                            	</tr>
                            </table>
                        </div>
                    </div>                    
                    <div class="card">
                        <div class="header" align="center">
                            <h2>정보공유</h2>
                        </div>
                        <div class="body" style="height: 30em">
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="header" align="center">
                            <h2>QnA</h2>
                        </div>
                        <div class="body" style="height: 30em">
                            
                        </div>
                    </div>                    
                    <div class="card">
                        <div class="header" align="center">
                            <h2>신고하기</h2>
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