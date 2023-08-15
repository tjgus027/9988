<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/default_sub.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/search_box.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/emergency_main.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<style type="text/css">
.paging button{
	background-color: white; 
	color: #000000;
	border: 1px solid;
	width: 40px;
	height: 40px;
}
</style>
<title>99팔팔</title>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="/default/header.jsp" flush="true">
				<jsp:param name="mode" value="1" />
			</jsp:include>
		</div>
		<div id="content_wrap">
			<div id="content">
				<!-- 이 content div 안에서  작업 시작-->
				<div class="subheading" style="margin-bottom: 10px;">
				<span style="font-size: 24px; font-weight: bolder;">응급이에요</span>
				</div>
				<div class="search"
					style="">
					<input type="text" placeholder="증상에 대한 검색어를 입력하세요."> 
					<a href="#"> <img alt="돋보기 아이콘"
						src="${pageContext.request.contextPath}/resources/img/Vector.png">
					</a>
				</div>

				<div id="plus_content">
					<form action="createBoard">
						<button type="submit" class="contetn_btn">응급상황 추가하기</button>
					</form>
				</div>

				<div class="img_box">
					<a href="#"><img alt="응급상황 사진" align="left"
							src="${pageContext.request.contextPath}/resources/img/test_img.png"> 
					코피가 심하게 날때 대처법</a>
				</div>
				<div class="paging">
					<button type="button" style="">1</button>
				</div>
			</div> <!-- content div -->
		</div>
		<jsp:include page="/default/footer.jsp" flush="true" />
	</div>
</body>
</html>