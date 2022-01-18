<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	td {
		width:100px;
		height:100px;
		text-align:center;
		font-size:15pt;
	}
	
	#t1 {
		background-color: red;
	}
	#t2 {
		background-color: orange;
	}
	#t3 {
		background-color: yellow;
	}
	#t4 {
		background-color: green;
	}
	#t5 {
		background-color: blue;
	}
	#t6 {
		background-color: navy;
	}
	#t7 {
		background-color: purple;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {

		$('td').hover(function() {
			let tdTag = $(this)[0]
			tdTag.innerHTML += "요일";
			
			$(this).css({
				'width' : '200px',
				'height' : '200px'
			})
			
		}, function() {
			$('#t1').text('월')
			$('#t2').text('화')
			$('#t3').text('수')
			$('#t4').text('목')
			$('#t5').text('금')
			$('#t6').text('토')
			$('#t7').text('일')
			
			$(this).css({
				'width' : '100px',
				'height' : '100px'
			})
		})
	})
</script>
</head>
<body>
	<table>
		<tr>
			<td id="t1">월</td>
			<td id="t2">화</td>
			<td id="t3">수</td>
			<td id="t4">목</td>
			<td id="t5">금</td>
			<td id="t6">토</td>
			<td id="t7">일</td>
		</tr>
	</table>
</body>
</html>