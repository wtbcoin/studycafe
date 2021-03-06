<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${product.prod_name } </title>

<script type="text/javascript">
	function fn_insert_form(){
		location.href = "BoardInsert";
	}
</script>
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
					<a href="/StudyCafeManagement/message/Chat?user_id=${sessionScope.user_id}" class="Message">메시지</a>
					
			</div>

		</div>
	</header>
    
    
   <section id="container">
		<div id="container_box">
		
		<aside id="aside">
				<h3>카테고리</h3>
			<hr>
				
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
			
	<section id = "content">
 
      <h3> ${product.prod_name }</h3>
      <hr>
      
      <td><input type="hidden" name="user_id"
			value="${sessionScope.user_id}" /></td>
      
      <table>
		<td>
				<td>
				<tr>상품 번호: ${product.prod_number }</tr>
				<br><tr>
	            <img src = "/StudyCafeManagement/resources/images/${product.prod_image }" class = "productImage" width="400"/></tr>
				<br><tr>상품 이름: ${product.prod_name }</tr>
				<br><tr>상품 종류: ${product.prod_type }</tr>
				<br><tr>상품 가격: ${product.prod_price }원</tr>
				<br><tr>상품 내용: ${product.prod_content }</tr>
				<br><tr>조회수 : ${product.prod_readcount } </tr>
				<br>
				</td>     
		</td> 
	</section>	
			
			           
	</div>
</section>

    <div style = "clear: both;">
	<span id = "footer" style = "font-size: xx-large;  margin-left:400px; float:right; clear:both;">
	
		<input type="submit" href=" /StudyCafeManagement/product/ProductList" value="쇼핑 계속하기" style = "margin-right:100px; display:inline"> 
		
		<form action="addCartProduct" method = "post" name = "addCartProductForm">		
			<input type="hidden" name="prod_number" id="prod_number"
					value="${product.prod_number}"  >
			<input type="hidden" name="user_id" id="user_id" 
					value="${sessionScope.user_id}" >
			<input type = "submit" value = "장바구니 담기" style = "display:inline"/>
		</form>
		
		<form action="deleteCartProduct" method = "post" name = "deleteCartProductForm" >		
			<input type="hidden" name="prod_number" id="prod_number"
					value="${product.prod_number}" >
			<input type="hidden" name="user_id" id="user_id" 
					value="${sessionScope.user_id}" >
			<input type = "submit" value = "장바구니 빼기" style = "display:inline"/>
		</form>
			
		     
		
		
			<%-- <form action="reserve" method = "post" name = "reserveForm">
				<label>좌석 번호 : </label><input type = "text" name = "seatNum" id ="seatNum">
				<input type="hidden" name="user_id"
							value="${sessionScope.user_id}" />
				<br>
				
			</form> --%>
		
	</span>
	</div>
    

</body>
</html>