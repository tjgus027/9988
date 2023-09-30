<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<script>
    $(document).ready(function() {
        var slideIndex = 0;
        showSlides(slideIndex);
        
        $(".prev").click(function() {
            showSlides(slideIndex -= 1);
            console.log("-1");
        });
        
        $(".next").click(function() {
            showSlides(slideIndex += 1);
            console.log("1");
        });
        
        function showSlides(n) {
            var slides = $(".slideshow-container img");
            if (n < 0) {
                slideIndex = slides.length - 1;
            } else if (n >= slides.length) {
                slideIndex = 0;
            }
            slides.hide();
            slides.eq(slideIndex).show();
        }
    });
</script>
<div class="slideshow-container">
    <c:forEach var="emergencyList" items="${emergencyList}" begin="1" end="4">
    	<a href="${pageContext.request.contextPath}/emergency/board?emergencyId=${emergencyList.emergencyId}">
			<img alt="응급상황 사진" align="left" src="${emergencyList.imgFile}"> 
			<span>${emergencyList.title}</span>
		</a>
    </c:forEach>
	<span class="material-symbols-outlined prev">arrow_back_ios</span>
	<span class="material-symbols-outlined next">arrow_forward_ios</span>
</div>
