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
			
			//param.jsp?name=hong&name=25 전달
			$.ajax({
				type: "post",
				url : "param.jsp",
				//data: 'name='+name+'&age='+age,
					//하지만 위의 입력 방식은 오타가 날 확률이 크다.. JSON 객체 형태로 입력 가능!
				data: {
					name: name,
					age: age
				},
					//(get방식)Request URL: http://localhost:9999/Lecture-Web/ajax/exam01/param.jsp?name=hong&age=25
					//(post방식)Request URL: http://localhost:9999/Lecture-Web/ajax/exam01/param.jsp
				success : function(data) {
					$('#debug').val(data.trim())
					//data가 param.jsp 맨 위쪽 줄을 공백으로 치고 전달되므로 1줄은 비어있음 -> trim()으로 공백 삭제 가능
				}, error : function(error) {
					alert('오류상태코드 : ' + error.status)
				}
			})
			/*
				ajax type : 1. get 2. post 3. put 4. delete 모두 가능
				REST(=url+method로 무슨 방식으로 전달을 할 지 알려줌) 중요!
				
				<기존 방식>
				list.jsp
				detail.jsp?no=4
				writeForm.jsp	write.jsp
				update.jsp?no=5
				delete.jsp?no=5
				
				<REST방식>
				==> get     /board      (전체글 보기)
				==> get     /board?no=4 (4번 게시글 보기)
				==> post    /board      (새 글 등록)
				==> put     /board?no=4 (4번 게시글 수정)
				==> delete  /board?no=4 (4번 게시글 삭제)
						메소드+url로 어떤 작업을 할 지를 알려준다
						가상의 url MVC패턴을 알아야 쓸 수 있음
						=> html에서는 사용 불가, ajax에서는 가능
			*/
			
			//ajax를 get방식으로만 호출하려면 $.get() 을 사용
			$.get('param.jsp', "name=get&age=25", function(){
				alert('성공')
			})
			$.get('param.jsp', {name: name, age: age}, function(){
				alert('성공')
			})
			
			//post 방식으로만 호출하려면 $.post()
			$.post('param.jsp', "name=post&age=25", function(){
				alert('성공')
			})
		})
		
		
		let person={name:'홍길동', phone:'010-1111-2222'}
		JSON.stringify(person) //객체 -> 문자열
		JSON.parse(strPerson) //문자열 -> 객체
		
		
		
	})
</script>
</head>
<body>
	<textarea rows="10" cols="80" id="debug"></textarea><br>
	이름 : <input type="text" name="name" id="name"><br>
	나이 : <input type="text" name="age" id="age"><br>
	<button>호출</button>
	<%-- 사용자가 입력한 정보를 호출 버튼을 누르면 서버에 전달하는 것이 목적 (param.jsp?name=hong&name=25 형태)
		 서버는 name=hong<br>age=25<br> 로 응답 받아서 화면의 일부분(textarea)을 수정하여 출력 --%>
	
	<%-- 아이디 중복체크 -> ajax로 함 (중복체크를 백그라운드에서 확인한 후, 사용자는 계속 아이디 패스워드를 입력할 수 있어야 함) --%>
</body>
</html>