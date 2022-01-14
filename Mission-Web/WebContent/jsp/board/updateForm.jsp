<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
/*
	작업 순서
	1. 요청 파라미터에서 조회할 게시글 번호 추출
	2. 게시글 번호로 해당 게시글을 DB(tbl_board) 조회
	3. form에 조회된 게시글 출력
*/

	int boardNo = Integer.parseInt(request.getParameter("no"));
	
	BoardDAO dao = new BoardDAO();
	BoardVO board = dao.selectBoardByNo(boardNo);
	
	pageContext.setAttribute("board", board);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록 페이지</title>
<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">

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
			<h2>게시글 수정</h2>
		<hr>
		<br>
		<form action="update.jsp" method="post" name="inputForm" onsubmit="return doWrite()">
			<input type="hidden" name="no" value="${ param.no }">
			<table border="1">
			<tr>
				<th>번호</th>
				<td>${ board.no }</td>
			</tr>
				<tr>
					<th width="15%">제목</th>
					<td><input type="text" name="title" value="${ board.title }"></td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td><input type="text" name="writer" value="${ board.writer }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" rows="7" cols="60" required>${ board.content }</textarea></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="수정">
		</form>
	</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %> <!-- 절대경로 위치 - Mission-Web/ <include, web-inf, xml> -->
	</footer>
</body>
</html>