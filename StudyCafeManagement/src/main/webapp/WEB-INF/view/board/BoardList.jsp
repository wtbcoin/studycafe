<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Insert title here</title>
<style type="text/css">
	li {list-style: none; display: inline; padding: 6px;}
</style>
</head>
<body>

		<header>
		
			<%@include file="../nav.jsp" %>
			
		</header>

	<div class="container">

		<h1> 커뮤니티</h1>
		
		<hr />
		
		<div>
			
			<ul>
				<li><a href="BoardInsert${pageMaker.makeQuery(pageMaker.cri.page)}&user_id=${sessionScope.user_id}">글쓰기</a></li>
				<li><a href="/StudyCafeManagement/common/LoginMain">메인화면</a></li>
			</ul>
			
		</div>
		<section>
			<table class="table table-hover">
				<thead>
					<tr><th>번호</th>	<th>제목</th>	<th>글쓴이</th><th>작성일</th><th>조회수</th></tr>
				</thead>
				
				<c:forEach var="board" items="${boardList }">
					<tr>
						<td>${board.board_number }</td>
						<td><a href="BoardDetail${pageMaker.makeQuery(pageMaker.cri.page)}&board_number=${board.board_number }&user_id=${sessionScope.user_id}
							&writer=${board.user_id }">${board.board_title}</a></td>
						<td>${board.user_id}</td>
						<td><fmt:parseDate value="${board.board_time }" var="today" pattern="yyyy-MM-dd">
							</fmt:parseDate>
							<fmt:formatDate value="${today }" pattern="yyyy-MM-dd" /></td>
						<td>${board.board_readcount}</td>
					</tr>
				</c:forEach>
				
			</table>
			<div class="search row">
					<form action="BoardSearch${pageMaker.makeQuery(pageMaker.cri.page)}" method="POST">
						<div class="col-xs-2 col-sm-2">
							<select name="search_option" class="form-control">
								<option value="board_title">제목</option>
								<option value="board_user_id">글쓴이</option>
							</select>
						</div>
						<div class="col-xs-10 col-sm-10">
							<div class="input-group">
							
								<input type="text" name="keyword" class="form-control"/>
								<span class="input-group-btn">
									<input type="submit" value="검색" class="btn btn-default"/>
								</span>
							</div>
						</div>
					</form>
			</div>
			<div class="col-md-offset-3">
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
    					<li><a href="BoardList${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
    				</c:if> 

    				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    					<li> 
    						<a href="BoardList${pageMaker.makeQuery(idx)}">${idx}</a>
    					</li>
    				</c:forEach>

    				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				    	<li><a href="BoardList${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
				    </c:if> 
				</ul>
			</div>
		</section>
	</div>
</body>
</html>