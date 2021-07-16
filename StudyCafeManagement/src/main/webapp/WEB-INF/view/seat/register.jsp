<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function showbtn(id){
		document.write(id);
	}
</script>
<style>
button {
	width: 50px;
	height: 50px;
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
			document.write("<button id = "+ i + " onclick='showbtn(id);'>" + i + "</button>");

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
		<label for = "seatNum">좌석 번호 : </label><br>
		<input type = "submit" value = "예약"/>
	</form>

</body>
</html>