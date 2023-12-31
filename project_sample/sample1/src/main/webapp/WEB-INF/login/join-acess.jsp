<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	body {
	font-family: 'Jeju Gothic', sans-serif;
	font-weight: lighter;
	}
	*{
		margin: 0;
		padding: 0;
	}
	#join_acess_container{
		display: flex;
		align-items: center;
		justify-content: center;
		margin : 30px;
	}
	#join_acess_container button{
		cursor: pointer;
	}
	.join_acess_wrap h2 span{
		color: #213555;
	}
    .box-terms{
	    overflow: hidden;
	    height: 260px;
	    overflow-y: auto;
	    width: 800px;
	    line-height: 30px;
	    border-radius: 6px;
	    border: 1px solid #d6d6d6;
	    padding: 20px;
	      background: #f7f7f7;
	      color: #808080;
    }
    .box-terms h2{
    	margin : 10px 0;
    }
	.join_email_box{
		height: 90px;
	}
	.join_acess_checkbox{
		display: flex;
		justify-content: right;
		margin-top: 10px;
		margin-bottom: 30px;
	}
	.join_acess_btn_wrap{
		display: flex;
		justify-content: center;
		text-align: center;
	}
	.join_acess_btn_box button, .join_acess_btn_host button{
	    width: 70%;
	    display: block;
	    margin: 0 auto;
	    background-color: #213555;
	    padding: 22px 32px;
	    color: #fff;
	    border-radius: 6px;
	    font-size: 22px;
	}
	.join_acess_btn_wrap .join_acess_btn_box:last-child button{
		background-color: #213555;
		font-family: 'Jeju Gothic', sans-serif;
	}
	h2{
	font-size: 1.2em;
	}

</style>
</head>
<body>
	<jsp:include page="../header.jsp" flush="true"></jsp:include>
	<div id="app">
        <div id="join_acess_container">
			<div class="join_acess_wrap">
			<br><br><h1>회원가입</h1><span style="color:gray;">조조투어 회원이 되시고 회원만의 다양한 해택을 받아가세요</span><br><br>
			
				<h2>조조투어 회원약관 동의<span style="color:#FA163F">(필수)</span></h2>
				<section class="box-terms">
					<p v-if="status == 'U'"><strong>조조 투어의 이용약관<span style="color:#FA163F">(개인회원)</span></strong></p>								
					<p v-else><strong>조조 투어의 이용약관<span style="color:#FA163F">(호스트회원)</span></strong></p>								
						<h2>제 1 장 총칙</h2>
												
						<h3>제 1 조 (목적)</h3>
						
						<p>
							이 약관은 조조투어에서 제공하는 인터넷(http://localhost:8088/main.do)을 통한 조조투어(jojotour) 서비스(이하 서비스)의 이용에 관한 조건 및 절차와 기타 필요한 사항을 규정하는 것을 목적으로 합니다.
						</p>
												
						<h3>제 2 조 (용어의 정의)</h3>
						<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
						<ol>
							<li>1. "개인회원"(이하 회원)이라 함은 조조투어정보를 활용하고자 조조투어(jojotour)의 이용계약을 체결한 개인</li>
							<li>2. "이용자"라 함은 개인, 기업관계자 뿐만 아니라 일반사용자 등의 이용계약 체결 여부와 관계없이 조조투어(jojotour)을 활용하는 모든 대상</li>
							<li>3. "아이디(ID)"라 함은 이용자 식별과 이용자의 서비스 이용을 위하여 이용계약 체결 시 이용자의 선택에 의하여 조조투어(jojotour)이 부여하는 문자와 숫자의 조합</li>
							<li>4. "비밀번호"라 함은 이용자 자신의 비밀을 보호하기 위하여 이용자 자신이 설정한 문자와 숫자의 조합</li>
							<li>5. "서비스"라 함은 이용자가 단말기를 이용하여 조조투어(jojotour)의 주전산기에 접속하여 다양한 조조투어정보를 입력·활용하는 것</li>
							<li>6. "이용계약"이라 함은 조조투어(jojotour)의 서비스를 제공받기 위하여 이 약관으로 조조투어과 이용자간의 체결하는 계약</li>
						</ol>
												
						<h3>제 3 조 (약관의 효력과 변경)</h3>
						<ol>
							<li>① 이 약관은 조조투어(jojotour)에 게시하여 가입함으로써 효력을 발생합니다.</li>
							<li>② 조조투어는 합리적인 사유가 발생한 경우에는 이 약관을 변경할 수 있으며, 약관을 변경한 경우에는 변경내용을 최소 7일 이전에 공시합니다.</li>
							<li>③ 등록자는 변경된 약관사항에 동의하지 않으면, 언제나 서비스 이용을 중단하고 이용계약을 해지할 수 있습니다. 약관의 효력발생일 이후의 계속적인 서비스 이용은 약관의 변경사항에 등록자가 동의한 것으로 간주됩니다.</li>
						</ol>
												
						<h3>제 4 조 (약관외 준칙)</h3>
						<p>
							이 약관에 명시되지 않은 사항이 관계 법령에 규정되어 있을 경우 그 규정에 따르며, 그렇지 않은 경우에는 일반적인 관례에 따릅니다.
						</p>
												
						<h3>제 5 조 (적용범위)</h3>
						<ol>
							<li>① 이 약관은 조조투어(jojotour)의 이용자에게 적용합니다.</li>
							<li>② 이 약관은 조조투어(jojotour)의 패밀리사이트(지역조조투어, 사이버진로교육센터 등)와 조조투어의 조조투게더(http://localhost:8088/main.do) 통합회원에게도 동일하게 적용합니다.</li>
							<li>③ 이 약관에 명시되지 아니한 사항에 대해서는 관계 법령 및 서비스별 이용안내의 취지에 따라 적용할 수 있습니다.</li>
						</ol>
												
						<h2>제 2 장 서비스 이용 계약</h2>
												
						<h3>제 6 조 (이용계약의 성립)</h3>
						<ol>
							<li>① 이용계약은 이용자의 아이디(ID)신청에 대한 조조투어(jojotour)의 아이디(ID)승인으로 성립됩니다.</li>
							<li>② 제1항의 규정에 의해 이용자가 아이디(ID)신청을 할 때에는 조조투어 (jojotour)의 이용자 관리 시 필요로 하는 사항을 "회원가입" 서비스를 통하여 신청하여야 합니다.</li>
							<li>③ 이용자가 등록절차를 거쳐 동의 버튼을 누름으로써 이 이용계약에 동의한 것으로 간주합니다.</li>
							<li>
								④ 네이버, 카카오, 구글, 페이스북 등 외부 서비스와의 연동을 통해 이용계약을 신청할 경우, 본 약관과 조조투어정보망 개인정보처리방침에 동의를 하고,
								서비스 제공을 위해 조조투어(jojotour)이 “회원”의 외부 서비스 계정 정보에 접근하고 “회원”이 활용에 “동의” 또는 “확인” 버튼을 누르면
								조조투어(jojotour)이 웹 상의 안내 및 전자메일로 “회원”에게 통지함으로써 이용계약이 성립된다.
							</li>
							<li>⑤ 서비스의 대량이용 등 특별한 서비스 이용에 관한 계약은 별도의 계약으로 합니다.</li>
						</ol>
												
						<h3>제 7 조(서비스 이용신청)</h3>
						<ol>
							<li>① 회원으로 가입하여 서비스를 이용하고자 하는 자는 조조투어에서 요청하는 제반정보(성명, 연락처 등)를 제공하여야 합니다.</li>
							<li>② 모든 회원은 반드시 본인 확인 과정을 거쳐야만 서비스를 이용 할 수 있으며, 본인 확인이 되지않은 사용자는 일체의 권리를 주장할 수 없습니다.</li>
							<li>③ 타인의 명의를 도용하는 등 관계법령을 위반하여 이용신청을 한 회원의 모든 ID는 삭제되며, 관계법령에 따라 처벌을 받을 수 있습니다.</li>
						</ol>
												
						<h3>제 8 조 (이용계약 승인의 유보와 거절)</h3>
						<ol>
							<li>① 조조투어는 다음 각 호에 해당하는 경우에는 이용계약의 승인을 유보할 수 있습니다.
						<ol>
							<li>1. 설비에 여유가 없거나 기술상에 지장이 있는 경우</li>
							<li>2. 서비스의 효율적인 운영 등을 위하여 필요하다고 판단하는 경우</li>
						</ol>
							</li>
							
							<li>② 조조투어는 다음 각 호에 해당하는 이용계약 신청에 대한 승인을 거절할 수 있습니다.
						
						<ol>
							<li>1. 타인의 명의를 도용하여 이용신청을 하였을 때</li>
							<li>2. 이용계약 신청서의 내용을 허위로 기재하였을 때</li>
							<li>3. 기타 아이디(ID)신청자의 귀책사유로 이용승인이 곤란한 경우</li>
						</ol>
							</li>
						</ol>
												
							<h2>제 3 장 서비스의 이용</h2>
												
							<h3>제 9 조 (서비스 이용시간)</h3>
						<p>
							서비스의 이용 시간은 조조투어의 업무 및 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간(00:00-24:00)을 원칙으로 합니다.<br>
							다만 정기점검 등의 필요로 조조투어이 정한 날이나 시간은 그러하지 아니합니다. 그리고 서비스의 중지 및 제한에 대해서는 별도의 조항에 따릅니다.
						</p>
												
						<h3>제 10 조 (이용계약의 해지 및 서비스 이용의 제한)</h3>
						<ol>
							<li>① 이용자가 서비스 이용계약을 해지하고자 하는 때에는 조조투어에 해지신청을 하여야 합니다.</li>
							<li>② 조조투어는 이용자가 다음 각 호에 해당하는 경우 사전통지 없이 이용계약을 해지하거나 전부 또는 일부의 서비스 제공을 중지할 수 있습니다.
						<ol>
							<li>1. 타인의 아이디(ID) 및 비밀번호를 도용한 경우</li>
							<li>2. 다량의 정보를 전송하여 서비스의 안정적 운영을 방해하는 경우</li>
							<li>3. 수신자의 의사에 반하는 광고성 정보, 전자우편을 전송하는 경우</li>
							<li>4. 정보통신윤리위원회로부터의 이용제한 요구 대상인 경우</li>
							<li>5. 서비스를 이용하여 얻은 정보를 조조투어의 동의 없이 상업적으로 이용하는 경우</li>
							<li>6. 기타 조조투어이 부적당하다고 판단한 경우</li>
							<li>③ 조조투어는 이용자가 계속해서 2년 이상 개인정보 재동의 절차를 거치지 않은 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용자에게 사전 통지 없이 삭제할 수 있습니다. </li>
						</ol>
							</li>
						</ol>
												
						<h3>제 11 조 (이용자 게시물의 삭제 이용 제한)</h3>
						<ol>
							<li>① 조조투어는 서비스용 설비의 용량에 여유가 없다고 판단하는 경우 관련 사항을 사전공지 후 필요에 따라 이용자가 게재 또는 등록한 내용물을 삭제하거나 이용자의 서비스 이용을 부분적으로 제한할 수 있습니다</li>
							<li>② 조조투어는 이용자가 게재 또는 등록하는 서비스내의 내용물이 다음 각 호에 해당한다고 판단하는 경우에 이용자에게 사전 통지 없이 삭제할 수 있습니다.
						<ol>
							<li>1. 다른 이용자 또는 제 3자를 비방하거나 중상모략으로 명예를 손상시키는 경우</li>
							<li>2. 해당 게시판의 운영 목적에 적합하지 않다고 판단되는 경우</li>
							<li>3. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 유포하는 경우</li>
							<li>4. 반국가적, 반사회적, 범죄적 행위와 결부된다고 판단되는 경우</li>
							<li>5. 게시 기간이 규정된 기간을 초과한 경우</li>
							<li>6. 기타 관계 법령에 위배된다고 판단되는 경우</li>
						</ol>
							</li>
						</ol>
												
						<h3>제 12 조 (서비스의 중지 및 제한)</h3>
						<ol>
							<li>① 조조투어는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.
						<ol>
							<li>1. 서비스용 설비의 보수 또는 공사로 인한 부득이한 경우</li>
							<li>2. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 때</li>
						</ol>
							</li>
							<li>② 조조투어는 국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때에는 서비스 제공을 중지하거나 제한할 수 있습니다.</li>
						</ol>
												
						<h2>제 4 장 의무</h2>
												
						<h3>제 13 조 (조조투어의 의무)</h3>
						<ol>
							<li>① 조조투어는 조조투어(jojotour)의 설비를 안정적인 서비스 제공에 적합하도록 유지하여야 하며 서비스용 설비에 장애 발생 시 조속히 복구하도록 노력하여야 합니다.</li>
							<li>② 서비스 내용의 변경 또는 추가사항이 있는 경우 그 사항을 온라인을 통해 서비스 화면에 공지합니다.</li>
						</ol>
												
						<h3>제 14 조 (개인정보보호)</h3>
						<ol>
							<li>① 조조투어는 공공기관의정보공개에관한법률,정보통신망이용촉진등에관한법률 등 관계법령에 따라 이용신청시 제공받는 이용자의 개인정보, 이후에 추가로 제공받는 개인정보 및 서비스 이용 중 생성되는 개인정보를 보호하여야 합니다.</li>
							<li>② 조조투어는 개인정보를 이용고객의 별도의 동의 없이 제3자에게 제공하지 않으며, 다음 각 호의 경우는 이용고객의 별도 동의 없이 제3자에게 등록자의 개인정보를 제공할 수 있습니다.
						<ol>
							<li>1. 수사상 목적에 따른 수사기관의 서면 요구가 있는 경우에 수사협조의 목적으로 국가수사 기관에 성명, 주소등 신상정보를 제공하는 경우</li>
							<li>2. 신용정보의 이용 및 보호에 관한 법률, 전기통신 관련법률 등 법률에 특별한 규정이 있는 경우</li>
							<li>3. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우</li>
						</ol>
							</li>
							<li>③ 이용자는 언제나 자신이 입력한 개인정보를 열람할 수 있으며, 오류를 수정 할 수 있습니다. 자세한 방법은 이용안내에서 정한 바에 따릅니다.</li>
							<li>④ 이용자는 언제나 이용계약을 해지함으로써 개인정보의 수집 및 이용에 대한 동의, 목적외 사용에 대한 별도동의, 제3자 제공에 대한 별도 동의를 철회 할 수 있습니다. 해지는 회원이 원하는 경우 조조투어(jojotour)의 해지절차를 통해 하실 수 있습니다.</li>
						</ol>
												
						<h3>제 15 조 (이용자의 의무)</h3>
						<ol>
							<li>① 이용자는 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다.
						<ol>
							<li>1. 다른 이용자의 아이디(ID)를 부정하게 사용하는 행위</li>
							<li>2. 서비스를 이용하여 얻은 정보를 조조투어의 사전 승낙없이 이용자의 이용이외의 목적으로 복제하거나 이를 출판, 방송 등에 사용하거나 제3자에게 제공하는 행위</li>
							<li>3. 다른 이용자 또는 제3자를 비방하거나 중상 모략으로 명예를 손상하는 행위</li>
							<li>4. 공공질서 및 미풍양속에 위배되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위</li>
							<li>5. 반국가적, 반사회적, 범죄적 행위와 결부된다고 판단되는 행위</li>
							<li>6. 다른 이용자 또는 제 3 자의 저작권 등 기타 권리를 침해하는 행위</li>
							<li>7. 기타 관계 법령에 위배되는 행위</li>
						</ol>
							</li>
							<li>② 이용자는 이 약관에서 규정하는 사항과 서비스 이용안내 또는 주의사항을 준수하여야 합니다.</li>
							<li>③ 이용자가 설치하는 단말기 등은 전기통신설비의 기술기준에 관한 규칙이 정하는 기준에 적합하여야 하며, 서비스에 장애를 주지 않아야 합니다.</li>
						</ol>
												
						<h3>제 16 조 (ID 및 비밀번호 등)</h3>
						<ol>
							<li>① ID 및 비밀번호에 대한 모든 관리책임은 이용자에게 있습니다.</li>
							<li>② 이용자는 ID를 공유, 양도 또는 변경할 수 없습니다.</li>
							<li>③ 이용자에게 부여된 ID에 의하여 발생되는 서비스 이용상의 과실 또는 제3자에 의한 부정사용 등에 대한 모든 책임은 이용자에게 있습니다.</li>
						</ol>
												
						<h2>제 5 장 저작권 및 면책</h2>
												
						<h3>제 17 조 (게재된 자료에 대한 권리)</h3>
						<p>
							서비스에 게재된 자료에 대한 권리는 다음 각 호와 같습니다.
						</p>
						<ol>
							<li>1. 게시물에 대한 권리와 책임은 게시자에게 있으며, 조조투어는 게시자의 동의 없이는 이를 영리적 목적으로 사용할 수 없습니다. 단, 비영리적 목적인 경우 조조투어는 게시자의 동의 없이도 이를 사용할 수 있으며 서비스내의 게재권을 갖습니다.</li>
							<li>2. 게시자의 사전 동의가 없이는 이용자는 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적 목적으로 이용할 수 없습니다.</li>
						</ol>
												
						<h3>제 18 조 (면책)</h3>
						<p>
							조조투어는 이용자간 또는 이용자와 제3자간에 서비스를 매개로 하여 물품거래 혹은 금전적 거래 등과 관련하여 어떠한 책임도 부담하지 아니하고,
							이용자가 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.
							이용자가 조조투어에서 제공하는 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 조조투어의 책임이 면제됩니다.
						</p>
												
						<h3>제 19 조 (분쟁의 해결)</h3>
						<ol>
							<li>① 조조투어과 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다.</li>
							<li>② 전항의 노력에도 불구하고, 동 분쟁에 관한 소송은 민사소송법상의 관할법원을 전속적 관할법원으로 합니다.</li>
						</ol>
												
						<h2>[부칙]</h2>
						<ol>
							<li>1.(시행일) 이 약관은 2007년 6월 30일부터 시행합니다.</li>
							<li>2. 2003년 7월 9일부터 시행되던 종전의 약관은 본 약관으로 대체합니다.</li>
						</ol>
						
				</section>
				<div class="join_acess_checkbox"><label><input type="checkbox" v-model="acess" value="1"> 동의</label></div>
				<h2>개인정보 수집·이용 동의<span style="color:#FA163F">(필수)</span></h2>
				<section class="box-terms">
					<ol>
						<li>1. 개인정보의 수집·이용 목적
							<p>조조투어는 다음의 목적을 위해 개인정보를 수집 및 이용합니다. 수집된 개인정보는 다음의 목적 이외의 용도로는 이용하지 않으며, 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.</p>
							<ul>
								<li>- 홈페이지 회원관리</li>
								<li>회원가입, 회원제 서비스 이용 및 본인확인, 개인식별, 가입의사확인, 만14세 미만 아동 개인정보 수집시 법정대리인 동의여부 확인, 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 등을 목적으로 개인정보를 처리합니다. </li>
								<li>- 각종 구직 서비스(이력서 등) 제공</li>
								<li>구직 관련 서비스(이력서 등) 이용 조회를 위한 정보로 사용됩니다. </li>
							</ul>
						</li>
							
						<li>2. 수집하려는 개인정보의 항목
							<ul>
								<!-- <li>- 일반 회원가입
									<ul>
										<li>&middot;필수 항목 : 아이디, 비밀번호, 성명, 전화번호, 휴대전화번호, 사용자의 GPS 위치좌표</li>
										<li>&middot;선택 항목 : 연락처 정보 중 필수로 입력한 이외의 정보</li>
									</ul>
								</li>
									
								<li>- 만 14세 미만 어린이 또는 학생 회원가입
									<ul>
										<li>&middot;필수 항목 : 아이디, 비밀번호, 성명, 전화번호, 휴대전화번호, 사용자의 GPS 위치좌표</li>
										<li>&middot;선택 항목 : 연락처 정보 중 필수로 입력한 이외의 정보</li>
									</ul>
								</li> -->
								<li>- 14세 이상
									<ul>
										<li>·필수 항목 : 아이디, 비밀번호, 성명, 연락처(전화번호, 휴대전화번호 중 택1), 사용자의 GPS 위치좌표</li>
										<li>·선택 항목 : 연락처 정보 중 필수로 입력한 이외의 정보, 이메일, 주소</li>
										<li>- 자동수집항목 : DI, CI, IP주소</li>
									</ul>
								</li>
							</ul>
								
							</li><li class="font-bold font-blue font-size-20">3. 개인정보의 보유기간 및 이용 기간
								<ul>
									<li class="font-bold font-blue font-size-20">- 회원탈퇴 시(2년 후 재동의) </li>
									<li>- 단, 자동수집항목은 민원이력관리를 위해 반영구</li>
								</ul>
										
								<p>
									※홈페이지 내 각 조조투어 서비스 이용 이력은 관계법령에 따라 보유기간이 다를 수 있으며 자세한 내용은 개인정보처리방침을 확인 바랍니다.								
								</p>
							</li>	
						
					</ol>
					
					<p>
						위 개인정보 수집이용 동의를 거부할 권리가 있습니다. 동의를 거부하는 경우 회원가입 및 조조투어 서비스를 제공받을 수 없습니다.
					</p>	
										
				</section>
				<div class="join_acess_checkbox"><label><input type="checkbox" v-model="acess" value="2"> 동의</label></div>
				<h2>이메일·문자 수신 동의<span  style="color:#FA163F">(선택)</span></h2>
				<section class="box-terms join_email_box">
					<li> 수집목적 : 조조투어에서 제공하는 취업정보, 행사, 뉴스레터, 이벤트, 세미나 박람회 소식 등 제공</li>
					<li> 수집항목 : 이메일, 휴대전화번호</li>
					<li class="font-bold font-blue font-size-20"> 보유 및 이용기간 : 회원탈퇴시 (2년 후 재동의) </li>
				</section>
				<div class="join_acess_checkbox">
					<label><input type="radio" v-model="acessRadio" value="3" name="agree"> 동의　</label>
					<label><input type="radio" v-model="acessRadio" value="4" name="agree"> 동의하지 않음</label>
				</div>
				<div class="join_acess_btn_wrap" v-if="status == 'U'">
					<div class="join_acess_btn_box">
						<div class="join_acess_img_box">
							<img src="../img/join/join_up.png" alt="">
						</div>
						<button class="btn" @click="fnAcess('up')">14세 이상 회원가입</button>
					</div>
					<!-- <div class="join_acess_btn_box">
						<div class="join_acess_img_box">
							<img src="../img/join/join_down.png" alt="">
						</div>
						<button @click="fnAcess('down')">14세 미만 회원가입</button>
					</div> -->
				</div>

				<div class="join_acess_btn_host" v-else>
					<button @click="fnAcess('up')">호스트 회원가입</button>
				</div>

			</div>
        </div>
	</div>
	<jsp:include page="../footer.jsp" flush="true"></jsp:include>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		acess : [],
		acessRadio : "",
		status : "${map.status}"
	},// data
	methods : {
		fnAcess : function(upAndDown){
			var self = this;
			console.log(self.acessRadio[0]);
			if(self.acess[0] == null){
				alert("회원가입 약관에 동의하셔야 합니다.");
				return;
			}else if(self.acess[1] == null){
				alert("개인정보 수집·이용 동의를 하셔야 회원가입이 가능합니다.");
				return;
			}else if(self.acessRadio[0] == null){
				alert("이메일·문자 수신 동의를 선택해주세요.");
				return;
			}else{
				$.pageChange("../join.do", {status : self.status, upAndDown : upAndDown});
			}

		}
	}, // methods
	created : function() {
		var self = this;
	//	self.fnGetList();
	}// created
});
</script>