<%@page import="kr.co.mlec.member.dao.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.mlec.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.mlec.util.JDBCClose"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	MemberDAO dao = new MemberDAO();
	List<MemberVO> mList = dao.selectAllMember();

	pageContext.setAttribute("memberList", mList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
hr, table {
	width: 80%
}
</style>
<script type="text/javascript">
	function addMemberForm() {
		location.href = "addMemberForm.jsp"
	}
</script>
</head>
<body>
	<div align="center">
		<hr>
		<h2>전체 회원 목록</h2>
		<hr>
		<br>
		<table border="1">
			<tr>
				<th width="7%">아이디</th>
				<th width="7%">이름</th>
				<th width="20%">이메일</th>
				<th width="15%">연락처</th>
				<th width="8%">우편번호</th>
				<th>주소</th>
				<th width="5%">타입</th>
				<th width="10%">가입날짜</th>
			</tr>

			<%-- <%
			while(rs.next()) {
				String id = rs.getString("ID");
				String name = rs.getString("NAME");
				String email = rs.getString("EMAIL");
				String tel = rs.getString("TEL");
				String post = rs.getString("POST");
				String addr = rs.getString("ADDR");
				String type = rs.getString("TYPE");
				String regDate = rs.getString("REG_DATE");
			%>
			<tr>
				<td><%= id %></td>
				<td style="text-align:center;"><%= name %></td>
				<td><%= email %></td>
				<td style="text-align:center;"><%= tel %></td>
				<td style="text-align:center;"><%= post %></td>
				<td><%= addr %></td>
				<td style="text-align:center;"><%= type %></td>
				<td style="text-align:center;"><%= regDate %></td>
			</tr>
			<%
			}
			%> --%>

			<c:forEach items="${ memberList }" var="member">
				<tr>
					<td>${ member.id }</td>
					<td style="text-align: center;">${ member.name }</td>
					<td>${ member.email }</td>
					<td style="text-align: center;">${ member.tel }</td>
					<td style="text-align: center;">${ member.post }</td>
					<td>${ member.addr }</td>
					<td style="text-align: center;">${ member.type }</td>
					<td style="text-align: center;">${ member.regDate }</td>
				</tr>
			</c:forEach>

		</table>
		<br>
		<button onclick="addMemberForm()">등록</button>
	</div>
</body>
</html>