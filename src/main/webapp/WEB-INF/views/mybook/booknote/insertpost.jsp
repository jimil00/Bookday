<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>insertpost</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<style>
@font-face {
	font-family: '나눔스퀘어네오';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

* {
	box-sizing: border-box;
	font-family: '나눔스퀘어네오';
}

body {
	margin: 8px;
}
/* div {
	border: 1px solid black;
} */
.container {
	margin: auto;
	overflow: hidden;
	width: 978px !important;
	padding-left: 0px;
	padding-right: 0px;
}

button:hover {
	cursor: pointer;
}

/*     header */
.header {
	min-width:978px;
	height: 150px;
	overflow: hidden;
	line-height: initial;
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

span.size-40 {
	cursor: pointer;
}

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
	text-decoration-color: #5397fc;
}

.signBox>a>p {
	margin-block-start: 1em;
	margin-block-end: 1em;
}

#nick {
	text-decoration: none;
}

#nick:hover {
	color: black;
	cursor: default;
}

/* headerHr */
#headerHr {
	display: block;
	height: 0px;
	border: 0;
	border-top: 1px solid rgb(216, 216, 216);
	margin-top: 15px;
	margin-bottom: 15px;
}
/*     header */

/* navi */
.navi {
	width: 100%;
	height: 50px;
}

/* body */
.body {
	display:flex;
	line-height: initial;
}

/* sidenavi */
.sideNavi {
	width: 10%;
	min-width: 97.8px;
	
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
	box-shadow: 2px 2px 2px 2px #80808050;
}

span.size-35 {
	cursor: pointer;
}

/* contents */
.contents {
	width: 90%;
	overflow: hidden;	
				min-width:880.2px;
	
}

/* contentsHeader */
.contentsHeader {

	width: 100%;
	margin-bottom: 30px;
	font-size: 25px;
	display: flex;
	justify-content: center;
	align-items: flex-end;
}

#contentsHeaderImg {
	height: 100px;
	width: 100px;
	
}

#profile {
	border-radius: 50%;
		box-shadow: 2px 2px 2px 2px #80808050;
	
}

/* contentsBody */
.contentsBody {
	width: 100%;
	
}

/* contentsBodyTitle */
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

span.size-30 {
	font-size: 30px;
	color: gray;
	font-variation-settings: 'FILL' 0, 'wght' 200, 'GRAD' 200, 'opsz' 35
}

/* ContentsBodyInsertBooknote */
.insertBooknote {
	width: 100%;
}

.insertBooknoteHeader {
	width: 100%;
}

/* ContentsBodyInsertBooknoteSearchBookInfo */
.insertBooknoteBookInfo {
	height: 50px;
	width: 100%;
	display: flex;
	align-items: center;
}

.booknoteBookSearchTitle {
	font-size: 15px;
	margin-right: 10px;
	padding-bottom: 10px;
}

.booknoteBookSearchBox {
	position: relative;
	bottom: 5px;
	overflow: hidden;
	height: 40px;
	width: 244.5px;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
}

.booknoteBookSearchTxt {
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

.booknoteBookSearchBtn {
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
/* ContentsBodyInsertBooknoteDate */
.insertBooknoteDate {
	height: 50px;
	width: 100%;
	display: flex;
	align-items: center;
}

.insertBooknoteDateTitle {
	font-size: 15px;
	margin-right: 10px;
	padding-bottom: 10px;
}

.insertBooknoteDateInput {
	position: relative;
	bottom: 5px;
	overflow: hidden;
	height: 40px;
	width: 260px;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
}

#demo {
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

.insertBooknoteDateBtn {
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

/* insertBooknoteTitle */
.insertBooknoteTitle {
	height: 50px;
	width: 100%;
	display: flex;
	align-items: center;
}

.insertBooknoteTitleTitle {
	font-size: 15px;
	margin-right: 10px;
	padding-bottom: 10px;
}

.insertBooknoteTitleBox {
	position: relative;
	bottom: 5px;
	overflow: hidden;
	height: 40px;
	width: 837px;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
}

#insertBooknoteTitleTxt {
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

/* ContentsBodyInsertBooknoteBtn */
.insertBooknoteBtn {
	float: left;
	width: 100%;
	height: 50px;
	position: relative;
}

#insertBooknoteBtn {
	position: absolute;
	top: 50%;
	transform: translate(0%, -50%);
	right: 8px;
	width: 50px;
	height: 30px;
	font-size: 15px;
	color: rgb(47, 47, 47);
	background-color: #5397fc50;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
}
</style>
<script>
	$(document)
			.ready(
					function() {
						$('#summernote')
								.summernote(
										{
											lang : 'ko-KR',
											height : 400,
											placeholder : "내용을 입력해주세요.",
											fontNames : [ '나눔스퀘어네오' ],
											// addDefaultFonts: false,
											fontNamesIgnoreCheck : [ '나눔스퀘어네오' ],
											callbacks : {
												onImageUpload : function(image) {
													console.log("works")
													data = new FormData();
													data.append("image",
															image[0]);

													$
															.ajax({
																data : data,
																type : "post",
																url : "/imageupload.board",
																cache : false,
																contentType : false,
																processData : false,
																success : function(
																		url) {
																	console
																			.log(url)
																	var image = $(
																			'<img>')
																			.attr(
																					'src',
																					url);
																	$(
																			"#summernote")
																			.summernote(
																					"insertNode",
																					image[0]);
																},
																error : function(
																		a, b, c) {
																	console
																			.log(a);
																	console
																			.log(b);
																	console
																			.log(c);
																}
															});
												}
											}
										});

						$('#insertBoardContents').on('click', function() {

							saveContent();
						});
						function saveContent() {

							//값 가져오기
							var summernoteContent = $('#summernote')
									.summernote('code'); //썸머노트(설명)
							console.log("summernoteContent : "
									+ summernoteContent);
							var b_category = $("#b_category").val();
							var b_title = $("#b_title").val();

							if (b_title == "") {
								alert('제목을 입력해주세요.');
								return false;
							}
							if ($('#summernote').summernote('isEmpty')) {
								alert("내용을 입력해주세요.");
								return false;
							}

							$
									.ajax({
										url : "/insertBoardContents.board",
										type : "post",
										data : {
											"b_category" : b_category,
											"b_title" : b_title,
											"b_content" : summernoteContent
										},
										success : function(data) {
											var b_seq = data;
											location.href = "/selectBoardContents.board?b_seq="
													+ b_seq;
										}
									});
						}
						;
					});
</script>
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
			<div class="member">
				<div class="signBox">
					<c:choose>
						<c:when test="${empty loginID}">
							<a href="/member/toLogin"><p class="user" id="login">로그인</p></a>
							<a href="/member/toSignup"><p class="user" id="signup">회원가입</p></a>
						</c:when>
						<c:otherwise>
							<a id="nick"><p class="user" id="user">${nickname}님</p></a>
							<a href="/member/logOut"><p class="user" id="logout">로그아웃</p></a>
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
			<div class="sideNavi">
				<ul>
					<li><span class="material-symbols-outlined size-35"
						id="snBookshelves">shelves</span></li>
					<li><span class="material-symbols-outlined size-35"
						id="snStatistics">equalizer</span></li>
					<li><span class="material-symbols-outlined size-35"
						id="snCalendar">calendar_month</span></li>
					<li><span class="material-symbols-outlined size-35"
						id="snBookmark">book</span></li>
					<li class="selected"><span
						class="material-symbols-outlined size-35" id="snBooknote">edit</span></li>
				</ul>
			</div>
			<div class="contents">
				<div class="contentsHeader">
					<div id="contentsHeaderImg">
						<img src="/resources/${dto.sysprofname }" width="100" height="100"
							id="profile">
					</div>
					<div id="contentsHeaderTxt">${dto.nickname }님&nbsp책하루와&nbsp함께한&nbsp${dto.signup_date
						} 하루</div>
				</div>
				<div class="contentsBody">
					<div class="title">
						<div class="titleTxt">POST</div>
						&nbsp <span class="material-symbols-outlined size-30">edit</span>
					</div>
					<div class="insertBooknote">
						<div class="bookInfo">
							<div class="insertBooknoteBookInfo">
								<div class="booknoteBookSearchTitle">책 검색</div>
								<div class="booknoteBookSearchBox">
									<input class="booknoteBookSearchTxt" type="text"
										placeholder="검색어를 입력해 주세요" id="booknoteBookSearchWord"
										name="booknoteBookSearchWord">
									<button class="booknoteBookSearchBtn">
										<span class="material-symbols-outlined"> search </span>
									</button>
								</div>
							</div>
							<div class="insertBooknoteDate">
								<div class="insertBooknoteDateTitle">읽은 기간 선택</div>
								<div class="insertBooknoteDateInput">
									<input type="text" id="demo" name="demo" value="" />
									<button class="insertBooknoteDateBtn">
										<span class="material-symbols-outlined"> calendar_month
										</span>
									</button>
								</div>
							</div>
							<div class="insertBooknoteTitle">
								<div class="insertBooknoteTitleTitle">제목</div>
								<div class="insertBooknoteTitleBox">
									<input type="text" id="insertBooknoteTitleTxt"
										placeholder="제목을 입력해주세요.">

								</div>
							</div>
							<div class="insertBooknoteContent">
								<div id="summernote" name="booknoteContent"></div>
							</div>
							<div class="insertBooknoteBtn">
								<button id="insertBooknoteBtn" type="submit">입력</button>
							</div>
						</div>
					</div>
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
			$("#bookshelves").on("click", function() {
				location.href = "/bookshelves/selectBookshelvesListById";
			})
			$("#mypage").on("click", function() {
				if (loginID == null) {
					location.href = "/member/login";
				}
				location.href = "/member/toMypage";
			})
			$("#snBookshelves").on("click", function() {
				location.href = "/bookshelves/selectBookshelvesListById";
			})
			$("#snStatistics").on("click", function() {
				location.href = "/bookstatistics/select-";
			})
			$("#snCalendar").on("click", function() {
				location.href = "/bookcalendar/select-";
			})
			$("#snBookmark").on("click", function() {
				location.href = "/bookmark/selectBookmarkListById";
			})
			$("#snBooknote").on("click", function() {
				location.href = "/booknote/selectPostListById";
			})
				$("#booknoteBookSearchWord").on("keydown", function(e){
		if(e.keyCode == 13) {
			var searchWord = $("#booknoteBookSearchWord").val();
			$("#booknoteBookSearchWord").val("");
			window.open("/book/toBookSearchPop?searchWord="
					+ searchWord, "", "width=600,height=600");		
			}
	});
			$(".booknoteBookSearchBtn").on(
					"click",
					function() {
						var searchWord = $("#booknoteBookSearchWord").val();
						window.open("/book/toBookSearchPop?searchWord="
								+ searchWord, "", "width=600,height=600");

					});

			$(function() {

				$(".insertBooknoteDateBtn").on("click", function() {
					$("#demo").click();
				})

				$("#demo").daterangepicker(
						{
							"locale" : {
								"format" : "YYYY-MM-DD",
								"separator" : " ~ ",
								"applyLabel" : "확인",
								"cancelLabel" : "취소",
								"fromLabel" : "From",
								"toLabel" : "To",
								"customRangeLabel" : "Custom",
								"weekLabel" : "W",
								"daysOfWeek" : [ "일", "월", "화", "수", "목", "금",
										"토" ],
								"monthNames" : [ "1월", "2월", "3월", "4월", "5월",
										"6월", "7월", "8월", "9월", "10월", "11월",
										"12월" ],
							},
							"startDate" : new Date(),
							"endDate" : new Date(),
							"maxDate" : new Date(),
							"drops" : "auto"
						},

						function(start, end, label) {
							console.log('New date range selected: '
									+ start.format('YYYY-MM-DD') + ' to '
									+ end.format('YYYY-MM-DD'));

						});

			});

			function initSearchBook(b_isbn, b_genre, b_img_url, b_title,
					b_writer, b_publish) {
				var imgHTML = "";

				$("#goodImage").html(imgHTML);
				$("#goodTitle").html("[" + resKeyNm + "] " + goodsNm);
				$("#goodsContents").html(booksInfo);

				var displyCode = getCategoryCode(dispNm);
				$("#goodsInfo").val(
						goodsNo + "|@%" + resKeyNm + "|@%" + displyCode);

				$("#goodsView").show();

				$("#contentRating").val("0");
				$("#compilationRating").val("0");
				$("#hddGoodsTitle").val($("#goodTitle").html());

				setCompilation();
			}
		</script>
</body>

</html>