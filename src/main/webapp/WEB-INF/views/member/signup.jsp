<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책하루 회원가입</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<style>
  img{width:25%;}
  .container {margin:auto; text-align:center; width:500px;height:fit-content;}
  .header{margin-top: 10%; margin-bottom:10%;}
  input{ border-color:grey; border-radius:8px; padding-left: 10px; width:70%; height: 40px;}
  #phone{width:62%;}
  #verfi_btn{transition-duration: 0.1s; border-color:white; background-color:#5397fc;height:40px; border-radius:8px; background-color:#5397fc}
  #ph_result,  #nk_result{width:85%; text-align: right;}
  .signup_form>div{ margin-top:5%;}
  .signup_btn{margin:auto; width:70%; margin-top:20%;}
  #signup_btn{transition-duration: 0.1s; box-shadow: 5px 5px 5px #80808050; border-color:white; background-color:#5397fc; border-radius:8px; width:100%; height:40px;}
  #signup_btn:active{margin-left:5px; margin-top: 5px; box-shadow: none;}

</style>
<body>
    <div class="container">
      <div class="header"><img src="/resources/bookday_logo_ver1(kor).png"/></div>

      <form action="/member/signup">
      <div class="signup_form">

        <div class="box">
          <div id="pnum"><input type="text" placeholder="휴대폰 번호" name="phone" id="phone"><button type="button" id="verfi_btn">인증</button></div>
        </div>
        <div class="box">
          <div id="vcode"><input type="text" placeholder="인증 번호" name="verifi_code" id="verifi_code"></div> 
          <div id="ph_result">인증번호 일치 여부 출력</div>
        </div>
        <div class="box">
          <input type="text" placeholder="이름" name="name" id="name" maxlength="5">
        </div>
        <div class="box">
          <input type="text" placeholder="이메일" name="email" id="email">
        </div>
        <div class="box">
          <input type="text" placeholder="닉네임" name="nickname" id="nickname" maxlength="20">      
          <div id="nk_result">닉네임 중복 검사 출력</div>
        </div>
        <div class="box">
          <div><input type="password" placeholder="비밀번호" name="pw" id="pw" minlength="8" maxlength="10">
            <!-- <span class="material-symbols-outlined">visibility</span> -->
          </div>
          </div>
          <div class="box">
          <div><input type="password" placeholder="비밀번호 확인" name="check_pw" id="check_pw">
            <!-- <span class="material-symbols-outlined">visibility</span> -->
          </div>
        </div>
        <div class="signup_btn">
          <button id="signup_btn" disabled="true">회원가입</button>
        </div>
      </div>
    </form>

    </div>
    <script>

$(document).ready(function(){

        // //기본으로 회원가입 버튼 비활성화
        // $("#signup_btn").attr("disabled", true);

      	$("#name, #nickname, #phone,#verifi_code,#email,#pw,#check_pw")
        .on("input",function(){

			   let name= $("#name").val();
         let nickname=$("#nickname").val();
         let phone=$("#phone").val();
         let verifi_code=$("#verifi_code").val();
         let email=$("#email").val();
         let pw=$("#pw").val();
         let check_pw=$("#check_pw").val();


         let nameRegex=/[가-힣]{2,5}/;
         let nicknameRegex=/[가-힣 a-z A-Z 0-9]{10}/;
         let phoneRegex=/^01\d{1}\d{3,4}\d{4}$/;
         let emailRegex=/^[a-z 0-9 A-Z]{6,8}@[a-z]{5,6}.com$/;
         let pwRegex=/^[A-Z a-z 0-9 ! @ $ %]{8,10}$/;

      if(!phoneRegex.test(phone)) {
          $("#phone, #verifi_code").css("border-color", "red");
              }else{

                //핸드폰 중복 검사
                $.ajax({
                  url: "/member/phoneCheck",
                  data: { "phone": phone }

                }).done(function (resp) {

                  console.log(resp);

                  if (resp == "true") {//핸드폰이 존재하므로 사용할 수 없는 경우
                    $("#phone").css("border-color", "red");
                    alert("이미 사용 중인 번호입니다.");
                    return true;
                    //   //로그인 페이지로 이동
                    //  location.href="/member/toLogin"

                  } else { //핸드폰이 존재하지 않으므로 사용할 수 있는 경우
                    $("#phone").css("border-color", "#5397fc");
                    return false;
                  }

                })
              }

        //이름 유효성 검사
        if(!nameRegex.test(name)){
           $("#name").css("border-color","red");
          }else{$("#name").css("border-color","#5397fc");}


        //이메일 유효성 검사
        if(!emailRegex.test(email)){
                $("#email").css("border-color","red");
              }else{$("#email").css("border-color","#5397fc");}
              
        //닉네임 유효성 검사      
        if(!nicknameRegex.test(nickname)){
           $("#nickname").css("border-color","red");
          }else{

          //닉네임 중복 검사
          $.ajax({
				url:"/member/nickCheck",
				data:{"nickname":nickname}
			
			}).done(function(resp){
				
				console.log(resp);
				
				if(resp == "true"){//닉네임이 존재하므로 사용할 수 없는 경우
					$("#nickname").css("border-color","red");
          $("#nk_result").html("이미 사용 중인 닉네임입니다.");
          return true;
				}else{ //닉네임이 존재하지 않으므로 사용할 수 있는 경우
          $("#nickname").css("border-color","#5397fc");
          return false;
				}
			}) //여기까지 중복 검사 로직
      
    }
    //비밀번호 유효성 검사
    if(!pwRegex.test(pw)){
                $("#pw, #check_pw").css("border-color","red");
              }else{ $("#pw").css("border-color","#5397fc");

           //비밀번호 일치 확인
          $("#check_pw").on("keyup",function(){
          if($("#pw").val()==$("#check_pw").val()){
          $("#check_pw").css("border-color","#5397fc");
          }else{ $("#check_pw").css("border-color","red");}
              });
        }

      //유효성 하나 하나 확인이 가능하나 빨간 선이 전체적으로 간다.
      //유효성에 맞으면 회원가입 버튼 활성화 + 중복검사 통과
      if(phoneRegex.test(phone) && nameRegex.test(name) && emailRegex.test(email) 
      && nicknameRegex.test(nickname) && pwRegex.test(pw) && false){
        
        //회원가입 버튼 활성화
			$("#signup_btn").attr("disabled", false);
      return;
      }
    });
  });

    //휴대폰 인증
  //back-end 코드 작성 후 view 작성



    </script>
</body>
</html>