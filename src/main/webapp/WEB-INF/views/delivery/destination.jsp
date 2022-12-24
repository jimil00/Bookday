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
			<input type="text" id="postcode" name="postcode" placeholder="우편번호"
				disabled>
			<button type="button" id="search-btn">우편번호 찾기</button>
			<br> <input type="text" id="address1" name="address1"
				placeholder="지번주소" disabled><br> <input type="text"
				id="address2" name="address2" placeholder="상세주소"><br> <input
				type="text" id="reciver" name="reciver" placeholder="받으실 분"><br>
			<input type="text" id="reciver_phone" name="reciver_phone"
				placeholder="휴대폰 번호"><br>
			<button type="button" id="save-btn">저장</button>
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

		$("#save-btn").on(
				"click",
				function() {
					if ($("#postcode").val() == ""
							|| $("#address1").val() == ""
							|| $("#address2").val() == ""
							|| $("#reciver").val() == ""
							|| $("#reciver_phone").val() == "") {
						alert("정보를 입력해주세요.");
						return false;
					}

					let phone = $("#reciver_phone").val();
					let phoneRegex = /^01\d{1}\d{3,4}\d{4}$/;
					if (!phoneRegex.test(phone)) {
						alert("휴대폰 번호를 정확히 입력해주세요.");
						return false;
					}

					$.ajax({
						url : "/delivery/updateMemberById",
						data : {
							"id" : "수진",
							"postcode" : $("#postcode").val(),
							"address1" : $("#address1").val(),
							"address2" : $("#address2").val(),
							"reciver" : $("#reciver").val(),
							"reciver_phone" : $("#reciver_phone").val()
						},
						success : function(resp) {
							alert("배송지가 저장되었습니다.");
							opener.parent.location.reload();
							window.close();
						}
					});
				})
	</script>
</body>
</html>