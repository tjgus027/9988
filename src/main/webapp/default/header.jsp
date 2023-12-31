<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(function() {
		
		const userNick = '<%= session.getAttribute("userNick") %>';
		const nicknameDiv = document.getElementById("nickname");
		if (userNick != 'null') {
			$(".gnb_login_menu.current").removeClass("current");
			$(".gnb_login_menu:first").addClass("current");
			nicknameDiv.innerHTML = userNick;
		} else {
			let cookieName = "loginCookie";
			let cookieString = document.cookie;
			let cookieArray = cookieString.split(';');
			
			for (var i = 0; i < cookieArray.length; i++) {
			    var cookie = cookieArray[i].trim();
			    if (cookie.indexOf(cookieName + '=') === 0) {
			        let cookieValue = cookie.substring(cookieName.length + 1);
			        $.ajax({
			        	url: '${pageContext.request.contextPath}/member/autoSignIn',
			        	data: {
			        		sessionId : cookieValue
			        	},
			        	contentType : "application/text; charset:UTF-8",
			        	success: function(nickname) {
			    			nicknameDiv.innerHTML = nickname;
							$(".gnb_login_menu.current").removeClass("current");
							$(".gnb_login_menu:first").addClass("current");
						}
			        })
			        break;
			    }
			}
		}
	})

</script>
<div id="headerContent">
	<div id="logo">
		<a href="${pageContext.request.contextPath}/9988_main.jsp">
			<img src="${pageContext.request.contextPath}/resources/img/logo.svg" width="160px">
		</a>
	</div>
	<div id="gnb_menu">
		<div id="gnb_map">
			<img src="${pageContext.request.contextPath}/resources/img/icon_map.svg" width="15px" id="map_icon">
			<a href="${pageContext.request.contextPath}/surrounding/facilities"><span style="color: #407FBA;">내 주변 시설찾기</span></a>
		</div>
		<ul id="gnb_menu_list">
			<li><a href="${pageContext.request.contextPath}/qna/qnaBoard">질문있어요</a></li>
			<li><a href="${pageContext.request.contextPath}/emergency/main">응급이에요</a></li>
			<li><a href="${pageContext.request.contextPath}/daily/article.jsp">오늘 떴어요</a></li>
			<li><a href="${pageContext.request.contextPath}/food/foodMain">뭐 먹을까요?</a></li>
			<li><a href="${pageContext.request.contextPath}/exercise/doExercise">운동해요</a></li>
		</ul>
		<ul class="gnb_login_menu">
			<li><a href="${pageContext.request.contextPath}/info/myInfo.jsp"><strong style="color: #407FBA;" id="nickname"></strong> 님</a></li>
			<li style="cursor: context-menu;">|</li>
			<li><a href="${pageContext.request.contextPath}/member/signOut">로그아웃</a></li>
		</ul>
		<ul class="gnb_login_menu current">
			<li><a href="${pageContext.request.contextPath}/account/login.jsp">로그인</a></li>
			<li style="cursor: context-menu;">|</li>
			<li><a href="${pageContext.request.contextPath}/account/account.jsp">회원가입</a></li>
		</ul>
	</div>
</div>