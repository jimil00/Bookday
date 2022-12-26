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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
	overflow: hidden;
}

.bookbag-count {
	padding-top: 60px;
	padding-bottom: 10px;
	font-weight: bold;
}

.bookbag-top-checkbox-div {
	width: 50%;
	float: left;
}

.bookbag-top-btn-div {
	width: 50%;
	float: left;
	text-align: right;
}

.bookbag-top-btn {
	margin-left: 5px;
	border-radius: 4px;
	border: 1px solid rgb(194, 193, 193);
	background-color: #ffffff;
}

.body-left {
	width: 70%;
	overflow: hidden;
	float: left;
}

.bookbag-top {
	height: 50px;
	padding-top: 25px;
	padding-left: 15px;
	padding-right: 18px;
}

.bookbag-main {
	overflow: hidden;
	width: 100%;
	height: 170px;
}

.bookbag-main-checkbox {
	float: left;
	width: 6%;
	height: 100%;
	line-height: 150px;
	padding-left: 15px;
}

.book-img-div {
	width: 16%;
	height: 100%;
	float: left;
}

#book-img {
	width: 93px;
	height: 140px;
}

.bookbag-detail-div {
	width: 75%;
	height: 100%;
	float: left;
}

.bookbag-detail-text {
	height: 60%;
}

.bookbag-detail-btn {
	height: 40%;
	padding-top: 20px;
}

.detail-btn {
	border: 1px solid rgb(194, 193, 193);
	border-radius: 4px;
	background-color: #ffffff;
}

.body-right {
	width: 27%;
	overflow: hidden;
	float: right;
}

.sub-rental-info {
	border: 1px solid rgb(194, 193, 193);
}

.rental-detail {
	padding-left: 15px;
	padding-top: 18px;
	padding-bottom: 18px;
	padding-right: 15px;
}

.address {
	padding-left: 15px;
	padding-top: 18px;
	padding-bottom: 18px;
	padding-right: 15px;
}

.rental-detail-title, .address-title {
	font-weight: bold;
	text-align: center;
}

.address-btn-div {
	overflow: hidden;
	text-align: center;
}

.address-btn {
	width: 170px;
	height: 35px;
	text-align: center;
	border-radius: 4px;
	border: 1px solid rgb(194, 193, 193);
	background-color: #ffffff;
	color: #5397fc;
	border-radius: 4px;
}

.sub-rental-btn {
	margin-top: 10px;
	width: 100%;
	height: 45px;
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
			<c:choose>
				<c:when test="${fn:length(list) == 0}">
					<div class="body-top">
						<div class="bookbag-count" style="padding-left: 5px;">책가방
							(${fn:length(list)})</div>
					</div>
					<div class="body-left"
						style="border: 1px solid rgb(194, 193, 193);">
						<div class="bookbag-top"></div>
						<div class="bookbag-main"
							style="text-align: center; line-height: 125px;">책가방에 담긴 작품이
							없습니다.</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="body-top">
						<div class="bookbag-count" style="padding-left: 15px;">책가방
							(${fn:length(list)})</div>
					</div>
					<div class="body-left">
						<div class="bookbag-top">
							<div class="bookbag-top-checkbox-div">
								<input type="checkbox" id="check-all"> <label>전체
									선택</label>
							</div>
							<div class="bookbag-top-btn-div">
								<button class="bookbag-top-btn">선택 위시리스트에 담기</button>
								<button class="bookbag-top-btn">선택 삭제</button>
							</div>
						</div>
						<hr style="width: 95%; margin-top: 5px;">
						<c:forEach var="bookbag" items="${list}">
							<div class="bookbag-main">
								<div class="bookbag-main-checkbox">
									<input type="checkbox" class="check">
								</div>
								<div class="book-img-div">
									<img src="${bookbag.b_img_url }" id="book-img">
								</div>
								<div class="bookbag-detail-div">
									<div class="bookbag-detail-text">
										${bookbag.b_title } <br> ${bookbag.b_writer }<br> <input
											type="hidden" value="${bookbag.b_isbn }"> <input
											type="hidden" value="${bookbag.b_genre }">
									</div>
									<div class="bookbag-detail-btn">
										<button class="detail-btn" type="button"
											id="w${bookbag.bookbag_seq }">위시리스트에 담기</button>
										<button class="detail-btn" type="button"
											id="d${bookbag.bookbag_seq }">삭제</button>
									</div>
								</div>
							</div>
							<hr style="width: 95%; margin-top: -14px;">

							<script>
								// 삭제 버튼 기능
								$(function() {
									$("#d${bookbag.bookbag_seq }").on("click",function() {
										if (confirm("<${bookbag.b_title }> 작품을 삭제하시겠습니까?")) {
											location.href = "/delivery/deleteBookbagBySeq?bookbag_seq="+ ${bookbag.bookbag_seq}
											alert("삭제되었습니다.");
										}
									});
								})
								// 위시리시트에 담기 버튼 기능
								$(function () {
						            $("#w${bookbag.bookbag_seq }").on("click", function () {
						                $.ajax({
						                    url: "/delivery/selectWishlistByIdBisbn",
						                    data: {
						                        "id": "앙뚜",
						                        "b_isbn": "${bookbag.b_isbn }"
						                    }, success: function (result) {
						                        if (result == "false") {
						                            alert("이미 위시리스트에 있는 책입니다.");
						                        } else {
						                            $.ajax({
						                                url: "/delivery/insertWishlist",
						                                data: {
						                                    "id": "앙뚜",
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
						<div class="sub-rental-info"
							style="height: 170px; text-align: center; line-height: 170px;">
							종이책 구독 서비스를 이용해보세요!</div>
						<div class="sub-rental-btn-div">
							<button class="sub-rental-btn" id="sub-btn">구독하기</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<c:set var="arrivalDate"
						value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * 2)%>" />
					<c:set var="returnDate"
						value="<%=new Date(new Date().getTime() + (60 * 60 * 24 * 1000 * 12))%>" />
					<div class="body-right">
						<div class="sub-rental-info">
							<div class="rental-detail">
								<div class="rental-detail-title">대여 내역</div>
								<br>
								<div style="padding-bottom: 4px;">
									대여할 책 : <span id="check-count-result"></span> 권
								</div>
								<div style="padding-bottom: 4px;">남은 배송 횟수 : ${sdto.delivery_count }권</div>
								<div style="padding-bottom: 4px;">남은 대여 권수 : ${sdto.book_count }권</div>
								<div style="padding-bottom: 4px;">
									도착예정일 :
									<fmt:formatDate value="${arrivalDate}" pattern="yyyy-MM-dd(E)" />
								</div>
								<div>
									반납일 :
									<fmt:formatDate value="${returnDate}" pattern="yyyy-MM-dd(E)" />
								</div>
							</div>
							<hr style="margin-top: 0px; margin-bottom: 0px; width: 92%;">
							<div class="address">
								<div class="address-title">배송지 정보</div>
								<br>
								<div style="padding-bottom: 3px;">우편번호</div>
								<div style="padding-bottom: 10px;">${dto.postcode }</div>
								<div style="padding-bottom: 3px;">주소</div>
								<div style="padding-bottom: 10px;">${dto.address1 }</div>
								<div style="padding-bottom: 3px;">상세주소</div>
								<div style="padding-bottom: 10px;">${dto.address2 }</div>
								<div style="padding-bottom: 3px;">받으실 분</div>
								<div style="padding-bottom: 10px;">${dto.reciver }</div>
								<div style="padding-bottom: 3px;">휴대폰 번호</div>
								<div>${dto.reciver_phone }</div>
								<br>
								<div class="address-btn-div">
									<c:choose>
										<c:when test="${dto.postcode eq null}">
											<button class="address-btn">주소검색</button>
										</c:when>
										<c:otherwise>
											<button class="address-btn">주소변경</button>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
						<div class="sub-rental-btn-div">
							<button class="sub-rental-btn" id="rental-btn">대여하기</button>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="footer"></div>
	</div>
	<script>
		// 주소검색, 주소변경 버튼 기능
		$(".address-btn").on("click", function() {
			window.open("/delivery/toAddressInput", "_blank", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500, left=500, top=150");
		})
		// 구독하기 버튼 기능
		$("#sub-btn").on("click", function() {
			location.href = "/delivery/toPayment";
		})
		// 대여하기 버튼 기능
		$("#rental-btn").on("click", function() {
			if (${fn:length(list) == 0}) {
				alert("대여할 책이 없습니다.");
			}else if (${dto.postcode eq null}) {
				alert("배송지 정보를 입력해주세요.");
			}else if($("#check-count-result").text() == 0) {
				alert("대여할 책을 선택해주세요.");
			}else {
				 if(confirm("대여하시겠습니까?")){
					location.href = "/delivery/toRentalCompleted";
				 } 
			}
		})
		
		// 체크박스 기능
		var checkCount = $('input[class=check]:checked').length;
	    document.getElementById("check-count-result").innerText = checkCount;
	    
	    $(document).on('click', '#check-all', function () {
	        if ($('#check-all').is(':checked')) {
	            $('.check').prop('checked', true);
	        } else {
	            $('.check').prop('checked', false);
	        }
	        var checkCount = $('input[class=check]:checked').length;
	        document.getElementById("check-count-result").innerText = checkCount;
	    });
	    
		$(document).on('click', '.check', function () {
	        if ($('input[class=check]:checked').length == $('.check').length) {
	            $('#check-all').prop('checked', true);
	        } else {
	            $('#check-all').prop('checked', false);
	        }
	        var checkCount = $('input[class=check]:checked').length;
	        document.getElementById("check-count-result").innerText = checkCount;
	    });
		
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
		$("#bookshelves").on("click", function() {
			location.href = "/bookshelves/selectBookshelvesListById";
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