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
		position: absolute;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$('div').animate({
			'width' : '+=100px'
		}, 1000)
		
		$('div').animate({
			'width' : '100px',
			'left' : '100px'
		}, 2000)
		
		$('div').animate({
			'top' : '100px',
			'height' : '200px'
		}, 1000)
		
		$('div').animate({
			'left' : '0px',
			'top' : '+=100px',
			'height' : '100px',
			'background-color' : 'purple'
		}, 2000, function() {
			$(this).css('background-color', 'blue')
		})
	})
</script>
</head>
<body>
	<div></div>
</body>
</html>