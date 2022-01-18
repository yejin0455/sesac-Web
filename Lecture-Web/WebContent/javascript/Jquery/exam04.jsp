<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		//$('a').hide()
		//$('a[target]').hide()  //a태그 중에 속성이 target인 태그 -> 다음
		//$('a[href="http://www.naver.com"]').hide()  //a태그 중에 href속성이 네이버인 태그
		
		//$('input[type="text"]').hide()
		//$('input:text').hide()  //input태그 중 타입이 text -> input태그만 가능
		//$(':text')  //타입이 text인 태그
		//$('input:button').hide()  //input태그 중 타입이 button -> input태그만 가능
		//$('button').hide()  //button태그
		//$(':button').hide()  //타입이 button인 태그 -> 버튼1, 버튼2
		
		$(':button').click(function() {  //타입이 button인 태그를 클릭했을 때 함수 호출
			//$('hr').hide()  //버튼을 클릭했다면 hr태그를 숨김
			$(this).hide("drop", {direction:'down'})  //클릭한 그 버튼을 숨김, 드롭방식의 아래로 사라짐
		})
	})
</script>
</head>
<body>
	<h2>a Tag 전</h2>
	<a href="http://www.naver.com">네이버</a><br>
	<a href="http://www.daum.net" target="_blank">다음</a>
	<h2>a Tag 후</h2>
	<hr>
		<input type="text">
		<input type="button" value="버튼1">
		<button>버튼2</button>
	<hr>
</body>
</html>