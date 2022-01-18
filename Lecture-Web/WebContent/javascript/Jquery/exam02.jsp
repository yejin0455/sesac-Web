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
		let h1Tags = document.getElementsByTagName("h1")
		/* 
		for(let tag of h1Tags) {
			tag.style.display = 'none'
		}  
		*/
		
		//$('h1') -> h1을 가지고 있는 선택자 , hide() -> 요소는 남겨두고 display를 숨기는 함수
		//$('h1').hide()
		//$('#h01').hide()  //id="h01"인 태그를 display=none으로 해라
		//$('.c01').hide()  //class="c01" 
		//$('h1.c02').hide()  //h1태그의 class="c01"인 태그
		//$('body > *').hide()  //body전체
		//$('h1:first').hide()  //h1의 맨 처음 태그
		//$('h1:last').hide()  //h1의 마지막 태그
		
		
		
	})
</script>
</head>
<body>
	<hr>
	<h1 id="h01">Hello</h1>
	<h1>Hi</h1>
	<h2>good-bye</h2>
	<hr>
	<h1 id="h01">Hello</h1>
	<h1 class="c01">Hi</h1>
	<h2 class="c01">good-bye</h2>
	<hr>
</body>
</html>