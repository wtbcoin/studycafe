<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function fn_list(){
		location.href = "NoticeList?user_id=${sessionScope.user_id}";
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
		    
	</table>
			<br><a href="/StudyCafeManagement/common/LoginMain">메인화면</a>
	
</body>
</html>