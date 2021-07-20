<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 리스트</title>
<style>


body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
		a { color:#05f; text-decoration:none; }
		
		h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
		ul, lo, li { margin:0; padding:0; list-style:none; }
		
 header {
         background-color:blueviolet;
         height:150px;
         padding:5px;
         margin:5px;
         text-align: center;
   }
   
   header a{
      font-size :30px;
      font-weight: bold;
      color:white;
      padding:25px;
      margin:auto;
      text-decoration:none;
   }
   
   aside#aside { margin: 100px; float:left; width:180px; }
   
    section#container { }
			section#content { float:right; width:700px; }
			aside#aside { float:left; width:180px; }
			section#container::after { content:""; display:block; clear:both; }	
			
	section h1{
			 font-size :30px;
	}		
   section#container { }
   
   aside#aside h3 { font-size:30px; margin-bottom:20px; text-align:center; }
		aside#aside li { font-size:16px; text-align:center; }
		aside#aside li a { color:#000; display:block; padding:10px 0; }
		aside#aside li a:hover { text-decoration:none; background:#eee; }
		
		aside#aside li { position:relative; }
		aside#aside li:hover { background:#eee; } 		
		aside#aside li > ul.low { display:none; position:absolute; top:0; left:180px;  }
		aside#aside li:hover > ul.low { display:block; }
		aside#aside li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
		aside#aside li:hover > ul.low li a:hover { background:#fff;}
		aside#aside li > ul.low li { width:180px; }
   </style>
  
</head>
<body>
<header>
        <div class="nav_container">
         <h7 style ="color:white; margin:3px; font-size:40px; font-weight:bold;">베이직 스터디 카페</h7>
        <div class="cafe_menus">
                    <img src="" class="logo_image" width="40" height="40" >
                    <a href="/" class="Seat" >좌석</a>
                    <a href="/" class="Product" >상품</a>
                    <a href="/" class="Community" >커뮤니티</a>
                    <a href="/" class="Board" >공지사항</a>
                    <a href="/" class="Message" >메시지</a>
            </div>

        </div>
    </header>
    
    
   <section id="container">
		<div id="container_box">
		
			<section id = "content">
   <%-- <%
      if(dogList == null || dogList.size() == 0) { 
   %> --%>
   <c:if test="${empty dogList }">
      <h1>등록된 개정보가 없습니다.</h1>
      </c:if>
<%--    <%
      }
      else{   
   %> --%>
   <c:if test="${not empty dogList }">
      <h1>개상품목록</h1> 
      <table>
      <tr>
         <%-- <%
            for(int i = 0;i < dogList.size();i++) {
         %> --%>
         <c:forEach var = "dog" items = "${dogList }" varStatus="status">
         <!-- varStatus : forEach 블록에서 반복 상태를 저장하는 속성 -->
         <td>
            <a href="dogView.dog?id=${dog.id }"><img src = "images/${dog.image }" class = "productImage"/></a><br>
            상품명 : ${dog.kind }<br>
            가격 : ${dog.price }원
         </td>
         <c:if test="${(status.index + 1) % 4 == 0}">
         <%-- <%
            if((i + 1) % 4 == 0){
         %> --%>
            </tr>
            <tr>                           
         <%-- <%
            }
         
            }
         %> --%>
         </c:if>
         </c:forEach>
      </tr>
      </table>
      </c:if>
<%--    <%
      }
   %> --%>
</section>
<%-- <%
   if(todayImageList != null && todayImageList.size() > 0){
%> --%>
			
			<aside id="aside">
				<h3>장바구니</h3>
				<hr>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<hr>
				<br>
			</aside>
		</div>
	</section>
    
    
<footer id = "content" >
   <h3>오늘본 상품 정보</h3>
   <table>
      <tr>
         <%-- <%
            for(int i = 0;i < todayImageList.size();i++) {
         %> --%>
         
         <c:forEach var = "todayImage" items = "${todayImageList }" varStatus = "status">
         <td>
            <img src="images/${todayImage }"
            class = "todayImage"/>
         </td>
         <c:if test="${(status.index + 1) % 6 == 0}">
         <%-- <%
            if((i + 1) % 6 == 0){
         %> --%>
            </tr>
            <tr>                           
         <%-- <%
            }
         
            }
         %> --%>
         </c:if>
         </c:forEach>
      </tr>
      </table>
</footer>
</body>
</html>