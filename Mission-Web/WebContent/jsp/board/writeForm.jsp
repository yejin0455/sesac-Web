<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록 페이지</title>
<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">
<style>
hr {
	width: 80%
}

table {
	width: 50%
}
</style>
<script type="text/javascript">
	function doWrite() {
		let f = document.inputForm
		
		if(f.title.value == '') {
			alert('제목을 입력하세요')
			f.title.focus()
			return false
		}
		
		if(f.write.value == '') {
			alert('글쓴이를 입력하세요')
			f.writer.focus()
			return false
		}
		
		if(f.content.value == '') {
			alert('내용을 입력하세요')
			f.content.focus()
			return false
		}
		
		return true
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
	<div align="center">
		<hr>
			<h2>새글 등록</h2>
		<hr>
		<br>
		<form action="write.jsp" method="post" onsubmit="return doWrite()">
		<input type="hidden" name="writer" value="${ userVO.id }">
			<table border="1">
				<tr>
					<th width="15%">제목</th>
					<td><input type="text" name="title" required></td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td>
					${ userVO.id }
					<!-- <input type="text" name="writer" required> -->
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" rows="7" cols="60" required></textarea></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="새글등록">
		</form>
	</div>
	</section>
		<footer>
		<%@ include file="/jsp/include/footer.jsp" %> <!-- 절대경로 위치 - Mission-Web/ <include, web-inf, xml> -->
	</footer>
</body>
</html>