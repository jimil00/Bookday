<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rental Completed</title>
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

/* div {
   border: 1px solid black;
} */
.container {
	margin: auto;
	overflow: hidden;
	width: 978px;
}

hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid rgb(216, 216, 216);
	margin-top: 15px;
	margin-bottom: 15px;
}

/* header */
.header {
	height: 150px;
	overflow: hidden;
}

.logo {
	float: left;
	position: relative;
	height: 100%;
	width: 55%;
}

#logoImg {
	height: 50%;
	position: absolute;
	bottom: 0px;
	left: 0px;
}

.search {
	float: left;
	position: relative;
	height: 100%;
	width: 25%;
}

.searchBox {
	position: absolute;
	bottom: 5px;
	left: 0px;
	overflow: hidden;
	height: 40px;
	width: 100%;
	border: none;
	border-radius: 5px;
	box-shadow: 3px 3px 3px 3px #80808050;
}

.searchTxt {
	float: left;
	padding: 0;
	background: none;
	border: none;
	outline: none;
	font-size: 15px;
	line-height: 40px;
	position: absolute;
	left: 10px;
}

.searchBtn {
	position: absolute;
	right: 0px;
	line-height: 100px;
	border: none;
	background-color: #ffffff;
	color: #5397fc50;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.icons {
	float: left;
	position: relative;
	width: 20%;
	height: 100%;
}

.signBox {
	display: flex;
	justify-content: flex-end;
}

.signBox>a {
	margin: 5px;
	text-decoration: underline;
	text-underline-offset: 5px;
	text-decoration-color: grey;
	color: black;
}

.signBox>a:hover {
	color: #5397fc;
	text-decoration-color: #5397fc;
}

#nick {
	text-decoration: none;
}

#nick:hover {
	color: black;
	cursor: default;
}

.iconBox {
	position: absolute;
	bottom: 0px;
	right: 0px;
}

span.size-40 {
	font-size: 40px;
	color: black;
	font-variation-settings: 'FILL' 0, 'wght' 200, 'GRAD' 200, 'opsz' 40
}

span, #logoImg:hover {
	cursor: pointer;
}

/* header */

/* navi */
.navi {
	width: 100%;
	height: 50px;
}
/* body */
.body {
	overflow: hidden;
}

.body-span {
	cursor: text;
}

.body-top {
	overflow: hidden;
	padding-bottom: 50px;
}

#check-icon {
	float: left;
	position: relative;
	left: 36%;
	line-height: 33px;
	font-size: 30px;
	font-variation-settings: 'FILL' 0, 'wght' 600, 'GRAD' 0, 'opsz' 48
}

.check-text {
	float: left;
	position: relative;
	left: 36%;
	font-size: 30px;
	padding-left: 5px;
}

.body-left {
	/* overflow: auto; */
	width: 47%;
	float: left;
}

.left-main {
	overflow: hidden;
	width: 100%;
	height: 170px;
}

.book-count {
	float: left;
	width: 6%;
	height: 100%;
	line-height: 150px;
	padding-left: 8px;
}

.book-img-div {
	float: left;
	width: 23%;
	height: 100%;
}

#book-img {
	width: 93px;
	height: 140px;
}

.book-detail-div {
	float: left;
	width: 70%;
	height: 100%;
}

.book-detail {
	height: 100%;
}

.body-right {
	overflow: hidden;
	width: 45%;
	float: right;
}

.right-main {
	/* 	height: 170px; */
	padding-left: 10px;
	padding-top: 5px;
}

.right-bottom {
	text-align: center;
	font-weight: bold;
	font-size: 17px;
}

.body-bottom {
	height: 90px;
	padding-top: 40px;
	text-align: center;
	clear: both;
}

.bottom-btn {
	margin-left: 13px;
	width: 120px;
	height: 40px;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	background-color: #5397fc;
	cursor: pointer;
	box-shadow: 3px 3px #80808050;
}

</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<div class="logo">
				<img src="/resources/bookday_logotitle.png" id="logoImg">
			</div>
			<div class="search">
				<div class="searchBox">
					<form action="/search/toSearch" id="search" method="post">
						<input class="searchTxt" type="text" placeholder="검색어를 입력해 주세요"
							id="searchWord" name="searchWord">
						<button class="searchBtn" type="submit">
							<span class="material-symbols-outlined"> search </span>
						</button>
					</form>
				</div>
			</div>
			<div class="icons">
				<div class="signBox">
					<c:choose>
						<c:when test="${empty loginID}">
							<a href="/member/toLogin"><p class="user" id="login">로그인</p></a>
							<a href="/member/toSignup"><p class="user" id="signup">회원가입</p></a>
						</c:when>
						<c:otherwise>
							<a id="nick"><p class="user" id="user">${nickname}님</p></a>
							<a href="/member/logout"><p class="user" id="logout">로그아웃</p></a>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="iconBox">
					<span class="material-symbols-outlined size-40" id="notifications">notifications</span>
					<span class="material-symbols-outlined size-40" id="bookbag">shopping_bag</span>
					<span class="material-symbols-outlined size-40" id="bookshelves">shelves</span>
					<span class="material-symbols-outlined size-40" id="mypage">person</span>
				</div>
			</div>
		</div>
		<hr id="headerHr">
		<div class="navi"></div>
		<div class="body">
			<div class="body-top">
				<div class="material-symbols-outlined" id="check-icon">
					check_circle</div>
				<div class="check-text">대여가 완료되었습니다.</div>
			</div>
			<div class="body-left">
				<hr style="margin-top: 5px;">
				<c:forEach var="rental" items="${list}" varStatus="status">
					<div class="left-main">
						<div class="book-count">${status.count}</div>
						<div class="book-img-div">
							<img src="${rental.b_img_url }" id="book-img">
						</div>
						<div class="book-detail-div">
							<div class="book-detail">
								<div style="font-weight: bold;">${rental.b_title }</div>
								<div style="font-size: 14px; padding-top: 10px;">${rental.b_writer }</div>
							</div>
						</div>
					</div>
					<hr style="margin-top: -14px;">
				</c:forEach>
			</div>
			<div class="body-right">
				<hr style="margin-top: 5px;">
				<div class="right-main">
					<div style="padding-bottom: 15px;">
						<span class="body-span" style="font-weight: bold;">${dto.address1 }
							(${dto.address2 })</span> 로 배달 예정입니다.
					</div>
					<div style="padding-bottom: 15px;">
						총 <span class="body-span" style="font-weight: bold;">${fn:length(list)}</span> 권이
						대여되었습니다.
					</div>
					<div style="padding-bottom: 15px;">
						<c:set var="arrivalDate"
							value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 2)%>" />
						<c:set var="returnDate"
							value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 12)%>" />
						도착 예정일은 <span class="body-span" style="font-weight: bold;"><fmt:formatDate
								value="${arrivalDate}" pattern="yyyy-MM-dd(E)" /></span> 입니다.
					</div>
					<div>
						반납일 <span class="body-span" style="font-weight: bold; color: #5397fc;"><fmt:formatDate
								value="${returnDate}" pattern="yyyy-MM-dd(E)" /></span> 입니다.
					</div>
				</div>
				<hr>
				<div class="right-bottom">반납일에 책가방을 문 앞에 꼭 놓아주세요!</div>
			</div>
			<div class="body-bottom">
				<button class="bottom-btn" type="button" id="home-btn">메인으로</button>
				<button class="bottom-btn" type="button" id="mypage-btn">마이페이지</button>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<script>
		$("#home-btn").on("click", function() {
			location.href = "/";
		})
		$("#mypage-btn").on("click", function() {
			if (${loginID == null}) {
	            location.href = "/member/toLogin";
	            return false;
	         }else {
	         location.href = "/member/toMypage";
	         }
		})

		$("#logoImg").on("click", function() {
			location.href = "/";
		})

		$("#searchword").on("keydown", function(e) {
			if (e.keyCode == 13) {
				$("#search").submit();
			}
		})
		$("#notifications").on("click", function() {
			  let now = new Date();
	    	  let hr=now.getHours();
	    	 let min= now.getMinutes();
			 alert("현재 시간은 "+hr+":"+min);
		})
		$("#bookbag").on("click", function() {
			location.href = "/delivery/selectBookbagListById";
		})
		$("#bookshelves").on("click", function() {
			location.href = "/bookshelves/selectAllBookshelves";
		})
		 $("#mypage").on("click", function() {
	         if (${loginID == null}) {
	            location.href = "/member/toLogin";
	            return false;
	         }else {
	         location.href = "/member/toMypage";
	         }
      	})
	</script>
</body>
</html>