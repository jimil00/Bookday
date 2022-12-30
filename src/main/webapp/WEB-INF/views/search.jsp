<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
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
	/* 	border: 1px solid black; */
	
}

.container {
	margin: auto;
	overflow: hidden;
	width: 978px;
}

button:hover {
	cursor: pointer;
}

/* header */
.header {
	height: 150px;
	overflow: hidden;
}

/* logo */
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

#logoImg:hover {
	cursor: pointer;
}

/* search */
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
	box-shadow: 2px 2px 2px 2px #80808050;
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

/* member */
.member {
	float: left;
	position: relative;
	width: 20%;
	height: 100%;
}
/* icon */
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

/* headerHr */
#headerHr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid rgb(216, 216, 216);
	margin-top: 15px;
	margin-bottom: 15px;
}

/* header */

/* login */
.signBox {
	display: flex;
	justify-content: flex-end;
}

.signBox>a {
	margin: 5px;
	text-decoration: none;
	text-underline-offset: 5px;
	color: black;
}

.signBox>a:hover {
	color: #5397fc;
}

#nick {
	text-decoration: none;
}

#nick:hover {
	color: black;
	cursor: default;
}

.login_form {
	margin-top: 200px;
}

/* navi */
.navi {
	width: 100%;
	height: 50px;
}

/* body */
.body {
	overflow: hidden;
}

.book-header, .post-header {
	/* height: 50px; */
	font-size: 25px;
}

.book {
	overflow: hidden;
}

.body-hr {
		border-top: 1px solid rgb(216, 216, 216);
}

.book-main {
	overflow: hidden;
	width: 140px;
	text-align: center;
	float: left;
	margin-left: 19px;
	margin-bottom: 20px;
	margin-top: 10px;
}

.book-img {
	width: 120px;
	height: 180px;
}

.b_title {
	overflow: hidden;
	display: -webkit-box;
	width: 100%;
	height: 37px;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	text-overflow: ellipsis;
}

.b_writer {
	overflow: hidden;
	height: 25px;
	padding-top: 5px;
	word-wrap: break-word;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.post {
	padding-top: 40px;
	overflow: hidden;
}

.post-main {
	overflow: hidden;
	width: 250px;
	height: 300px;
	float: left;
	text-align: center;
	margin-left: 55px;
	margin-bottom: 20px;
	margin-top: 10px;
	border: 1px solid #5397fc;
	border-radius: 15px;
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
							id="searchWord" name="searchWord" value=${searchWord }>
						<button class="searchBtn" type="submit">
							<span class="material-symbols-outlined"> search </span>
						</button>
					</form>
				</div>
			</div>
			<div class="member">
				<div class="signBox">
					<c:choose>
						<c:when test="${empty loginID}">
							<a href="/member/toLogin"><p class="user" id="login">로그인</p></a>
							<a href="/member/toSignup"><p class="user" id="signup">회원가입</p></a>
							<a href="/book/selectBookinfo?b_isbn=9788936434267"><p
									class="user" id="test">상세 페이지 테스트</p></a>
						</c:when>
						<c:otherwise>
							<a id="nick"><p class="user" id="user">${nickname}님</p></a>
							<a href="/member/logout"><p class="user" id="logout">로그아웃</p></a>
							<a href="/book/selectBookinfo?b_isbn=9788936434267"><p
									class="user" id="test">상세 페이지 테스트</p></a>
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
			<div class="book">
				<div class="book-header">도서</div>
				<hr class="body-hr">
				<c:choose>
					<c:when test="${fn:length(blist) == 0}">
						<div style="padding-top: 20px; text-align: center;">'${searchWord }'
							에 대한 검색 결과가 없습니다.</div>
					</c:when>
					<c:otherwise>
						<c:forEach var="book" items="${blist }">
							<div class="book-main">
								<img class="book-img" src="${book.b_img_url }">
								<div class="b_title" title="${book.b_title }">${book.b_title }</div>
								<div class="b_writer" title="${book.b_writer }">${book.b_writer }</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="post">
				<div class="post-header">포스트</div>
				<hr class="body-hr">
				<c:choose>
					<c:when test="${fn:length(plist) == 0}">
						<div style="padding-top: 20px; text-align: center;">작성된 포스트가
							없습니다.</div>
					</c:when>
					<c:otherwise>
						<c:forEach var="post" items="${plist }">
							<div class="post-main"><br>
								<div class="p_writer"><span style="font-weight: bold;">${post.p_writer_nn }</span> 님의포스트</div>
								<div class="p_like_count"> <span class="p_like_icon material-symbols-outlined" data-count="0">thumb_up</span>${post.p_like_count }</div>
								<hr class="body-hr">
								<div class="p_title">${post.p_title }</div>
								<div class="p_content">${post.p_content }</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<script>
      $("#logoImg").on("click", function() {
         location.href = "/";
      })
      $("#searchword").on("keydown", function(e) {
         if (e.keyCode == 13) {
            $("#search").submit();
         }
      })
      $("#notifications").on("click", function() {
         location.href = "//toNotification";
      })
      $("#bookbag").on("click", function() {
    	  if(${loginID == null}) {
              location.href = "/member/toLogin";
    	  }else {
         	  location.href = "/delivery/selectBookbagListById?id=${loginID }";
    	  }
      })
      $("#bookshelves").on("click", function() {
         location.href = "/bookshelves/selectBookshelvesListById";
      })
      $("#mypage").on("click", function() {
         if (loginID == null) {
            location.href = "/member/tologin";
            return false;
         }else {
         location.href = "/member/toMypage";
         }
      })
   </script>
</body>
</html>