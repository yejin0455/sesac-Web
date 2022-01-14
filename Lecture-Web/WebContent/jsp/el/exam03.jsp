<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		객체 등록 : 공유영역.setAttribute("이름", "값")
		공유 영역 4가지 : pageContext, request, session, application
				pageContext : 실행하는 한 페이지
        		request : 한 번 요청했을 때 실행한 모든 파일
        		session : 하나의 서버에서 서버가 죽을때 까지 실행한 모든 파일
        		application : 여러 대의 클라이언트와 실행한 모든 파일
	*/
	
	pageContext.setAttribute("msg", "page영역에 객체 등록");
		
	String msg = (String)pageContext.getAttribute("msg");  //getAttribute -> return Object -> String으로 형변환
			
	request.setAttribute("msg", "request영역에 객체 등록");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	msg : <%= pageContext.getAttribute("msg") %><br>
	msg : <%= msg %><br>
	
	<%--
		EL에서 공유영역 4가지 : pageScope, requestScope, sessionScope, applicationScope
	 --%>
	
	msg : ${ msg }<br>
	request msg : ${ requestScope.msg }<br>
	session msg : ${ sessionScope.msg }<br>
</body>
</html>