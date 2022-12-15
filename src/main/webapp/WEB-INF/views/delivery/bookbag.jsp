<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookbag</title>
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

        /* header */
        * {
            box-sizing: border-box;
            font-family: 'NanumSquareNeo-Variable';
        }

        div {
            /* border: 1px solid black; */
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

        span,
        img:hover {
            cursor: pointer;
        }

        /* header */

        /* body */
        .body {
            overflow: hidden;
        }

        .body-left {
            width: 70%;
            float: left;
        }

        .body-right {
            width: 27%;
            float: right;
        }

        .bookbag-top-left {
            width: 60%;
            float: left;
        }

        .bookbag-top-right {
            width: 40%;
            float: right;
            text-align: right;
        }

        .bookbag-top-btn {
            margin-left: 5px;
            border-width: thin;
            border-radius: 4px;
            background-color: #ffffff;
        }

        .bookbag-checkbox {
            float: left;
            height: 100%;
            line-height: 160px;
        }

        .bookbag-img {
            width: 20%;
            height: 100%;
            float: left;
        }

        #book-img {
            width: 100px;
            height: auto;
        }

        .bookbag-detail {
            height: 100%;
            float: left;
        }

        .bookbag-detail-btn {
            border-width: thin;
            border-radius: 4px;
            background-color: #ffffff;
        }

        .rental-top {
            border: 1px solid black;
            /* border-width: 1px; */
            border-radius: 3px;
        }

        .sub-btn {
            margin-top: 7px;
            width: 100%;
            height: 30px;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            background-color: #5397fc;
        }

        /* body */
    </style>
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
            location.href = "/delivery/toBookbag";
        })
        $("#bookselves").on("click", function () {
            location.href = "/booknote/toBookselves";
        })
        $("#mypage").on("click", function () {
            if (loginID == null) {
                location.href = "/member/login";
            }
            location.href = "/member/toMypage";
        })
    </script>
</head>
<body>
	<div class="container">
        <div class="header">
            <div class="logo">
                <img src="/resources/bookday_logotitle.png" id="logo_img">
            </div>
            <div class="search">
                <div class="search-box">
                    <form action="//search" id="search" method="post">
                        <input class="search-txt" type="text" placeholder="검색어를 입력해 주세요" id="searchword"
                            name="searchword">
                        <button class="search-btn" type="submit">
                            <span class="material-symbols-outlined"> search </span>
                        </button>
                    </form>
                </div>
            </div>
            <div class="icons">
                <div class="icon-box">
                    <span class="material-symbols-outlined size-40" id="notifications">
                        notifications </span> <span class="material-symbols-outlined size-40" id="bookbag"> shopping_bag
                    </span> <span class="material-symbols-outlined size-40" id="bookselves">
                        shelves </span> <span class="material-symbols-outlined size-40" id="mypage"> person </span>
                </div>
            </div>
        </div>
        <hr>
        <div class="navi"></div>
        <div class="body">
            <div class="body-top">
                <div style="margin-top: 40px; margin-bottom: 20px;">담은 책가방 (count)</div>
            </div>
            <div class="body-left">
                <div class="bookbag-top">
                    <div class="bookbag-top-left">
                        <input type="checkbox" id="selectAll" name="" checked>
                        <label for="selectAll">전체 선택</label>
                    </div>
                    <div class="bookbag-top-right">
                        <button class="bookbag-top-btn">선택 위시리스트에 담기</button>
                        <button class="bookbag-top-btn">선택 삭제</button>
                    </div>
                    <hr style="width: 100%;">
                </div>
                <div class="bookbag-main" style="height: 160px;">
                    <div class="bookbag-checkbox">
                        <input type="checkbox" id="select" name="" checked>
                        <label for="select"></label>
                    </div>
                    <div class="bookbag-img">
                        <img src="https://image.aladin.co.kr/product/24512/70/cover/k392630952_1.jpg" id="book-img">
                    </div>
                    <div class="bookbag-detail">
                        <div style="height: 50%; padding-top: 10px;">
                            달러구트 꿈 백화점<br>
                            이미예<br>
                        </div>
                        <div style="height: 50%;">
                            <button class="bookbag-detail-btn">위시리스트에 담기</button>
                            <button class="bookbag-detail-btn">삭제</button>
                        </div>
                    </div>
                </div>
                <hr>
            </div>
            <div class="body-right">
                <div class="rental-top">
                    <p>
                        남은 배송 횟수 : 3회 <br>
                        남은 대여 권수 : 10권 <br>
                    </p>
                    <p>
                        대여할 책 : 10권<br>
                        도착예정일 : 2022년 12월 14일<br>
                        반납일 : 2022년 12월 24일<br>
                    </p>
                </div>
                <div class="rental-bottom">
                    <button class="sub-btn">구독하기</button>
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
            location.href = "/delivery/toBookbag";
        })
        $("#bookselves").on("click", function () {
            location.href = "/booknote/selectBookselves";
        })
        $("#mypage").on("click", function () {
            if (loginID == null) {
                location.href = "/member/login";
            }
            location.href = "/member/toMypage";
        })
    </script>
</body>
</html>