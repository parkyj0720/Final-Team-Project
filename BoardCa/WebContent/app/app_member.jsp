<%@page import="App.AppDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");
if(request.getParameter("nickname") != null){
String MEM_NICKNAME = (String) request.getParameter("nickname");
String MEM_EMAIL = (String) request.getParameter("email");
String MEM_ID = (String) request.getParameter("id");
String MEM_AGE_GROUP = (String) request.getParameter("age");
String MEM_GENDER = (String) request.getParameter("mf");

System.out.println(MEM_NICKNAME);
System.out.println(MEM_EMAIL);
System.out.println(MEM_ID);
System.out.println(MEM_AGE_GROUP);
System.out.println(MEM_GENDER);

}

if(request.getParameter("title") != null){
String title = (String) request.getParameter("title");
String text = (String) request.getParameter("text");
String community = (String) request.getParameter("community");

System.out.println(title);
System.out.println(text);
System.out.println(community);

}

Connection conn = null;
Statement stmt = null;

if(request.getParameter("nickname") != null && request.getParameter("title")==null){
	
	String MEM_NICKNAME = (String) request.getParameter("nickname");
	String MEM_EMAIL = (String) request.getParameter("email");
	String MEM_ID = (String) request.getParameter("id");
	String MEM_AGE_GROUP = (String) request.getParameter("age");
	String MEM_GENDER = (String) request.getParameter("mf");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(
		"jdbc:mysql://board-1.cqff4lw7mwyx.ap-northeast-2.rds.amazonaws.com:3306/boardCa?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
		"admin", "comstudy03");
		if (conn == null)
	throw new Exception("데이터베이스에 연결할 수 없습니다.");
		stmt = conn.createStatement();
		String command = String.format("insert into MEMBER_T " + "(MEM_ID,MEM_NICKNAME,MEM_PW,MEM_AGE_GROUP,MEM_GENDER, MEM_EMAIL,MEM_ROCAL,MEM_STATE,MEM_MNG_GWONHAN,MEM_LOGIN_GWONHAN,MEM_BOARD_GWONHAN) values ('"+MEM_ID+"','"+MEM_NICKNAME+"','','"+MEM_AGE_GROUP+"','"+MEM_GENDER+"','"+MEM_EMAIL+"','','',0,1,1);");
		int rowNum = stmt.executeUpdate(command);
		if (rowNum < 1)
	throw new Exception("데이터를 DB에 입력할 수 없습니다.");
	} finally {
		try {
	stmt.close();
		} catch (Exception ignored) {
		}
		try {
	conn.close();
		} catch (Exception ignored) {
		}
	}
}

if(request.getParameter("title") != null){
	
	String title = (String) request.getParameter("title");
	String text = (String) request.getParameter("text");
	String community = (String) request.getParameter("community");
	
	String MEM_NICKNAME = (String) request.getParameter("nickname");
	String MEM_EMAIL = (String) request.getParameter("email");
	String MEM_ID = (String) request.getParameter("id");
	String MEM_AGE_GROUP = (String) request.getParameter("age");
	String MEM_GENDER = (String) request.getParameter("mf");
	
	int CATEGORY_IDX = Integer.parseInt(community);
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(
		"jdbc:mysql://board-1.cqff4lw7mwyx.ap-northeast-2.rds.amazonaws.com:3306/boardCa?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
		"admin", "comstudy03");
		if (conn == null)
	throw new Exception("데이터베이스에 연결할 수 없습니다.");
		stmt = conn.createStatement();
		String command = String.format("insert into BOARD_T " + "(BRD_TIT,BRD_WRT_ID,BRD_VIEWS,CATEGORY_IDX,BRD_CONTENT) values ('"+title+"','"+MEM_ID+"',0,'"+CATEGORY_IDX+"','"+text+"');");
		int rowNum = stmt.executeUpdate(command);
		if (rowNum < 1)
	throw new Exception("데이터를 DB에 입력할 수 없습니다.");
	} finally {
		try {
	stmt.close();
		} catch (Exception ignored) {
		}
		try {
	conn.close();
		} catch (Exception ignored) {
		}
	}
}

%>




<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
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
