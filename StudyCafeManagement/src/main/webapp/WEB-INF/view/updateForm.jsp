<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="update" method = "POST">
	<table>
		<tr>
			<td>이름</td>
			<td>이메일</td>
			<td>전화번호</td>
			<td></td>
		</tr>
		<tr>
			<td>
			<input type = "hidden" name = "id" value = "${member.id}">
			<input type = "text" name = "name" id = "name"
			value = "${member.name}"/></td>
			<td><input type = "text" name = "email" id = "email"
			value = "${member.email}"/></td>
			<td><input type = "text" name = "phone" id = "phone"
			value = "${member.phone}"/></td>
			<td><input type = "submit" value = "수정"/></td>
		</tr>
		</table>
</form>
</body>
</html>