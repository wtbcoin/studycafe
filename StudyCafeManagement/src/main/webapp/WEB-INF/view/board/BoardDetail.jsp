<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function fn_list(){
		location.href = "BoardList";
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
			<td>${board.board_number }</td>
			<td>${board.board_title}</td>
			<td>${board.user_id}</td>
			<td>${board.board_time}</td>
		</tr>
		<tr>
			<td colspan = "4">
				${board.board_content }
			</td>
		</tr>
		<tr>
			<td colspan = "4">
				<a href = "BoardUpdate?board_number=${board.board_number}">글수정</a>
				<a href = "BoardDelete?board_number=${board.board_number}">글삭제</a>
			</td>
		</tr>
		    
	</table>
			<br><a href="/StudyCafeManagement/common/LoginMain">메인화면</a>
</body>
</html>