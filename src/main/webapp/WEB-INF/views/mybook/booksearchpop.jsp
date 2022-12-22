<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
    <table>
        <tr>
            <th>
                표지
            </th>
            <th>
                제목
            </th>
            <th>
                작가
            </th>
            <th>
                장르
            </th>
        </tr>
        <c:forEach var="book" items="${blist }">
        
            <tr>
                <td>
                    ${book.b_img_url}
                </td>
                <td>
                    ${book.b_title}
                </td>
                <td>
                    ${book.b_writer}
                </td>
                <td>
                    ${book.b_genre}
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
</body>
</html>