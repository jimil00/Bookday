<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책하루 회원가입</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<style>
  img{width:25%;}
  .container {margin:auto; text-align:center; width:500px;height:fit-content;}
  .header{margin-top: 10%; margin-bottom:10%;}
  input{border-color:white; outline: none; border-radius:8px; padding-left: 10px; width:70%; height: 40px;}
  #phone{width:62%;}
  #verfi_btn{transition-duration: 0.1s; border-color:white; background-color:#5397fc;height:40px; border-radius:8px; background-color:#5397fc}
  #ph_result,  #pw_result{width:85%; text-align: right;}
  .signup_form>div{ margin-top:5%;}
  /* 유효성 체크박스 스타일 
  .box{position: relative;}
  input{padding-right: 48px;}
  .name span{position:absolute;} */
  .signup_btn{margin:auto; width:70%; margin-top:10%;}
  #signup_btn{transition-duration: 0.1s; box-shadow: 5px 5px 5px #80808050; border-color:white; background-color:#5397fc; border-radius:8px; width:100%; height:40px;}
  #signup_btn:active{margin-left:5px; margin-top: 5px; box-shadow: none;}

</style>
<body>
    <div class="container">
      <div class="header">  <img src="bookday_logo.png"/></div>

      <form action="/member/signup">
      <div class="signup_form">
        <div class="box">
          <input type="text" placeholder="이름 (한글 5자 이내)" name="name" id="name" maxlength="5">
        </div>
        <div class="box">
          <input type="text" placeholder="닉네임" name="nickname" id="nickname">      
        </div>
        <div class="box">
        <div id="pnum"><input type="text" placeholder="휴대폰 번호" name="phone" id="phone"><button type="button" id="verfi_btn">인증</button></div>
        <div id="vcode"><input type="text" placeholder="인증 번호" name="verifi_code" id="verifi_code"></div> 
        <div id="ph_result">인증번호가 일치하지 않습니다.</div>
        </div>
        <div class="box">
          <input type="text" placeholder="이메일" name="email" id="email">
        </div>
        <div class="box">
          <div><input type="text" placeholder="비밀번호" name="pw" id="pw"></div>
          <div><input type="text" placeholder="비밀번호 확인" name="check_pw" id="check_pw"></div>
          <div id="pw_result">비밀번호가 일치합니다.</div>
        </div>
        <div class="signup_btn">
          <button id="signup_btn">회원가입</button>
        </div>
      </div>
    </form>

    </div>
    <script>

$(document).ready(function(){

        $("#signup_btn").attr("disabled", true);

      	$("#name, #nickname, #phone,#verifi_code,#email,#pw,#check_pw")
        .on("blur",function(){
			   let name= $("#name").val();
         let nickname=$("#nickname").val();
         let phone=$("#phone").val();
         let verifi_code=$("#verifi_code").val();
         let email=$("#email").val();
         let pw=$("#pw").val();
         let check_pw=$("#check_pw").val();


         let nameRegex=/[가-하]/;
         let nicknameRegex=/[가-하 a-b A-B]/;
         let phoneRegex=/^010\d{3,4}\d{4}$/;
         let emailRegex=/ㅇ/;
         let pwRegex=/ㅇ/;

      //유효성 하나 하나 확인이 가능 / 유효성에 맞으면 회원가입 버튼 활성화
      if(name=="" || nickname=="" || phone=="" 
      || verifi_code=="" || email=="" || pw=="" || check_pw==""){
        //비어 있으면 로그인 버튼 아예 못 누름
			$("#signup_btn").attr("disabled", true);
      
          if(!nameRegex.test(name)){
                $("#name").css("border-color","red");
              }else{$("#name").css("border-color","#5397fc");}
              
              if(!nicknameRegex.test(nickname)){
                $("#nickname").css("border-color","red");
              }else{$("#nickname").css("border-color","#5397fc");}
              
              if(!phoneRegex.test(phone)){
                $("#phone").css("border-color","red");
              }else{$("#phone").css("border-color","#5397fc");}
              
              if(!emailRegex.test(email)){
                $("#email").css("border-color","red");
              }else{$("#email").css("border-color","#5397fc");}
              
              if(!pwRegex.test(pw)){
                $("#pw").css("border-color","red");
              }else{$("#pw").css("border-color","#5397fc");}
            
            }else{//값이 들어 있으면 로그인 버튼 누르게 해줌.
          $("#signup_btn").attr("disabled", false);
        return;
          }
    });
  });


    //닉네임 중복 검사



    //휴대폰 인증



    //비밀번호 일치 확인




    </script>
</body>
</html>