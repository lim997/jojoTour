<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="EUC-KR">
<title>약관 및 정책</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
body {
	font-family: 'Jeju Gothic', sans-serif;
}
.panel.border .fs15 dt {
  color: #333; /* 원하는 글자색 */
  font-size: 18px; /* 원하는 글자 크기 */
  margin-top: 5px; /* 원하는 상단 여백 */
  margin-bottom:30px;
  font-weight:bold;
}
.inp_slt {
  width: 200px; /* 원하는 너비 */
  padding: 8px; /* 원하는 패딩 값 */
  border: 1px solid #ccc; /* 테두리 스타일 */
  border-radius: 4px; /* 테두리 모서리 둥글기 */
  font-size: 14px; /* 폰트 크기 */
  color: #333; /* 폰트 색상 */
  background-color: #fff; /* 배경색 */
  /* 추가적인 스타일 속성 */
}
	html,body {height:100%;}
	body {background-color:#ebebeb;}
	#wrapper {position:relative;min-height:100%;min-width: 1150px;}
	.print-wrap #container{padding:0 !important}
	#container {/* overflow:hidden; */width:1100px;margin:0 auto; padding:20px 0 72px ; position: relative;}
	#container:after{content:''; display:block; clear:both;}
	.panel{padding:20px;}
	span.panel{display:inline-block;}
	.panel.border{border:1px solid #ebebeb;}
	.panel.bg{background:#fafafa;}
	.panel.bg-emp{background:#fff2ee;}
	.text-box{padding:10px; border:1px solid #b3b3b3; background:#fafafa;}
	.clear fs14 { font-size: 14px !important;display: flex;}
   	.clear::after {content: ""; display: table;  clear: both;}
	.left-list,
	.right-list {  float: left; width: 50%;list-style: none;padding: 0;}
	.left-list a,
	.right-list a {display: block;padding: 2px 10px; text-decoration: none; color: #333;font-weight: bold;}
	.right-list {float: right;}
	.inner-wrap{width:1100px; margin:0 auto; position: relative}
	.inner-wrap:after{content:''; display:block; clear:both;}
	 .customer{padding:30px; background:#fff;margin-top: 10px}
	 .customer>.title{font-size:30px; height:60px; line-height:1.2}
	 .customer .section-title{height:35px; margin-top:40px; background:url(/images/bg_package_title.gif) no-repeat; padding-left:10px; font-size:17px; line-height:1;}
	 .customer .sub-title,{height:40px; font-size:22px;    border-bottom: 1px solid #ebebeb; margin-top:15px;}
	 .customer.counsel .btn_comm{width:140px; height:46px; line-height:46px; text-align:center;}
	 .customer .data-table .no-result{height:255px; font-size:15px; line-height:2;}
	.customer .btn_other{width:140px; height:46px; line-height:46px; text-align:center;}
	.customer .btn-group {padding-top:20px;}
	.customer .btn-group a{width:140px; margin-left:5px; font-size:17px; text-align:center;}
	.customer .btn-group a:first-child{margin-left:0;}
	.btn_notice{ width: 230px !important; text-align: center; margin-top: 40px 
	.customer.counsel .table-layout .start_area strong{ display:inline-block; margin-bottom:10px;}
	.customer.counsel .table-layout .start_area .lab_choice{ margin-bottom:8px; padding:0 5px;}
	.customer.counsel .table-layout .item strong{ display:inline-block; margin-bottom:10px;}
	.customer.counsel .table-layout .item .lab_choice{ margin-bottom:8px; padding:0 5px;}
	.complain .form .table-layout>dl:first-child>dd{border-top:0;}

	.customer.policy{line-height:1.8;}
	.policy .div{margin:40px 0; border-top:2px solid #b3b3b3;}
	.policy .sub-title{height:60px; padding-top:40px; margin-top:40px; border-top:2px solid #b3b3b3;}
	.policy .panel{padding:20px 30px;}
	.policy .panel dt { padding-bottom: 20px;}
   

	.customer.policy .policy-title .policy-select-wrap {width: 250px;}
	.customer.policy .policy-title .policy-select-wrap dl {display: flex; align-items: center; column-gap: 10px; width: 100%;}
	.customer.policy .policy-title .policy-select-wrap dl dt {word-break: keep-all; height: 28px; font-weight: bold; font-size: 15px;}
	.customer.policy .policy-title .policy-select-wrap dl dd {width: 100%;}
</style>
</head>
<body>
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<%-- <%@ include file="header.jsp" %> --%>
	<div id="app">
		
		<div id="wrapper">
		<div id="container">
		<div class="inner-wrap">
		<div class="contents">
				<div class="customer policy">
					<h3 class="title">이용약관</h3>
					
					<div class="panel border">
						<div class="clear fs14">
							<ul class="left-list">
								<li><a href="#p1">제 1조 목적</a></li>
								<li><a href="#p2">제 2조 정의</a></li>
								<li><a href="#p3">제 3조 약관 등의 명시와 설명 및 개정</a></li>
								<li><a href="#p4">제 4조 서비스의 제공 및 변경</a></li>
								<li><a href="#p5">제 5조 서비스의 중단</a></li>
								<li><a href="#p6">제 6조 회원가입</a></li>
								<li><a href="#p7">제 7조 회원 탈퇴 및 자격 상실 등</a></li>
								<li><a href="#p8">제 8조 회원에 대한 통지</a></li>
								<li><a href="#p9">제 9조 정보의 제공 및 광고의 게재</a></li>
								<li><a href="#p10">제 10조 구매신청</a></li>
								<li><a href="#p11">제 11조 계약의 성립</a></li>
								<li><a href="#p12">제 12조 지급방법</a></li>
								<li><a href="#p13">제 13조 수신확인통지, 구매신청 변경 및 취소</a></li>
								
								
							</ul>
							<ul class="right-list">
								
								<li><a href="#p16">제 14조 여행상품 등의 공급</a></li>
								<li><a href="#p17">제 15조 환급</a></li>
								<li><a href="#p18">제 16조 청약철회 등</a></li>
								<li><a href="#p19">제 17조 청약철회 등의 효과</a></li>
								<li><a href="#p20">제 18조 개인정보보호</a></li>
								<li><a href="#p21">제 19조 회사의 의무</a></li>
								<li><a href="#p22">제 20조 회원의 ID및 비밀번호에 대한 의무</a></li>
								<li><a href="#p23">제 21조 이용자의 의무</a></li>
								<li><a href="#p24">제 22조 저작권의 귀속 및 이용제한</a></li>
								<li><a href="#p25">제 23조 이용자의 게시물</a></li>
								<li><a href="#p26">제 24조 회사의 면책</a></li>
								<li><a href="#p27">제 25조 분쟁해결</a></li>
								<li><a href="#p28">제 26조 재판권 및 준거법</a></li>
								<li><a href="#p29">부칙</a></li>
							</ul>
						</div>
					</div>
					<br>
					<div class="div"></div>
					

					<!----------------------------------------------------------------------------------->

					<!-- 이전 이용약관 셀렉트박스 추가 2023-04-26 by.엠버(wrko@jeju.com) -->
					<br>				<hr>
					<div class="policy-title" style="line-height: 1.5; display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 20px; margin-top:20px;">
						<h3 style="font-size:30px; height:60px; line-height:1.2">이용약관</h3>
						<div class="policy-select-wrap">
							<dl style="display: flex;align-items: center;column-gap: 10px;width: 100%;">
    							<dt style="word-break: keep-all;height: 28px;font-weight: bold; font-size: 15px;">시행일</dt>
								<dd>
									<div class="box_slt">
										<select class="inp_slt valid" title="이용약관 선택" onchange="$.get('/policy/pol_service.html?agt=jeju&amp;ajax_load=Y&amp;file='+this.value,function(html){$('#policy_wrap').html($(html).find('#policy_wrap').html())})">
											<option value="tpl_service.html" selected="selected">2023.08.29</option>
											
										</select>
									</div>
								</dd>
							</dl>
						</div>
					</div>
                    <div id="policy_wrap">
					    <div class="panel border" id="p1">
							<dl class="fs15">
								<dt><strong>제 1조 목적</strong></dt>
								<dd class="pre">
						이 약관은 (주)조조투어가 운영하는 여행전문 사이트 조조투어(이하 "사이트"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 이용자의 권리의무 및 책임사항을 규정함을 목적으로 합니다. 
						※「인터넷, 정보통신망, 모바일 및 스마트 장치 등을 이용하는 전자상거래에 대하여도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」 </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p2">
							<dl class="fs15">
								<dt><strong>제 2조 정의</strong></dt>
								<dd class="pre">
						1. "사이트"란 회사가 여행 상품 예약 (이하 “여행상품”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 여행상품 예약 등을 거래할 수 있도록 설정한 가상의 영업장을 의미합니다.
						2. “서비스”란 회사가 제공하는 항공, 숙박, 렌터카, 티켓 등 여가 관련 상품 및 서비스에 대한 예약, 구매, 정보 제공 및 추천 등을 위한 온라인 플랫폼 서비스를 의미합니다. 서비스는 컴퓨터, 스마트폰 등 정보통신장치와 상관없이 (주)제주닷컴이 공개한 API를 이용하여 제 3자가 개발?구축한 프로그램 및 서비스를 포함합니다.
						3. "이용자"란 "사이트"에 접속하여 이 약관에 따라 "사이트"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
						4. '회원'이라 함은 "사이트"에 개인정보를 제공하여 회원등록을 한 자로서, "사이트"의 정보를 지속적으로 제공받으며, "사이트"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
						5. '비회원'이라 함은 회원에 가입하지 않고 "사이트"가 제공하는 서비스를 이용하는 자를 말합니다.
						6. "아이디(ID)"라 함은 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 전자우편주소를 말합니다.
						7. “비밀번호(Password)”라 함은 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 사이트에 등록한 문자와 숫자의 조합을 말합니다.
						8. “할인쿠폰”이라 함은 여행상품 등을 예약할 때나 “사이트”가 제공하는 서비스를 이용할 때 표시된 금액 또는 비율 만큼 할인 받을 수 있는 쿠폰을 말합니다.
						9. "제주닷컴 이용권"이란 금액에 대한 고유번호를 “회사”가 운영하는 사이트에 등록하여 사용하는 금액권을 의미합니다.
						10. “캐시” 및 “포인트”라 함은 항공권, 차량, 숙소 등을 예약할 때나 사이트가 제공하는 서비스를 이용할 때 현금처럼 사용할 수 있는 사이트 전용의 사이버 화폐를 말합니다. 구체적인 이용 방법, 그 명칭 등은 회사의 정책에 따라 달라질 수 있습니다.
						11. “회원탈퇴”란 회원이 서비스 이용 이후 그 이용계약을 종료시키는 의사표시를 말합니다.</dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p3">
							<dl class="fs15">
								<dt><strong>제 3조 약관 등의 명시와 설명 및 개정</strong></dt>
								<dd class="pre">
						1. 회사는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 주소를 포함), 전화번호, 이메일 주소, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 쉽게 확인할 수 있도록 사이트의 초기 서비스 화면에 게시합니다. 다만, 약관의 구체적 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
						2. 회사는 「전자상거래등에서의 소비자보호에 관한법률」, 「약관의규제에 관한법률」, 「전자거래기본법」, 「전자서명법」, 「정보통신망 이용촉진등에 관한법률」, 「방문판매등에 관한법률」, 「소비자보호법」 등 관련법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
						3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 사이트의 초기화면에 그 적용일자 7일(다만, 이용자에게 불리한 내용으로 변경하는 경우에는 30일) 이전부터 적용일자 전일까지 공지합니다.
						4. 제3항에 의해 변경된 약관은 법령에 특별한 규정 기타 부득이한 사유가 없는 한 그 적용일자 이전으로 소급하여 적용되지 아니합니다.
						5. 제3항에 따라 공지된 적용일자 이후에 이용자가 명시적으로 거부의사를 표명하지 않을 경우에는 개정된 약관에 동의하는 것으로 봅니다.
						6. 회사는 제공하는 서비스 내의 개별 서비스에 대한 별도의 약관 및 이용조건을 둘 수 있으며 개별 서비스에서 별도로 적용되는 약관에 대한 동의는 이용자가 개별 서비스를 최초로 이용할 경우 별도의 동의절차를 거치게 됩니다. 이 경우 개별 서비스에 대한 이용약관 등이 이 약관에 우선합니다.
						7. 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자 보호에 관한 법률, 약관의 규제에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 및 상관례에 따릅니다 </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p4">
							<dl class="fs15">
								<dt><strong>제 4조 서비스의 제공 및 변경</strong></dt>
								<dd class="pre">
						1. 회사는 다음과 같은 업무를 수행합니다.
							① 항공, 숙박, 렌터카, 관광지 등 여행상품에 대한 정보 제공 및 예약계약의 체결
							② 예약계약이 체결된 여행상품 등의 예약
							③ 제주닷컴 이용권 등록 및 사용
							④ 캐시 충전 및 인출
							⑤ 포인트 적립 및 사용
							⑥ 기타 회사가 정하는 업무
						2. 회사는 예약된 여행상품의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 여행상품 등의 내용을 변경할 수 있습니다. 이 경우에는 변경된 여행상품 등의 내용 및 제공일자를 명시하여 현재의 여행상품 등의 내용을 게시한 곳에 즉시 공지합니다.
						3. 회사가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 여행상품 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지가능한 주소로 즉시 통지합니다.
						4. 전항의 경우 회사는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, 회사가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p5">
							<dl class="fs15">
								<dt><strong>제 5조 서비스의 중단</strong></dt>
								<dd class="pre">
						1. 회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. 
						2. 회사는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, 회사의 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다. 
						3. 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 회사는 제8조에 정한 방법으로 이용자에게 통지하고 당초 회사에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, 회사가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 회사에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p6">
							<dl class="fs15">
								<dt><strong>제 6조 회원가입</strong></dt>
								<dd class="pre">
						1. 이용자는 회사가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다. 회사는 이러한 신청에 있어 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.
						2. 회사는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다. 회사가 이용자가입신청의 승인을 거부하거나 유보하는 경우 원칙적으로 이를 회원에게 알립니다.
							① 가입신청자가 이 약관 제7조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 이용자자격 상실 후 3년이 경과한 자로서 사이트의 회원 재가입 승낙을 얻은 경우에는 예외로 한다
							② 등록 내용에 허위, 기재누락, 오기가 있는 경우
							③ 기타 회원으로 등록하는 것이 사이트의 기술상 현저히 지장이 있다고 판단되는 경우
						3. 회원가입계약의 성립시기는 회사의 승낙이 이용자에게 도달한 시점으로 합니다.
						4. 회원은 회원가입시 등록한 사항에 변경이 있는 경우 상당한 기간 이내에 회사에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.
						5. 회사는 회원에 대하여 『청소년 보호법』 등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p7">
							<dl class="fs15">
								<dt><strong>제 7조 회원 탈퇴 및 자격 상실 등</strong></dt>
								<dd class="pre">
						1. 회원은 회사에 언제든지 탈퇴를 요청할 수 있으며 회사는 즉시 회원탈퇴를 처리합니다. 단, 회원 탈퇴시 할인쿠폰 및 적립금 등 회원으로서의 모든 혜택을 소멸됩니다.
						2. 회원이 다음 각호의 사유에 해당하는 경우, 회사는 회원자격을 제한 및 정지시킬 수 있습니다.
							① 가입 신청시에 허위 내용을 등록하거나 타인의 정보를 도용한 경우
							② 사이트를 이용하여 구입한 재화 의 대금, 기타 사이트 이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
							③ 다른 사람의 사이트 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
							④ 사이트를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
						3. 회사가 회원 자격을 제한 · 정지 시킨 후, 동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 회사는 회원자격을 상실 시킬 수 있습니다.
						4. 회사가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p8">
							<dl class="fs15">
								<dt><strong>제 8조 회원에 대한 통지</strong></dt>
								<dd class="pre">
						1. 회사가 회원에 대한 통지를 하는 경우, 회원이 미리 약정하여 지정한 이메일 주소 나 SMS등으로 할 수 있습니다.
						2. 회사는 불특정다수 회원에 대한 통지의 경우 1주일이상 사이트 공지사항(고객센터)에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p9">
							<dl class="fs15">
								<dt><strong>제 9조 정보의 제공 및 광고의 게재</strong></dt>
								<dd class="pre">
						1. 회사는 이용자가 서비스 이용 중 필요하다고 인정되는 다양한 정보를 공지사항 또는 이메일이나 서신우편, SMS, 전화 등의 방법으로 이용자에게 제공할 수 있습니다. 다만, 이용자는 관련법에 따른 거래관련정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 이메일 등에 대해서 수신 거절을 할 수 있습니다.
						2. 회사는 서비스의 운영과 관련하여 서비스 화면, 홈페이지, 이메일 등에 광고를 게재할 수 있습니다. 광고가 게재된 이메일 등을 수신한 이용자는 수신 거절의 의사표시를 할 수 있으며, 회사는 수신거절을 위한 방법을 이용자에게 제공합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p10">
							<dl class="fs15">
								<dt><strong>제 10조 구매신청</strong></dt>
								<dd class="pre">
						1. 이용자는 사이트상에서 다음 또는 이와 유사한 방법에 의하여 예약을 신청하며, 회사는 이용자가 예약신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
							① 여행상품 등의 검색 및 선택
							② 예약자 성명, 주소, 전화번호, 이메일 주소(또는 이동전화번호) 등의 입력
							③ 약관내용, 청약철회권이 제한되는 서비스, 추가요금(인원추가, 조식추가, 자차보험료 등)등의 비용부담과 관련한 내용에 대한 확인
							④ 이 약관에 동의하고 위 다호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)
							⑤ 여행상품 등의 예약신청 및 이에 관한 확인 또는 회사의 확인에 대한 동의
							⑥ 결제방법의 선택
						2. 회사가 제3자에게 예약자의 개인정보를 제공·위탁할 필요가 있는 경우 실제 예약 신청 시 예약자의 동의를 받아야 하며, 회원가입 시 미리 포괄적으로 동의를 받지 않습니다. 이때 회사는 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용목적 및 보유·이용기간 등을 예약자에게 명시하여야 합니다. 다만, 『정보통신망이용촉진 및 정보보호 등에 관한 법률』 제25조 제1항에 의한 개인정보 취급 위탁의 경우 동 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p11">
							<dl class="fs15">
								<dt><strong>제 11조 계약의 성립</strong></dt>
								<dd class="pre">
						1. 회사는 제10조와 같은 예약신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
							① 신청 내용에 허위, 기재누락, 오기가 있는 경우
							② 기타 예약 신청에 승낙하는 것이 회사의 기술상 현저히 지장이 있다고 판단하는 경우
							③ 예약신청 고객이 제7조에 따른 이용자 자격이 제한, 정지 또는 상실된 이용자로 확인되었을 경우
							④ 예약신청 고객이 재판매 등의 목적으로 사이트의 거래질서를 방해한 경우
							⑤ 렌터카 대여자격조건에 합당치 않은 경우
								- 렌터카 공급사가 정한 대여조건에 해당하지 않는 경우(예. 운전경력 및 대여제한 나이 등)
								- 승용, 7~9인승 승합차 : 2종 보통 이상 운전면허를 취득하지 않은 경우 
								- 11인승 이상 승합차 :1종 보통 이상 운전면허를 취득하지 않은 경우	
						2. 회사의 승낙이 제13조 제1항의 수신확인통지형태로 이용자에게 도달한 시점에, 전화 예약의 경우에는 유선상 안내에 의하여 이용자에게 예약번호를 고지한 시점에, 각 계약이 성립한 것으로 봅니다.
						3. 회사의 승낙의 의사표시에는 이용자의 예약 신청에 대한 확인 및 판매가능여부, 예약신청의 정정, 취소 등에 관한 정보 등을 포함하여야 합니다.
						4. 계약이 성립한 후 회사가 제1항 각 호의 사유를 발견한 경우 회사는 즉시 계약을 취소할 수 있으며, 계약 취소 시 고객이 결제한 여행상품 대금은 즉시 환불처리 됩니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p12">
							<dl class="fs15">
								<dt><strong>제 12조 지급방법</strong></dt>
								<dd class="pre">
						1. 사이트에서 예약한 여행상품에 대한 대금지급방법은 다음 각호의 방법 중 가용한 방법으로 할 수 있습니다. 단, 회사는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다. 
							① 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체
							② 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
							③ 온라인 무통장입금
							④ 전자화폐에 의한 결제
							⑤ 마일리지 등 회사가 지급한 적립금에 의한 결제
							⑥ 회사와 계약을 맺었거나 회사가 인정한 상품권에 의한 결제 
							⑦ 기타 전자적 지급 방법에 의한 대금 지급 등
						2. 이용자가 예약 대금의 결제와 관련하여 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 전적으로 이용자가 부담합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p13">
							<dl class="fs15">
								<dt><strong>제 13조 수신확인통지, 구매신청 변경 및 취소</strong></dt>
								<dd class="pre">
						1. 회사는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.
						2. 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 예약신청 변경 및 취소를 요청할 수 있고, 회사는 예약 확정 전에 이용자의 요청이 있는 경우에는 지체없이 그 요청에 따라 처리하여야 합니다. (다만, 이미 대금을 지불한 경우에는 제17조의 청약철회 등에 관한 규정에 따릅니다.) </dd>
							</dl>
						</div>
						
						<br>

						<br>
						<div class="panel border" id="p16">
							<dl class="fs15">
								<dt><strong>제 14조 여행상품 등의 공급</strong></dt>
								<dd class="pre"> 
						1. 회사는 이용자와 여행상품 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약한 즉시 예약을 진행합니다.
						2. 회사는 이용자가 예약한 여행상품 등에 대해 예약 상품 및 이용조건, 상품별 이용방법, 취소 및 환불 규정 등을 명시합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p17">
							<dl class="fs15">
								<dt><strong>제 15조 환급</strong></dt>
								<dd class="pre">
						회사는 이용자가 예약 신청한 여행상품 등이 품절 등의 사유로 인도 또는 제공할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사전에 여행상품 등의 예약 대금을 받은 경우에는 대금을 받은 날로부터 2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.</dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p18">
							<dl class="fs15">
								<dt><strong>제 16조 청약철회 등</strong></dt>
								<dd class="pre">
						1. 회사의 여행상품 등의 예약 취소 및 환불 규정은 「전자상거래 등에서의 소비자보호에 관한 법률」 등 관련 법령을 준수합니다.
						2. 회사와 여행상품 예약에 관한 계약을 체결한 계약내용에 관하여 이용 요금에 대해 청약을 변경하거나 철회할 수 있습니다.
						3. 회원은 예약한 여행상품과 다른 여행상품이 제공될 경우 여행상품 예약 계약을 철회할 수 있습니다.
						4. 회사는 이용자가 여행상품 예약완료 후, 여행상품의 이상 또는 전산상의 오류 등의 사유로 여행상품을 제공할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사유발생일로부터 7일 이내에 계약해제 절차를 취합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p19">
							<dl class="fs15">
								<dt><strong>제 17조 청약철회 등의 효과</strong></dt>
								<dd class="pre">
						1. 회사는 이용자로부터 예약 취소 요청을 받은 경우 3영업일 이내에 이미 지급받은 여행상품 등의 대금을 환급합니다.
						2. 회사는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 여행상품 등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 여행상품 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.
						3. 이용자의 단순 변심에 의한 취소일 경우 환불 처리에 발생하는 수수료와 기타 제반 비용은 이용자가 부담합니다.
						4. 기타 이 약관 및 사이트의 이용안내에 규정되지 않은 취소 및 환불에 대한 사항에 대해서는 소비자분쟁해결 기준에서 정한 바에 따릅니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p20">
							<dl class="fs15">
								<dt><strong>제 18조 개인정보보호</strong></dt>
								<dd class="pre"> 
						1. 회사는 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다.
						2. 회사는 이용자가입시 예약계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 예약 계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.
						3. 회사는 이용자의 개인정보를 수집·이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다.
						4. 회사는 수집된 개인정보를 목적 외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.
						5. 회사가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보 관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은 자, 제공목적 및 제공할 정보의 내용) 등 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 에서 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.
						6. 이용자는 언제든지 회사가 가지고 있는 자신의 개인정보에 대해 열람 및 오류 정정을 요구할 수 있으며 회사는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 회사는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
						7. 회사는 개인정보 보호를 위하여 이용자의 개인정보를 취급하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.
						8. 회사 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.
						9. 회사는 개인정보의 수집·이용·제공에 관한 동의란을 미리 선택한 것으로 설정해 두지 않습니다. 또한 개인정보의 수집·이용·제공에 관한 동의 거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.
						10. 회사의 사이트(제2조 제1항에서 정한 범위 내) 이외의 링크된 사이트에서는 회사의 개인정보취급방침이 적용되지 않습니다. 링크된 사이트 및 여행상품 등을 제공하는 제3자의 개인정보 취급과 관련하여서는 해당 사이트 및 제3자의 개인정보취급방침을 확인할 책임이 이용자에게 있으며, 회사는 이에 대하여 책임을 부담하지 않습니다.
						11. 회사는 다음과 같은 경우에 법이 허용하는 범위 내에서 이용자의 개인정보를 제3자에게 제공할 수 있습니다. 
							- 수사기관이나 기타 정부기관으로부터 정보제공을 요청 받은 경우
							- 이용자가 법령을 위반하는 등의 부정행위를 확인하기 위해 필요한 경우
							- 대여사업자(숙소, 렌터카 등) 등에게 거래 및 여행상품 대여 등에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 제공하는 경우
							- 예약이 성사된 때에 그 이행을 위하여 필요한 경우와 예약이 종료된 이후에도 교환, 환불, 취소 등을 위하여 필요한 경우
							- 기타 법률에 의해 요구되는 경우 </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p21">
							<dl class="fs15">
								<dt><strong>제 19조 회사의 의무</strong></dt>
								<dd class="pre"> 
						1. 회사는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 여행상품 등을 제공하는데 최선을 다하여야 합니다.
						2. 회사는 이용자가 안전하게 서비스를 이용할 수 있도록 회원의 개인정보(신용정보 포함)보호를 위한 보안시스템을 갖추어야 하며, 개인정보취급방침을 공시하고 준수합니다.
						3. 회사는 이용자가 원하지 않는 영리목적의 광고성 이메일을 발송하지 않습니다.
						4. 회사는 이용자로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 통보하여야 합니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p22">
							<dl class="fs15">
								<dt><strong>제 20조 회원의 ID 및 비밀번호에 대한 의무</strong></dt>
								<dd class="pre"> 
						1. ID와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 소홀히 하여 발생한 모든 민 ? 형사상의 책임은 회원 자신에게 있습니다.
						2. 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
						3. 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 회사에 통보하고 회사의 안내가 있는 경우에는 그에 따라야 합니다.
						4. 회원이 제3항에 따른 통지를 하지 않거나 회사의 조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 회원에게 있습니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p23">
							<dl class="fs15">
								<dt><strong>제 21조 이용자의 의무</strong></dt>
								<dd class="pre"> 
						1. 관련법령, 이 약관의 규정, 이용안내 등 회사가 통지하는 사항을 준수하여야 하며, 기타 회사 업무에 방해되는 행위를 하여서는 안됩니다.
						2. 이용자는 다음 행위를 하여서는 안됩니다.
							① 신청 또는 변경시 허위 내용의 등록
							② 타인의 정보 도용
							③ 사이트에 게시된 정보의 변경
							④ 사이트가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
							⑤ 회사 기타 제3자의 저작권 등 지적재산권에 대한 침해
							⑥ 회사 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
							⑦ 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 사이트에 공개 또는 게시하는 행위
							⑧ 회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위 </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p24">
							<dl class="fs15">
								<dt><strong>제 22조 저작권의 귀속 및 이용제한</strong></dt>
								<dd class="pre"> 
						1. 회사가 작성한 저작물에 대한 저작권 기타 지적재산권은 회사에 귀속합니다.
						2. 회사는 서비스와 관련하여 회원에게 회사가 정한 이용조건에 따라 계정, ID, 콘텐츠 등을 이용할 수 있는 이용권만을 부여하며, 회원은 서비스를 이용함으로써 얻은 정보 중 회사에게 지식재산권이 귀속된 정보를 회사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리 목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p25">
							<dl class="fs15">
								<dt><strong>제 23조 이용자의 게시물</strong></dt>
								<dd class="pre"> 
						1. 이용자가 작성한 게시물에 대한 모든 권리 및 책임은 이를 게시한 이용자에게 있으며, 회사는 이용자가 게시하거나 등록하는 서비스의 내용물이 다음 각 항에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있고, 이에 대하여 회사는 어떠한 책임도 지지 않습니다. 
							- 다른 이용자 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
							- 공서양속에 위반되는 내용일 경우
							- 범죄적 행위에 결부된다고 인정되는 경우
							- 회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
							- 회원이 사이트와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우
							- 회사로부터 사전 승인 받지 아니한 상업광고, 판촉 내용을 게시하는 경우
							- 해당 여행상품과 관련 없는 내용인 경우
							- 정당한 사유 없이 당사의 영업을 방해하는 내용을 기재하는 경우
							- 기타 관련법령에 위반된다고 판단되는 경우
						2. 회원가입을 한 회원의 경우, 회원 탈퇴 이후 회원이 작성하였던 게시물 및 댓글 등은 삭제되지 않으며, 회원 탈퇴로 인하여 회원 정보가 삭제되어 작성자 본인을 확인할 수 없어 게시물 편집 및 삭제가 원천적으로 불가합니다. 회원이 작성한 게시물의 삭제를 원할 경우에는 회원 탈퇴 이전에 게시물을 모두 삭제하여야 합니다.
						3. 이용자가 작성한 이용후기는 해당 상품의 공급 사업자 및 유통 사업자에게 개인정보를 제외한 내용이 제공될 수 있으며, 해당 상품 판촉을 위해 사용될 수 있습니다. </dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p26">
							<dl class="fs15">
								<dt><strong>제 24조 회사의 면책</strong></dt>
								<dd class="pre"> 
						1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
						2. 회사 또는 여행상품 제공 사업자의 사정으로 인하여 여행상품을 공급하지 못할 수 있으며, 이 경우 회사는 이용자에게 대여 여행상품 공급이 어렵다는 점을 1회 이상 고지한 후 환불을 진행합니다.
						3. 회사는 이용자의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.
						4. 회사는 이용자간 또는 이용자와 제3자 상호간에 회사의 서비스를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.
						5. 회사는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.
						</dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p27">
							<dl class="fs15">
								<dt><strong>제 25조 분쟁해결</strong></dt>
								<dd class="pre"> 
						1. 회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치 · 운영합니다.
						2. 회사는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.
						3. 만약 본 약관의 환불 등 일부 규정이 대한민국의 강행법규와 상충되는 경우에는 그 강행법규에 따르기로 하고, 이로 인해 본 약관 중 일부 조항의 효력이 정지되는 경우에도 다른 조항의 효력에는 영향을 미치지 아니합니다.</dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p28">
							<dl class="fs15">
								<dt><strong>제 26조 재판권 및 준거법</strong></dt>
								<dd class="pre"> 
						1. 이 약관의 해석 및 회사와 이용자간의 분쟁에 대하여는 대한민국의 법률을 적용합니다.
						2. 이 약관 및 서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 발생하여 소송이 제기되는 경우에는 「민사소송법」에 따라 관할법원을 정합니다.
						</dd>
							</dl>
						</div>
						<br>
						<div class="panel border" id="p29">
							<dl class="fs15">
								<dt><strong>부칙</strong></dt>
								<dd class="pre"> 
						1. 이 약관은 2022년 10월 1일부터 시행합니다.
						2. 이 개정약관은 시행일 이후에 체결되는 계약에만 적용되고 그 이전에 체결된 계약에 대해서는 개정전의 약관조항을 그대로 적용합니다.
						시행일자: 2022년 10월 1일
						</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
			</div>
			</div>
			</div>
	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
	},// data
	methods : {
	}, // methods
	created : function() {
		var self = this;
	}// created
});
</script>