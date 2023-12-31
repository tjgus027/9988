<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="display: flex; flex-flow: column; gap: 10px;">
	<span class="tab_title">비밀번호 재설정</span>
	<span>새로운 비밀번호를 입력해 주세요.</span>
</div>
<div style="margin: 30px 0;">
	<form style="display: flex; flex-flow: column; gap: 10px;">
		<div class="input_wrap">
			<span style="width: 30%; text-align: left; padding-left: 20px;">새 비밀번호</span>
			<input id="input_pw" class="input_field" type="password" placeholder="8글자 이상, 특수문자를 포함하여 입력하세요." autocomplete="new-password">
		</div>
		<div id="pw_error" class="error_message" style="display: none;">비밀번호는 8글자 이상이어야 하며, 특수문자를 포함해야 합니다.</div>
		<div class="input_wrap">
			<span style="width: 30%; text-align: left; padding-left: 20px;">비밀번호 확인</span>
			<input id="input_pw_check" class="input_field" type="password" placeholder="다시 한 번 입력하세요." autocomplete="new-password">
		</div>
		<div id="pwCheck" class="error_message" style="display: none;"></div>
	</form>
</div>
<button id="btn_completed" class="btn">확인</button>