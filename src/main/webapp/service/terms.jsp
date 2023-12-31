<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/default_sub.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>99팔팔</title>
<style type="text/css">
.section {
	width: 800px;
	display: flex;
    flex-direction: column;
    align-items: flex-start;
    text-align: left;
    margin-top: 20px;
    gap: 5px;
}

.col_title{
	font-weight: 700;
	font-size: 16px;
}

.col_content {
	font-size: 13px;
}

p {
	font-size: 13px;
}

.num {
	font-size: 13px;
}

.ol {
	display: flex;
	gap: 5px;
}

ol {
	font-size: 13px;
    padding-left: 12px;
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="/default/header.jsp" flush="true">
				<jsp:param name="mode" value="1"/>
			</jsp:include>
		</div>
		<div id="content_wrap">
			<div id="content">
				<span style="font-size: 24px; font-weight: 700;">이용약관</span>
				<div class="section">
					<span class="col_title">제 1장 총칙</span>
					<span class="col_title">제 1 조 (목적)</span>
					<span class="col_content">
						본 약관은 (주)9988(이하 "회사"라 합니다)이 제공하는 인터넷 서비스(이하 "서비스"라 합니다)의 이용과 관련하여 회사와 회원의 권리, 의무 및 기타 필요한 사항을 규정함을 목적으로 합니다.
					</span>
				</div>
				<div class="section">
					<span class="col_title">제 2 조 (용어의 정의)</span>
					<span class="col_content">
						본 약관에서 사용하는 주요한 용어의 정의는 다음과 같습니다.
					</span>
					<div class="ol" style="margin-top: 10px;"><span class="num">①</span><p>회원 : 회사와 서비스 이용 계약을 체결하고 회원 아이디(ID)를 부여 받은 자를 말합니다.</p></div>
					<div class="ol"><span class="num">②</span><p>아이디 : 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자나 숫자 혹은 그 조합을 말합니다(이하"ID"라 합니다).</p></div>
					<div class="ol"><span class="num">③</span><p>비밀번호 : 회원이 부여 받은 ID와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.</p></div>
					<div class="ol"><span class="num">④</span><p>닉네임 : 서비스 이용을 위하여 회원이 선정하고 회사가 승인한 문자나 숫자 혹은 그 조합으로 서비스 이용 시 회원을 구분하고 지칭하고 나타내는 명칭을 말합니다.</p></div>
					<div class="ol"><span class="num">⑤</span><p>이용제한 : 회사가 약관에 의거하여 회원의 서비스 이용을 제한하는 것을 말하며, 일정 기간 서비스 이용 중지, 영구적인 서비스 이용 중지, 서비스 중 일부에 대한 이용 중지를 포함합니다.</p></div>
				</div>
				<div class="section">
					<span class="col_title">제 3 조 (약관의 효력 및 변경)</span>
					<div class="ol"><span class="num">①</span><p>본 약관의 내용은 회원이 쉽게 알 수 있도록 서비스 화면에 게시합니다.</p></div>
					<div class="ol"><span class="num">②</span><p>회사는 필요하다고 인정되는 경우 본 약관을 변경할 수 있으며, 회사가 약관을 변경할 경우에는 적용일 및 변경 내용을 명시하여 제1항의 방법으로 그 적용일의 최소 7일 전부터 공지합니다. 다만, 회원에게 불리한 약관의 변경인 경우에는 최소 30일 전부터 공지합니다. 회사는 회원에게 불리한 약관 변경의 경우 회원 정보에 기재된 이메일로 개별 통지합니다.</p></div>
					<div class="ol"><span class="num">③</span><p>회사가 제2항에 따라 약관의 변경을 공지 또는 통지하면서 변경 약관의 적용일까지 거부 의사를 표시하지 않으면 약관 변경에 동의한 것으로 간주한다는 내용을 공지 또는 통지하였음에도 불구하고 회원이 명시적으로 거부 의사를 표시하지 않은 경우 변경 약관에 동의한 것으로 봅니다. 회원은 변경된 약관에 동의하지 않는 경우 이용 계약을 해지할 수 있습니다.</p></div>
				</div>
				<div class="section">
					<span class="col_title">제 4 조 (약관 외 준칙)</span>
					<span class="col_content">
						본 약관에 명시되지 아니한 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 따릅니다.
					</span>
				</div>
				<div class="section">
					<span class="col_title">제 2장 서비스 이용 계약</span>
					<span class="col_title">제 5 조 (이용 계약의 성립)</span>
					<span class="col_content">
						이용계약은 회원이 되고자 하는 자 (이하 “가입신청자”라 합니다.)가 본 약관 및 개인정보처리방침에 동의한 다음 회원가입신청을 하고 회사가 이러한 신청을 승낙함으로써 체결됩니다.
					</span>
				</div>
				<div class="section">
					<span class="col_title">제 6 조 (이용 신청의 승낙 · 유보)</span>
					<div class="ol"><span class="num">①</span><p>가입신청자는 회사가 정한 소정의 양식에 필요한 정보를 입력하고 이용을 신청합니다.</p></div>
					<div class="ol">
						<span class="num">②</span>
						<div>
							<p>회사는 다음 각 호의 어느 하나에 해당하는 경우 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.</p>
							<ol>
								<li>서비스 관련 설비에 여유가 없는 경우</li>
								<li>기술상 지장이 있는 경우</li>
								<li>기타 위 각 호에 준하는 사유가 존재하는 경우</li>
							</ol>
						</div>
					</div>
					<div class="ol">
						<span class="num">③</span>
						<div>
							<p>회사는 다음 각 호의 어느 하나에 해당하는 경우 이용 신청에 대한 승낙을 거부할 수 있으며, 승낙 이후 그 사유가 발견된 경우에는 이용제한 조치를 취하거나 계약을 해지할 수 있습니다.</p>
							<ol>
								<li>타인의 명의를 사용하여 이용을 신청한 경우</li>
								<li>필요한 정보를 허위로 기재하여 이용을 신청한 경우</li>
								<li>만 14세 미만의 아동이 부모 등 법정 대리인의 동의를 얻지 않고 이용을 신청한 경우</li>
								<li>기타 관련 법령을 위반하거나 회사가 정한 요건에 맞지 않게 이용을 신청한 경우</li>
							</ol>
						</div>
					</div>
					<div class="ol"><span class="num">④</span><p>스스로 서비스 이용 계약을 해지한 종전 회원이 해지일로부터 3개월이 지나지 않은 상태에서 이용을 신청하는 경우 회사는 이를 승낙하지 않을 수 있습니다.</p></div>
					<div class="ol"><span class="num">⑤</span><p>약관 제10조 위반으로 회사에 의해 이용계약이 해지된 종전 회원이 계약 해지일로부터 1년 내에 다시 이용을 신청하는 경우 회사는 이를 승낙하지 않을 수 있습니다.</p></div>
				</div>
				<div class="section">
					<span class="col_title">제 7 조 (회원정보의 변경)</span>
					<div class="ol"><span class="num">①</span><p>회원은 개인정보관리 화면을 통해 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다.</p></div>
					<div class="ol"><span class="num">②</span><p>회원은 이용 신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정하거나 전자우편 기타 방법으로 회사에 변경 사항을 알려야 합니다. 회사는 회원이 변경 사항을 알리지 않아 발생한 불이익에 대하여 책임을 지지 않습니다.</p></div>
					<div class="ol"><span class="num">③</span><p>회사는 1년 이상 로그인하지 않은 회원을 휴면회원으로 분류할 수 있습니다. 다른 회원이 휴면회원의 닉네임을 사용하고자 하는 경우, 회사는 휴면회원에게 임시 닉네임을 부여하고 다른 회원에게 해당 닉네임의 사용을 허락할 수 있습니다. 임시 닉네임이 지정된 휴면회원은 새로운 닉네임을 지정할 수 있습니다.</p></div>
					<div class="ol">
						<span class="num">④</span>
						<div>
							<p>다음 각 호의 어느 하나에 해당하는 경우 회사는 해당 닉네임의 사용을 금지하고 임시 닉네임을 부여할 수 있습니다. 이 경우 회원은 새로운 닉네임을 지정하여 사용을 신청할 수 있습니다.</p>
							<ol>
								<li>닉네임이 회원이나 제3자의 개인정보를 포함하고 있는 경우</li>
								<li>닉네임이 타인에게 혐오감을 주는 경우</li>
								<li>닉네임에 욕설이나 범죄에 대한 내용이 포함된 경우</li>
								<li>닉네임이 미풍양속에 반하는 경우</li>
								<li>닉네임에 제3자를 비방하거나 분쟁을 야기하는 내용이 포함된 경우</li>
							</ol>
						</div>
					</div>
				</div>
				<div class="section">
					<span class="col_title">제 8 조 (개인정보의 보호 및 보관 기간)</span>
					<div class="ol"><span class="num">①</span><p>회사는 “정보통신망 이용촉진 및 정보보호 등에 관한 법률”, “개인정보보호법” 등 관계 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다.</p></div>
					<div class="ol"><span class="num">②</span><p>개인정보처리방침의 범위 내에서 회사는 업무와 관련하여 회원 전체 또는 일부의 개인정보에 관한 집합적인 통계 자료를 작성하여 이를 사용할 수 있고 서비스를 통하여 회원의 컴퓨터에 쿠키를 전송할 수 있습니다. 이 경우 회원은 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터의 브라우저의 설정을 변경할 수 있습니다.</p></div>
					<div class="ol"><span class="num">③</span><p>회사는 개명 등 회원이 직접 수정할 수 없는 개인정보의 변경이 발생한 경우에는 회원의 요청에 따라 회원의 개인정보를 수정할 수 있습니다.</p></div>
					<div class="ol"><span class="num">④</span><p>회원이 휴면회원으로 분류될 경우, 휴면회원의 개인정보는 분리하여 보관합니다. 회사는 회원이 서비스를 재개하거나 법령에 특별한 규정이 있는 경우를 제외하고는 분리된 개인 정보를 이용하거나 제공하지 않습니다.</p></div>
					<div class="ol"><span class="num">⑤</span><p>회원이 이용계약을 해지한 경우 회사는 권리남용을 방지하고 권리침해와 관련한 분쟁에 대비하기 위하여 해지일로부터 3개월 동안 회원의 개인정보를 보유할 수 있습니다. 다만, 제6조 제5항에 따라 회사가 계약을 해지한 경우에는 부정 가입 및 이용 방지를 위하여 1년 동안 회원의 연계 정보(CI)를 보관할 수 있습니다.</p></div>
				</div>
				<div class="section">
					<span class="col_title">제 3장 계약 당사자의 의무</span>
					<span class="col_title">제 9 조 (회사의 의무)</span>
					<div class="ol"><span class="num">①</span><p>회사는 계속적이고 안정적인 서비스의 제공을 위하여 지속적으로 노력하며, 설비에 장애가 생기거나 멸실된 때에는 지체 없이 이를 수리, 복구하여야 합니다. 다만, 천재지변, 비상사태 또는 그 밖에 부득이한 경우에는 그 서비스를 일시 중단하거나 정지할 수 있습니다.</p></div>
					<div class="ol"><span class="num">②</span><p>회사는 회원이 안전하게 서비스를 이용할 수 있도록 개인정보 보호를 위한 보안시스템을 갖추어야 하며, 유지, 점검 및 복구 등의 조치를 성실히 이행합니다.</p></div>
					<div class="ol"><span class="num">③</span><p>제3자가 회사와 계약을 체결하고, 이에 근거하여 회사의 회원들에게 서비스를 제공하고자 하는 경우, 회사는 회원에게 개별적 동의를 받은 뒤, 동의의 범위 내에서 제3자에게 회원의 개인정보를 제공할 수 있고, 이 경우 회사는 회원의 개인정보를 보호하기 위한 관련법령의 의무를 준수합니다.</p></div>
					<div class="ol"><span class="num">④</span><p>회사는 소정의 절차에 의해 제기되는 회원의 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. 즉시 처리가 불가능한 경우에는 회원에게 그 사유와 처리 일정을 통지해야 합니다. 다만, 사실관계의 확인이 필요한 경우 등 처리에 소요되는 시간을 정확히 예측하기 어려운 경우에는 회원에게 그 사유를 통보하고 상당한 기간 내에 이를 처리할 수 있습니다.</p></div>
				</div>
				<div class="section">
					<span class="col_title">제 10 조 (회원의 의무)</span>
					<div class="ol"><span class="num">①</span><p>회원은 관계법령, 본 약관의 규정, 이용수칙 등 회사가 공지 또는 통지하는 사항을 준수하여야 하며, 회사의 업무를 방해하는 행위를 할 수 없습니다.</p></div>
					<div class="ol"><span class="num">②</span><p>회원은 회사의 사전승낙 없이 회사가 저작권을 보유한 게시물을 복제, 전송, 수정, 번역, 출판, 배포, 방송하거나 기타 방법으로 사용하거나 제3자에게 제공하거나, 영리를 목적으로 이용할 수 없습니다.</p></div>
					<div class="ol"><span class="num">③</span><p>회원은 회사의 사전승낙 없이 서비스를 이용하여 광고 등 영리행위를 할 수 없습니다. 회사는 사전승낙을 받지 않은 회원의 영리행위로 인해 발생한 결과에 대하여 책임을 부담하지 않습니다. 회원은 사전승낙을 받지 않은 영리행위로 인해 회사에 손해가 발생한 경우 회사에 대하여 손해배상 책임을 부담합니다.</p></div>
					<div class="ol"><span class="num">④</span><p>ID와 비밀번호에 관한 관리책임은 회원에게 있으며, 관리 소홀, 부정 사용 등에 의하여 발생하는 모든 결과에 대한 책임은 회원이 부담합니다.</p></div>
					<div class="ol"><span class="num">⑤</span><p>회원이 게시물 작성 등 서비스 이용과 관련하여 제3자의 초상권, 상표권, 저작권 및 기타 권리를 사용하고자 하는 경우에는 사전에 정당한 권리자로부터 필요한 권리를 확보하여야 하며, 권한 없는 사용으로 권리자와 분쟁이 발생한 경우에는 회원이 모든 책임을 부담합니다.</p></div>
					<div class="ol"><span class="num">⑥</span><p>회원은 회사의 서비스 안정성에 영향을 미칠 수 있거나 회사가 용인하지 않은 방법으로 서비스를 이용하거나 포인트를 취득해서는 안되며 이러한 방법을 유포해서는 안됩니다.</p></div>
					<div class="ol">
						<span class="num">⑦</span>
						<div>
							<p>회원은 서비스 이용과 관련하여 다음 각 호에 해당되는 행위를 하여서는 안됩니다.</p>
							<ol>
								<li>타인의 ID를 이용하여 부당하게 서비스를 이용하는 행위</li>
								<li>회사 또는 제3자의 저작권, 초상권 및 기타 권리를 침해하는 행위</li>
								<li>공공질서 및 미풍양속에 위반되는 내용을 유포하는 행위</li>
								<li>선정적이거나 사회적 물의를 일으키는 내용을 유포하는 행위</li>
								<li>범죄와 결부된다고 객관적으로 판단되는 행위</li>
								<li>상습적으로 회원간 분쟁을 유도하는 등 커뮤니티의 발전을 저해하는 행위</li>
								<li>바이러스, 악성 코드 등을 유포하거나 해킹 등을 시도하는 행위</li>
								<li>다량의 정보를 전송하거나 광고성 정보를 전송하여 서비스의 안정적 운영을 방해하는 행위</li>
								<li>회사의 운영진, 관리자, 관계자를 사칭하는 행위</li>
								<li>위 각 호의 내용이 포함되었다고 판단되는 닉네임을 사용하는 행위</li>
								<li>회사의 서비스를 방해하거나, 서비스에 고의적으로 피해를 끼치는 행위</li>
								<li>기타 관계 법령에 위배되는 행위</li>
							</ol>
						</div>
					</div>
				</div>
				<div class="section">
					<span class="col_title">제 4장 서비스 이용</span>
					<span class="col_title">제 11 조 (서비스 이용 볌위)</span>
					<p>회사는 필요한 경우 회원의 연령, 본인 인증 여부 또는 부여한 등급에 따라 일부 서비스에 대한 접근을 제한할 수 있습니다.</p>
				</div>
				<div class="section">
					<span class="col_title">제 12 조 (회원의 게시물)</span>
					<div class="ol">
						<span class="num">①</span>
						<div>
							<p>회사는 회원이 서비스를 통하여 등록한 게시물이나, 다른 회원과 주고받은 쪽지 등과 관련하여 어떠한 민형사상 책임도 부담하지 않으며, 회원이 등록한 게시물이나 다른 회원과 주고받은 쪽지가 다음 각 호 어느 하나에 해당하는 경우에는 사전통지 없이 이를 삭제할 수 있습니다.</p>
							<ol>
								<li>타인을 모욕하거나, 명예를 훼손하거나, 프라이버시를 침해하는 경우</li>
								<li>공공질서 및 미풍양속에 위반되는 내용인 경우</li>
								<li>범죄행위와 결부되었다고 인정되는 내용일 경우</li>
								<li>제3자의 저작권 및 기타 권리를 침해하는 경우</li>
								<li>회사에서 규정한 게시 목적이나 기간, 용량을 초과한 경우</li>
								<li>선정적인 음란물을 게재하거나 관련 정보가 포함된 경우</li>
								<li>반사회적이거나 사회적 물의를 일으키는 내용인 경우</li>
								<li>회사가 공지 또는 통지한 이용수칙을 위반한 경우</li>
								<li>본 약관 10조를 위반하는 게시물인 경우</li>
								<li>기타 관계법령에 위반된다고 판단되는 경우</li>
							</ol>
						</div>
					</div>
					<div class="ol"><span class="num">②</span><p>특정 회원이 등록한 게시물로 인해 사생활이 침해되거나 명예가 훼손되는 등 권리를 침해 받은 자는 “정보통신망 이용촉진 및 정보보호 등에 관한 법률"에 따라 침해 사실을 소명하여 해당 게시물의 삭제 요청을 할 수 있습니다. 이 경우 삭제 요청을 하는 자는 본인이 권리를 침해 받은 당사자(혹은 대리인)임을 증명할 수 있는 자료와 함께 해당 게시물의 위치 정보(URL)를 기재하여 요청하여야 합니다.</p></div>
					<div class="ol"><span class="num">③</span><p>회사는 위 2항에 따라 삭제를 요청 받은 게시물이 사생활 침해 또는 명예훼손 등 권리를 침해한다고 인정하는 경우 지체없이 삭제 등의 조치를 취하여야 합니다. 다만, 회사가 해당 게시물 등의 권리 침해 여부를 판단할 수 없거나 당사자 간의 다툼이 예상되는 경우 해당 게시물에 대해 10일간의 임시 조치를 진행합니다.</p></div>
				</div>
			</div>
		</div>
		<jsp:include page="/default/footer.jsp" flush="true"/>
	</div>
</body>
</html>