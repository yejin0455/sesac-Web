<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div {
		border: 1px solid red;
		padding: 10px;
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('button').click(function() {
			/* 
			let pTags = document.getElementsByTagName("p")  //특정 태그명을 가지고 있는 element의 집합을 가져오는 함수
//			pTags[0].parentNode.removeChild(pTags[0])  //부모노드에서 자식을 찾아서 지움, 첫번째꺼 한개만 지워짐
			
			for(let i=0; i<pTags.length; i++) {  //전체 p태그 삭제
				pTags[0].parentNode.removeChild(pTags[0])
			}
			 */
			 
//			 $('p').remove()  //p태그 다 지움
//			 $('div').remove()  //div를 포함한 div의 하위 태그 전부 삭제
//			 $('div').empty()  //div를 제외한 div의 하위 태그 전부 삭제
//			 $('p').remove('.c01')  //p태그 중에서 클래스가 c01인 태그를 지움 = $('p.c01')
			 $('p').remove('.c01, #id01')  //p태그 중에서 클래스가 c01인 태그와 아이디가 id01인 태그를 지움
		})
		
	})
</script>
</head>
<body>
	<div>
		<p id="id01">나는 홍길동입니다</p>
		<mark class="c01">나는 윤길동입니다</mark>
		<br>나는 고길동입니다<br>
		<p class="c01">나는 한길동입니다</p>
		<p>나는 김길동입니다</p>
	</div>
	<p class="c01">나는 박길동입니다</p>
	<button>삭제</button>
</body>
</html>