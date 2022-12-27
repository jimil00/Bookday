<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

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

/* header */
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
/* header */

/* navi */
.navi {
	width: 100%;
	height: 50px;
}

/* body */
.body {
	overflow: hidden;
	margin: auto;
}

.body-top {
	height: 100px;
	font-weight: bold;
}

.body-main {
	overflow: hidden;
}

.main-left {
	width: 45%;
	float: left;
}

.main-right {
	width: 45%;
	float: right;
}

.sub-div {
	border: 1px solid rgb(194, 193, 193);
	height: 200px;
	text-align: center;
	line-height: 200px;
}

.pay-btn-div {
	padding-top: 10px;
}

.pay-btn {
	width: 100%;
	height: 45px;
	color: #ffffff;
	border: none;
	border-radius: 4px;
	background-color: #5397fc;
	font-size: 15px;
}

.body-bottom {
	padding-top: 70px;
}

.li-title {
	padding-left: 20px;
	padding-bottom: 14px;
	font-weight: bold;
}

li {
	padding-bottom: 7px;
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
			<div class="body-top">
				<div>종이책 구독하기</div>
				<hr>
				<div>한 달에 열 권, 원하는 종이책을 집으로 배송해드립니다.</div>
			</div>
			<div class="body-main">
				<div class="main-left">
					<div class="sub-div">30일 구독권 12,000원</div>
					<div class="pay-btn-div">
					<c:choose>
					<c:when test="${dto.grade eq '미구독'}">
						<button class="pay-btn" id="pay-btn">결제하기</button>
					</c:when>
					<c:otherwise>
						<button class="pay-btn" id="disabled-pay-btn">이용 중</button>
					</c:otherwise>
					</c:choose>
					</div>
				</div>
				<div class="main-right">
					<div class="sub-div">월 정기 구독권 11,000원</div>
					<div class="pay-btn-div">
						<button class="pay-btn">결제하기</button>
					</div>
				</div>
			</div>
			<div class="body-bottom">
				<div class="li-title">유의사항</div>
				<ul>
					<li>한 달 10권 이하 대여 가능하며, 3번 이하의 배송 신청을 할 수 있습니다.</li>
					<li>대여일은 도착한 날부터 산정되며, 반납일은 대여일부터 10일입니다.</li>
					<li>반납일에 책가방을 문 앞에 두시면 수거합니다. 반납일을 꼭 지켜주세요!</li>
					<li>종이책을 분실 또는 훼손하였을 경우 동일한 책으로 변상하셔야 합니다.</li>
					<li>구독권은 결제 후 7일간 미사용 시 취소할 수 있습니다.</li>
					<li>정기 구독 결제는 구독 기간 마지막 날 진행되며 결제 후 구독 기간은 자동 갱신됩니다.</li>
					<li>정기 구독 갱신을 중단하고자 할 경우 구독 기간 종료 하루 전까지 구독을 해지하셔야 합니다.</li>
				</ul>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<script>
		$("#pay-btn").on("click", function() {
			var IMP = window.IMP;
			IMP.init('imp78130413');
			IMP.request_pay({
				pg : "kakaopay",
				pay_method : 'kakaopay',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '책하루 [30일 구독권]',
				amount : 12000,
				buyer_name : '구매자 이름',
				buyer_email : '구매자 이메일',
				buyer_tel : '구매자 전화번호'
			}, function(rsp) {
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					window.open("/delivery/toPaymentCompleted?id=앙뚜", "_blank", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=250, left=500, top=250");

				} else {
					var msg = '결제에 실패하였습니다.';
					rsp.error_msg;
				}
			});
		})

		$("#disabled-pay-btn").on("click", function() {
			alert("이미 이용 중인 구독권입니다.");
		})
		
		$("#logoImg").on("click", function() {
			location.href = "/";
		})
		$("#searchWord").on("keydown", function(e) {
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