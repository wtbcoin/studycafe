<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fn_insert_form(){
		location.href = "NoticeInsert";
	}
</script>
</head>
<body>
	<hr>
	<a href="BoardList">게시판</a><br>
	<form action="BoardSearch" method="POST">
		<select name="search_option">
			<option value="board_title">제목</option>
			<option value="board_user_id">글쓴이</option>
		</select> <input type="text" name="keyword"> <input type="submit"
			value="검색">
	<hr>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>작성일</th>
			<th>조회수</th>

		</tr>
		<c:forEach var="notice" items="${noticeSearchList }">
			<tr>
				<td>${notice.notice_number }</td>
				<td><a href="BoardDetail?notice_number=${notice.notice_number }">${notice.notice_title}</a></td>
				<td>${notice.user_id}</td>
				<td>${notice.notice_time}</td>
				<td>${notice.notice_readcount}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<input type="button" value="글쓰기" onclick="fn_insert_form()">

</body>
</html>