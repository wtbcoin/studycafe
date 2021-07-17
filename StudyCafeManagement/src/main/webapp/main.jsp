<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<style>
   #dogListArea, #todayImageList{
      width : 620px;
      margin : auto;
      border : 1px solid red;
   }
   table{
      width : 600px;
      margin : auto;
   }
   h1{
		border: 1px solid blue;
		background-color: blue;
		color: blue;
      text-align : center;
   }
   .productImage{
      width : 150px;
      height : 150px;
      border : none;
   }
   .todayImage{
      width : 100px;
      height : 100px;
   }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="insert" method = "POST">
	<h1>
	<a href = "" style="color: white">좌석</a>
	<a href = "" style="color: white">상품</a>
	<a href = "" style="color: white">커뮤니티</a>
	<a href = "" style="color: white">공지사항</a>
	<a href = "" style="color: white">메시지</a>
	</h1>
	
	</form>
</body>
</html>