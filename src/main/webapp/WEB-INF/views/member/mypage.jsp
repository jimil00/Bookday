<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
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
	width: 500px;
	margin: auto;
}

.body-hr {
	margin-bottom: 15px;
	border-top: 1px solid rgb(216, 216, 216);
}

.body-top {
	height: 50px;
	text-align: center;
	font-size: 33px;
}

.body-title-mem {
	height: 50px;
	padding-top: 25px;
	font-size: 20px;
	color: #5397fc;
}

.body-title {
	height: 70px;
	padding-top: 45px;
	font-size: 20px;
	color: #5397fc;
}

.info {
	overflow: hidden;
}

.body-left {
	float: left;
	width: 30%;
	padding-bottom: 15px;
	font-weight: bold;
}

.body-right {
	width: 70%;
	float: right;
	padding-bottom: 15px;
}

.modify-btn-div {
	text-align: center;
}

#modify-btn {
	width: 180px;
	height: 40px;
	margin-top: 50px;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	background-color: #5397fc;
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
							<a href="/book/selectBookinfo?b_isbn=9788936434267">
								<p class="user" id="test">상세 페이지 테스트</p>
							</a>
						</c:when>
						<c:otherwise>
							<a id="nick"><p class="user" id="user">${nickname}님</p></a>
							<a href="/member/logout"><p class="user" id="logout">로그아웃</p></a>
							<a href="/book/selectBookinfo?b_isbn=9788936434267">
								<p class="user" id="test">상세 페이지 테스트</p>
							</a>
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
			 <div class="body-top">나의 정보</div>
            <div class="mem info">
                <div class="body-title-mem">회원정보</div>
                <hr class="body-hr">
                <div class="body-left">닉네임</div>
                <div class="body-right">짐이다</div>
                <div class="body-left">이름</div>
                <div class="body-right">강지민</div>
                <div class="body-left">휴대폰 번호</div>
                <div class="body-right">01056027047</div>
                <div class="body-left">이메일</div>
                <div class="body-right">vjimin2530@naver.com</div>
            </div>
            <div class="sub info">
                <div class="body-title">구독권정보</div>
                <hr class="body-hr">
                <div class="body-left">구독기간</div>
                <div class="body-right">2023-01-01 ~ 2023-01-31</div>
                <div class="body-left">남은 배송 횟수</div>
                <div class="body-right">3 번</div>
                <div class="body-left">남은 대여 권수</div>
                <div class="body-right">10 권</div>
            </div>
            <div class="rental info">
                <div class="body-title">대여정보</div>
                <hr class="body-hr">
                <div class="body-left">주소</div>
                <div class="body-right">서울 강북구 4.19로 23-1 (301호)</div>
                <div class="body-left">받는 분</div>
                <div class="body-right">강지민</div>
                <div class="body-left">휴대폰번호</div>
                <div class="body-right">01056027047</div>
                <div class="body-left">도착 예정일</div>
                <div class="body-right">2023-01-03</div>
                <div class="body-left">반납일</div>
                <div class="body-right">2023-01-13</div>
            </div>
            <div class="modify-btn-div"><button id="modify-btn">회원정보 수정</button></div>
		</div>
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
         if (${loginID == null}) {
            location.href = "/member/toLogin";
            return false;
         }else {
         location.href = "/member/toMypage";
         }
      })
      // 구독하기 버튼 기능
      $("#sub-btn").on("click", function() {
          if(${loginID == null}) {
                 location.href = "/member/toLogin";
            }else {
                 location.href = "/delivery/toPayment?id=${loginID }";
            }
      })
   </script>
</body>
</html>