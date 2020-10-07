<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");

String MEM_NICKNAME = (String) request.getParameter("nickname");
String MEM_EMAIL = (String) request.getParameter("email");
String MEM_ID = (String) request.getParameter("id");
String MEM_AGE_GROUP = (String) request.getParameter("age");
String MEM_GENDER = (String) request.getParameter("mf");

System.out.println(MEM_NICKNAME);
%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
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
</script>

