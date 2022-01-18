<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="js/jquery-3.6.0.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
	
<script>
	$(document).ready(function() { 
		alert('ready')  //도큐먼트가 준비되면 콜백함수 호출 = window.onload
	})
	
	$(document).ready(function() {
		alert('ready2')  //여러번 써도 다 실행 됨 , 순서X
	})
	
	$(function() {  //$()으로 축약해서 쓸 수 있음
		alert('ready3')
	})
</script>
</head>
<body>

</body>
</html>