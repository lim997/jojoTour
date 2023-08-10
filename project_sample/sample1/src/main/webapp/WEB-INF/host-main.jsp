<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="../js/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<meta charset="EUC-KR">
<title>龋胶飘 力前 包府 其捞瘤</title>
<style>

</style>
</head>
<body>
	<div id="app">
		<input type="button" value="槛家包府" @click="fnStayPage"/>
		<input type="button" value="饭历包府" @click="fnLeisurePage"/>
		<input type="button" value="坊飘墨包府" @click="fnRentcarPage"/>
	</div>
</body>
</html>
<script>
var app = new Vue({
	el : '#app',
	data : {
	},// data
	methods : {
		fnStayPage : function(){
			location.href = "stay.do";
		},
		fnLeisurePage : function(){
			location.href = "leisure.do";
		},
		fnRentcarPage : function(){
			location.href = "rentcar.do";
		}
	}, // methods
	created : function() {
	}// created
});
</script>