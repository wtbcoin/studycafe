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
   
     aside#aside { margin-left: 60px; margin-right: 200px; float:left; width:200px; height:650px; }
   
    section#container {}
			section#content { margin: 50px; float:center; width:1700px; height:650px; }
			aside#aside { float:left; width:180px; height:700px}
			section#container::after { content:""; display:block; clear:both; }	
			
	section h1{
			 font-size :30px;
	}	
			
	h3 { font-size:30px; margin-bottom:20px; text-align:center; }	
	
   section#container { }
   
   aside#aside h3 { font-size:30px; margin-bottom:20px;  text-align:center;  }
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
			 <a href = "/StudyCafeManagement/common/LoginMain">
         		<h7 style ="color:white; margin:3px; font-size:40px; font-weight:bold;">베이직 스터디 카페</h7>
        	 </a>
			<div class="cafe_menus">
				<img src="/StudyCafeManagement/resources/images/logo.jpg" class="logo_image" width="40" height="40">
				  <a href="/StudyCafeManagement/seat/register" class="Seat">좌석</a> 
					<a href="/StudyCafeManagement/product/ProductList" class="Product">상품</a> 
					<a href="/StudyCafeManagement/board/BoardList" class="Community">커뮤니티</a>
					<a href="/StudyCafeManagement/notice/NoticeList?user_id=${sessionScope.user_id}" class="Notice">공지사항</a>
					<a href="/" class="Message">메시지</a>
			</div>

		</div>
	</header>
    
    
   <section id = "container">
 
 	<aside id="aside">
				<h3>카테고리</h3>
			<hr>
			<br>
				<ul>
					<br>
					<li><a href="search_type_product_form()" >과자</a>
						<ul class="low">
							<li><a href="ProductTypeList?prod_type = 베스트 과자">베스트과자</a></li>
							<li><a href="ProductTypeList?prod_type = 달콤한 과자">달콤한과자</a></li>
						</ul>
						</li>
					<li><a href="search_type_product_form()" >빵</a></li>
					<li><a href="ProductTypeList?prod_type =라면">라면</a></li>
					<li><a href="ProductTypeList?prod_type ='햄버거'">햄버거</a></li>
					<li><a href="ProductTypeList?prod_type =음료">음료</a>
						<ul class="low">
								<li><a href="ProductTypeList?prod_type =탄산음료">탄산음료</a></li>
								<li><a href="ProductTypeList?prod_type =주스">주스</a></li>
								<li><a href="ProductTypeList?prod_type =음류수">음류수</a></li>
						</ul>
						</li>
					<li><a href="ProductTypeList?prod_type = 커피">커피</a></li>
					<li><a href="ProductTypeList?prod_type =티">티</a></li>
					<li><a href="ProductTypeList?prod_type =기타">기타</a></li>
					
				</ul>
			<br>
			<hr>
			<br>
	</aside>
	
<section class = "content">
	<form action="ProductUpdate" method = "POST">
		<table>
			<h3>상품 수정 </h3>
			<hr>
			<input type = "hidden" name = "prod_number" value = "${product.prod_number }">
			<tr>
				<td>상품 이름</td>
				<td><input type="text" name="prod_name" value = "${product.prod_name}"></td>				</tr>
			<tr>
				<td>상품 타입</td>
				<td><input type="text" name="prod_type" value = "${product.prod_type}"/></td>
			</tr>
			<tr>
				<td>상품 수량</td>
				<td><input type="text" name="prod_amount" value = "${product.prod_amount }"/></td>
			</tr>
			<tr>
				<td>상품 가격</td>
				<td><input type="text" name="prod_price" value = "${product.prod_price }"/></td>
			</tr>
			<tr>
				<td><label for = "prod_content">상품 내용 </label> </td>
					<td>
					<textarea rows="20" cols= "40" id = prod_content name = "prod_content" >${product.prod_content}</textarea>
				</td>
			</tr>
			<tr>
				<td>상품 이미지 경로</td>
				<td>
				<input type="text" name="prod_image" value = "${product.prod_image }"/>
				<!-- <input type="file" name="prod_image" readonly = "readonly" /> -->
				</td>
			</tr>	
		</table>
			<input type="submit" value="상품 수정">			
			<input type="submit" href="ProductListAdmin" value="취소">
			
	</form>
</section>
	
	
	
</section>

<%-- <%
   if(todayImageList != null && todayImageList.size() > 0){
%> --%>
	
	
		<footer id = "content" style = "">		
		

 		</footer>
</body>
</html>