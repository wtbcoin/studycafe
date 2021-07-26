<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fn_insert_form(){
		location.href = "board_insert_form.do";
	}
</script>
</head>
<body>
	<hr>
		<input type = "button" value = "글쓰기" onclick="fn_insert_form()">
	<hr>
	
	<table border = "1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>등록자</th>
			<th>작성일</th>
		</tr>
		<c:forEach var = "board" items = "${boardList }">
			<tr>
			<td>${board.seq }</td>
			<td><a href = "board_detail.do?seq=${board.seq }">${board.title}</a></td>
			<td>${board.writer}</td>
			<td>${board.regdate}</td>
			</tr>
		</c:forEach>
	</table>
	<img src="logo.jpg">
</body>
</html>