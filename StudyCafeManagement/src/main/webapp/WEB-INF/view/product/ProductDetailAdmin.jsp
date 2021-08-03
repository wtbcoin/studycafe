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
					<a href="/" class="Message">메시지</a>
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
					<li><a href="/shop/list?c=100&l=1">과자</a>
				  
						<ul class="low">
							<li><a href="/shop/list?c=101&l=2">베스트과자</a></li>
							<li><a href="/shop/list?c=102&l=2">달콤한과자</a></li>
							<li><a href="/shop/list?c=103&l=2">그냥과자</a></li>
						</ul>
						
					</li>
					<li><a href="/shop/list?c=200&l=1">빵</a></li>
					<li><a href="/shop/list?c=300&l=1">음료</a></li>
						<ul class="low">
								<li><a href="/shop/list?c=101&l=2">탄산음료</a></li>
								<li><a href="/shop/list?c=102&l=2">주스</a></li>
								<li><a href="/shop/list?c=103&l=2">음류수</a></li>
							</ul>
					<li><a href="/shop/list?c=400&l=1">커피</a></li>
					<li><a href="/shop/list?c=400&l=1">티,스무디</a></li>
					<li><a href="/shop/list?c=400&l=1">기타</a></li>
					
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
				<tr>
	            <img src = "/StudyCafeManagement/resources/images/${product.prod_image }" class = "productImage" width="300"/></tr>
				<br><tr>상품 번호: ${product.prod_number }</tr>
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
	
		
		<a href="ProductListAdmin" style = "color:#0d1d1f; text-decoration:none; margin-right: 20px">목록 보기</a>
		<a href="ProductUpdate?prod_number=${product.prod_number}" style = "color:#0d1d1f; text-decoration:none; margin-right: 20px">상품 수정</a>
		<a href="ProductDelete?prod_number=${product.prod_number}" style = "color:#0d1d1f; text-decoration:none;">상품 삭제</a>
		
		
		</span>
	</div>
    

</body>
</html>