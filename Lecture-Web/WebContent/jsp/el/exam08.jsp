<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.co.mlec.board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//방법1. (List + Map)
	Map<String, String> board = new HashMap<>();
	board.put("title", "성공");

	List<Map<String, String>> boardList = new ArrayList<>();
	boardList.add(board);

	pageContext.setAttribute("boardList", boardList);

	
	//방법2. (List + Java beans)
  /*BoardVO board = new BoardVO();
	board.setTitle("성공");
	
	List<BoardVO> boardList = new ArrayList<>();
	boardList.add(board);
	
	pageContext.setAttribute("boardList", boardList);*/

	
	//방법3. (Array + Java beans)
  /*BoardVO board = new BoardVO();
	board.setTitle("성공");
	
	BoardVO[] boardList = {board};
	
	pageContext.setAttribute("boardList", boardList);*/

	
	//방법4. (Array + Map)
  /*Map<String, String> board = new HashMap<>();
	board.put("title","성공");
	
	Map[] boardList = {board};
	
	pageContext.setAttribute("boardList", boardList);*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	성공/실패? ${ boardList[0].title }<br>  <%-- 성공 출력 --%>
</body>
</html>