<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="BoardInsert" method="POST">
		<table>
			<tr>
				<td>게시글제목</td>
				<td><input type="text" name="board_title" /></td>
			</tr>
			<tr>
				<td><input type="hidden" name="user_id"
					value="${sessionScope.user_id}" /></td>
			</tr>
			<tr>
				<td>게시글내용</td>
				<td><textarea name="board_content" cols="20" rows="10"></textarea></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="글등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>