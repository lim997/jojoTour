<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<div id="app">
<div>
		<input type="checkbox" v-model="acessCode">��� ����
		<br>
		<input type="checkbox" v-model="acessCode">����
		<br>
		<input type="checkbox" v-model="acessCode">����
		<br>
		<input type="checkbox" v-model="acessCode">����
	</div>
	<div>
		<button @click="fnUserAcess">Ȯ��</button>
	</div>
</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		userId : "",
		pwd : ""
	},// data
	methods : {
		fnLogin : function(){
			var self = this;
			var param = {userId : self.userId, pwd : self.pwd};
			$.ajax({
                url : "login.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) { 
                	if(data.success){
                		alert(data.message);
                		location.href="main.do";
                	} else {
                		alert(data.message);
                	}
                	
                }
            }); 
		},
		fnUserAcess : function(){
			location.href='userjoin.do';
		}
	}, // methods
	created : function() {
		var self = this;
	//	self.fnGetList();
	}// created
});
</script>