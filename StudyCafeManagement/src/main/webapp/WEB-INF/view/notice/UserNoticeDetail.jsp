<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Insert title here</title>

</head>
<body>
		<header>
		
			<%@include file="../nav.jsp" %>
			
		</header>
	<div class="container">		
		<h1> 공지사항</h1>
		<hr />
		

		<div>
		
			<%@include file="../notice_nav.jsp" %>
		
		</div>

		
		<section id="container">
			<div class="form-group">
				<label for="notice_number" class="col-sm-2 control-label">번호</label>
				<input type="text" id="notice_number" class="form-control" 
				value="${notice.notice_number }" readonly />
			</div>
			<div class="form-group">
				<label for="notice_title" class="col-sm-2 control-label">제목</label>
				<input type="text" id="notice_title" class="form-control" 
				value="${notice.notice_title }" readonly />
			</div>
			<div class="form-group">
				<label for="notice_content" class="col-sm-2 control-label">내용</label>
				<textarea id="notice_content" cols = "20" rows = "10" class="form-control" 
				 readonly>${notice.notice_content }</textarea>
			</div>
			<div class="form-group">
				<label for="user_id" class="col-sm-2 control-label">등록자</label>
				<input type="text" id="user_id" class="form-control" 
				value="${notice.user_id }" readonly />
			</div>
			<div class="form-group">
				<label for="notice_time" class="col-sm-2 control-label">작성일</label>
				${notice.notice_time}
			</div>
							
		</section>
	</div>
</body>
</html>