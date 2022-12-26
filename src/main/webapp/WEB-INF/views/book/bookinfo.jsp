
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>책하루 도서 페이지</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/hammer.js/2.0.8/hammer.min.js"
	integrity="sha256-eVNjHw5UeU0jUqPPpZHAkU1z4U+QFBBY488WvueTm88="
	crossorigin="anonymous"></script>
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

.signBox {
	display: flex;
	justify-content: flex-end;
}

.signBox>a {
	margin: 5px;
	text-decoration: underline;
	text-underline-offset: 5px;
	text-decoration-color: grey;
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

.body {
	height: 2000px;
	/* position: absolute; */
}

.box, .b_etc, .post-link, .link_btn, #b_genre {
	display: inline-flex;
}

.box {
	width: 978px;
	position: absolute;
}

.b_img>img {
	width: 250px;
	height: 375px;
	/* margin-left: 38px; */
}

.b_title {
	margin-left: 20px;
	margin-top: 5px;
}

#b_title {
	font-size: 30px;
}

.box>div>p, .box>div>div>p {
	margin: 20px;
	margin-top: 5px;
}

.b_etc {
	margin-bottom: 25px;
	width: fit-content;
}

/* 기본정보 구분선 */
.line {
	margin: 0px;
	padding: 0px;
}

.b_genre {
	margin: 20px;
	margin-bottom: 0px;
}

#b_genre {
	margin: 0px;
}

.link_btn {
	margin-left: 20px;
	top: 85%;
	position: absolute;
}

.post-link {
	position: absolute;
	right: 0px;
	bottom: 300px;
}

.post-link>button {
	border: 1px solid #5397fc;
	background-color: white;
	color: #5397fc;
	border-radius: 5px;
}

.link_btn>input {
	width: 343px;
	height: 50px;
	border: 1px solid #5397fc;
	background-color: white;
	color: #5397fc;
	border-radius: 5px;
}

.link_btn>span {
	position: relative;
	color: #5397fc;
}

#heart {
	right: 82%;
	top: 13px;
	font-variation-settings: 'FILL' 0, 'wght' 300, 'GRAD' 0, 'opsz' 48
}

#bookbag2 {
	right: 40%;
	top: 5px;
	font-variation-settings: 'FILL' 0, 'wght' 150, 'GRAD' 0, 'opsz' 48
}

#write_icon {
	font-variation-settings: 'FILL' 0, 'wght' 300, 'GRAD' 0, 'opsz' 48
}

.detail {
	width: 978px;
	position: absolute;
	top: 700px;
	line-height: 50px;
}

#arrow_down, #arrow_up {
	position: relative;
	bottom: 40px;
	left: 95%;
}

#arrow_up {
	display: none;
}

.intro {
	height: fit-content;
}

#intro_title {
	/* border: 1px solid  #5397fc; */
	background-color: #5397fc;
	color: white;
	height: 50px;
	line-height: 50px;
	padding-left: 10px;
	margin: 0px;
}

#intro_text {
	border: 1px solid #d5d5d5;
	word-break: normal;
	margin: 0px;
	padding: 10px;
}

.review {
	position: relative;
	bottom: 70%;
}

#input {
	width: 90%;
	height: 50px;
	border-radius: 5px;
	outline: none;
	border: 1px solid #80808050;
}

#input_btn {
	width: 9%;
	height: 50px;
	outline: none;
	color: #5397fc;
	border-radius: 5px;
	background-color: white;
	border: 1px solid #5397fc;
}

.r_content_box {
	margin: 20px;
	margin-top: 0px;
}

.r_title_box {
	line-height: 30px;
}

.r_writer_info>p, .r_content {
	display: inline-flex;
	margin: 10px;
	font-size: small;
}

.r_writer_info {
	height: 50px;
}

.r_contents {
	display: flex;
}

.r_content {
	height: 30px;
	margin: 10px;
	resize: none;
}

.r_like {
	position: relative;
	left: 70%;
}

.r_like_icon {
	position: relative;
	top: 40%;
	font-variation-settings: 'FILL' 0, 'wght' 300, 'GRAD' 0, 'opsz' 48
}

.r_like_count {
	position: relative;
	top: 30%;
}

.r_content_blank {
	margin-top: 30px;
	text-align: center;
}

.user_btn {
	display: inline;
	position: relative;
	left: 70%;
}

.user_btn>button, .fin_btn, .cancel_btn {
	outline: none;
	color: #5397fc;
	border-radius: 5px;
	background-color: white;
	border: 1px solid #5397fc;
}

.content {
	border: none;
}

.paging {
	text-align: center;
}

.post {
	position: relative;
	top: 55%;
}

.post>p {
	margin: 20px;
}

/* .flex-box>p,
                .flex-box,
                .flex-postBox>p,
                .post_list,
                .with-books>p {
                    margin: 20px; 
                } */
.flex-postBox {
	display: flex;
	justify-content: space-between;
}

/* 포스트 출력 상자 */
.flex-postBox>.post_box {
	margin: 20px;
	width: 250px;
	border: 1px solid #5397fc;
	border-radius: 15px;
	height: 300px;
	text-align: center;
}

.profile, .p_title_box {
	display: flex;
}

.profile_img {
	width: 50px;
	height: fit-content;
	border-radius: 50%;
	padding: 5px;
}

.profile {
	position: relative;
	top: 4%;
}

.profile>p {
	margin-left: 20px;
	margin: 0px;
}

.p_title_box {
	justify-content: space-around;
	padding-left: 10px;
	padding-right: 10px;
}

.post_content {
	margin: 0px;
	padding-left: 10px;
	padding-right: 10px;
}

.post_title {
	margin: 0px;
}

.with-books {
	position: relative;
	top: 55%;
}

.with-books>p {
	margin-left: 0px;
}

.books_box {
	display: flex;
	justify-content: space-around;
}

.w_img_url {
	width: 150px;
}

.w_title, .w_writer {
	margin: 0px;
}

.w_title {
	line-height: 0px;
}

.w_writer {
	line-height: 40px;
	font-size: small;
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
							<a href="/member/logout">
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

			<div class="book_basic_info">
				<div class="box">
					<div class="b_img">
						<img src="${dto.b_img_url}" id="b_img">
					</div>
					<div class="b_title">
						<p id="b_title">${dto.b_title}</p>
						<div class="b_etc">
							<p id="b_writer">${dto.b_writer}</p>
							<p class="line">|</p>
							<p id="b_publisher">${dto.b_publisher}</p>
							<p class="line">|</p>
							<p id="b_publication_date">${dto.b_publication_date}</p>
						</div>
						<div class="b_genre">
							<span class="material-symbols-outlined">label</span>
							<p id="b_genre">${dto.b_genre}</p>
						</div>
						<div class="link_btn">
							<input type="button" value="위시리스트에 담기"> <input
								type="button" value="책가방에 담기"> <span
								class="material-symbols-outlined" id="heart"> favorite</span> <span
								class="material-symbols-outlined size-40" id="bookbag2">shopping_bag</span>
						</div>
						<div class="post-link">
							<button>
								<span class="material-symbols-outlined" id="write_icon">edit_square</span>
								<br> <br>포스트 작성
							</button>
						</div>
					</div>
				</div>
				<!--box -->
			</div>
			<!--book_basic_info-->

			<div class="detail">

				<div class="book_detail_info">
					<div class="flex-box">
						<div class="intro">
							<p id="intro_title">책 소개</p>
							<span class="arrow_icon material-symbols-outlined"
								id="arrow_down">keyboard_arrow_down</span> <span
								class="arrow_icon material-symbols-outlined" id="arrow_up">keyboard_arrow_up</span>

							<div id="intro_text">${dto.b_description}</div>
						</div>
					</div>
				</div>

				<div class="review">
					<div class="flex-box">
						<hr>
						<div class="review_box">
							<p>짧은 리뷰</p>
							<form action="/book/insertReview">
								<div class="input-box">
									<input type="hidden" value="${dto.b_isbn}" name="b_isbn"
										id="b_isbn"> <input type="text"
										placeholder="내용을 입력해주세요." id="input" name="rv_content">
									<button
										<c:if test="${loginID == null }"> type="button" onclick="alert_open();"</c:if>
										id="input_btn">작성</button>
								</div>
							</form>
							<c:choose>
								<c:when test="${not empty rlist}">
									<c:forEach items="${rlist}" var="r">
										<div class="r_title_box">
											<div class="r_writer_info">
												<input type="hidden" value="${r.rv_seq}" class="rv_seq">
												<p class="nick">${r.rv_writer_nn}</p>
												<p class="r_line">|</p>
												<p class="review_date">
													<fmt:formatDate pattern="yyyy-MM-dd"
														value="${r.rv_write_date}" />
												</p>

												<c:if test="${loginID == r.rv_writer_id}">
													<div class="user_btn">
														<button type="button" class="r_update"
															data-seq="${r.rv_seq}" data-content="${r.rv_content}"
															data-isbn="${r.b_isbn}">수정</button>
														<button type="button" class="r_delete"
															data-seq="${r.rv_seq}">삭제</button>
													</div>
												</c:if>
											</div>
											<div class="r_contents">
												<div class="r_content">
													<input type="text" readonly maxlength="200"
														value="${r.rv_content}" class="content">
												</div>
												<div class="r_like"
													<c:if test="${loginID == null}"> onclick="alert_open();"</c:if>
													>
												
													<span class="r_like_icon material-symbols-outlined"
														data-seq="${r.rv_seq}">thumb_up</span> 
													
														
														<span class="r_like_count">${r.r_count_like}</span>
												</div>
											</div>
										</div>
										<hr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="r_content_blank">작성된 리뷰가 없습니다.</div>
									<hr>
								</c:otherwise>
							</c:choose>
						</div>

						<!--  review_box -->
						<div class="paging">1 2 3 4 5</div>

					</div>
					<!-- flex-box -->
				</div>
				<!-- review -->


				<div class="post">

					<div class="post_list">
						<hr>
						<p>포스트</p>
					</div>

					<!-- foreach -->
					<div class="flex-postBox">

						<!-- 스와이프 기능으로 일단 앞에 3개만 출력 예정 -->
						<c:choose>
							<c:when test="${not empty plist}">
								<c:forEach items="${plist}" var="p">
									<div class="post_box">
										<div class="profile">
											<%-- <c:if test="${not empty p.p_writer_profile}">
											<img src="${p.p_writer_profile}" class="profile_img">
										</c:if> --%>
											<img src="/resources/basic.png" class="profile_img">
											<p>${p.p_writer_nn}님의포스트</p>
										</div>
										<hr>

										<div class="p_title_box">
											<p class="post_title">${p.p_title}</p>
											<span class="like_icon">good</span><span class="like_count">${p.p_like_count}</span>
										</div>

										<p class="post_content">${p.p_content}</p>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<p class="post_title">작성된 포스트가 없습니다.</p>
							</c:otherwise>
						</c:choose>

						<!-- 2 -->
						<div class="post_box">

							<div class="profile">
								<img src="/resources/basic.png" class="profile_img">
								<p>${p.p_writer_nn}나비님의포스트</p>
							</div>

							<hr id="p_line">

							<div class="p_title_box">
								<p class="post_title">${p.p_title}</p>
								<span class="like_icon">좋아요</span> <span class="like_count">234</span>
							</div>

							<p class="post_content">${p.p_content}여기는포스트콘텐츠글이들어가는곳</p>
						</div>


						<!-- 3 -->
						<div class="post_box">

							<div class="profile">
								<img src="/resources/basic.png" class="profile_img">
								<p>${p.p_writer_nn}님의포스트</p>
							</div>

							<hr>

							<div class="p_title_box">
								<p class="post_title">${p.p_title}</p>
								<span class="like_icon">good</span><span class="like_count">123</span>
							</div>

							<p class="post_content">${p.p_content}</p>
						</div>


					</div>
					<!-- flex-box -->
				</div>
				<!-- post -->

				<div class="with-books">
					<hr>
					<p>함께 읽은 책</p>


					<!--6개씩 출력 로직 <c:choose>
				<c:when test="${empty loginID}"> 
					<div class="flex-box">
						<div class="books_box">
						<c:set var="i" value="0" />
						<c:set var="j" value="1" />
						<c:forEach var="w" items="${list}">
							<c:if test="${i%j == 0 }">
								<div class="book">
							</c:if>
							<img src="/resources/테스트.jpg" class="w_img_url">
								<p class="w_title">왜 아가리로만 할까?</p>
								<p class="w_writer">이상혁</p>
							<!-- </div> -->
					<!-- <c:if test="${i%j == j-1 }">
					</div>
					</c:if>
					<c:set var="i" value="${i+1}" />
					</c:forEach>
				</div>
			</div>
		</c:when>
	<c:otherwise>
		<div>검색 결과가 없습니다.</div>
	</c:otherwise>
	</c:choose>
	</div>-->

					<div class="flex-box">
						<div class="books_box">

							<div class="book">
								<img src="/resources/테스트.jpg" class="w_img_url">
								<p class="w_title">왜 아가리로만 할까?</p>
								<p class="w_writer">이상혁</p>
							</div>

							<div class="book">
								<img src="/resources/테스트.jpg" class="w_img_url">
								<p class="w_title">제목</p>
								<p class="w_writer">저자</p>
							</div>

							<div class="book">
								<img src="/resources/테스트.jpg" class="w_img_url">
								<p class="w_title">제목</p>
								<p class="w_writer">저자</p>
							</div>

							<div class="book">
								<img src="/resources/테스트.jpg" class="w_img_url">
								<p class="w_title">제목</p>
								<p class="w_writer">저자</p>
							</div>

							<div class="book">
								<img src="/resources/테스트.jpg" class="w_img_url">
								<p class="w_title">제목</p>
								<p class="w_writer">저자</p>
							</div>

						</div>
					</div>
					<!-- flex-box -->

				</div>
				<!--detail-->

			</div>
			<!--body-->

			<div class="footer"></div>

		</div>
	</div>
<script>
		$(document).ready(function(){

							//위시리스트에 담기 기능

							//책가방에 담기 기능

							//포스트 작성 이동 기능

							//책소개 화살표 버튼 누르면 내용 보이기 / 숨기기(토글 사용)

							//책 내용 기본으로 숨기기
							$("#intro_text").hide();
							$("#arrow_down").click(function() {

								$("#intro_text").toggle("down");

								$("#arrow_up").css("display", "block");
								$("#arrow_down").css("display", "none");
							});

							$("#arrow_up").click(function() {
								$("#intro_text").toggle("down");

								$("#arrow_down").css("display", "block");
								$("#arrow_up").css("display", "none");
							});

							//짧은 리뷰(에이작스)

							/*       	$("#input_btn").on("click",function(){
							          let loginStatus = ${not empty loginID};
							          if (loginStatus == false) {
							              if (confirm("회원만 작성할 수 있습니다. \n 로그인 페이지로 이동하시겠습니까?")) {
							                  location.href = "/member/toLogin";
							              }else{
							              	location.reload();
							              }
							          }else{
							          	console.log("여기까지");
							          	$("#input").submit(); 
							          }
							      }); */

							//작성
							/* 	$("#input_btn").on("click",function(){
									
									let rv_content=$("#input").val();
									let rv_writer_id=${loginID};
									
									console.log(rv_writer_id+" : "+rv_content); */

							/* 	$.ajax({
									type:"post",
									url:"/book/insertReview",
									data: {
										"rv_content":rv_content
										
									}
									
								}).done(function(resp){
									
								}); 
							
							});*/

							$(document).on("click",".r_delete",function() {

												let rv_seq = $(this).attr("data-seq");
												let b_isbn = $("#b_isbn").val();

												if (confirm("리뷰를 삭제하시겠습니까?")) {
													console.log(rv_seq);
													location.href = "/book/deleteReview?rv_seq="
															+ rv_seq
															+ "&b_isbn="
															+ b_isbn;
												} else {

													location.reload();
												}
											});

							$(document).on("click",".r_update",function() {

										/* var rv_seq=$(".r_update").data("seq");  */
										/* var rv_content=$(".r_update").data("content"); */

										let rv_seq = $(this).attr("data-seq");
										let b_isbn = $("#b_isbn").val();

										console.log(rv_seq);

										/* $(".r_content>input").attr("readonly", false);
										
										$(".user_btn>button").css("display","none"); */

										$(this).closest(".r_title_box").find(
												".content").attr("readonly",
												false);

										$(this).closest(".r_title_box").find(
												".r_update,.r_delete").css(
												"display", "none");

										var input = $("<input>");
										input.attr("type", "button");
										input.attr("data-seq", rv_seq);
										input.attr("data-isbn", b_isbn);
										input.val("완료");
										input.addClass("fin_btn");

										var input2 = $("<input>");
										input2.attr("type", "button");
										input2.val("취소");
										input2.addClass("cancel_btn");

										$(this).closest(".r_title_box").find(
												".user_btn").append(input);

										$(this).closest(".r_title_box").find(
												".user_btn").append(input2);

									});

							$(document).on("click",".fin_btn",function() {

										/* let rv_content=$(".r_content>input").val(); */

										/* $(".fin_btn").data("content",rv_content); */
										/* $(".fin_btn").data("seq",${r.rv_seq}); */

										/* let rv_seq = $(this).attr("data-seq"); */
										let rv_seq = $(this).closest(
												".r_title_box").find(".rv_seq")
												.val();
										let rv_content = $(this).closest(
												".r_title_box")
												.find(".content").val();
										let b_isbn = $(this).attr("data-isbn");

										console.log(rv_content);
										console.log(rv_seq);

										console.log(b_isbn);

										$.ajax({
											url : "/book/updateReview",
											type : "post",
											data : {
												"rv_seq" : rv_seq,
												"rv_content" : rv_content,
												"b_isbn" : b_isbn
											}
										}).done(function(resp) {
											if (resp == "true") {
												location.reload();
											}
										})

									});

							//수정 취소 버튼 눌렀을 때
							$(document).on("click", ".cancel_btn", function() {
								location.reload();
							});
							
							//댓글 좋아요 기능
							//좋아요 누른 적이 있는지 확인
						/* $(document).ready(function () {
								
	
								let r_like_count=${r_like_count};
								
								let rv_seq = $(this).attr("data-seq");
								
							$.ajax({
								url:"/book/findReviewLike",
								data:{
									"rv_seq" : rv_seq
								}
								
							}).done(resp){
								if(resp==true){
								    $(".like").append();
						            $(".like").prop('name',heartval)
								}
							}
							});  */ 
							
							//좋아요 기능
							 $(document).ready(function(){
								
							 	let r_like_count=$(".r_like_count").val();
							 	
							 	console.log(r_like_count);
							 	
							 	if(r_like_count > 0){
							 		$(".r_like_icon").css("font-variation-settings","fill")
							 					  )
							 	}
							 	
							 	
							 	
								/* 
									if(r_like_count > 0){
										//좋아요 누른 상태에서 다시 누를 때
										$(document).on("click",".r_like_icon",function(){
											
											let rv_seq = $(this).attr("data-seq");
											
											$.ajax({
												type:"post",
												url:"/book/deleteReviewLike",
												data: {"rv_seq" : rv_seq}
											}).done(resp){
												console.log("취소 성공");
											}
										});
										
									}else{
										//좋아요 안 눌렀을 때
										$(document).on("click",".r_like_icon",function(){
											
											let rv_seq = $(this).attr("data-seq");
										
										$.ajax({
											type:"post",
											url: "/book/insertReviewLike",
											data: {"rv_seq" : rv_seq}
										}).done(resp){
											console.log("좋아요 성공");
										}
										})
									}

								});  */
								
								

							//포스트 스와이프로 작동 누르면 이동 - 기능 사용
						 	var el = document.querySelector("body"); //가운데 흰 네모박스 DIV 엘리먼트
							var mc = new Hammer.Manager(el); //Hammer 이벤트 관리자 생성 및 이벤트 등록
							mc.add(new Hammer.Pan({ threshold: 0, pointers: 0 }));
							mc.add(new Hammer.Swipe()).recognizeWith(mc.get('pan'));
							mc.add(new Hammer.Pinch({ threshold: 0 })).recognizeWith([mc.get('pan'), mc.get('rotate')]);
							
							mc.on("pinchstart pinchmove", onPinch); //핀치 이벤트- 핸들러 등록
							function onPinch(ev) {
							    if(ev.type == 'pinchstart') {
							    initScale = transform.scale || 1;
							    }
							    
							    transform.scale = initScale * ev.scale;
							    
							    ElementUpdate(transform);
							}
							 
							mc.on("swipe", onSwipe); // 스와이프 이벤트 - 핸들러 등록
							function onSwipe(ev) {
							    var angle = 50;
							    transform.ry = (ev.direction & Hammer.DIRECTION_HORIZONTAL) ? 1 : 0;
							    transform.rx = (ev.direction & Hammer.DIRECTION_VERTICAL) ? 1 : 0;
							    transform.angle = (ev.direction & (Hammer.DIRECTION_RIGHT | Hammer.DIRECTION_UP)) ? angle : -angle;
							    
							    ElementUpdate(transform);
							}
							
							
							//함께 읽은 책 누르면 이동  

					
							
		});

		//리뷰 비회원 대비) 비로그인 상태에서 리뷰 달려고 하면 로그인 페이지로 이동
		function alert_open() {
			alert("로그인 후 이용해주세요.");
		}
</script>
</body>
</html>