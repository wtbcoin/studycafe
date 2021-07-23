<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function showBtn(id){
		var num = document.getElementById("seatNum");
		num.value = id;
	}
	function gotoBack(){
		location.href = "LoginMain";
	}
	

</script>
<style>
button {
	width: 50px;
	height: 50px;
	background-color: green;
	color: white;
}
#btnDiv {
	text-align: center;
}
</style>
</head>
<body>
	<h1>좌석 예약</h1>

<div id = "btnDiv">
	<script language="javaScript">
		for (i = 1; i <= 100; i++) {
			document.write("<button id = "+ i + " onclick='showBtn(id);'>" + i + "</button>");

			if (i % 2 == 0)
				document.write("&emsp;");

			if (i % 20 == 0)
				document.write("<br>");
			if (i % 40 == 0)
				document.write("<br><br>")

		}
		
	</script>
	
	</div>
	
	<br><br><br>
	
	<form action="reserve" method = "post" name = "reserveForm">
		<label>좌석 번호 : </label><input type = "text" name = "seatNum" id ="seatNum">
		<input type="hidden" name="user_id"
					value="${sessionScope.user_id}" />
		<br>
		<input type = "submit" value = "예약"/>
	</form>
	
	<button onclick="gotoBack()">뒤로가기</button>

</body>
</html>