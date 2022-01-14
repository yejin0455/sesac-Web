<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">
<style>
	table {
		width: 40%
	}
</style>
<script src="/Mission-Web/js/myJS.js"></script>
<script type="text/javascript">

	function checkForm() {
		let f = document.loginForm;
		if(isNull(f.id, '아이디를 입력하세요'))
			return false
		if(isNull(f.password, '패스워드를 입력하세요'))
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
				<h2>로그인</h2>
			<hr>
			<form name="loginForm" method="post" action="login.jsp" onsubmit="return checkForm()">
				<table>
					<tr>
						<th>ID</th>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<th>PASSWORD</th>
						<td><input type="password" name="password"></td>
					</tr>
				</table>
				<br>
				<button type="submit">로그인</button>
			</form>
		</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %> <!-- 절대경로 위치 - Mission-Web/ <include, web-inf, xml> -->
	</footer>
</body>
</html>