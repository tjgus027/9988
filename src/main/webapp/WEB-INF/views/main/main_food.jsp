<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<style type="text/css">
.food {
    position: relative;
    display: inline-block;
    margin: 10px;
    cursor: pointer;
}

.foodImage {
    width: 250px;
    height: 200px;
    border-radius: 5px;
}

.foodImage:hover {
    filter: grayscale(60%);
}

.textContainer {
    position: absolute;
    top: 50%; /* 부모 요소의 중앙에 배치 */
    left: 50%; /* 부모 요소의 중앙에 배치 */
    transform: translate(-50%, -50%); /* 요소의 중앙 정렬을 위한 이동 */
    padding: 10px;
    text-align: center;
    pointer-events: none; /* 이벤트를 요소에 적용하지 않도록 설정 */
    display: none; /* 초기에는 표시하지 않음 */
}
.food:hover .textContainer {
    display: block; /* 호버 시 텍스트를 표시 */
}
.foodText {
    color: white;
    font-weight: bold;
    font-size: 16px;
}
</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<c:forEach var="i" begin="1" end="4">
	<div class="food">
		<img class="foodImage" src="${pageContext.request.contextPath}/resources/img/foodimg.png" width="250px" height="200px">
		<div class="textContainer"><div class="foodText">행복한 주방</div><div class="foodText" style="font-weight: normal;">맛있는 떡볶이</div></div>
	</div>
</c:forEach>
</html>