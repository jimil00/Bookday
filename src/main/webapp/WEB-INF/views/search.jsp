<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<title>Search</title>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
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
   right: 40px;
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
	height: 35px;
	width: 974px;
	font-size: 17px;
	line-height: 35px;
	padding-left: 10px;
	color: #808080;
	background-color: #5397fc50;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
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
	/* 	text-align: center; */
	float: left;
	margin-left: 22px;
	margin-bottom: 20px;
	margin-top: 20px;
}

.book-img {
	width: 120px;
	height: 180px;
	border-radius: 4%;
	box-shadow: 3px 3px #80808050;
}


.b_title {
	overflow: hidden;
	height: 23px;
	width: 120px;
	font-weight: bold;
	font-size: 15px; 
	text-align: center;
	word-wrap : break-word;
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: break-word;
	word-wrap: break-word
}

.b_writer {
	overflow: hidden;
	height: 23px;
	width: 120px;
	text-align: center;
	word-wrap: break-word;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 14px;
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
	margin-left: 55px;
	margin-bottom: 20px;
	margin-top: 25px;
	border: 1px solid #5397fc40;
	border-radius: 15px;
	box-shadow: 3px 3px #80808050;
}

.post-main-top {
	overflow: hidden;
}

.profile-img-div {
	float: left;
	padding-right: 10px;
	padding-left: 10px;
}

.profile-img {
	width: 55px;
	height: auto;
	border-radius: 50%;
}

.p-writer {
	padding-top: 10px;
	height: 27px;
	overflow: hidden;
	width: 150px;
	display: inline-block;
	font-weight: bold;
	font-size: 15px;
	word-wrap: break-word;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.p-like {
	overflow: hidden;
}

.like-icon {
	float: left;
	position: relative;
	bottom: 1px;
	font-size: 18px;
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 48;
/* 	font-size: 18px; */
}

.like-text {
	float: left;
	position: relative;
	line-height: 19px;
	padding-left: 3px;
	font-size: 13px;
}

.p-title {
	overflow: hidden;
	width: 100%;
	height: 30px;
	font-size: 15px; 
	font-weight : bold;
	padding-top: 3px;
	padding-left: 10px;
	padding-right: 10px;
	word-wrap: break-word;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-weight: bold;
}

.p-content {
	overflow: hidden;
	font-size: 15px;
	padding-left: 10px;
	padding-right: 10px;
	display: -webkit-box;
	width: 100%;
	height: 152px;
	-webkit-line-clamp: 7;
	-webkit-box-orient: vertical;
	/* 	word-wrap: break-word; */
	text-overflow: ellipsis;
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
			<div class="member">
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
			<div class="book">
				<div class="book-header">도서 검색 결과 (${fn:length(blist)})</div>
				<c:choose>
					<c:when test="${fn:length(blist) == 0}">
						<div style="padding-top: 35px; text-align: center;">'${searchWord }'
							에 대한 검색 결과가 없습니다.</div>
					</c:when>
					<c:otherwise>
						<c:forEach var="book" items="${blist }">
							<div class="book-main">
								<a href="/book/selectBookinfo?b_isbn=${book.b_isbn }"><img
									class="book-img" title="${book.b_title }"
									src="${book.b_img_url }"></a>
								<div class="b_title">${book.b_title }</div>
								<div class="b_writer">${book.b_writer }</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="post">
				<div class="post-header">포스트 검색 결과 (${fn:length(plist)})</div>
				<c:choose>
					<c:when test="${fn:length(plist) == 0}">
						<div style="padding-top: 35px; text-align: center;">작성된 포스트가
							없습니다.</div>
					</c:when>
					<c:otherwise>
						<c:forEach var="post" items="${plist}">
							<div class="post-main">
								<br>
								<div class="post-main-top">
									<div class="profile-img-div">
										<img src="/resources/profile/${post.sysprofname}" class="profile-img">
									</div>
									<div class="p-writer">${post.p_writer_nn }</div>
									<div class="p-like">
										<div class="like-icon material-symbols-outlined"
											data-count="0">thumb_up</div>
										<div class="like-text">${post.p_like_count }</div>
									</div>
								</div>
								<hr style="border-top: 1px">
								<div class="p-title" title="${post.p_title }">${post.p_title }</div>
								<div class="p-content">
									<a href="/booknote/selectPostByPseq?p_seq=${post.p_seq }" style="text-decoration-line: none; color: black;" id="post-link">${post.p_content }</a>
								</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<script>
		$("#post-link").on("click", function() {
	  	  if(${loginID == null}) {
	  		 alert("로그인 후 이동할 수 있습니다.");
	  		 return false;
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