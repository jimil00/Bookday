<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookmark</title>
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

button:hover {
	cursor: pointer;
}

/*     header */
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
	height: 1px;
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
	overflow: hidden;
}

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
	box-shadow: 2px 2px 2px 2px #80808050;
}

span.size-35 {
	cursor: pointer;
}

/* contents */
.contents {
	width: 90%;
	float: left;
	overflow: hidden;
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

/* contentsBodyInsertBookmark */
.insertBookmark {
	width: 100%;
}

.insertBookmarkBookInfo {
	height: 50px;
	width: 100%;
	display: flex;
	align-items: center;
}

.bookmarkBookSearchTitle {
	font-size: 15px;
	margin-right: 10px;
	padding-bottom: 10px;
}

.bookmarkBookSearchBox {
	position: relative;
	bottom: 5px;
	overflow: hidden;
	height: 40px;
	width: 244.5px;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
}

.bookmarkBookSearchTxt {
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

.bookmarkBookSearchBtn {
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

.insertBookmark {
	display: inline-block;
}

.insertBookmarkContent {
	margin-top: 10px;
	width: 100%;
	display: flex;
	justify-content: center;
}

.insertbookmarkContentBox {
	height: 120px;
	width: 871px;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
	overflow: hidden;
	position: relative;
	overflow-y: auto;
}

.insertBookmarkBtn {
	width: 100%;
	height: 65px;
	position: relative;
}

#insertBookmarkBtn {
	position: absolute;
	top: 55%;
	transform: translate(0%, -50%);
	right: 5px;
	width: 50px;
	height: 30px;
	font-size: 15px;
	color: rgb(47, 47, 47);
	background-color: #5397fc50;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
}

/* contentsBodySearchBookmake */
.bookmarkSearch {
	height: 50px;
	width: 100%;
	display: flex;
	align-items: center;
	margin-top: 25px;
	margin-bottom: 25px;
}

.bookmarkSearchTitle {
	font-size: 15px;
	margin-right: 10px;
	padding-bottom: 10px;
}

.bookmarkSearchBox {
	position: relative;
	bottom: 5px;
	overflow: hidden;
	height: 40px;
	width: 244.5px;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
}

.bookmarkSearchTxt {
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

.bookmarkSearchBtn {
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

/* contentsBodyBookmakeContents */
.bookmarkContents {
	width: 100%;
	height: auto;
	display: flex;
	margin-bottom: 20px;
	flex-wrap: wrap;
}

.bookmarkContentsImg {
	width: 15%;
}

.bookmarkBookImg {
	width: 100%;
	height: 100%;
	display: flex;
	align-items: center;
}

.bookmarkBookImg>img {
	height: 180px;
}

.bookmarkContentsTxt {
	display: inline-block;
	height: auto;
	width: 85%;
}

.bookmarkBookInfo {
	font-size: 15px;
}

.bookmarkWritedate {
	font-size: 12px;
	display: flex;
	justify-content: flex-end;
}

.bookmarkContent {
	height: auto;
	font-size: 14px;
}

.bookmarkContentsBtn {
	float: right;
	width: 13%;
	height: 50px;
	display: flex;
	justify-items: flex-end;
	justify-content: space-around;
}

.bookmarkContentsBtn>button {
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
					<li class="selected"><span
						class="material-symbols-outlined size-35" id="snBookmark">book</span></li>
					<li><span class="material-symbols-outlined size-35"
						id="snBooknote">edit</span></li>
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
						<div class="titleTxt">책갈피</div>
						&nbsp <span class="material-symbols-outlined size-30">book</span>
					</div>
					<div class="insertBookmark">
						<div class="insertBookmarkBookInfo">
							<div class="bookmarkBookSearchTitle">책 검색</div>
							<div class="bookmarkBookSearchBox">
									<input class="bookmarkBookSearchTxt" type="text"
										placeholder="검색어를 입력해 주세요" id="bookmarkBookSearchWord"
										name="bookmarkBookSearchWord">
									<button class="bookmarkBookSearchBtn">
										<span class="material-symbols-outlined"> search </span>
									</button>
							</div>
						</div>
						<div class="insertBookmarkContent">
							<div class="insertbookmarkContentBox" contenteditable="true"></div>
						</div>
						<div class="insertBookmarkBtn">
							<button id="insertBookmarkBtn" type="submit">입력</button>
						</div>
					</div>
					<hr>
					<div class="bookmarkSearch">
						<div class="bookmarkSearchTitle">책갈피 검색</div>
						<div class="bookmarkSearchBox">
								<input class="bookmarkSearchTxt" type="text"
									placeholder="검색어를 입력해 주세요" id="bookmarkSearchWord"
									name="bookmarkSearchWord">
								<button class="bookmarkSearchBtn">
									<span class="material-symbols-outlined"> search </span>
								</button>
						</div>
					</div>
					<div class="selectBookmarkList">
						<c:forEach var="bm" items="${list}">
							<div class="bookmarkContents" seq="${bm.bm_seq }" writer="${bm.bm_writer_id }"> 
								<div class="bookmarkContentsImg">
									<div class="bookmarkBookImg">
										<img src="${bm.b_img_url }">
									</div>
								</div>
								<div class="bookmarkContentsTxt">
									<div class="bookmarkBookInfo"><${bm.b_title
										}>&nbsp${bm.b_writer }</div>
									<div class="bookmarkWritedate">${bm.bm_write_date }</div>
									<hr>
									<div class="bookmarkContent">${bm.bm_content}</div>
								</div>
							</div>
							<hr>
							<div class="bookmarkContentsBtn">
								<button class="updateBookmarkContentsBtn">수정</button>
								<button class="deleteBookmarkContentsBtn">삭제</button>
							</div>
						</c:forEach>
					</div>
					<!--             	검색할거면 bms로 다시 리스트 출력 c when otherwise 쓰기 -->
					<div class="bookmarkContentsListPage"></div>
					<div class="page"></div>
				</div>
			</div>

			<div class="footer"></div>
		</div>
		<script>
			$("#logoImg").on("click", function() {
				location.href = "/";
			});

			$("#searchWord").on("keydown", function(e) {
				if (e.keyCode == 13) {
					$("#search").submit();
				}
			});
			$("#notifications").on("click", function() {
				location.href = "//toNotification";
			});
			$("#bookbag").on("click", function() {
				location.href = "/delivery/toBookbag";
			});
			$("#bookshelves").on("click", function() {
				location.href = "/bookshelves/selectBookshelvesListById";
			});
			$("#mypage").on("click", function() {
				if (loginID == null) {
					location.href = "/member/login";
				}
				location.href = "/member/toMypage";
			});
			$("#snBookshelves").on("click", function() {
				location.href = "/bookshelves/selectBookshelvesListById";
			});
			$("#snStatistics").on("click", function() {
				location.href = "/bookstatistics/select-";
			});
			$("#snCalendar").on("click", function() {
				location.href = "/bookcalendar/select-";
			});
			$("#snBookmark").on("click", function() {
				location.href = "/bookmark/selectBookmarkListById";
			});
			$("#snBooknote").on("click", function() {
				location.href = "/booknote/selectPostListById";
			});
			$("#bookmarkBookSearchWord").on("keydown", function(e){
				if(e.keyCode == 13) {
					var searchWord = $("#bookmarkBookSearchWord").val();
					$("#bookmarkBookSearchWord").val("");
					window.open("/book/toBookSearchPop?searchWord=" + searchWord, "", "width=600,height=600");
				}
			});		
			$(".bookmarkBookSearchBtn").on("click", function() {
				var searchWord = $("#bookmarkBookSearchWord").val();
				window.open("/book/toBookSearchPop?searchWord=" + searchWord, "", "width=600,height=600");
			});
			$("#bookmarkSearchWord").on("keydown", function(e){
				if(e.keyCode == 13) {
					var searchWord = $("#bookmarkSearchWord").val();
					$("#bookmarkSearchWord").val("");
					location.href = "/bookmark/selectBookmarkListBySw?searchWord=" + searchWord;
				}
			});		
			$(".bookmarkSearchBtn").on("click", function() {
				var searchWord = $("#bookmarkSearchWord").val();
				location.href = "/book/selectBookmarkListBySw?searchWord=" + searchWord;
			});
            $(document).on("click", ".deleteBookmarkContentsBtn", function () {
                var bm_seq = $(this).closest(".bookmarkContentsBtn").siblings(".bookmarkContents").attr("seq");	
        		var bm_writer_id = $(this).closest(".bookmarkContentsBtn").siblings(".bookmarkContents").attr("writer");
     

                if(confirm("북마크를 삭제하시겠습니까?")){
					location.href="/bookmark/deleteBookmarkBySeq?bm_seq="+bm_seq+"&bm_writer_id="+bm_writer_id;
				}else{
					location.reload();
				}

            });
		</script>
</body>
</html>