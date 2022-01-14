<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.util.JDBCClose"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	/* tbl_board에서 전체 게시글 (번호, 제목, 작성자, 등록일) 조회*/
/* 	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	sql.append("select no, title, writer, to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
	sql.append("from tbl_board ");
	sql.append("order by no desc ");
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	ResultSet rs = pstmt.executeQuery();
	
	List<BoardVO> list = new ArrayList<>();
	
	while(rs.next()) {
		int no = rs.getInt("no");
		String title = rs.getString("title");
		String writer = rs.getString("writer");
		String regDate = rs.getString("reg_date");
		BoardVO board = new BoardVO(no, title, writer, regDate);
		//System.out.println(board);
		
		list.add(board);
	} 
	JDBCClose.close(pstmt, conn);  */
	
	BoardDAO dao = new BoardDAO();
	List<BoardVO> list = dao.selectAllBoard();
	
	pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">
<script type="text/javascript">
	function goWriteForm() {
		location.href = "writeForm.jsp"
	}
	
	function doAction(boardNo) {
		<c:choose>
			<c:when test="${ not empty userVO}">
				location.href = "detail.jsp?no=" + boardNo
			</c:when>
			<c:otherwise>
				if(confirm('로그인 서비스가 필요합니다\n로그인 페이지로 이동하시겠습니다?')) {
					location.href = '/Mission-Web/jsp/login/loginForm.jsp'
				}
			</c:otherwise>
		</c:choose>
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
		<h2>게시판 목록</h2>
		<hr>
		<br>
		<table border="1" class="list">
			<tr>
				<th width="5%">번호</th>
				<th>제목</th>
				<th width="10%">글쓴이</th>
				<th width="10%">등록일</th>
			</tr>
			
		<c:forEach items="${ list }" var="board">
				<tr>
					<td style="text-align:center;">${ board.no }</td>
	
					<td>
						<a href = "javascript:doAction(${ board.no })">
							<c:out value="${ board.title }" />
						</a>
					<%-- <a href="detail.jsp?no=${ board.no }">
						<c:out value="${ board.title }" /></a> --%>
					</td>
					<td>${ board.writer }</td>
					<td>${ board.regDate }</td>
				</tr>
			</c:forEach>	
		</table>
		<br>
		
		<c:if test="${ not empty userVO }">
		<button onclick="goWriteForm()">새글등록</button>
		</c:if>
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
		<h2>게시판 목록</h2>
		<hr>
		<br>
		<table border="1">
			<tr>
				<th width="5%">번호</th>
				<th>제목</th>
				<th width="10%">글쓴이</th>
				<th width="10%">등록일</th>
			</tr>
			
	  <%
			while(rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String regDate = rs.getString("reg_date");
			%>
			<tr>
				<td style="text-align:center;"><%= no %></td>
				<td><a href="detail.jsp?no=<%= no %>"><%= title %></a></td>
				<td style="text-align:center;"><%= writer %></td>
				<td style="text-align:center;"><%= regDate %></td>
			</tr>
			<%
			}
			%>
			
		<c:forEach items="${ list }" var="board">
				<tr>
					<td style="text-align:center;">${ board.no }</td>
					<td><a href="detail.jsp?no=${ board.no }">
						<c:out value="${ board.title }" /></a></td>
					<td><c:out value="${ board.writer }" /></td>
					<td style="text-align:center;">${ board.regDate }</td>
				</tr>
			</c:forEach>	
		</table>
		<br>
		<button onclick="goWriteForm()">새글등록</button>
	</div>
</body>
</html> --%>