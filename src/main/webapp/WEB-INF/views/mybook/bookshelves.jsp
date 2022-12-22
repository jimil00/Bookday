<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Bookshelves</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
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

#headerHr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid rgb(216, 216, 216);
	margin-top: 15px;
	margin-bottom: 15px;
}

button:hover {
	cursor: pointer;
}

/*     header */
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

/*     header */

/* navi */
.navi {
	width: 100%;
	height: 50px;
}

/* body */
/* sidenavi */
.sideNavi {
	width: 10%;
	float: left;
}

ul {
	list-style-type: none;
	margin-top: 20px;
	padding-left: 0px;
}

li {
	margin-top: 10px;
	width: 40px;
	height: 40px;
	text-align: center;
	border-radius: 50%;
}

span.size-35 {
	line-height: 40px;
	font-size: 35px;
	color: gray;
	font-variation-settings: 'FILL' 0, 'wght' 200, 'GRAD' 200, 'opsz' 35
}

.selected {
	background-color: #5397fc50;
}

/* contents */
.contentsHeader {
	width: 100%;
	margin-bottom: 30px;
	font-size: 25px;
	display: flex;
	justify-content: center;
	align-items: flex-end;
}

#profile {
	border-radius: 50%;
}

.contents {
	width: 90%;
	float: left;
	overflow: hidden;
}

.rental {
	width: 100%;
}

.wishlist {
	width: 100%;
}

.posted {
	width: 100%;
}

.title {
	height: 50px;
	margin-bottom: 20px;
	display: flex;
	align-items: flex-end;
}

.titleTxt {
	line-height: 30px;
	font-size: 20px;
}

#wishlist {
	margin-top: 30px;
}

#posted {
	margin-top: 30px;
}

span.size-30 {
	font-size: 30px;
	color: gray;
	font-variation-settings: 'FILL' 0, 'wght' 200, 'GRAD' 200, 'opsz' 35
}

.bookshelvesHr {
	height: 10px;
	border: 0;
	box-shadow: 0 10px 10px -10px #bbb inset;
}

.rentalBooks {
	height: 140px;
	display: flex;
	justify-content: space-evenly;
	align-items: flex-end;
}

.rentalBook>img {
	width: 80px;
	box-shadow: 2px 2px 2px 2px #80808050;
}

.swiper {
	display: flex;
	align-items: flex-end;
	width: 100%;
	height: 140px;
}

.swiper-wrapper {
	height: 125px;
/*  	justify-content: space-evenly;  */
}

.swiper-slide{
/* 	width: 80px !important; */
}

.swiper-slide img {
	position: absolute;
	bottom: 3px;
	display: block;
	width: 80px;
	height: auto;
	object-fit: cover;
	box-shadow: 2px 2px 2px 2px #80808050;
}

.swiper-pagination {
	position: static !important;
	--swiper-theme-color: #5397fc !important;
}

* .postedBooks {
	height: 140px;
	display: flex;
	justify-content: space-evenly;
	align-items: flex-end;
}

.postedBook>img {
	width: 80px;
	box-shadow: 2px 2px 2px 2px #80808050;
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
					<form action="//search" id="search" method="post">
						<input class="searchTxt" type="text" placeholder="검색어를 입력해 주세요"
							id="searchWord" name="searchWord">
						<button class="searchBtn" type="submit">
							<span class="material-symbols-outlined"> search </span>
						</button>
					</form>
				</div>
			</div>
			<div class="icons">
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
			<div class="sideNavi">
				<ul>
					<li class="selected"><span
						class="material-symbols-outlined size-35" id="snBookshelves">shelves</span></li>
					<li><span class="material-symbols-outlined size-35"
						id="snStatistics">equalizer</span></li>
					<li><span class="material-symbols-outlined size-35"
						id="snCalendar">calendar_month</span></li>
					<li><span class="material-symbols-outlined size-35"
						id="snBookmark">book</span></li>
					<li><span class="material-symbols-outlined size-35"
						id="snBooknote">edit</span></li>
				</ul>
			</div>
			<div class="contents">
				<div class="contentsHeader">
					<div id="contentsHeaderImg">
						<img src="/images/${dto.sysprofname }" width="100" height="100"
							id="profile">
					</div>
					<div id="contentsHeaderTxt">${dto.nickname }님책하루와함께한
						${dto.signup_date } 하루</div>
				</div>
				<div class="contentsBody">
					<div class="rental">
						<div class="title">
							<div class="titleTxt">대여 중</div>
							&nbsp <span class="material-symbols-outlined size-30">auto_stories</span>
						</div>
						<div class="rentalBooks">
							<c:forEach var="rental" items="${rlist}">
								<div class="rentalBook">
									<img src="${rental.b_img_url }">
								</div>
							</c:forEach>
						</div>
						<hr class="bookshelvesHr">
					</div>
					<div class="wishlist">
						<div class="title" id="wishlist">
							<div class="titleTxt">위시리스트</div>
							&nbsp <span class="material-symbols-outlined size-30">favorite</span>
						</div>
						<!-- Swiper -->
						<div class="swiper mySwiper wishlistBooks">
							<div class="swiper-wrapper">
								<c:forEach var="wishlist" items="${wlist }">
									<div class="swiper-slide wishlistBook">
										<img src="${wishlist.b_img_url }">
									</div>
								</c:forEach>
							</div>
						</div>
						<hr class="bookshelvesHr">
						<div class="swiper-pagination wishlistPage"></div>
					</div>
					<div class="posted">
						<div class="title" id="posted">
							<div class="titleTxt">내 책장</div>
							&nbsp <span class="material-symbols-outlined size-30">shelves</span>
						</div>

						<div class="postedBooks">

							<c:forEach var="post" items="${plist }" varStatus="status">
								<div class="postedBook" id="${status.count }">
									<img src="${post.b_img_url }">
									<input type="hidden" value="${post.p_seq }">
								</div>
								<c:if test="${status.count%10==0 }">
						</div><hr class="bookshelvesHr"><div class="postedBooks">
								</c:if>
							</c:forEach>
						</div>
						<div class="postedsNavi">${navi }</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer"></div>
	</div>
	<script>
                $("#logo_img").on("click", function () {
                    location.href = "/";
                })

                $("#searchword").on("keydown", function (e) {
                    if (e.keyCode == 13) {
                        $("#search").submit();
                    }
                })
                $("#notifications").on("click", function () {
                    location.href = "//toNotification";
                })
                $("#bookbag").on("click", function () {
                    location.href = "/delivery/selectBookbagListById";
                })
                $("#bookshelves").on("click", function () {
                    location.href = "/bookshelves/selectBookshelvesListById";
                })
                $("#mypage").on("click", function () {
                    if (loginID == null) {
                        location.href = "/member/login";
                    }
                    location.href = "/member/toMypage";
                })
                $("#snBookshelves").on("click", function () {
                    location.href = "/bookshelves/selectBookshelvesListById";
                })
                $("#snStatistics").on("click", function () {
                    location.href = "/bookstatistics/select-";
                })
                $("#snCalendar").on("click", function () {
                    location.href = "/bookcalendar/select-";
                })
                $("#snBookmark").on("click", function () {
                    location.href = "/bookmark/selectBookmarkListById";
                })
                $("#snBooknote").on("click", function () {
                    location.href = "/booknote/selectPostListById";
                })

    <!-- Initialize Swiper -->
      var swiper = new Swiper(".mySwiper", {
        slidesPerView: 10,
        spaceBetween: 3,
        slidesPerGroup: 10,
        loop: true,
        slidesOffsetBefore: 5.3,
        loopFillGroupWithBlank: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        }
      });
        
      <!-- Ajax Infinite Scroll -->

            </script>
</body>

</html>