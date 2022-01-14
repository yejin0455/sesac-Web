<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String[] names = { "홍길동", "강길동", "윤길동", "송길동", "김길동" };

	pageContext.setAttribute("names", names);
	pageContext.setAttribute("namesLength", names.length);  //"namesLength"=5
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set value="0" var="cnt" />
	<c:forEach items="${ names }" var="name">
    	${ name }
    	<c:set value="${ cnt + 1 }" var="cnt" />
		<c:if test="${ cnt < namesLength }"> , </c:if>
	</c:forEach>


	<c:forEach begin="0" end="${ namesLength - 1}" var="i">
         ${ names[i] }
         <c:set var="cnt" value="${ cnt + 1 }" />
		 <c:if test="${ cnt < namesLength}"> , </c:if>
	</c:forEach>



	<c:forEach items="${ names }" var="name"> <%-- names를 name이 받아옴 --%>
		${ name }
	</c:forEach>
	<br>
	
	<c:forEach begin="0" end="${ namesLength - 1 }" var ="i">
		${ names[i] }
	</c:forEach>
	<hr>
	
	
	<h3>1~10 사이의 정수 출력</h3>
	<c:forEach begin="1" end="10" var="i">
		${ i }<br>
	</c:forEach>
	
	
	<br> 년도 선택 :
	<select>
		<c:forEach begin="1970" end="2022" var="year">
			<option>${ year }</option>
		</c:forEach>
	</select>
</body>
</html>