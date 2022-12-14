<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookselves</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
/*     header */
* {
	box-sizing: border-box;
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
	height: 150px;
	overflow: hidden;
}

.logo {
	float: left;
	position: relative;
	height: 100%;
	width: 55%;
}

#logo_img {
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

.search-box {
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

.search-txt {
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

.search-btn {
	position: absolute;
	right: 0px;
	line-height: 100px;
	border: none;
	background-color: #ffffff;
	color: #5397fc;
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

.icon-box {
	position: absolute;
	bottom: 0px;
	right: 0px;
}

span.size-40 {
	font-size: 40px;
	color: black;
	font-variation-settings: 'FILL' 0, 'wght' 200, 'GRAD' 200, 'opsz' 40
}

span, img:hover {
	cursor: pointer;
}
/*     header */
/* body */
.bookcover {
	width: 300px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row header">
			<div class="logo">
				<img src="/resources/bookday_logotitle.png" id="logo_img">
			</div>
			<div class="search">
				<div class="search-box">
					<form action="//search" id="search" method="post">
						<input class="search-txt" type="text" placeholder="검색어를 입력해 주세요"
							id="searchword" name="searchword">
						<button class="search-btn" type="submit">
							<span class="material-symbols-outlined"> search </span>
						</button>
					</form>
				</div>
			</div>
			<div class="icons">
				<div class="icon-box">
					<span class="material-symbols-outlined size-40" id="notifications">
						notifications </span> <span class="material-symbols-outlined size-40"
						id="bookbag"> shopping_bag </span> <span
						class="material-symbols-outlined size-40" id="bookselves">
						shelves </span> <span class="material-symbols-outlined size-40"
						id="mypage"> person </span>
				</div>
			</div>
		</div>
		<hr>
		<div class="navi"></div>
		<div class="body">
			<div class="rental">
				<c:forEach var="rental" items="${list}">
					<div class="bookcovers">
						<img src="${rental.b_img_url }" class="bookcover">
					</div>
				</c:forEach>
				<div class="rentalNavi">${navi }</div>
			</div>
			<div class="wishlist">
				<c:forEach var="wishlist" items="${list }">
					<div class="bookcovers">
						<img src="${wishlist.b_img_url }" class="bookcover">
					</div>
				</c:forEach>
				<div class="wishlistNavi">${navi }</div>
			</div>
			<div class="mybooks">
				<c:forEach var="mybooks" items="${list }">
					<div class="bookcovers">
						<img src="${mybooks.b_img_url }" class="bookcover">
					</div>
				</c:forEach>
				<div class="mybooksNavi">${navi }</div>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<script>
		$("#logo_img").on("click", function() {
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
			location.href = "/delivery/toBookbag";
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
	</script>
</body>
</html>