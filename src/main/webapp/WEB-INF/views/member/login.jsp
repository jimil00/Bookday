<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책하루 로그인</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<style>
    .contanier {text-align:center;width:400px;height:fit-content; margin:auto;}
    .header{margin-top: 10%; margin-bottom:10%;}
    .header>a>img{width:40%;}
    input{border-color:white; outline: none; border-radius:8px; padding-left: 10px; width:70%; height: 40px;}
    #result{text-align:left;}
    .login_btn{margin:auto; width:70%; margin-top:10%;}
    button{transition-duration: 0.1s; box-shadow: 3px 3px; border-color:#5397fc; background-color:#5397fc; border-radius:8px; width:100%; height:40px;}
    button:active{margin-left:5px; margin-top: 5px; box-shadow: none;}
    .findpw_link{margin-top:5%; margin-bottom:3%;}
    .findpw_link>a{text-decoration:none; margin-bottom:5%;}
    .kakao_login{margin-top:5%;}
    .kakao_login>a>img{transition-duration: 0.1s; border-radius:8px; box-shadow: 3px 3px; width:70%; height:40px;}
    .kakao_login>a>img:active{margin-left:5px; margin-top: 5px; box-shadow:none; }
</style>
<body>
<div class="contanier">
    <div class="header">
        <img src="/resources/책하루 로고_중간.png">
    </div>
        <div class="login_form"> 
            <form action="login">
                <div class="phone"><input type="text" placeholder="휴대폰 번호를 입력해주세요." id="phone" name="phone" maxlength="11" numberOnly/></div>
                <div class="pw"><input type="password" placeholder="비밀번호를 입력해주세요." id="pw" name="pw" maxlength="10"/></div>
                <div class="login_btn"><button id="login_btn">로그인</button></div>
            </form>
            <div class="findpw_link"><a href="/member/findPw">비밀번호 찾기</a></div>
            <hr>
            <div class="kakao_login">
                <a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=ccb724dc3fc2bf9f2d152ffdec3b1d30&redirect_uri=	
                    http://localhost:8090/member/kakaoLogin&response_type=code">
			<img src="kakao_login_medium_wide.png"></a>
            </div>
        </div>
</div>
<script>

//휴대폰 번호 정규표현식
let replacePhone = /[^0-9]/gi;

 //비밀번호 정규표현식
let replacePW=/^[A-Z a-z 0-9 ! @ $ %]$/;

$(document).ready(function(){
    
    //디폴트로 로그인 버튼 누르지 못하게 하기
    $("#login_btn").attr("disabled", true);

    //휴대폰 번호 숫자 외 입력 제한
    $("#phone").on("focusout", function() {
        let x = $(this).val();
        if (x.length > 0) {
            if (x.match(replacePhone)) {
               x = x.replace(replacePhone, "");
            }
            $(this).val(x);
        }
    }).on("keyup", function() {
        $(this).val($(this).val().replace(replacePhone, ""));
    });

    //비밀번호 숫자, 영어 및 특수문자 외 입력 제한
    $("#pw").on("focusout", function() {
        let x = $(this).val();
        if (x.length > 0) {
            if (x.match(replacePW)) {
               x = x.replace(replacePW, "");
            }
            $(this).val(x);
        }
    }).on("keyup", function() {
        $(this).val($(this).val().replace(replacePW, ""));
    });

});

//해당 값들을 넣지 않고 post했을 때
$("#phone, #pw").on("blur",function(){
		let phone= $("#phone").val();
        let pw=$("#pw").val();
		if(phone == "" || pw==""){
            //비어 있으면 로그인 버튼 아예 못 누름
			$("#login_btn").attr("disabled", true);
			return;
            //값이 들어 있으면 로그인 버튼 누르게 해줌.
		}else{$("#login_btn").attr("disabled", false);
        return;}

        //로그인 버튼 눌렀을 때
        $("#login_btn").on("click", function(){

             $.ajax({ //페이지 이동 없이 값을 얻어 냄
			url:"/member/login",
			data:{"pnum":pnum, "pw":pw}
		
		}).done(function(resp){
			
			console.log(resp);
			
			if(resp == "false"){//번호 및 비번이 존재하지 않을 때,
                $("#result").html("번호 혹은 비밀번호가 틀립니다.");
			}else{ //번호 및 비번이 존재할 때 메인으로
                location.href="/";
            }
		})

        })
		
	});	

</script>
</body>
</html>