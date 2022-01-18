<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		/*
			h1태그를 클릭하면 글자색이 빨강으로 변하고
			h1에 마우스를 접근시키면 배경을 노란색으로 변경
			h1에 마우스가 벗어나면 배경을 흰색으로 변경
		 */
		 /* 
		 $('h1').click(function() {
			 $(this).css('color', 'red')
		 })
		 $('h1').hover(function {
			 $(this).css('background-color', 'yellow')
		 }, function {
			 $(this).css('background-color', 'white')
		 }) 
		 */
		 
		 $('h1').on({
			 'click' : function() {  //click일 때 함수 실행
				 $(this).css('color', 'red')
			 }, 'mouseenter' : function() {  //moseenter일 때 함수 실행
				 $(this).css('background-color', 'yellow')
			 }, 'mouseleave' : function() {  //mouseleave일 때 함수 실행
				 $(this).css('background-color', 'white')
			 }
		 })
		 
	})
</script>
</head>
<body>
	<h1>첫번째 문장입니다</h1>
	<h1>두번째 문장입니다</h1>
	<div>
		<h1>세번째 문장입니다</h1>
	</div>
	<h1>네번째 문장입니다</h1>
	<button>클릭</button>
</body>
</html>