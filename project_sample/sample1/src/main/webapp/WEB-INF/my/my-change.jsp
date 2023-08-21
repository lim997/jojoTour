<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="/js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.change{
		background-color : buttonface;
	}
    .change::after{
        content: ">";
        position: absolute;
        color: rgb(28, 111, 235);
        font-size: 30px;
        top: 0;
        right: 0;
    }
	*{
		margin: 0;
		padding: 0;
	}
	#my_change_container{
		margin-top : 50px;
		float : left;
	}
	.change_box{
		margin: 20px;
		width: 640px;
	}
	.change_box button{
		cursor: pointer;
	}
	.change_table, .change_table td{
		border: 1px solid #ccc;
		border-collapse: collapse;
	}
	.change_table{
		margin: 30px 0px;
	}
	.change_table tr td{
		padding: 15px;
		box-sizing: border-box;
	}
	.change_table tr td:first-child{
		background-color: #FFA41B;
		color: #fff;
		font-weight: bold;
		padding-right: 30px;
		box-sizing: border-box;
	}
	.change_table tr td:last-child{
		padding-right: 100px;
		box-sizing: border-box;
	}
	.change_table tr td input{
		display: inline-block;
		height: 40px;
	}
	.change_email input{
		width: 300px;
	}
	.change_addr_title button{
		padding: 2px;
		background-color: #F86F03;
		color: #fff;

	}
	.change_addr input{
		width: 400px;
	}
	.change_del_btn{
		display: flex;
		justify-content: right;
		margin-right: 10px;
	}
	.change_del_btn button{
		padding: 5px;
		color: #fff;
		background-color: #505050;
		outline: none;
		border: none;
	}
	.change_update_btn{
		display: flex;
		justify-content: center;
	}
	.change_update_btn button{
		background-color: #F86F03;
		color: #fff;
		border: none;
		padding: 10px 35px;
		font-weight: bold;
		font-size: 16px;
	}

</style>
</head>
<body>
<jsp:include page="../header.jsp" flush="true"></jsp:include>
<jsp:include page="my-page.jsp" flush="true"></jsp:include>
	<div id="app">
		<div id="my_change_container">
			<div class="change_box">
				<h2>ȸ����������</h2>
				<table class="change_table">
					<tr>
						<td>���̵�</td>
						<td>{{user.userId}}</td>
					</tr>
					<tr>
						<td>�̸�</td>
						<td><input type="text" value="user.name" v-model="user.name"></td>
					</tr>
					<tr>
						<td>�г���</td>
						<td><input type="text" value="user.nickName" v-model="user.nickName"></td>
					</tr>
					<tr>
						<td>�������</td>
						<td><input type="text" value="user.birth" v-model="user.birth" placeholder="8�ڸ� �Է�"></td>
					</tr>
					<tr>
						<td>����ó</td>
						<td><input type="text" value="user.phone" v-model="user.phone" placeholder="-���� �Է��ϼ���."></td>
					</tr>
					<tr>
						<td>�̸���</td>
						<td class="change_email"><input type="text" value="user.email" v-model="user.email"></td>
					</tr>
					<tr>
						<td class="change_addr_title">�ּ� <button @click="fnSearchAddr">�˻�</button></td>
						<td class="change_addr"><input disabled type="text" value="user.addr" v-model="user.addr"></td>
					</tr>
					<tr>
						<td>������ȣ</td>
						<td><input disabled type="text" value="user.zipNo" v-model="user.zipNo"></td>
					</tr>
					<tr>
						<td>�� �ּ�</td>
						<td><input type="text" value="user.addrDetail" v-model="user.addrDetail"></td>
					</tr>
					
				</table>
				<div class="change_del_btn"><button @click="fnDelYn">ȸ��Ż��</button></div>
				<div class="change_update_btn"><button @click="fnMyChange">�����Ϸ�</button></div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	app.fnResult(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo);
} 
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		user : {
			userId : "${sessionId}",
			name : "${sessionName}",
			nickName :"${sessionNickname}",
			birth : "${sessionBirth}",
			phone : "${sessionPhone}",
			email : "${sessionEmail}",
			addr : "${sessionAddr}",
			addrDetail : "${sessionAddrDetail}",
			zipNo : "${sessionZipNo}"
		},
		delYn : ""
	},// data
	methods : {
		fnMyChange : function(){
			var self = this;
			if(self.user.birth.length < 8|| self.user.birth.length > 10){
				alert("��������� ��Ȯ�ϰ� �ۼ����ּ���.");
				return;
			}
			if(self.user.phone.length > 11){
				alert("�ڵ�����ȣ���� - ���� �Է��ϼ���.");
				return;
			}
			var param = self.user;
			$.ajax({
                url : "/my/change.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) {
                	console.log(data);
  					alert(self.user.userId+"���� ȸ������ ������ �Ϸ�Ǿ����ϴ�.");
					location.href="change.do";
                }
            }); 
		},

		fnSearchAddr : function (){
			var self = this;
    		var option = "width = 500, height = 500, top = 100, left = 200, location = no"
    		window.open("../addr.do", "test", option);
		},
		fnResult : function(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
    		var self = this;
    		self.user.addr = roadAddrPart1;
    		self.user.addrDetail = addrDetail;
    		self.user.zipNo = zipNo;
    	},
    	fnDelYn : function(){
    		var self = this;
			if(!confirm("���� Ż���Ͻðڽ��ϱ�?")){
    			return;
    		}
			var param = {userId : self.user.userId};
			$.ajax({
                url : "/delYn.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) {
  					alert("Ż��Ǿ����ϴ�.");
  					location.href="../main.do";
                }
            });
    	}
		
	}, // methods
	created : function() {
		var self = this;
		/* self.fnGetList();  */
	}// created
});
</script>