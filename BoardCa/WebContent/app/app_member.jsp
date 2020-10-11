<%@page import="App.AppDao"%>
<%@page import="App.AppDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%

// 카카오 로그인

request.setCharacterEncoding("UTF-8");

AppDao appDao = AppDao.getInstance();

if(request.getParameter("id") != null){
String MEM_NICKNAME = (String) request.getParameter("nickname");
String MEM_EMAIL = (String) request.getParameter("email");
String MEM_ID = (String) request.getParameter("id");
String MEM_AGE_GROUP = (String) request.getParameter("age");
String MEM_GENDER = (String) request.getParameter("mf");

String MEM_PW = "";
String MEM_ROCAL = "";
String MEM_STATE = "";

System.out.println(MEM_NICKNAME);
System.out.println(MEM_EMAIL);
System.out.println(MEM_ID);
System.out.println(MEM_AGE_GROUP);
System.out.println(MEM_GENDER);

String returns = appDao.joindb(MEM_ID, MEM_NICKNAME, MEM_PW, MEM_EMAIL, MEM_ROCAL, MEM_STATE, MEM_GENDER, MEM_AGE_GROUP);
System.out.println(returns);
out.print(returns);
}

%>




<!-- <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(function() {
		var dto = {
			mem_nickname : MEM_NICKNAME,
			mem_email : MEM_EMAIL,
			mem_id : MEM_ID,
			mem_age_group : MEM_AGE_GROUP,
			mem_gender : MEM_GENDER,
			mem_pw : "",
			mem_rocal : "",
			mem_state : "",
			mem_mng_gwonhan : 0,
			mem_login_gwonhan : 1,
			mem_board_gwonhan : 1
		};

		$.ajax({
			url : "app_member.do",
			type : "POST",
			datatype : 'application/json',
			data : dto,
			success : function() {
				alert('게시글 작성이 완료되었습니다!');
			},
			error : function() {
				alert('실패!');
			}
		})

	})
</script> -->
