<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/hammer.js/2.0.8/hammer.min.js"
                integrity="sha256-eVNjHw5UeU0jUqPPpZHAkU1z4U+QFBBY488WvueTm88=" crossorigin="anonymous"></script>
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
                    /* position: absolute; */
                }

                .box,
                .b_etc,
                .post-link,
                .link_btn,
                #b_genre {
                    display: inline-flex;
                }

                .box {
                    width: 978px;
                    position: absolute;
                }

                .b_img>img {
                    width: 250px;
                    margin-left: 38px;
                }


                .b_title {
                    margin-left: 20px;
                    margin-top: 5px;
                }

                #b_title {
                    font-size: 30px;
                }

                .box>div>p,
                .box>div>div>p {
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
                    top: 86%;
                    position: absolute;
                }

                .post-link {
                    position: absolute;
                    right: 20px;
                    bottom: 310px;
                }

                .post-link>button {
                    border: 1px solid #5397fc;
                    background-color: white;
                    color: #5397fc;
                    border-radius: 5px;
                }


                .link_btn>input {
                    width: 315px;
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
                    font-variation-settings:
                        'FILL' 0,
                        'wght' 300,
                        'GRAD' 0,
                        'opsz' 48
                }

                #bookbag {
                    right: 40%;
                    top: 5px;
                    font-variation-settings:
                        'FILL' 0,
                        'wght' 150,
                        'GRAD' 0,
                        'opsz' 48
                }

                #write_icon{
                    font-variation-settings:
                        'FILL' 0,
                        'wght' 300,
                        'GRAD' 0,
                        'opsz' 48
                }


                .detail {
                    width: 978px;
                    position: absolute;
                    top: 700px;
                    padding-left: 20px;
                    line-height: 50px;
                }

                #arrow_down,
                #arrow_up {
                    position: relative;
                    bottom: 50px;
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
                    padding-left: 20px;
                }

                #intro_text {
                    padding-left: 20px;
                    border: 1px solid #d5d5d5;
                }

                .review {
                    position: relative;
                    bottom: 70%;
                }

                #input {
                    width: 90%;
                    height: 50px;
                }

                #input_btn {
                    width: 9%;
                    height: 50px;
                }
                .r_title_box{
                    line-height: 30px;
                }

                .r_writer_info>p,
                .r_content {
                    display: inline-flex;
                    margin: 10px;
                    font-size: small;
                }
                .r_writer_info{
                    height:50px;
                }
                .r_content{
                    height:30px;
                }

                .paging{
                    text-align: center;
                }

                .post{
                    position: relative;
                    top: 55%;
                }

                .post>p {
                    margin: 20px;
                }

                .flex-box>p,
                .flex-box,
                .flex-postBox>p,
                .post_list,
                .with-books>p {
                    margin: 20px; 
                }

                .flex-postBox {
                    display: flex;
                    margin-left: 20px;
                    justify-content: space-evenly;
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

                .profile,
                .p_title_box {
                    display: flex;
                }

                .profile_img {
                    width: 50px;
                    height:fit-content;
                    border-radius: 50%;
                    padding: 5px;

                }

                .profile {
                    position: relative;
                    top: 4%;
                }
                .profile>p{
                    margin:0px;
                }

                .p_title_box {
                    justify-content: space-around;
                }

                .post_title {
                    margin: 0px;
                }

                .with-books {
                    position: relative;
                    top: 55%;
                    margin-left: 20px;
                }
                .with-books>p{
                    margin-left: 0px;
                }

                .books_box {
                    margin: 20px;
                    display: flex;
                    justify-content: space-evenly;
                }

                .w_img_url {
                    width: 150px;
                    margin: 5px;
                }

                .w_title,
                .w_writer {
                    margin: 0px;
                }
                .w_title{
                    line-height: 30px;
                }

                .w_writer {
                    line-height: 10px;
                    font-size: small;
                }

                body>hr {
                    background-color: #5397fc;
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

                    <div calss="book_basic_info">
                        <div class="box">
                            <div class="b_img"><img src="${dto.b_img_url}" id="b_img"></div>
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
                                    <input type="button" value="위시리스트에 담기">
                                    <input type="button" value="책가방에 담기">
                                    <span class="material-symbols-outlined" id="heart"> favorite</span>
                                    <span class="material-symbols-outlined size-40" id="bookbag">shopping_bag</span>
                                </div>
                                <div class="post-link">
                                    <button>
                                        <span class="material-symbols-outlined" id="write_icon">edit_square</span>
                                        <br><br>포스트 작성
                                    </button>
                                </div>
                            </div>
                        </div> <!--box -->
                    </div> <!--book_basic_info-->

                    <div class="detail">

                        <div class="book_detail_info">
                            <div class="flex-box">
                                <div class="intro">
                                    <p id="intro_title">책 소개</p>
                                    <span class="arrow_icon material-symbols-outlined"
                                        id="arrow_down">keyboard_arrow_down</span>
                                    <span class="arrow_icon material-symbols-outlined"
                                        id="arrow_up">keyboard_arrow_up</span>

                                    <p id="intro_text">
                                    ${dto.b_description}
                                    </p>
                                </div>
                            </div>
                        </div>
                        

                        <div class="review">
                            <div class="flex-box">
                                <hr>
                                <div class="review_box">
                                    <p>짧은 리뷰</p>
                                    <div class="input-box">
                                        <input type="text" plcaholder="내용을 입력해주세요." id="input">
                                        <button id="input_btn">작성</button>
                                    </div>
                                    <!-- 입력되면 div 추가 -->
                                    <div class="r_title_box">
                                        <div class="r_writer_info">
                                            <p class="nick">닉네임</p>
                                            <p class="r_line">|</p>
                                            <p class="review_date">작성날짜</p>
                                        </div>
                                        <div class="r_content">
                                            댓글 내용
                                        </div>
                                    </div>
                                    <hr>

                                    <div class="r_title_box">
                                        <div class="r_writer_info">
                                            <p class="nick">닉네임</p>
                                            <p class="r_line">|</p>
                                            <p class="review_date">작성날짜</p>
                                        </div>

                                        <div class="r_content">
                                            댓글 내용
                                        </div>
                                    </div>
                                    <hr>

                                    <div class="r_title_box">
                                        <div class="r_writer_info">
                                            <p class="nick">닉네임</p>
                                            <p class="r_line">|</p>
                                            <p class="review_date">작성날짜</p>
                                        </div>

                                        <div class="r_content">
                                            댓글 내용
                                        </div>
                                    </div>
                                    <hr>

                                    <div class="r_title_box">
                                        <div class="r_writer_info">
                                            <p class="nick">닉네임</p>
                                            <p class="r_line">|</p>
                                            <p class="review_date">작성날짜</p>
                                        </div>

                                        <div class="r_content">
                                            댓글 내용
                                        </div>
                                    </div>
                                    <hr>

                                    <div class="r_title_box">
                                        <div class="r_writer_info">
                                            <p class="nick">닉네임</p>
                                            <p class="r_line">|</p>
                                            <p class="review_date">작성날짜</p>
                                        </div>

                                        <div class="r_content">
                                            댓글 내용
                                        </div>
                                    </div>
                                    <hr>


                                </div> <!--  review_box -->
                                <!-- foreach -->
                                <div class="paging">1 2 3 4 5</div>

                            </div> <!-- flex-box -->
                        </div> <!-- review -->
                   

                    <div class="post">
                       
                        <div class="post_list">
                            <hr> <p>포스트</p>
                        </div>
                        <!-- foreach -->
                        <div class="flex-postBox">

                            <!-- 1 -->
                            <div class="post_box">

                                <div class="profile">
                                    <img src="basic.png" class="profile_img">
                                    <p>${nickname} 님의 포스트</p>
                                </div>

                                <hr>

                                <div class="p_title_box">
                                    <p class="post_title">${post_title}</p>
                                    <span class="like_count">123</span>
                                    <span class="like_icon">good</span>
                                </div>

                                <p class="post_content">${post_content}</p>
                            </div>

                            <!-- 2 -->
                            <div class="post_box">

                                <div class="profile">
                                    <img src="basic.png" class="profile_img">
                                    <p>${nickname} 님의 포스트</p>
                                </div>

                                <hr id="p_line">

                                <div class="p_title_box">
                                    <p class="post_title">${post_title}</p>
                                    <span class="like_count">123</span>
                                    <span class="like_icon">good</span>
                                </div>

                                <p class="post_content">${post_content}</p>
                            </div>

                            <!-- 3 -->
                            <div class="post_box">

                                <div class="profile">
                                    <img src="basic.png" class="profile_img">
                                    <p>${nickname} 님의 포스트</p>
                                </div>

                                <hr>
                            
                                <div class="p_title_box">
                                    <p class="post_title">${post_title}</p>
                                    <span class="like_count">123</span>
                                    <span class="like_icon">good</span>
                                </div>

                                <p class="post_content">${post_content}</p>
                            </div>


                        </div> <!-- flex-box -->
                    </div><!-- post -->

                    <div class="with-books">
                        <hr>
                        <p>함께 읽은 책</p>
                        <div class="flex-box">
                            <div class="books_box">

                                <div class="book">
                                    <img src="테스트.jpg" class="w_img_url">
                                    <p class="w_title">제목</p>
                                    <p class="w_writer">저자</p>
                                </div>

                                <div class="book">
                                    <img src="테스트.jpg" class="w_img_url">
                                    <p class="w_title">제목</p>
                                    <p class="w_writer">저자</p>
                                </div>

                                <div class="book">
                                    <img src="테스트.jpg" class="w_img_url">
                                    <p class="w_title">제목</p>
                                    <p class="w_writer">저자</p>
                                </div>

                                <div class="book">
                                    <img src="테스트.jpg" class="w_img_url">
                                    <p class="w_title">제목</p>
                                    <p class="w_writer">저자</p>
                                </div>

                                <div class="book">
                                    <img src="테스트.jpg" class="w_img_url">
                                    <p class="w_title">제목</p>
                                    <p class="w_writer">저자</p>
                                </div>

                            </div>
                        </div> <!-- flex-box -->
    
                    </div> <!--detail-->

            </div> <!--body-->

            <div class="footer"></div>

            </div>
            </div>
            <script>
                $(document).ready(function () {

                    //위시리스트에 담기 기능

                    //책가방에 담기 기능

                    //포스트 작성 이동 기능




                    //책소개 화살표 버튼 누르면 내용 보이기 / 숨기기(토글 사용)

                    //책 내용 기본으로 숨기기
                    $("#intro_text").hide();
                    $("#arrow_down").click(function () {

                        $("#intro_text").toggle("down");

                        $("#arrow_up").css("display", "block");
                        $("#arrow_down").css("display", "none");
                    });

                    $("#arrow_up").click(function () {
                        $("#intro_text").toggle("down");

                        $("#arrow_down").css("display", "block");
                        $("#arrow_up").css("display", "none");
                    });




                    //짧은 리뷰(에이작스)
                    //비회원 대비) 비로그인 상태에서 리뷰 달려고 하면 로그인 페이지로 이동
                    $("#input").on("focus", function () {
                        //let loginStatus = ${not empty id};
                        if (loginStatus == false) {
                            if (confirm("로그인 페이지로 이동하시겠습니까?")) {
                                location.href = "/member/toLogin"
                            }
                        }
                    });


                    //포스트 스와이프로 작동/ 누르면 이동
                    var hammertime = new Hammer(myElement, myOptions);
                    hammertime.on('pan', function (ev) {
                        console.log(ev);
                    });
                    //함께 읽은 책 누르면 이동  
                });
            </script>
        </body>
        </html>