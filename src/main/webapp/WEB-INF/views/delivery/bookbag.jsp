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
<title>Bookbag</title>
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
	/* width: 100%; */
	/* height: 50px; */
	
}

/* body */
.body {
	/* 	height: 2000px; */
	overflow: hidden;
}

.bookbag-count {
	padding-top: 60px;
	padding-bottom: 10px;
	font-weight: bold;
}

.top-checkbox-div {
	width: 50%;
	float: left;
}

.top-btn-div {
	width: 50%;
	float: left;
	text-align: right;
}

.top-btn {
	margin-left: 5px;
	border-radius: 4px;
	border: 1px solid rgb(194, 193, 193);
	background-color: #ffffff;
}

.body-left {
	width: 70%;
	float: left;
	border: 1px solid rgb(194, 193, 193);
}

.bookbag-top {
	height: 50px;
	padding-top: 30px;
	padding-left: 15px;
	padding-right: 18px;
}

.bookbag-main {
	/* border: 1px solid black; */
	overflow: hidden;
	width: 100%;
	height: 170px;
}

.bookbag-checkbox {
	float: left;
	width: 6%;
	height: 150px;
	line-height: 150px;
	padding-left: 15px;
}

.bookbag-img {
	width: 16%;
	height: 100%;
	float: left;
}

#book-img {
	width: auto;
	height: 140px;
}

.bookbag-detail {
	height: 100%;
	float: left;
}

.detail-btn {
	border: 1px solid rgb(194, 193, 193);
	border-radius: 4px;
	background-color: #ffffff;
}

.body-right {
	width: 27%;
	height: 150px;
	float: right;
}

.rental-detail {
	border: 1px solid rgb(194, 193, 193);
	/* border-width: 1px; */
}

.sub-rental-btn {
	margin-top: 8px;
	width: 100%;
	height: 40px;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	background-color: #5397fc;
}

/* body */
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
		<hr>
		<div class="navi"></div>
		<div class="body">
			<div class="body-top">
				<div class="bookbag-count">책가방 (${fn:length(list)})</div>
			</div>

			<c:choose>
				<c:when test="${fn:length(list) == 0}">
					<div class="body-left">
						<div class="bookbag-top"></div>
						<div class="bookbag-main"
							style="text-align: center; line-height: 120px;">책가방에 담긴 작품이
							없습니다.</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="body-left">
						<div class="bookbag-top">
							<div class="top-checkbox-div">
								<input type="checkbox" id="selectAll" name=""> <label
									for="selectAll">전체 선택</label>
							</div>
							<div class="top-btn-div">
								<button class="top-btn">선택 위시리스트에 담기</button>
								<button class="top-btn">선택 삭제</button>
							</div>
						</div>
						<hr style="width: 95%; margin-top: 5px;">
						<c:forEach var="bookbag" items="${list}">
							<div class="bookbag-main">
								<div class="bookbag-checkbox">
									<input type="checkbox" id="select" name=""> <label
										for="select"></label>
								</div>
								<div class="bookbag-img">
									<img src="${bookbag.b_img_url }" id="book-img">
								</div>
								<div class="bookbag-detail">
									<div class="bookbag-detail-text" style="height: 50%;">
										${bookbag.b_title }<br> ${bookbag.b_writer }<br> <input
											type="hidden" value="${bookbag.b_isbn }"> <input
											type="hidden" value="${bookbag.b_genre }">
									</div>
									<div class="bookbag-detail-btn"
										style="height: 50%; padding-top: 35px;">
										<button class="detail-btn" type="button" id="w${bookbag.bookbag_seq }">위시리스트에 담기</button>
										<button class="detail-btn" type="button"
											id="d${bookbag.bookbag_seq }">삭제</button>
									</div>
								</div>
							</div>
							<hr style="width: 95%; margin-top: -14px;">
							<script>
								$(function() {
									$("#d${bookbag.bookbag_seq }").on("click",function() {
										if (confirm("<${bookbag.b_title }> 작품을 삭제하시겠습니까?")) {
											location.href = "/delivery/deleteBookbagBySeq?bookbag_seq="+ ${bookbag.bookbag_seq}
											alert("삭제되었습니다.");
										}
									});
								})
								
								$(function () {
						            $("#w${bookbag.bookbag_seq }").on("click", function () {
						                $.ajax({
						                    url: "/delivery/selectWishlistByIdBisbn",
						                    data: {
						                        "id": "지민",
						                        "b_isbn": "${bookbag.b_isbn }"
						                    }, success: function (result) {
						                        if (result == "false") {
						                            alert("이미 위시리스트에 있는 책입니다.");
						                        } else {
						                            $.ajax({
						                                url: "/delivery/insertWishlist",
						                                data: {
						                                    "id": "지민",
						                                    "b_isbn": "${bookbag.b_isbn }",
						                                    "b_img_url": "${bookbag.b_img_url }",
						                                    "b_title": "${bookbag.b_title }",
						                                    "b_writer": "${bookbag.b_writer }",
						                                    "b_genre": "${bookbag.b_genre }"
						                                }, success: function (resp) {
						                                    alert("위시리스트에 담았습니다.");
						                                }
						                            });
						                        }
						                    }
						                });
						           });
					        });
							</script>
						</c:forEach>
					</div>
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${dto.grade eq '미구독'}">
					<div class="body-right">
						<div class="rental-detail"
							style="height: 140px; text-align: center; line-height: 140px;">
							종이책 구독 서비스를 이용해보세요!</div>
						<div class="sub-rental">
							<button class="sub-rental-btn" id="sub-btn">구독하기</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<c:set var="arrivalDate"
						value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 2)%>" />
					<c:set var="returnDate"
						value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 12)%>" />
					<div class="body-right">
						<div class="rental-detail"
							style="height: 140px; padding-left: 5px;">
							<p>
								남은 배송 횟수 : 3회 <br> 남은 대여 권수 : 10권
							</p>
							<p>
								대여할 책 : 10권<br> 도착예정일 :
								<fmt:formatDate value="${arrivalDate}" pattern="yyyy-MM-dd(E)" />
								<br> 반납일 :
								<fmt:formatDate value="${returnDate}" pattern="yyyy-MM-dd(E)" />
								<br>
							</p>
						</div>
						<div class="sub-rental">
							<button class="sub-rental-btn" id="rental-btn">대여하기</button>
						</div>
					</div>
				</c:otherwise>
			</c:choose>

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
			location.href = "/delivery/selectBookbagListById";
		})
		$("#bookselves").on("click", function() {
			location.href = "/booknote/selectBookselves";
		})
		$("#mypage").on("click", function() {
			if (loginID == null) {
				location.href = "/member/login";
			}
			location.href = "/member/toMypage";
		})

		$("#sub-btn").on("click", function() {
			location.href = "/delivery/topayment";
		})
		$("#rental-btn").on("click", function() {
			if(${fn:length(list) == 0}){
				alert("대여할 책이 없습니다.");
			}else if (confirm("대여하시겠습니까?")) {
				location.href = "/delivery/toRentalCompleted";
			}
		})
	</script>
</body>
</html>