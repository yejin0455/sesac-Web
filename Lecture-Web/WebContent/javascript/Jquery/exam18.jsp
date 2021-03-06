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
		$('#btn01').click(function() {
			// div 안에 <h1>세번째 문장</h1> 추가하기
			/* 
			let h1Tag = document.createElement('h1')  //createElement() -> 요소 만들기
			let text = document.createTextNode('세번째 문장')  //createTextNode() -> 선택한 요소에 텍스트 추가
			h1Tag.appendChild(text)  //appendChild() -> 선택한 요소 안에 자식 요소 추가
			//console.log(h1Tag)
			document.querySelector('div').appendChild(h1Tag)  //querySelector() -> 선택자에 해당하는 첫번째 요소
			 */
			 
			 $('div').append('<h1>세번째 문장</h1>')
		})
		
		$('#btn02').click(function() {
			$('ol').append('<li>노랑</li>')  //append() -> 선택한 요소의 내용 뒤에 추가
			$('ol').prepend  //prepend() -> 선택한 요소의 내용 앞에 추가
		})
	})
	
	$(document).ready(function() {
		$('#btn03').click(function() {
			/* 
			$('body').prepend('<h4>추가된 문장</h4>') -> 3
			$('body').prepend('<h3>또 추가된 문장</h3>') -> 2
			$('body').prepend('<h6>또 또 추가된 문장</h6>') -> 1
			 */
			$('body').prepend('<h4>추가된 문장</h4>', '<h3>또 추가된 문장</h3>', '<h6>또 또 추가된 문장</h6>')  // -> 123
		})
	})
</script>
</head>
<body>
	<div>
		<h1>첫번째 문장</h1>
		<h1>두번째 문장</h1>
	</div>
	<h2>색상표</h2>
		<ol>
			<li>빨강</li>
			<li>파랑</li>
			<li>초록</li>
		</ol>
	<button id="btn01">문장추가</button>
	<button id="btn02">색상추가</button>
	<button id="btn03">본문추가</button>
</body>
</html>