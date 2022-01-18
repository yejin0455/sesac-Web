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
		//$('tr').css('background-color', 'pink')  //tr태그의 스타일 백그라운드컬러를 핑크로 설정
		$('tr:even').css('background-color', 'pink')  //짝수행은 건너뜀
	})
</script>
</head>
<body>
	<h2>회원명부</h2>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>전화번호</th>
		</tr>
		<tr>
			<td>홍길동</td>
			<td>010-1111-2222</td>
		</tr>
		<tr>
			<td>홍길동</td>
			<td>010-1111-2222</td>
		</tr>
		<tr>
			<td>홍길동</td>
			<td>010-1111-2222</td>
		</tr>
		<tr>
			<td>홍길동</td>
			<td>010-1111-2222</td>
		</tr>
		<tr>
			<td>홍길동</td>
			<td>010-1111-2222</td>
		</tr>
	</table>
</body>
</html>