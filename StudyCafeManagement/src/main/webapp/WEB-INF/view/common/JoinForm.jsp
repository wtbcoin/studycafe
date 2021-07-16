<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	function gotoJoin(){
		location.href = "join";
	}
	function gotoFindId(){
		location.href = "back";
	}
</script>
</head>
<body>
	<form method="POST">
		<!-- 아이디 -->
		<div class="form-group">
			<label for="user_id">아이디</label> <input type="text"
				class="form-control" id="user_id" name="user_id" placeholder="ID"
				required>
			<div class="check_font" id="id_check"></div>
		</div>
		<!-- 비밀번호 -->
		<div class="form-group">
			<label for="user_pw">비밀번호</label> <input type="password"
				class="form-control" id="user_pw" name="user_pw"
				placeholder="PASSWORD" required>
			<div class="check_font" id="pw_check"></div>
		</div>
		<!-- 비밀번호 재확인 -->
		<div class="form-group">
			<label for="user_checkpw">비밀번호 확인</label>
			<inpt type="password" class="form-control" id="user_checkpw"
				name="user_checkpw" placeholder="Confirm Password" required>
			<div class="check_font" id="user_checkpw"></div>
		</div>
		<!-- 이름 -->
		<div class="form-group">
			<label for="user_name">이름</label> <input type="text"
				class="form-control" id="user_name" name="user_name"
				placeholder="Name" required>
			<div class="check_font" id="name_check"></div>
		</div>
		<!-- 생년월일 -->
		<div class="form-group required">
			<label for="user_birth">생년월일</label> <input type="text"
				class="form-control" id="user_birth" name="user_birth"
				placeholder="ex) 19980203" required>
			<div class="check_font" id="birth_check"></div>
		</div>
		<div class="form-group">
			<label for="user_email">이메일</label> <input type="text"
				class="form-control" name="user_email" id="user_email"
				placeholder="E-mail" required>
			<div class="check_font" id="email_check"></div>
		</div>
		<!-- 휴대전화 -->
		<div class="form-group">
			<label for="user_phone">휴대전화 ('-' 없이 번호만 입력해주세요)</label> <input
				type="text" class="form-control" id="user_phone" name="user_phone"
				placeholder="Phone Number" required>
			<div class="check_font" id="phone_check"></div>
		</div>
		<button onclick="gotoBack()">취소하기</button>
		<button onclick="gotoJoin()">가입하기</button>
	</form>
</body>
</html>