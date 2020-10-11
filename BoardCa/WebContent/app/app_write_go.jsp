<%@page import="App.AppDao"%>
<%@page import="App.AppDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("UTF-8");

AppDao appDao = AppDao.getInstance();

if(request.getParameter("BRD_TIT") != null){
String BRD_TIT = (String) request.getParameter("BRD_TIT");
String BRD_CONTENT = (String) request.getParameter("BRD_CONTENT");
String CATEGORY_IDX = (String) request.getParameter("CATEGORY_IDX");
String BRD_WRT_NICKNAME = (String) request.getParameter("nickname");

System.out.println(BRD_TIT);
System.out.println(BRD_CONTENT);
System.out.println(CATEGORY_IDX);
System.out.println(BRD_WRT_NICKNAME);

String returns = appDao.writeDb(BRD_TIT, BRD_CONTENT, CATEGORY_IDX, BRD_WRT_NICKNAME);
System.out.println(returns);
out.print(returns);
}

%>