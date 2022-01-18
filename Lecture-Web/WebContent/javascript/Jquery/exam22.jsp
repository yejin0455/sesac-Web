<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body * {
		display: block;
		border: 1px solid red;
		padding: 10px;
		margin: 10px;
	}
	
	.blue {
		border-color: blue
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		//$('span').parent().css('border-color', 'blue')  //span태그의 부모태그를 바꿈
		//$('span').parents().addClass('blue')  //span태그의 선조들을 바꿈
		//$('span').parents('div').addClass('blue')  //span태그의 선조가 div인 것만 바꿈, 자식->부모
		//$('span').parentsUntil('div').addClass('blue')  //span태그의 선조가 div인 것까지만 바꿈, 자식->부모
		
		//$('#ancester').children().addClass('blue')  //#ancester의 자식들에 클래스blue 추가, 부모->자식
		//$('#ancester').children('#div02').addClass('blue')  //#ancester의 자식들 중에 클래스가#div02인 것에 클래스 추가, 부모->자식
		//$('#ancester').children('ul').addClass('blue')  //
		$('#ancester').find('ul').addClass('blue')  //#ancester의 자식들 중에 ul태그를 찾아서 클래스 추가, 부모->자식
	})
</script>
</head>
<body>
	<div id="ancester">div
		<div id="div01">div1
			<ul>ul
				<li>li
					<span>span</span>
				</li>
			</ul>
		</div>
		<div id="div02">div2
			<p>p
				<span>span</span>
			</p>
		</div>
	</div>
</body>
</html>