<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#btn01').click(function() {
			/* $('img').before('<strong>before</strong>') */  //이미지 태그 앞에 추가
			$('img').after('<em>after</em>', '<b>맨뒤</b>')  //이미지 태그 뒤에 추가
		})
	})
</script>
</head>
<body>
	<hr>
	<img src="https://t1.daumcdn.net/daumtop_chanel/op/20200723055344399.png">
	<hr>
	<button id="btn01">추가</button>
</body>
</html>