<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("id", "hong");
	%>
	msg : <%= msg %><br>
	phone : ${ phone }<br>
	<h2>인클루드 전</h2>
	<h3>파라미터 미설정<br></h3>
	<c:import url="one.jsp" />
	<%@ include file="one.jsp" %>
	phone : ${ phone }<br>
	<h3>파라미터 설정<br></h3>
	<c:import url="one.jsp">
		<c:param name="name" value="hong" />
		<c:param name="age" value="22" />
	</c:import>
	<h2>인클루드 후</h2>
	<%-- <c:import url="http://sesac.seoul.kr" /> --%>
</body>
</html>