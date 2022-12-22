<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Destination</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>
<body>
	<div class="container">
		<div class="header">배송지 입력</div>
		<hr>
		<div class="body">
			<!-- 			<form action="/delivery/selectBookbagListById" method="post"> -->
			<input type="text" id="postcode" name="postcode" placeholder="우편번호">
			<button type="button" id="search-btn">우편번호 찾기</button>
			<br> <input type="text" id="address1" name="address1"
				placeholder="지번주소"><br> <input type="text"
				id="address2" name="address2" placeholder="상세주소"><br>
				<input type="text"
				id="Recipient" name="Recipient" placeholder="받으실 분"><br> 
				<input type="text"
				id="Recipient-phone" name="Recipient-phone" placeholder="휴대폰 번호"><br> 
				<input
				type="checkbox">기본 배송지로 저장<br>
			<button type="button" id="save-btn">저장</button>
			<!-- 			</form> -->
		</div>
	</div>

	<script>
		document.getElementById("search-btn").onclick = function() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							document.getElementById('postcode').value = data.zonecode;
							document.getElementById("address1").value = data.roadAddress;
						}
					}).open({
				left : '500',
				top : '150'
			});
		}

		$("#save-btn").on("click", function() {
			//window.opener.document.getElementById("postcode").innerHTML = document.getElementById("postcode").value;
			//window.opener.document.getElementById("address1").innerHTML = document.getElementById("address1").value + document.getElementById("address2").value;
			//window.opener.document.getElementById("address2").innerHTML = document.getElementById("address2").value;
			$.ajax({
				url : "/delivery/updateMemberById",
				data : {
					"id" : "수진",
					"postcode" : $("#postcode").val(),
					"address1" : $("#address1").val(),
					"address2" : $("#address2").val()
				},
				success : function(resp) {
					alert("저장");
					opener.parent.location.reload();
					window.close();
				}
			});
		})
	</script>
</body>
</html>