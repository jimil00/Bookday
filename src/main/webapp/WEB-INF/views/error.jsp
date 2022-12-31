<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
@font-face {
	font-family: 'NanumSquareNeo-Variable';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

* {
	box-sizing: border-box;
	font-family: 'NanumSquareNeo-Variable';
}

div {
	border: 1px solid black;
}

.container {
	margin: auto;
	overflow: hidden;
	width: 978px;
}

.header {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<img src="bookday_logotitle.png">
		</div>
		<div class="body">
			죄송합니다. 현재 찾을 수 없는 페이지를 요청하셨습니다.<br> 페이지가 존재하지 않거나, 사용할 수 없는
			페이지입니다.<br> 주소가 올바른지 다시 한번 확인해주세요.<br>
			<br> 문제가 반복되어 발생하면 고객센터에 문의해 주시기 바랍니다. <br> 감사합니다. <br>
			<button>메인으로</button>
			<button>이전페이지</button>
		</div>
		<div class="footer"></div>
	</div>
</body>
</html>