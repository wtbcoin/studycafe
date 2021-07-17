<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   header {
         background-color:blue;
         height:100px;
         padding:5px;
         margin:auto;
         text-align: center;
   }
   
   h1{
      font-size :20px;
      color:white;
      
   }
   
   a{
      font-size :30px;
      color:white;
      padding:25px;
      margin:auto;
      text-decoration:none;
   }
   
   section{
      width:100%;
      float:left;/*띄우다 문서나 사진이 있을때 그림을 오른쪽 정렬이나 문서 배치 할때 사용  */
      padding:10px;
   }
      
   .section-container {
     width: 1500px;
     height: 1000px;
     margin: auto;
     display: grid;
     align-items: stretch;
     grid-template-columns: 1fr 1fr 1fr 1fr;
     grid-template-rows: 1fr 1fr;
     gap: 10px; /* 자식요소간의 간격 */ 
   }
   
   .temp-box {
     /* background: yellow; */
     width: 100%;
     height: 100%;
     font-size: 20px;
     border: 1px solid #dee3eb;
     text-align: center;
   }
   .temp-box:nth-child(1) {
     /* background: yellow; */
     grid-column: 1/3;
     grid-row: 1/2;
   }
   .temp-box:nth-child(2) {
     /* background: yellow; */
     grid-column: 3/4;
     grid-row: 1/2;
   }
   .temp-box:nth-child(3) {
     /* background: yellow; */
     grid-column: 4/5;
     grid-row: 1/2;
   }
   .temp-box:nth-child(4) {
     /* background: yellow; */
     grid-column: 1/3;
     grid-row: 2/3;
   }
   .temp-box:nth-child(5) {
     /* background: yellow; */
     grid-column: 3/5;
     grid-row: 2/3;
   }
   
   
   header,section {text-aligen:center;}
   
   
   
   table{
      width : 600px;
      margin : auto;
   }
   
   
   
</style>

</head>
<body>
    <header>
        <div class="nav_container">
         <h1>베이직 스터디 카페</h1>
        <div class="cafe_menus">
                    <img src="cafe_logo.jpg" class="logo_image" width="40" height="40" >
                    <a href="/" class="Seat" >좌석</a>
                    <a href="/" class="Product" >상품</a>
                    <a href="/" class="Community" >커뮤니티</a>
                    <a href="/" class="Board" >공지사항</a>
                    <a href="/" class="Message" >메시지</a>
            </div>

        </div>
    </header>
   <section>
     <div class="section-container">
       <div class="temp-box">커뮤니티</div>
       <div class="temp-box">좌석</div>
       <div class="temp-box">로그인</div>
       <div class="temp-box">공지사항</div>
       <div class="temp-box">상품 - BEST</div>
     </div>
   </section>

  <%--   <section>
    

     <table border = "1">
      <tr>
         <th>번호</th>
         <th>제목</th>
         <th>등록자</th>
         <th>작성일</th>
      </tr>
      <c:forEach var = "board" items = "${boardList }">
         <tr>
         <td>${board.seq }</td>
         <td><a href = "board_detail.do?seq=${board.seq }">${board.title}</a></td>
         <td>${board.writer}</td>
         <td>${board.regdate}</td>
         </tr>
      </c:forEach>
   </table>
   
   <table>
 <div class="top_btns">
 
        <button class="board_management_btn top_btn">
            카테고리/게시판 관리
        </button>
        <button class="report_management_btn top_btn">
            신고 리스트 관리
        </button>
        <button class="user_management_btn top_btn">
            회원 관리
        </button>
    </div>
    </table>
</section> --%>
</body>
</html>