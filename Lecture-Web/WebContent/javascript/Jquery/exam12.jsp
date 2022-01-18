<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div {
		width: 100px;
		height: 100px;
		background-color: red;
		display: none;  /* none이면 생기고, none이 없으면 사라짐 */
		position: absolute;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		/* $('div').animate({
			width : '200px',
			height : '+=200px'
		}, 2000) */
		
		$('div').animate({
			width : 'toggle',
			height : 'toggle',
			left: '100px',
			top: '50px',
			opacity: '0.4'  //투명도
		}, 2000)
	})
</script>
</head>
<body>
	<div></div>
</body>
</html>