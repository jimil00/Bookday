<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <style>
        @font-face {
            font-family: 'NanumSquareNeo-Variable';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
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

        span,
        #logoImg:hover {
            cursor: pointer;
        }

        /*     header */

        /* navi */
        .navi {
            width: 100%;
            height: 50px;
        }
/* body */
.body {
	height: 2000px;
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
                        <input class="searchTxt" type="text" placeholder="검색어를 입력해 주세요" id="searchWord"
                            name="searchWord">
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
		<div class="body"></div>
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
		$("#bookshelves").on("click", function() {
			location.href = "/bookshelves/selectAllBookshelves";
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