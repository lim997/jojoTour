<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="EUC-KR">
<link href="../../css/basic/btn-style.css" rel="stylesheet"/>
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	body {
	font-family: 'Jeju Gothic', sans-serif;
	font-weight: lighter;
	}
	#pwd_search_container{
		display: flex;
		align-items: center;
		justify-content: center;
		height: 100vh;
		margin-top: -100px;
	}
	.pwd_search_wrap h2{
		text-align: center;
		width: 100%;
		margin-bottom: 20px;
	}
	.pwd_search_wrap input{
       width: 300px;
	    padding: 10px 23px;
	    border-radius: 5px;
	    border: 1px solid;
	    outline: none;
	    height: 20px;
	    font-family: 'Jeju Gothic', sans-serif;
	}
	.pwd_search_input input{
		margin-bottom: 20px;
		
	}
	.pwd_search_btn{
		display: flex;
		justify-content: center;
	}
	.pwd_search_btn button{
		 width: 120px;
        height: 30px;
        border-radius: 6px;
        outline: none;
        border: none;
        cursor: pointer;
        color: white;
        font-family: 'Jeju Gothic', sans-serif;
        cursor: pointer;
	    background-color: #445069;
	}
	.pwd_search_btn button:hover{
		background: #213555;
	}
	.pwd_search_alert{
		margin : 20px;
	}

</style>
</head>
<body>
	<jsp:include page="../header.jsp" flush="true"></jsp:include>
	<div id="app">
		<div id="pwd_search_container">
			<div class="pwd_search_wrap">
				<h2>비밀번호 찾기</h2>
				<div v-if="messagePwd == '' || messagePwd == undefined">
					<div class="pwd_search_input"><input type="text" placeholder="아이디를 입력하세요." v-model="userId" value="userId"></div>
					<div class="pwd_search_input"><input type="text" placeholder="핸드폰 번호를 입력하세요." v-model="phone" @keyup.enter="fnPwdSearch"></div>
					<div class="pwd_search_btn"><button @click="fnPwdSearch">비밀번호 찾기</button></div>
				</div>
				<div v-else>
					<div class="pwd_search_alert">
						<div>귀하의 비밀번호는 {{messagePwd}} 입니다.</div>
						<div>변경하시겠습니까?</div>
					</div>
					<div class="pwd_search_btn"><button @click="fnPwdChange">변경하러 가기</button></div>
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
		userId : "${map.userId}",
		phone : "",
		messageId : "",
		messagePwd : ""
	},// data
	methods : {
		fnPwdSearch : function(){
			var self = this;
			var param = {userId : self.userId, phone : self.phone};
			if(self.userId == ''){
				alert("아이디를 입력하세요.");
				return;
			}
			if(self.phone == ''){
				alert("핸드폰 번호를 입력하세요.");
				return;
			}
			$.ajax({
                url : "/pwd/search.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) { 
                	self.messageId = data.messageId;
                	self.messagePwd = data.messagePwd;
                	self.confirm = data.confirm;
                	console.log(self.messageId);
                	alert(self.confirm);
                }
            }); 
		},
		fnPwdChange : function(){
			var self = this;
			console.log(self.userId);
			$.pageChange("/pwd/change.do", {userId : self.userId});
		}
		
	}, // methods
	created : function() {
		var self = this;
	}// created
});
</script>