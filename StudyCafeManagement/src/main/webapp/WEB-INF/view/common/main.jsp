<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test = "${sessionScope.user_id == null }">
		<a href="${path}/StudyCafeManagement/common/LoginMain">로그인</a>
	</c:when>
	<c:otherwise>
		${sessionScope.user_name}님이 로그인중입니다.
		<a href="${path}/StudyCafeManagement/common/logout">로그아웃</a>
		<h2>${sessionScope.user_name}(${sessionScope.user_id})님 환영합니다.</h2>
	</c:otherwise>
</c:choose>

</body>
</html>