<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="BoardUpdate" method = "POST">
		<input type = "hidden" name = "board_number" value = "${board.board_number }">
		<table>
			<tr>
				<td>게시글제목</td>
				<td><input type = "text" name = "board_title"
				value = "${board.board_title }"/></td>
			</tr>
			<tr>
				<td>게시글내용</td>
				<td><textarea name = "board_content" cols = "20" rows = "10">${board.board_content }</textarea></td>
			</tr>
			<tr>
				<td colspan = "3">
				
				<input type = "submit" value = "글수정">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>