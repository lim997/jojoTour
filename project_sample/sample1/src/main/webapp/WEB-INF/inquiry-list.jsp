<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
<style>
	table{
		border : 1px solid black;
		border-collapse: collapse;
		text-align : center;
	}
	th, td {
		border : 1px solid black;
		padding : 5px 10px;
	}
</style>
</style>
</head>
<body>
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div id="app">
		<h2>1:1 ���� �Խ���</h2>
		<table>
			<tr>
				<th v-if="status == 'A'">����</th>
				<th>No.</th>
				<th>����</th>
				<th>�ۼ���</th>
				<th>��ȸ��</th>
				<th>��� ��¥</th>
			</tr>
			<tr v-for="(item, index) in list">
				<th v-if="status == 'A'"><input type="checkbox" v-model="selectItem" :value="item.iNo"></th>
				<th>{{item.iNo}}</th>
				<th>
					<a @click="handleTitleClick(item.uId, item.iNo, item.iTitle)" href="javascript:;">{{ item.iTitle }}</a>
				</th>
				<th>{{item.uId}}</th>
				<th>{{item.iHits}}</th>
				<th>{{item.iWriteTime}}</th>	
			</tr>
		</table>
	<div v-if="status == 'A'"><button @click="fnRemove">����</button>
		<button @click="fnACheck">��ü����</button>
		<button @click="fnNCheck">��ü����</button>
	</div>
	<div v-if="status == 'A'"><button @click="fnMove">�۾���</button></div>
	<div v-if="status == 'U'|| status == 'H'"><button @click="fnMove">�����ϱ�</button></div>
	</div>
	
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		status : "${sessionStatus}",
		selectItem : [],
		uId : "${sessionId}",

		
	},// data
	methods : {
		fnGetList : function(){
			var self = this;
			var param = {};
			console.log(param);
			$.ajax({
                url : "/inquiry/list.dox",
                dataType:"json",
                type : "POST",
                data : param,
                success : function(data) { 
                	self.list = data.inquiryList;
                	console.log(self.list);
                }
            }); 
		},

		fnRemove : function(){
			var self = this;
        	if(!confirm("���� �����Ͻðڽ��ϱ�?")){
        		return;
        	}
        	var noList = JSON.stringify(self.selectItem);
			var param = {selectItem : noList};
            $.ajax({
                url : "removeInquiryCheck.dox",
                dataType:"json",	
                type : "POST", 
                data : param,
                success : function(data) { 
                	self.fnGetList();
                	self.selectItem = [];
                	alert("�����Ǿ����ϴ�.");

                }
            }); 
		},
		fnMove : function(){
	        	location.href = "add.do";
		},  
		handleTitleClick(uId, iNo, iTitle) {
		    var self = this;
		    if ((self.status === 'A' || self.uId === uId) || iTitle !== '<���>') {
		        $.pageChange("view.do", { iNo: iNo });
		    } else {
		        alert("���� ����");
		    }
		},
		fnNCheck : function(){
			var self = this;
			self.selectItem = [];
		},
		fnACheck : function(){
			var self = this;
			self.selectItem = [];
			for(var i=0; i<self.list.length; i++){
				self.selectItem.push(self.list[i].iNo);
			}
		}
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList();
	}// created
});
</script>