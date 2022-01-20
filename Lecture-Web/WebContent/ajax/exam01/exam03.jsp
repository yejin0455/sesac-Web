<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		
		$.ajax({
			url: 'person.jsp',
			datatype: 'json',
			success: function(data){
				//문자열 -> 객체 인식필요
				//memberList = JSON.parse(data) 원래는 parse로 변경해줄 수 있음 
				memberList = eval(data)
				console.log(memberList) //객체로 제대로 인식해서 나옴
			}
		})
	})
</script>
</head>
<body>

</body>
</html>