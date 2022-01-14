<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	//쿠키 받아옴
	String cName = request.getParameter("cName");
	String cValue = request.getParameter("cValue");
	String cAge = request.getParameter("cAge");
	
	//encoding
	cName = URLEncoder.encode(cName, "utf-8");
	cValue = URLEncoder.encode(cValue, "utf-8");
	
	//쿠키 생성
	Cookie cookie = new Cookie(cName, cValue);
	
	//유효시간 설정               cAge의 양쪽 공백을 지운 크기가 0이 아니면
	if(cAge != null && cAge.trim().length() != 0) {
		int age = Integer.parseInt(cAge);
		cookie.setMaxAge(age * 60);  //분 단위로 받아온 값을 초 단위로 바꿈  =1분
	}

	//쿠키 전송
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 설정 완료</h2>
	
	<a href="get.jsp">설정된 쿠키 정보 보기</a>
</body>
</html>