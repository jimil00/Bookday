<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <style>
        * {
            box-sizing: border-box;
        }

        /* div {
            border: 1px solid black;
        } */

        .container {
            margin: auto;
            overflow: hidden;
            width: 978px;
        }

        .header {
            height: 150px;
        }

        #logo_img {
            height: 50%;
            position: absolute;
            bottom: 0px;
            left: 0px;

        }

        .logo {
            position: relative;
            height: 100%
        }

        .search {
            position: relative;
        }

        .search-box {
            position: absolute;
            bottom: 6px;
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
            position: relative;
        }

        .icon-box {
            position: absolute;
            bottom: 0px;
            right: 0px;
        }

        span.size-40 {
            font-size: 40px;
            color: black;
            font-variation-settings:
                'FILL' 0,
                'wght' 300,
                'GRAD' 200,
                'opsz' 40
        }

        span,img:hover {
            cursor: pointer;
        }
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
            if(loginID == null){
                location.href = "/member/login";
            }
            location.href = "/member/toMypage";
        })
    </script>
</head>
<body>
	<div class="container">
		<div class="row header">
			<div class="col-6 logo">
				<img src="/resources/bookday_logotitle.png" alt="" id="logo_img">
			</div>
			<div class="col-3 search">
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
			<div class="col-3 icons">
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
		<div class="row body"></div>
		<div class="row footer"></div>
	</div>
</body>
</html>