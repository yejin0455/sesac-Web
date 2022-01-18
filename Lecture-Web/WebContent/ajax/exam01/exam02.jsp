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
		$('button').click(function() {
			
			let name = $('#name').val()
			let age = $('#age').val()
			
			/*  post 방식도 같음
			$.get('param.jsp', 'name=hong&age=25', function(data) {
				$('#debug').val(data)
			})
			 */
			/* 
			 $.get('param.jsp', {name:name, age:age}, function(data) {
					$('#debug').val(data)
			})
			 */
			
			 
			$.ajax({
				type : 'post',
				url : 'param.jsp',
				//data : 'name=hong&age=25',
				//data : 'name=' + name + '&age=' + age,
				data : {
					name : name,	
					age : age
				},
				success : function(data) {
					//alert('성공')
					$('#debug').val(data.trim())  //trim()->양쪽 공백 제거
				}, error : function(error) {
					alert('오류상태코드 : ' + error.status)
				}
			})
			 
		})
	})
</script>
</head>
<body>
	<textarea row="10" cols="80" id="debug"></textarea><br>
	이름 : <input type="text" name="name" id="name"><br>
	나이 : <input type="text" name="age" id="age"><br>
	<button>호출</button>
</body>
</html>