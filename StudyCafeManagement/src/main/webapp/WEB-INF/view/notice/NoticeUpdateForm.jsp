<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="NoticeUpdate?user_id=${sessionScope.user_id }" method = "POST">
		<input type = "hidden" name = "notice_number" value = "${notice.notice_number }">
		<table>
			<tr>
				<td>게시글제목</td>
				<td><input type = "text" name = "notice_title"
				value = "${notice.notice_title }"/></td>
			</tr>
			<tr>
				<td>게시글내용</td>
				<td><textarea name = "notice_content" cols = "20" rows = "10">${notice.notice_content }</textarea></td>
			</tr>
			<tr>
				<td colspan = "3">
				
				<input type = "submit" value = "글수정">
				</td>
			</tr>
		</table>
	</form>
		<br><a href="NoticeDetail?notice_number=${notice.notice_number }&user_id=${sessionScope.user_id}">이전</a>
</body>
</html>