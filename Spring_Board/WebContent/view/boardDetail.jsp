<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function fn_list(){
		location.href = "board_list.do";
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
			<td>${board.seq }</td>
			<td><a href = "board_detail.do?seq=${board.seq }">${board.title}</a></td>
			<td>${board.writer}</td>
			<td>${board.regdate}</td>
		</tr>
		<tr>
			<td colspan = "4">
				${board.content }
			</td>
		</tr>
		<tr>
			<td colspan = "4">
				<a href = "board_updateForm.do?seq=${board.seq}">글수정</a>
				<a href = "board_delete.do?seq=${board.seq}">글삭제</a>
			</td>
		</tr>
		    
	</table>
</body>
</html>