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
<c:if test="${pwCheck == 1}">
<span style="color: green;">비밀번호가 일치합니다.</span>
</c:if>
<c:if test="${pwCheck == 0 }">
<span style="color: red;">비밀번호를 확인해주세요.</span>
</c:if>
<c:if test="${pwCheck == -1 }">
<span style="color: red;">비밀번호를 입력해 주세요.</span>
</c:if>
</body>
</html>