<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	작업순서
	1. writeForm.jsp에서 넘겨준 제목(title), 글쓴이(writer), 내용(content) 추출
	2. tbl_board 테이블에 추출된 정보로 새게시글 삽입(insert)
--%>
<%
	//요청 객체 데이터 인코딩  -> get방식에선 필수
	request.setCharacterEncoding("utf-8");
	
	//요청 객체에서 입력한 데이터 추출
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	//데이터베이스 tbl_board테이블에 새 글 등록
/* 	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	sql.append("insert into tbl_board(no, title, writer, content) ");
	sql.append("values(seq_tbl_board_no.nextval, ?, ?, ?) ");
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	pstmt.setString(1, title);
	pstmt.setString(2, writer);
	pstmt.setString(3, content); 
	pstmt.executeUpdate(); */
	
	
	BoardVO board = new BoardVO();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	
	BoardDAO dao = new BoardDAO();
	dao.insertBoard(board);
%>
<script>
	alert('새 글 등록이 완료되었습니다')
	location.href = 'list.jsp'
</script>