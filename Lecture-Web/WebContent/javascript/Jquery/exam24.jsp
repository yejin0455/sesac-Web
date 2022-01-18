<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {
		width: 100px;
		height: 100px;
		float: left;
	}
	
	button {
		width: 50px;
		height: 50px;
		float: left;
		margin-top: 25px;
		margin-left: 5px;
		margin-right: 5px;
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		/* 
		$('button').click(function() {
			$('img').first().appendTo('body')  //첫번째 이미지 태그를 잘라내서 body의 자식으로 씀 -> body의 맨 뒤로 감
			$('img').last().prependTo('body')  //마지막 이미지 태그를 잘라내서 body의 자식으로 씀 -> body의 맨 앞으로 감
		})
		 */
		 
		 $('#btn01').click(function() {
			 $('img').first().appendTo('span')
		 })
		 $('#btn02').click(function() {
			 $('img').last().prependTo('span')
		 })
		 
		 setInterval(function() {
			 $('#btn02').trigger('click')
		 }, 2000)
		 
	})
</script>
</head>
<body>
	<button id="btn01">&lt;&lt;</button>
	<span>
		<img src="/Lecture-Web/html/images/dog1.jpg">
		<img src="/Lecture-Web/html/images/dog2.jpg">
		<img src="/Lecture-Web/html/images/dog3.jpg">
		<img src="/Lecture-Web/html/images/pencil.png">
	</span>
	<button id="btn02">&gt;&gt;</button>
</body>
</html>