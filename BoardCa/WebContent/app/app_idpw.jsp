<%@page import="App.AppDao"%>
<%@page import="App.AppDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%

// 카카오 로그인

request.setCharacterEncoding("UTF-8");

AppDao appDao = AppDao.getInstance();

if(request.getParameter("MEM_ID") != null){
String MEM_ID = (String) request.getParameter("MEM_ID");
String MEM_PW = (String) request.getParameter("MEM_PW");

System.out.println(MEM_ID);
System.out.println(MEM_PW);

String returns = appDao.idpw(MEM_ID, MEM_PW);
System.out.println(returns);
out.print(returns);
}

%>