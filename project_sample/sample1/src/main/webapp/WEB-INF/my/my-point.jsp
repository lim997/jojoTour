<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/my/my-style.css" rel="stylesheet"/>
<meta charset="EUC-KR">
<title>포인트 조회</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}
	.point{
		background-color : buttonface;
	}
    .point::after{
        content: ">";
        position: absolute;
        color: rgb(28, 111, 235);
        font-size: 30px;
        top: 0;
        right: 0;
    }
	#my_point_container{
		display: flex;
		margin-top : 50px;
		justify-content: center;
		margin-bottom: 329px;
	}
	.point_box{
		width: 500px;
		height: 80px;
		background-color: rgb(69 137 255 / 30%);
		padding: 30px;
		border-radius: 30px;
		color:  #213555;
		font-weight: bold;
		position: relative;
	}
	.point_box p{
		margin-bottom: 10px;
	}
	.point_box a{
		display: block;
		position: absolute;
		top: 20px;
		right: 20px;
		background-color: #213555;
		color: #fff;
		width: 20px;
		height: 20px;
		text-align: center;
		border-radius: 100%;
		text-decoration: none;
	}
	.active{
		width: 100%;
		height: 100vh;
		background-color: rgb(31, 31, 31, 0.4);
		position: absolute;
		top: 0;
		left: 0;
		display: none;
		z-index : 99;
	}
	.active_box{
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;

	}
	.active_inbox{
		width: 270px;
		padding: 20px;
		background-color: #fff;
		border-radius: 20px;
		line-height: 23px;
		font-size: 14px;
	}
	.active_inbox h3{
		margin-bottom: 20px;
	}
	.active_inbox button{
		width: 100%;
		height: 40px;
        background-color: #213555;
		font-weight: bold;
		font-size: 20px;
		color: #fff;
		cursor: pointer;
		border: none;
		border-radius: 20px;
		margin-top : 20px;
	}
</style>
</head>
<body>
<jsp:include page="../header.jsp" flush="true"></jsp:include>
<jsp:include page="my-page.jsp" flush="true"></jsp:include>
	<div id="app">
		<div id="my_point_container">
			<div class="point_wrap">
				<div class="coreTxt"><span class="bar">ㅣ</span> 포인트</div>
				<div class="point_box">
					<p>내 포인트</p>
					<h3>
						<span v-if="point != null">{{point.point}}</span>
						<span v-else>0</span>
						 P
					</h3>
					<a class="point_info" href="#javascript:;">i</a>
				</div>
			</div>
		</div>
	</div>
	<div class="active">
		<div class="active_box">
			<div class="active_inbox">
				<h3>포인트 이용 안내</h3>
				<p>
					포인트 사용 기간은 적립 일에 따라 각각 달라요.<br>
					사용 기간 내에 쓰지 않은 포인트는 자동으로 소멸돼요.<br>
					포인트 사용 기간 내에 포인트를 취소한다면 그대로 돌려 드려요.<br>
					단, 사용 기간은 처음 지급한 날과 같아요.<br>
					포인트 사용 기간 만료 후에 포인트를 취소한다면 자동으로 소멸돼요.<br>
				</p>
				<button class="active_remove">확인</button>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" flush="true"></jsp:include>
</body>
</html>
<script src="../js/jquery-1.12.4.js"></script>
<script>
var app = new Vue({
	el : '#app',
	data : {
		list : [],
		userId : "${sessionId}",
		point : ""
	},// data
	methods : {
		fnGetList : function(){
			var self = this;
			var param = {userId : self.userId};
			$.ajax({
                url : "/my/userPoint.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) { 
                	self.point = data.point;
                	console.log(self.point);
                }
            }); 
		}
		
	}, // methods
	created : function() {
		var self = this;
		self.fnGetList();
	}// created
});
$(document).ready(function(){
	$('.point_info').click(function(){
		$('.active').fadeIn();
	});
	$('.active_remove').click(function(){
		$('.active').fadeOut();
	})
})
</script>