<%@page import="CommunityModel.BoardList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js " lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>Boardca_Community</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/plugins/summernote/dist/summernote.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/plugins/bootstrap-select/css/bootstrap-select.css" />
<!-- Custom Css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/assets/css/style.min.css">
</head>
<body class="theme-blush">
	<%
		ArrayList<BoardList> boardList = (ArrayList<BoardList>) request.getAttribute("boardList");
	%>
<script src="http://code.jquery.com/jquery.js"></script>

	<jsp:include page="/WEB-INF/header.jsp" />
    <div class="body_scroll">
        <div class="block-header">
			<div class="col-lg-7 col-md-6 col-sm-12">
				<h2>글쓰기</h2>
				<ul class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html"><i
							class="zmdi zmdi-home"></i> BoardCa</a></li>
					<li class="breadcrumb-item"><a
						href="${pageContext.request.contextPath}/Community_main.do">Community</a></li>
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
                                <input type="text" class="form-control" id="title" placeholder="제목을 입력해주세요" maxlength="133"/>
                            </div>
							<select class="form-control show-tick" id="select">
								<option>게시판을 선택해주세요.</option>
								<%
									for (int i = 0; i < boardList.size(); i++) {
								%>
								<option><%=boardList.get(i).getBoard_name()%></option>
								<%
									} // end of for
								%>
							</select>
						</div>
                    </div>
                    <div class="card">
                        <div class="body">
                            <div class="summernote" id="content">
                            </div>
                            <button type="button" id="submit" class="btn btn-info waves-effect m-t-20">전송</button>
                        </div>
                    </div>
                </div>            
            </div>
        </div>
    </div>
    	<jsp:include page="/WEB-INF/footer.jsp" />

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
      $( document ).ready( function() {
    	  $('#submit').click(function() {
    		  var select = $('#select').val();
    		  var title = $('#title').val();
    		  var username = "${userId}";
    		  var content = $( '.note-editable' ).html();
    		  var title_trim = $.trim($("#title").val());
    		  var content_sub;
    		  

    		  
    		  if(select == "게시판을 선택해주세요."){
    			  alert("게시판을 선택해주세요")
    		  }else{
    			  if(title == "" || title_trim == ""){
    				  alert("제목을 입력해주세요")  
    			  }
    			  else{
    				  
    		  	        console.log( "SELECT= " + select );
    		  	        console.log( "TITLE= " + title );
    		  	        console.log( "USER= " + username );
    		  	        console.log( "HTML= " + content );
    		  	        	
    		  	        
 					var dto = {
							title: title,
							community: select,
							username: username,
							content: content
							};
					
					$.ajax({
						url: "Community_inputContent.do",
						type: "POST",
						datatype: 'application/json',
						data: dto
					})
    			  }
    		  }
  		  
		});
      } );
    </script>
	

	<!-- Jquery Core Js --> 
<script src="${pageContext.request.contextPath}/stylesheet/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="${pageContext.request.contextPath}/stylesheet/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="${pageContext.request.contextPath}/stylesheet/assets/plugins/dropzone/dropzone.js"></script> <!-- Dropzone Plugin Js --> 

<script src="${pageContext.request.contextPath}/stylesheet/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="${pageContext.request.contextPath}/stylesheet/assets/plugins/summernote/dist/summernote.js"></script>
</body>
</html>