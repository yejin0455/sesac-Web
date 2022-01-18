<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#div01 {
		background-color: yellow;
		height: 150px;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		/* 
		$('#div01').mouseenter(function() {  //#div01에 마우스가 들어오면
			$(this).css('background-color', 'pink')
		})
		$('#div01').mouseleave(function() {  //#div01에 마우스가 떠나면
			$(this).css('background-color', 'yellow')
		}) 
		*/
		$('#div01').hover(function() {  //마우스의 enter+leave, 매개변수 2개
			$(this).css('background-color', 'green')  //enter
		}, function() {
			$(this).css('background-color', 'yellow')  //leave
		})
		
		$('#div01').click(function(event) {  //클릭 함수를 호출했을 때 event라는 인자가 매개변수로 날라옴
			console.log(event.pageX, event.pageY)
		})
		
		
		$('button').click(function() {  //버튼을 클릭했을 때 함수 호출
			$('h1:first').hide(1000)  //첫번째 h1 태그가 1초에 걸쳐서 사라짐
		})
		$('body > h1').dblclick(function() {  //바디의 h1태그를 더블클릭 했을 때 
			$(this).hide(3000)  //클릭한 그 버튼이 3초에 걸쳐 사라짐
		})
	})
</script>
</head>
<body>
	<div id="div01">
		나는 DIV영역입니다
		마우스를 접근시켜보세요
	</div>
	
	<h1>첫번째 문장입니다</h1>
	<h1>두번째 문장입니다</h1>
	<div>
		<h1>세번째 문장입니다</h1>
	</div>
	<h1>네번쨰 문장입니다</h1>
	<button>클릭</button>
</body>
</html>