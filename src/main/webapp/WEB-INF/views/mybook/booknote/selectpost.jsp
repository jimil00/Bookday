<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

.selectPost {
	border: 1px solid #80808050;
	padding: 10px 10px 10px 10px;
}

.selectPHeader {
	padding: 10px 10px 10px 10px;
}

.postInfo {
	display: flex;
	justify-content: flex-end;
}

.bookInfo {
	display: flex;
}

.postTitle {
	text-align: center;
	font-size: 22px;
	margin-top: 30px;
	margin-bottom: 30px;
}

.postInfo>* {
	font-size: 15px;
}

.bookInfo {
	display: flex;
	padding: 10px 10px 10px 10px;
	justify-content: space-between;
}

.book {
	display: flex;
}

.bookInfo .img {
	width: 80px;
	display: flex;
	justify-content: center;
	margin-right: 10px;
}

.bookInfo img {
	height: 120px;
	width: 80px;
}

.bookGenre {
	font-size: 13px;
}

.bookTitle {
	font-size: 16px;
}

.bookWriter {
	font-size: 16px;
}

.bookPublish {
	font-size: 13px;
}

.dates {
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.datesTitle {
	font-size: 16px;
	text-align: end;
	margin-bottom: 10px;
}

.dyStFnRead {
	font-size: 13px;
}

.postContent {
	padding: 10px 10px 10px 10px;
}

.postLike{
	color: #80808050;
		text-align: center;
	
}
.postLikeCount {
	padding: 10px 10px 10px 10px;
}

span.size-45 {
	cursor: pointer;
	font-size: 45px;
	font-variation-settings: 'FILL' 0, 'wght' 200, 'GRAD' 200, 'opsz' 35
}

.pcCountTitle {
	font-size: 16px;
	padding: 10px 10px 10px 10px;
}

.pcCount {
	color: #5397fc;
}

.pcContents {
	width: 100%;
	display: flex;
	align-content: center;
	padding: 10px 10px 10px 10px;
}

.pcWriterImg {
	width: 6%;
	display: flex;
	align-items: center;
	margin-right: 15px;
}

.pcWriterImg img {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	box-shadow: 2px 2px 2px 2px #80808050;
}

.pcContentsTxt{
width: 94%;
}
.pcContentsInfo {
	display: flex;
	margin-bottom: 10px;
}

.pcWriter {
	font-size: 16px;
	display: flex;
	align-items: flex-end;
}

span.size-20 {
	color: #5397fc50;
	font-size: 20px;
	font-variation-settings: 'FILL' 1, 'wght' 200, 'GRAD' 200, 'opsz' 20
}

.pcWriteDate {
	font-size: 13px;
	display: flex;
	align-items: flex-end;
}

.pcBtn{
margin-left: auto;
}
.insertPc {
	padding: 10px 10px 10px 10px;
	display: flex;
}

.insertPcContent {
	width: 100%;
}

.insertPcContentBox {
	height: 90px;
	width: 750px;
	border: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 2px #80808050;
	overflow: hidden;
	position: relative;
	overflow-y: auto;
	resize: none;
}

.insertPcBtn {
	width: 100%;
	position: relative;
	display: flex;
	align-self: center;
}

#insertPcBtn {
	position: absolute;
	top: 55%;
	transform: translate(0%, -50%);
	right: 8px;
	width: 70px;
	height: 90px;
	font-size: 15px;
	color: #808080;
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
							<a href="/member/toLogin">
								<p class="user" id="login">로그인</p>
							</a>
							<a href="/member/toSignup">
								<p class="user" id="signup">회원가입</p>
							</a>
						</c:when>
						<c:otherwise>
							<a id="nick">
								<p class="user" id="user">${nickname}님</p>
							</a>
							<a href="/member/logOut">
								<p class="user" id="logout">로그아웃</p>
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
						<img src="/resources/${mdto.sysprofname }" width="100"
							height="100" id="profile">
					</div>
					<div id="contentsHeaderTxt">${mdto.nickname }님&nbsp책하루와&nbsp함께한&nbsp${mdto.signup_date
						} 하루</div>
				</div>
				<div class="contentsBody">
					<div class="title">
						<div class="titleTxt">포스트</div>
						&nbsp <span class="material-symbols-outlined size-30">edit</span>
					</div>
					<div class="selectPost">
						<input type="hidden" id="p_seq" name="p_seq" value="${dto.p_seq }">
						<div class="selectPHeader">
							<div class="postTitle">${dto.p_title }</div>
							<div class="postInfo">
								<div class="dyPostWrite">작성&nbsp${dto.p_write_date }</div>
								<span>&nbsp|&nbsp</span>
								<div class="postViewCount">조회수&nbsp${dto.p_view_count }</div>
							</div>
						</div>
						<hr class="selectPHr">
						<div class="selectPBody">
							<div class="bookInfo">
								<div class="book">
									<div class="img">
										<img src="${dto.b_img_url }" alt="">
									</div>
									<div class="txt">
										<div class="bookGenre">${dto.b_genre }</div>
										<p>
										<div class="bookTitle">${dto.b_title }</div>
										</p>
										<p></p>
										<div class="bookWriter">${dto.b_writer }</div>
										</p>
										<div class="bookPublish">${dto.b_publisher }&nbsp|&nbsp${dto.b_publication_date
											}</div>
									</div>
								</div>
								<div class="dates">
									<div class="datesTitle">읽은 기간</div>
									<div class="dyStFnRead">${dto.dyst_read }&nbsp~&nbsp${dto.dyfn_read
										}</div>
								</div>
							</div>
							<hr class="selectPHr">
							<div class="postContent">${dto.p_content }</div>
							<div class="postLike"  pseq="${dto.p_seq }" isbn=${dto.b_isbn } like="${result}"
								<c:if test="${result}">style="color: #5397fc;"</c:if>>
								<div class="postLikeIcon">
									<span class="material-symbols-outlined size-45">
										thumb_up </span>
								</div>
								<div class="postLikeCount">${dto.p_like_count }</div>
							</div>
						</div>
						<hr class="selectPHr">
						<div class="selectPFooter">
							<div class="postComment">
								<div class="pcCountTitle">
									댓글&nbsp<span class="pcCount">[${dto.p_comment_count }]</span>
								</div>
								<hr class="selectPHr">
								<div class="postComments">
									<c:forEach var="i" items="${list}">
										<div class="pcContents" seq="${i.pc_seq }">
											<div class="pcWriterImg">
												<img src="/images/${i.sysprofname }">
											</div>
											<div class="pcContentsTxt">
												<div class="pcContentsInfo">
													<div class="pcWriter">
														<span class="material-symbols-outlined size-20">
															cloud </span><span class="pcWriterNn">${i.pc_writer_nn }</span><span
															class="material-symbols-outlined size-20"> cloud </span>
													</div>
													<div class="pcWriteDate">&nbsp&nbsp${i.pc_write_date
														}</div>
												<c:if test="${loginID == i.pc_writer_id }">
													<div class="pcBtn">
														<button>수정</button>
														<button>삭제</button>
													</div>
												</c:if>
												</div>
												<div class="pcContent">${i.pc_content }</div>
											</div>
										</div>
									</c:forEach>
								</div>
								<hr class="selectPHr">
								<div class="insertPc">
									<div class="insertPcContent">
										<textarea class="insertPcContentBox" maxlength="200"></textarea>
										<!-- 										<div class="insertPcContentBox" contenteditable="true"></div> -->
									</div>
									<div class="insertPcBtn">
										<button id="insertPcBtn">입력</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="postBtns"></div>
				</div>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<script>
                $("#logoImg").on("click", function () {
                    location.href = "/";
                });

                $("#searchWord").on("keydown", function (e) {
                    if (e.keyCode == 13) {
                        $("#search").submit();
                    }
                });
                $("#notifications").on("click", function () {
                    location.href = "//toNotification";
                });
                $("#bookbag").on("click", function () {
                    location.href = "/delivery/toBookbag";
                });
                $("#bookshelves").on("click", function () {
                    location.href = "/bookshelves/selectBookshelvesListById";
                });
                $("#mypage").on("click", function () {
                    if (loginID == null) {
                        location.href = "/member/login";
                    }
                    location.href = "/member/toMypage";
                });
                $("#snBookshelves").on("click", function () {
                    location.href = "/bookshelves/selectBookshelvesListById";
                });
                $("#snStatistics").on("click", function () {
                    location.href = "/bookstatistics/select-";
                });
                $("#snCalendar").on("click", function () {
                    location.href = "/bookcalendar/select-";
                });
                $("#snBookmark").on("click", function () {
                    location.href = "/bookmark/selectBookmarkListById";
                });
                $("#snBooknote").on("click", function () {
                    location.href = "/booknote/selectPostListById";
                });
                
                
                $(".insertPcContentBox").keyup(function () {
                    let content = $(this).html();

                    // 글자수 세기
                    if (content.length == 0 || content == '') {
                        $('.textCount').text('0자');
                    } else {
                        $('.textCount').text(content.length + '자');
                    }

                    // 글자수 제한
                    if (content.length > 200) {
                        // 200자 부터는 타이핑 되지 않도록
                        $(this).val($(this).val().substring(0, 201));
                        // 200자 넘으면 알림창 뜨도록
                        alert('200자까지 입력 가능합니다.');
                    };
                });
                
//                 $(function(){
//                 	postCommentList();
//                 })
                
                    function postCommentList(lastPc_seq) {
                        let p_seq = $("#p_seq").val();
                    	console.log(lastPc_seq);

                        $.getJSON("/booknote/selectPCListByPseq", { "p_seq": p_seq, "pc_seq": lastPc_seq})
                            .done(res => {
                                if (res != null) {
                                    setPostCommentAppend(res);
                                    console.log(res);

                                }
                            })

                    }

                    function setPostCommentAppend(res) {

                        for (let i = 0; i < res.length; i++) {
                            let pcContents = $("<div>").addClass("pcContents").attr("seq", res[i].pc_seq);

                            let pcWriterImg = $("<div>").addClass("pcWriterImg");
                            let img = $("<img>").attr("src", res[i].sysprofname);

                            pcWriterImg.append(img);
                            pcContents.append(pcWriterImg);


                            let pcContentsTxt = $("<div>").addClass("pcContentsTxt");
                            let pcContentsInfo = $("<div>").addClass("pcContentsInfo");

                            let pcWriter = $("<div>").addClass("pcWriter");
                            let icon1 = $("<span>").addClass("material-symbols-outlined size-20").html("cloud");
							let pcWriterNn = $("<span>").addClass("pcWriterNn").html(res[i].pc_writer_nn);
                            let icon2 = $("<span>").addClass("material-symbols-outlined size-20").html("cloud");

                            pcWriter.append(icon1).append(pcWriterNn).append(icon2);

                            let pcWriteDate = $("<div>").addClass("pcWriteDate").html("&nbsp&nbsp" + res[i].pc_write_date);

                            pcContentsInfo.append(pcWriter).append(pcWriteDate);

                            let pcContent = $("<div>").addClass("pcContent").html(res[i].pc_content);

                            pcContentsTxt.append(pcContentsInfo);
                            if (window.sessionStorage.getItem("loginID") == res[i].pc_writer_id) {
                                let pcBtn = $("<div>").addClass("pcBtn");
                                let updatePcBtn = $("<button>").addClass("updatePcBtn").attr("type", "button").text("수정");
                                let deletePcBtn = $("<button>").addClass("deleteBtn").attr("type", "button").text("삭제");

                                pcBtn.append(updatePcBtn).append(deletePcBtn);
                                pcContentsTxt.append(pcBtn);
                            }
                            pcContentsTxt.append(pcContent);
                            pcContents.append(pcContentsTxt);


                            $(".postComments").append(pcContents);
                        }
                    }

                    function insertPostComment(){

                        let pc_content = $(".insertPcContentBox").val();
                        let p_seq = $("#p_seq").val();
                        let arrPC = document.querySelectorAll(".pcContents");
                        let lastPc_seq = $(arrPC[arrPC.length-1]).attr("seq");
                        $.ajax({
                            url: "/booknote/insertPostComment",
                            type: "post",
                            data: {
                                "pc_content": pc_content,
                                "p_seq": p_seq
                            }, success:function(data){
                            	if(data==1){
                                postCommentList(lastPc_seq);
                                $(".insertPcContentBox").val("");
                            	}
                            }
                        })
                    }

                    $("#insertPcBtn").on("click", function () {
                    	insertPostComment();
                    });
                    
                    $(".insertPcContentBox").on("keydown", function(e){
						if(e.keyCode == 13 && e.shiftKey == false) {
							let pc_content = $(".insertPcContentBox").val();
							insertPostComment(pc_content);
						}
                    });
                    
        			$(".postLike").on("click", function(){
        				let p_like = $(this).attr("like");
        				let p_seq = $(this).attr("pseq");
        				let b_isbn = $(this).attr("isbn");
        				let tmp = event.target
        				console.log(p_like);
        				if(p_like == "false"){
        					console.log("good");
        				$.ajax({
                            url: "/booknote/insertPostLike",
                            type: "post",
                            data: {
                                "p_seq": p_seq,
                                "b_isbn": b_isbn
                            }
        				}).done(function(data){
        					console.log(data);
        				
//         						console.log()
//         						$(tmp).attr("like","true");
//         						$(tmp).attr("style", "color:blue;");
                                location.reload();
        					
        				})
        				}else{
        					$.ajax({
        	                    url: "/booknote/deletePostLike",
        	                    type: "post",
        	                    data: {
        	                        "p_seq": p_seq,
        	                        "b_isbn": b_isbn
        	                    }
        					}).done(function(data){
        						console.log(data);

        						
//         							$(tmp).attr("like","false");
//         							$(tmp).attr("style", "color:grey;");
                                    location.reload();
        						
        					})
        				}
        			})
            </script>
</body>
</html>