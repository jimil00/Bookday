<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
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

span, #logoImg:hover {
	cursor: pointer;
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
}

#nick {
	text-decoration: none;
}

#nick:hover {
	color: black;
	cursor: default;
}

.login_form {
	margin-top: 200px;
}

/* navi */
.navi {
	width: 100%;
	height: 50px;
}

/* body */
.mem_info_box>div, input {
	margin: auto;
	text-align: center;
}

.input_info {
	
}

.block_input {
	display: block;
}

#prof_img {
	border-radius: 50%;
	width: 150px;
}

.check_phone, #fin_btn, #cancel_btn, #phone_btn {
	display: none;
}

.input, .block_input {
	border: 1px solid #d5d5d5;
	border-radius: 8px;
	padding-left: 10px;
	width: 30%;
	height: 50px;
	outline: none;
	box-shadow: 3px 3px #80808050;
}

button, input[type=button] {
	color: white;
	transition-duration: 0.1s;
	border: 1px solid #d5d5d5;
	outline: none;
	box-shadow: 3px 3px #80808050;
	background-color: #5397fc;
	border-radius: 8px;
	width: 5%;
	height: 50px;
}

#img_upload {
	display: none;
}
/* footer */
.footer {
	margin: 5px;
}

.f_header {
	display: inline-flex;
	margin-top: 10px;
}

.f_header>a>img {
	width: 200px;
}

.sns_icon {
	position: relative;
	top: 1px;
	left: 595px;
}

.sns_icon>a>img {
	height: 20px;
}

.business_info {
	margin-top: 30px;
}

#business_info_title {
	font-size: x-small;
	color: #808080d6;
}

.business_info>span {
	margin-top: 5px;
}

.f_intro {
	margin-top: 15px;
	margin-bottom: 20px;
	font-size: small;
}

.f_intro>span {
	color: #4d4b4bc1;
}

.f_line {
	color: #808080d6;
}

.business_info {
	margin-top: 20px;
}

#business_info_text {
	margin-top: 10px;
	font-size: x-small;
	color: #808080d6;
}

.inline_info {
	display: inline-flex;
}

#arrow_down2, #arrow_up2 {
	position: relative;
	bottom: 6px;
	color: #808080d6;
}

#arrow_up2 {
	display: none;
}

.sns_icon>a>img {
	width: 40px;
	height: 40px;
}

.copyright {
	margin-top: 5px;
	font-size: x-small;
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
					<form action="/search/toSearch" id="search" method="post">
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
							<a href="/member/logout"><p class="user" id="logout">로그아웃</p></a>
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
			<form action="/member/updateMemInfo" method="post" enctype="multipart/form-data">

				<div class="mem_info_box">
					<div class="prof_info">
						<div class="prof_img">
							<img src="/resources/basic.png" id="prof_img">
						</div>
						<input type="file" name="prof_img" class="input_file"
							id="img_upload" accept=".png,.jpg,.jpeg,.gif,.JPG">
					</div>

					<div class="input_info">
						<p>닉네임</p>
						<input type="text" name="nickname" value="${dto.nickname}"
							readonly class="input" id="nickname"> <span
							id="nk_result"></span>
					</div>

					<div class="input_info">
						<p>이름</p>
						<input type="text" name="name" value="${dto.name}" readonly
							class="input" id="name"> <span id="n_result"></span>
					</div>

					<div class="input_info">
						<p>휴대폰 번호</p>
						<div>
							<input type="text" name="phone" value="${dto.phone}" readonly
								class="input">
							<button type="button" class="verifi_btn" id="phone_btn">인증</button>
							<div class="check_phone">
								<input type="text" name="check_phone" placeholder="인증번호"
									class="input">
								<button class="verifi_btn">확인</button>
							</div>
						</div>

						<div class="input_info">
							<p>비밀번호</p>

							<!-- 				<form action="/member/updatepw"> -->
							<div class="box">
								<input type="text" name="current_pw" placeholder="기존 비밀번호"
									class="block_input"> <input type="text" name="pw"
									placeholder="새 비밀번호" class="block_input" id="pw"> <span
									id="pw_result"></span> <input type="text" name="new_pw_check"
									placeholder="새 비밀번호 확인" class="block_input" id="check_pw">
								<span id="check_pw_result"></span>
								<!-- 		<button class="verifi_btn">확인</button> -->
							</div>
							<!-- 	</form> -->
						</div>

						<div class="input_info">
							<p>이메일</p>
							<input type="text" name="email" value="${dto.email}" readonly
								class="input" id="email"> <span id="email_result"></span>
						</div>

						<div class="input_info">
							<p>주소</p>
							<div class="box">
								우편번호<input type="text" name="postcode" value="${dto.postcode}"
									readonly placeholder="우편번호" class="block_input"> 도로명
								주소<input type="text" name="address1" value="${dto.address1}"
									readonly placeholder="도로명 주소" class="block_input"> 상세
								주소<input type="text" name="address2" value="${dto.address2}"
									readonly placeholder="상세 주소" class="block_input">
							</div>
						</div>

					</div>
					<div class="btns">
						<button type="button" id="input_btn">수정</button>
						<button id="fin_btn">완료</button>
						<button type="button" id="cancel_btn">취소</button>
					</div>
				</div>
			</form>
		</div>
		<!-- body -->

		<div class="footer">
			<hr>
			<div class="f_header">
				<a href="/"><img src="/resources/bookday_logotitle.png"></a>

				<div class="sns_icon">
					<a href="#"><img src="/resources/instagram.png" class="sns"></a>
					<a href="#"><img src="/resources/facebook.png" class="sns"></a>
					<a href="#"><img src="/resources/twitter_black.png" class="sns"></a>
					<a href="#"><img src="/resources/youtube.png" class="sns"></a>
				</div>

			</div>
			<div class="business_info">
				<div class="inline_info">
					<div id="business_info_title">사업자 정보</div>
					<span class="arrow_icon material-symbols-outlined" id="arrow_down2">keyboard_arrow_down</span>
					<span class="arrow_icon material-symbols-outlined" id="arrow_up2">keyboard_arrow_up</span>
				</div>

				<div id="business_info_text">
					<span>대표자 성태조 </span> <span> | </span> <span> 사업자 등록번호
						01-20-22015</span>
					<p>주소 서울특별시 중구 남대문로 120 그레이츠 청계(구 대일빌딩) 3F</p>
					<span>대표전화 1544-9970 </span> <span> | </span> <span> 이메일
						help@bookday.com</span>
				</div>
			</div>

			<div class="f_intro">
				<span>회사소개</span> <span class="f_line">|</span> <span>이용약관</span> <span
					class="f_line">|</span> <span>개인정보처리방침</span> <span class="f_line">|</span>
				<span>청소년보호정책</span> <span class="f_line">|</span> <span>제휴
					문의</span>
			</div>
			<p class="copyright">Copyright © 2022 책하루 All Rights Reserved.</p>
			<!-- <p class="copyright">©BOOKDAY Corp.</p> -->
		</div>

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
         if(${loginID == null}) {
              location.href = "/member/toLogin";
         }else {
              location.href = "/delivery/selectBookbagListById?id=${loginID }";
         }
      })
      $("#bookshelves").on("click", function() {
         location.href = "/bookshelves/selectBookshelvesListById";
      })
      $("#mypage").on("click", function() {
         if (${loginID == null}) {
            location.href = "/member/tologin";
            return false;
         }else {
         location.href = "/member/toMypage";
         }
      })
      
//byte데이터나 stream 데이터를 string 형식으로 표시
   function fileToBase64(file){
        const reader = new FileReader();
         reader.readAsDataURL(file)
         reader.onload = () => {
          $("#prof_img").attr("src", reader.result)
            console.dir(reader.result)   // base64
         }
}
  
					$("#img_upload").on("change", function(){
						console.log($("#img_upload").val());
						
						if($("#img_upload").val() == ""){
								$("#prof_img").attr("src","/resources/basic.png");
							return;
						}
						
						let ext = $("#img_upload").val().split(".").pop().toLowerCase(); //파일 확장자를 뜻하게 된다.
						let accept = ["png", "jpg","jpeg","gif"];
						let result=$.inArray(ext,accept); //첫번째 인자값이 두번째 인자 배열 안에 존재한다면 0, 존재하지 않는다면 -1을 반환
						//console.log(result); //accept로 해당 확장자만 선택할 수 있도록 만들 수 있다.
						
						if(result == 1){
							alert("이미지 파일만 사용 가능합니다.");
							$("#img_upload").val(""); //파일 선택 무효
						}
						
						fileToBase64(document.getElementById("img_upload").files[0]);
					});

      
        // 수정 버튼 클릭시
      $("#input_btn").on("click", function() {
    	  $(".input, .block_input").attr("readonly",false);
    	  $("#input_btn").css("display","none");
    	  $("#fin_btn, #cancel_btn, #phone_btn").css("display","inline-block");
    	  $("#img_upload").css("display","block");
    	  
    	  //$("#fin_btn").attr("disabled", true);
    	  

   
      //닉네임 중복 확인
   	$("#nickname").on("keyup",function(){
			let nickname=$("#nickname").val();
			let nicknameRegex=/[가-힣 a-z A-Z 0-9]{2,10}/;

			   //닉네임 유효성 검사      
			if(!nicknameRegex.test(nickname) && nickname != ""){
           $("#nk_result").html("최소 2자 이상");
           $("#nk_result").css("color","red");
          }else if(nickname == ""){
        	  $("#nk_result").html("");
        	 // $("#fin_btn").attr("disabled", true);
          }else{

          //닉네임 중복 검사
          $.ajax({
				url:"/member/checkByNickname",
				data:{"nickname":nickname}
			
			}).done(function(resp){
				
				console.log(resp);
				
				if(resp == "true"){//닉네임이 존재하므로 사용할 수 없는 경우
          		$("#nk_result").html("이미 사용 중인 닉네임입니다.");
          		$("#nk_result").css("color","red");
          	//	$("#fin_btn").attr("disabled",true);
    
				}else{ //닉네임이 존재하지 않으므로 사용할 수 있는 경우
         $("#nk_result").html("사용 가능한 닉네임입니다.");
         $("#nk_result").css("color","#5397fc");
         
        }
				
			}) //여기까지 중복 검사 로직
      
    }

		});
      
  	$("#pw,#check_pw").on("keyup",function(){

		let pw=$("#pw").val();
		let check_pw=$("#check_pw").val();
        
		   let pwRegex=/^[A-Z a-z 0-9 ! @ $ % -]{8,16}$/;

		   //비밀번호 유효성 검사 및 중복 검사
		   if(!pwRegex.test(pw) && pw != ""){
                $("#pw_result").css("color","red");
                $("#pw_result").html("유효하지 않은 비밀번호입니다.");
              }else if(pw == ""){
            	  	$("#pw_result").html("");
            		$("#fin_btn").attr("disabled", true);
              }else{
            	  $("#pw_result").css("color","#5397fc");
            	  $("#pw_result").html("사용 가능한 비밀번호입니다.");
            	  //일치 확인
            	  if($("#pw").val()==$("#check_pw").val()){
            		 	 $("#check_pw_result").css("color","#5397fc");
                    	 $("#check_pw_result").html("비밀번호가 일치합니다.");
                      }else{  
                    	 $("#check_pw_result").css("color","red");
                    	 $("#check_pw_result").html("비밀번호가 일치하지 않습니다.");
                     // 	$("#fin_btn").attr("disabled", true);
                      	
                      }
            	  }
		});
      
      //이메일
	$("#email").on("keyup",function(){

		let email=$("#email").val();
		let emailRegex=/^[a-z 0-9 A-Z]{3,12}@[A-Z a-z]{5,7}.[a-zA-Z]{2,3}$/;

		   //이메일 유효성 검사
		   if(!emailRegex.test(email) && email != ""){
            $("#email_result").css("color","red");
            $("#email_result").html("유효하지 않은 이메일입니다.");
          //  $("#fin_btn").attr("disabled", true);
          }else if(email == ""){
        	  $("#email_result").css("border-color","#d5d5d5");
        	//  $("#fin_btn").attr("disabled", true);
          }else{
        	$("#email_result").css("color","#5397fc");
        	$("#email_result").html("사용 가능한 이메일입니다.");
        
        	}
          
	});
      
      
 	$("#name").on("keyup",function(){

		 let name= $("#name").val();
        let nameRegex=/[가-힣]{2,5}/;

		    //이름 유효성 검사
			if(!nameRegex.test(name) && name != ""){
          $("#n_result").css("color","red");
          $("#n_result").html("유효하지 않은 이름입니다.");
          //$("#fin_btn").attr("disabled", true);
         }else if(name == ""){
        	 $("#n_result").html("");
        	 // $("#fin_btn").attr("disabled", true);
         }else{
        	 $("#n_result").css("color","#5397fc");
        	 $("#n_result").html("사용 가능한 이름입니다.");
        	  $("#fin_btn").attr("disabled", false);
  			 
      }

		});
	
 	/* //버튼 활성화 , 비활성화
	$("#name, #nickname, #phone,#verifi_code,#email,#pw,#check_pw")
    .on("blur",function(){
    	
	let name= $("#name").val();
     let nickname=$("#nickname").val();
     let phone=$("#phone").val();
     let verifi_code=$("#verifi_code").val();
     let email=$("#email").val();
     let pw=$("#pw").val();
     let check_pw=$("#check_pw").val();

     let nameRegex=/[가-힣]{2,5}/;
     let nicknameRegex=/[가-힣 a-z A-Z 0-9]{2,10}/;
     let phoneRegex=/^01\d{1}\d{3,4}\d{4}$/;
     let emailRegex=/^[a-z 0-9 A-Z]{3,12}@[A-Z a-z]{5,7}.[a-zA-Z]{2,3}$/;
     let pwRegex=/^[A-Z a-z 0-9 ! @ $ % -]{8,16}$/;
	
     if(name=="" || nickname=="" || phone=="" || 
    	verifi_code=="" || email=="" || pw=="" || check_pw==""
    	|| !nameRegex.test(name) || !nicknameRegex.test(nickname) 
        || !phoneRegex.test(phone) || !emailRegex.test(email) 
        || !pwRegex.test(pw)){
           //위의 값이 안 맞으면 로그인 버튼 아예 못 누름
           $("#fin_btn").attr("disabled", true);
           console.log("버튼 비활성화");
           }else{
        	   console.log("버튼 활성화");
        	   $("#fin_btn").attr("disabled", false);
           }
    }); */
      
      
      //휴대폰 인증 버튼 누르면
      $("#phone_btn").on("click", function() {
    	  
    	   $(".check_phone").css("display","block");
    	  
    	   
    	  let phone=$("#phone").val();
    	  console.log(phone);
    	  
    	  if(phone == ""){  
    		  alert("휴대폰 번호를 입력해주세요.");
    		  }else{
    			  alert("인증번호를 발송하였습니다.");
    		  }
    	  
    		  });

      });

         
	  //수정 완료
      $("#fin_btn").on("click",function(){
  	alert("확인");
  	
  	 
   });
    
    //수정 취소
   $("#cancel_btn").on("click",function(){
  	location.reload();
  	 
   });
    
        //footer: 사업자 정보 토글 기능
       $("#business_info_text").hide();

                    $("#business_info_title, #arrow_down2").click(function() {

                        $("#business_info_text").slideToggle(200);

                            $("#arrow_up2").css("display", "block");
                            $("#arrow_down2").css("display", "none"); 
 
                    });

                    $("#arrow_up2").click(function() {
                        $("#business_info_text").slideToggle(200);

                        $("#arrow_down2").css("display", "block");
                        $("#arrow_up2").css("display", "none");
                    });
   </script>
</body>

</html>