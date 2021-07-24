<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function fn_list(){
		location.href = "NoticeList";
	}
</script>
</head>
<body>
	<hr>
		<input type = "button" value = "글목록보기" onclick = "fn_list()"/>
	<hr>
	<table border = "1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>등록자</th>
			<th>작성일</th>
		</tr>
		<tr>
			<td>${notice.notice_number }</td>
			<td>${notice.notice_title}</td>
			<td>${notice.user_id}</td>
			<td>${notice.notice_time}</td>
		</tr>
		<tr>
			<td colspan = "4">
				${notice.notice_content }
			</td>
		</tr>
		<tr>
			<td colspan = "4">
				<a href = "NoticeUpdate?notice_number=${notice.notice_number}">글수정</a>
				<a href = "NoticeDelete?notice_number=${notice.notice_number}">글삭제</a>
			</td>
		</tr>
		    
	</table>
</body>
</html>