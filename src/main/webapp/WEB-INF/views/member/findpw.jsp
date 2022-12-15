<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책하루 비밀번호 찾기</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<style>
    .container {text-align:center;width:400px;height:fit-content; margin:auto;}
    .header{margin-top: 10%; margin-bottom:10%;}
    .header>a>img{width:40%;}
    input{margin-bottom:5%; border-color:white; outline: none; border-radius:8px; padding-left: 10px; width:70%; height: 40px;}
    button{transition-duration: 0.1s; box-shadow: 5px 5px 5px #80808050; border-color:white; background-color:#5397fc; border-radius:8px; width:70%; height:40px;}
    button:active{margin-left:5px; margin-top: 5px; box-shadow: none;}
</style>
<body>
    <div class="container">
        <div class="header"><a href="/"><img src="bookday_logo.png"></a></div>
        <div class="inputbox"><input type="text" placeholder="휴대폰 번호를 입력하세요." id="check" name="check"></div>
        <div class="result"></div>
        <div class="find_btn"><button id="find_btn">확인</button></div>
    </div>
</body>
<script>

    $("#find_btn").on("click",fuction(){
        
        //휴대폰 번호 여부 에이작스로 확인한 다음에 비밀번호 재설정 페이지로 이동 
          $.ajax({
				url:"/member/findPw",
				data:{"phone":check}
			
			}).done(function(resp){
                if(resp==false){
                    $("#result").html("일치하는 번호가 없습니다.");
                }else{
                    //인풋타입 추가해서 값 받기
                    $("#phone").remove();
                    let div=$("<div>");
                    let pw=$("<input>").attr("placeholder","비밀번호 재설정");
                    let pw_check=$("<input>").attr("placeholder","비밀번호 확인");
                    div.append(pw);


                }
            })

    });
</script>
</html>