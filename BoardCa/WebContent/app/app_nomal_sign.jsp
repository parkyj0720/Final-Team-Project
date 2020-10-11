<%@page import="App.AppDao"%>
<%@page import="App.AppDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("UTF-8");

AppDao appDao = AppDao.getInstance();

if(request.getParameter("id") != null){
String MEM_NICKNAME = (String) request.getParameter("nickname");
String MEM_EMAIL = (String) request.getParameter("email");
String MEM_ID = (String) request.getParameter("id");
String MEM_AGE_GROUP = (String) request.getParameter("age");
String MEM_GENDER = (String) request.getParameter("mf");
String MEM_PW = (String) request.getParameter("pw");
String MEM_ROCAL = (String) request.getParameter("MEM_ROCAL");
String MEM_STATE = (String) request.getParameter("MEM_STATE");

System.out.println(MEM_NICKNAME);
System.out.println(MEM_EMAIL);
System.out.println(MEM_ID);
System.out.println(MEM_AGE_GROUP);
System.out.println(MEM_GENDER);
System.out.println(MEM_PW);
System.out.println(MEM_ROCAL);
System.out.println(MEM_STATE);

String returns = appDao.joindb(MEM_ID, MEM_NICKNAME, MEM_PW, MEM_EMAIL, MEM_ROCAL, MEM_STATE, MEM_GENDER, MEM_AGE_GROUP);
System.out.println(returns);
out.print(returns);
}

%>
