<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="board_update_action.do" method = "POST">
		<input type = "hidden" name = "seq" value = "${board.seq }">
		<table>
			<tr>
				<td>게시글제목</td>
				<td><input type = "text" name = "title"
				value = "${board.title }"/></td>
			</tr>
			<tr>
				<td>게시글작성자</td>
				<td><input type = "text" name = "writer"
				value = "${board.writer }"/></td>
			</tr>
			<tr>
				<td>게시글내용</td>
				<td><textarea name = "content" cols = "20" rows = "10">${board.content }</textarea></td>
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