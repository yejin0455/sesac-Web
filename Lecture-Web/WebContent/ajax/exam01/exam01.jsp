<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#msgView{
		border: 1px solid gray;
		height: 200px;
		width: 500px;
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script>
	$(document).ready(function(){
		$('button').click(function(){
			//비동기 통신을 할 때 쓰는 함수 = $.ajax()
			//요청 넘겨주기(같이 보내야 하는 정보 다양=JSON형태로 전송)
			/*	url : 요청 주소(문자열)
				type : 요청 메소드(문자열)-get(default),post 방식
				data : 요청 파라미터(문자열, 객체)
				success : 수신 성공시 실행(함수)
				error : 수신 실패 시 실행(함수) - ex.요청 url이 없으면 404에러 = 수신 실패
			*/
			
			//결과 응답
			$.ajax({
				url: 'hello.jsp',
				success: function(data){
					$('#msgView').append(data)
				}, error: function(data){
					alert('실패')
				}
			})
			//통신 확인은 개발자도구 -> Netword 탭 중요!
			//요청 목록(Name) Status:200(=ok 성공) 404(=file not found 실패) http 상태코드
			//Response 로 날라오는 내용 확인 가능
			//-> 그 내용이 function(data) data인자로 날라온다 => 이 data를 append해주면 출력 가능!
			//화면의 일부분만 수정하고 있으므로 url 변경 X
			
		})
	})
</script>
</head>
<body>
	<h2>서버에서 받은 메세지</h2>
	<div id="msgView"></div><br>
	<button>서버에서 자료요청</button>
	<%-- hello.jsp 의 내용을 요청해서 div에 출력하려고 한다
		기존 방식(비동기): localhost:9999/Lecture-Web/ajax/exam01/hello.jsp 형태로 요청해왔어야 함
		새로운 방식(동기): http://localhost:9999/Lecture-Web/ajax/exam01/exam01.jsp 동일한 url인데
			          hello.jsp의 내용을 가져오기
			          =ajax 통신 --%>
	
</body>
</html>