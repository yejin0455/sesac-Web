<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		width:100px;
		height:100px;
		background-color:red;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		/*
		$('div').css({
			'width' : '100px',
			'height' : '100px',
			'background-color' : 'red'
		}) 
		*/
		
		//$('div').hide(1000)
		//$('div').show(1000)
		//$('div').toggle(1000)  //스위치반복
		//$('div').toggle(1000)  //스위치반복
		
		$('div').fadeOut(2000)
		$('div').fadeIn(2000)
		//$('div').fadeToggle(2000)  //스위치반복
		//$('div').fadeToggle(2000)  //스위치반복
		
		//$('div').fadeTo(1000, 0.6)  //1불투명 ~ 0투명
	
	})
</script>
</head>
<body>
	<!-- <div style="width:100px; height:100px; background-color:red;"></div> -->
	<div></div>
</body>
</html>