<%@page import="App.AppDao"%>
<%@page import="App.AppDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("UTF-8");

AppDao appDao = AppDao.getInstance();

if(request.getParameter("id") != null){
String MEM_ID = (String) request.getParameter("id");
String MEM_NICKNAME = (String) request.getParameter("nickname");

System.out.println(MEM_NICKNAME);
System.out.println(MEM_ID);

String returns = appDao.appSign(MEM_NICKNAME,MEM_ID);
System.out.println(returns);
out.print(returns);
}

%>