<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>
<body>
	<input type="text" id="postcode" placeholder="우편번호">
	<input type="button" value="우편번호 찾기" id="btnSearch">
	<br>
	<input type="text" id="address1" placeholder="지번주소">
	<input type="text" id="address2" placeholder="상세주소">

	<script>
        document.getElementById("btnSearch").onclick = function () {
            new daum.Postcode({
                oncomplete: function (data) {
                    document.getElementById('postcode').value = data.zonecode;
                    document.getElementById("address1").value = data.roadAddress;
                }
            }).open({left: '500', top: '150'});
        }
    
    </script>
</body>
</html>