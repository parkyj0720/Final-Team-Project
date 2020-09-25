<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${Check == 1}">
<span style="color: red;">이미사용중인 닉네임 입니다.</span>
</c:if>
<c:if test="${Check == 0 }">
<span style="color: green;">사용가능한 닉네임 입니다.</span>
</c:if>
<c:if test="${Check == -1 }">
<span style="color: red;">닉네임을 입력해 주세요.</span>
</c:if>
</body>
</html>