<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.c1 {
		font-style: italic
	}
	
	.c2 {
		color: orange
	}
	
	.blue {
		color: blue
	}
	
	.red {
		color: red
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		$('button').click(function() {
			$('body h1').addClass('red')  //body밑의 h1태그에 red클래스 추가			
			$('body *').addClass('blue')  //body밑의 모든 태그에 blue클래스 추가 -> h1태그만 빨강, 나머진 파랑
			//$('h1').removeClass('red')  //h1의 red클래스 지움 -> 전부 파란색
		})
	
	})
</script>
</head>
<body>
	<!-- h1에 c1, c2 클래스가 포함되어 있음 -->
	<h1 class="c1 c2">나는 문장1입니다</h1>
	<h1>나는 문장2입니다</h1>
	<p>나는 단락입니다</p>
	<div>
		나는 구역입니다
	</div>
	<button>추가</button>
</body>
</html>