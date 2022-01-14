<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="kr.co.mlec.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	http://localhost:9999/Mission-Web/jsp/board/detail.jsp?no=3
	
	작업순서
	1. 요청 URL의 파라미터 분석 => 게시글 번호 추출
	2. DB tbl_board에서 추출된 게시글 번호의 게시물 조회
	3. HTML에 조회된 게시물 연결
 --%>
<%
	//1.
//	String boardNo = request.getParameter("no");  //request.getParameter -> 무조건 return String 타입
	int boardNo = Integer.parseInt(request.getParameter("no")); //-> Integer로 형변환
	//System.out.println("boardNo : " + boardNo);  //확인

	//2.
/* 	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	sql.append("select no, title, writer, content, view_cnt, ");
	sql.append("to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
	sql.append("from tbl_board ");
	sql.append("where no = ? ");
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	pstmt.setInt(1, boardNo);
	ResultSet rs = pstmt.executeQuery();

	rs.next(); */
	
	BoardDAO dao = new BoardDAO();
	BoardVO board = dao.selectBoardByNo(boardNo);
	
	dao.hits(boardNo);	
	
	//공유영역에 등록 (JSP에서 EL, JSTL로 접근하기 위해서)
	pageContext.setAttribute("board", board);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세 페이지</title>
<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">
<script type="text/javascript">
	function doAction(type) {
		switch(type) {
		case 'U' : 
			location.href = "updateForm.jsp?no=${ param.no }"
			break
			
		case 'D' : 
			
			break
			
		case 'L' : 
			location.href = "list.jsp"
			break
		}
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
		<h2>게시판 상세</h2>
		<hr>
		<br>
		<table border="1">
			<tr>
				<th width="15%">번호</th>
				<td>${ board.no }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${ board.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${ board.content }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td>${ board.regDate }</td>
			</tr>
		</table>
		<br>
		<c:if test="${ board.writer eq userVO.id }">
			<button onclick="doAction('U')">수정</button>
			<button onclick="doAction('D')">삭제</button>
		</c:if>
		<button onclick="doAction('L')">목록</button>
	</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %> <!-- 절대경로 위치 - Mission-Web/ <include, web-inf, xml> -->
	</footer>
</body>
</html>











<%-- </head>
<body>
	<div align="center">
		<hr>
		<h2>게시판 상세</h2>
		<hr>
		<br>
		<table border="1">
			<tr>
				<th width="15%">번호</th>
				<td>${ board.no }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${ board.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${ board.content }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td>${ board.regDate }</td>
			</tr>
		</table>
		<br>
		<button onclick="doAction('U')">수정</button>
		<button onclick="doAction('D')">삭제</button>
		<button onclick="doAction('L')">목록</button>
	</div>
</body>
</html> --%>