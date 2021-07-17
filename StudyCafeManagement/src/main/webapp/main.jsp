<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
   
   section{
      width:100%;
      float:left;/*띄우다 문서나 사진이 있을때 그림을 오른쪽 정렬이나 문서 배치 할때 사용  */
      padding:5px;
   }
  	
  	div.cafe_menus{
  		font-size:80px;
		font-weight: bold;
  	}
  	
	div{
		font-size:35px;
		font-weight: bold;
	}
      
   .section-container {
     width: 2000px;
     height: 1500px;
     margin: auto;
     display: grid;
     align-items: stretch;
     grid-template-columns: 1fr 1fr 1fr 1fr;
     grid-template-rows: 1fr 1fr;
     gap: 20px; /* 자식요소간의 간격 */ 
   }
   
   .temp-box {
     /* background: yellow; */
     width: 100%;
     height: 100%;
     font-size: 30px;
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
   
	 table.type01 {
	  border-collapse: collapse;
	  text-align: left;
	  font-size :30px;
	  line-height: 1.5;
	  border-top: 1px solid #ccc;
	  border-bottom: 1px solid #ccc;
	  margin: 20px 10px;
	}
	table.type01 th {
	  width: 350px;
	  padding: 10px;
	  vertical-align: top; 
  	  border-right: 1px solid #ccc;
	}
	table.type01 td {
	  width: 700px;
	  height: 50px;
	  padding: 10px;
	  vertical-align: top;
	}
	table.type01 .even {
	  background: #efefef;
	}


	table.type02 {
	  border-collapse: separate;
	  text-align: center;
	  font-size : 30px;
	  line-height: 1.5;
	  margin: 20px 10px;
	}
   
   header,section {text-aligen:center;}
   
   
   
</style>

</head>
<body>
    <header>
        <div class="nav_container">
         <h7 style ="color:white; margin:3px; font-size:40px;">베이직 스터디 카페</h7>
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
   <section>
     <div class="section-container">
       <div class="temp-box" >커뮤니티
		<input type = "button" value = "글쓰기" onclick="fn_insert_form()"  style="float: right; margin:5px; font-size:25px;">
		<hr>
		
		
	<%-- 	<%
			if (count == 0) {
		%> --%>
		
		
		<table class="type01">
		  <tr>
		    <th scope="row">제목명</th>
		    <td>내용이 들어갑니다.</td>
		  </tr>
		  <tr>
		    <th scope="row" class="even">제목명</th>
		    <td class="even">내용이 들어갑니다.</td>
		  </tr>
		  <tr>
		    <th scope="row">제목명</th>
		    <td>내용이 들어갑니다.</td>
		  </tr>
		  <tr>
		    <th scope="row" class="even">제목명</th>
		    <td class="even">내용이 들어갑니다.</td>
		  </tr>
		   <tr>
		    <th scope="row">제목명</th>
		    <td>내용이 들어갑니다.</td>
		  </tr>
		  <tr>
		    <th scope="row" class="even">제목명</th>
		    <td class="even">내용이 들어갑니다.</td>
		  </tr>
		</table>
		
		
		<%-- <table border = "1">
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
	</table> --%>

 		
       </div>
       
       <div class="temp-box">좌석</div>
       
       <div class="temp-box">로그인</div>
       
       <div class="temp-box">공지사항
       <input type = "button" value = "글쓰기" onclick="fn_insert_form()"  style="float: right; margin:5px; font-size:25px;">	
		<hr>
		
		
	<%-- 	<%
			if (count == 0) {
		%> --%>
		
		
		<table class="type01">
		  <tr>
		    <th scope="row">제목명</th>
		    <td>내용이 들어갑니다.</td>
		  </tr>
		  <tr>
		    <th scope="row" class="even">제목명</th>
		    <td class="even">내용이 들어갑니다.</td>
		  </tr>
		  <tr>
		    <th scope="row">제목명</th>
		    <td>내용이 들어갑니다.</td>
		  </tr>
		  <tr>
		    <th scope="row" class="even">제목명</th>
		    <td class="even">내용이 들어갑니다.</td>
		  </tr>
		   <tr>
		    <th scope="row">제목명</th>
		    <td>내용이 들어갑니다.</td>
		  </tr>
		  <tr>
		    <th scope="row" class="even">제목명</th>
		    <td class="even">내용이 들어갑니다.</td>
		  </tr>
		</table>
		
       </div>
       
       <div class="temp-box">상품 - BEST
       <table class="type02">
       
       </table>
       </div>
       
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