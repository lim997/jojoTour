<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>레저 관리 페이지</title>
<script src="https://unpkg.com/vuejs-paginate@latest"></script>
<script src="https://unpkg.com/vuejs-paginate@0.9.0"></script>
<link href="../../css/basic/paging-style.css" rel="stylesheet"/>
<link href="../../css/basic/btn-style.css" rel="stylesheet"/>
<link href="../css/basic/custom-table-style.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	body {
		font-family: 'Jeju Gothic', sans-serif;
	}
	.custom-table{
		margin-top: 50px;
	}
	.container {
		height: 1000px;
	}
	.btnbtn{
		text-align: center;
		margin-bottom:50px;
	}
	.pagination {
	    display: flex;
	    justify-content: center; 
	    margin-top: 20px; 
	}

	.page-item {
	    margin: 0 5px; 
	}
	h3{
		margin-top: 100px;
		margin-bottom: 0px;
		text-align: center;
	}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" flush="true"></jsp:include>
	<div id="app">
		<div class="container">
		<h3>레저 등록</h3>
			<table class=" table custom-table table-striped table-bordered ">
				<tr>
					<th>선택</th>
					<th>No.</th>
					<th>레저명</th>
					<th>분류</th>
					<th>분야</th>
					<th>레저금액</th>
					<th>판매수량</th>
					<th>등록일</th>
					<th>패키지신청</th>
				</tr>
				
				<tr v-for="(item, index) in list">
					<td>
						<input v-if="index==indexNo" type="radio" :value="item.leisureNo" @input="changeLeisureNo(item, index)" name="leisureNo" checked="checked">
						<input v-else type="radio" :value="item.leisureNo" @input="changeLeisureNo(item, index)" name="leisureNo">
					</td>
					<td>{{item.leisureNo}}</td>
					<td>{{item.leisureName}}</td>
					<td>
						<span v-if='item.cType=="WATER"'>수상</span>
						<span v-else-if='item.cType=="GROUND"'>지상</span>
					</td>
					<td>{{item.cName}}</td>
					<td>{{item.leisurePrice * item.leisureSales}}원</td>
					<td>{{item.lResidue}}</td>
					<td>{{item.lInsertTime}}</td>
					<td>
						<span v-if="item.state=='A'">
							<div>신청이 완료되었습니다.</div>
							<div>취소는 1:1 문의를 남겨주세요.</div>
						</span>
						<button v-else-if="item.state=='D'" @click="fnPackDel(item.leisureNo)" class="btn-red">취소</button>
						<button v-else @click="fnPackAdd(item.leisureNo)" class="btn-dark">신청</button>
					</td>
				</tr>
			</table>
			<div class="pagination">
			  <paginate
			    :page-count="pageCount"
			    :page-range="3"
			    :margin-pages="2"
			    :click-handler="fnSearch"
			    :prev-text="'<'"
			    :next-text="'>'"
			    :container-class="'pagination'"
			    :page-class="'page-item'">
			  </paginate>
			</div>
			<div class="btnbtn">
				<span><button @click="fnAdd" class="btn-dark">상품등록</button></span>
				<span><button @click="fnView" class="btn-dark">상세정보열람</button></span>
				<span><button @click="fnRemove" class="btn-red">삭제</button></span>
				<span><button @click="fnBack" class="btn-dark">뒤로가기</button></span>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" flush="true"></jsp:include>
</body>
</html>
<script>
Vue.component('paginate', VuejsPaginate)
var app = new Vue({
	el : '#app',
	data : {
		uId : "${sessionId}",
		status : "${sessionStatus}",
		list : [],
		leisureNo : "",
		lCnt : "",
		selectPage: 1,
		pageCount: 1,
		cnt : 0,
		indexNo : 0
	},// data
	methods : {
		fnGetList : function(){
			var self = this;
			var startNum = ((self.selectPage-1) * 10);
    		var lastNum = 10;
			var param = {uId : self.uId, startNum : startNum, lastNum : lastNum};
			console.log(param);
			$.ajax({
                url : "leisure.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) {
                	self.list = data.leisureList;
                	console.log(data.leisureList);
                	self.cnt = data.cnt;
            		self.pageCount = Math.ceil(self.cnt / 10);
                	if(data.leisureList.length > 0){
                		self.leisureNo = self.list[0].leisureNo; //리스트의 첫 번째 값을 디폴트로 체크하고, 해당 pk 값을 받아온다.
                		self.lCnt = self.list[0].lCnt;
                	}
                }
            }); 
		},
		fnSearch : function(pageNum){
			var self = this;
			self.selectPage = pageNum;
			var startNum = ((pageNum-1) * 10);
			var lastNum = 10;
			var param = {uId : self.uId, startNum : startNum, lastNum : lastNum};
			$.ajax({
				url : "leisure.dox",
				dataType : "json",
				type : "POST",
				data : param,
				success : function(data) {
					self.list = data.leisureList;
					self.cnt = data.cnt;
					self.pageCount = Math.ceil(self.cnt / 10);
					
					// 저장된 인덱스 값으로 라디오 버튼 선택
		            if (self.indexNo >= 0 && self.list[self.indexNo]) {
		                self.leisureNo = self.list[self.indexNo].leisureNo;
		            } else if (self.list.length -1 < self.indexNo) {
		            	//마지막 리스트에 10개 미만의 값이 들어있다면 최상단 값을 선택
		                self.leisureNo = self.list[0].leisureNo; 
		            }
				}
			});
		},
		fnAdd : function(){
			location.href = "leisure/edit.do"; 
        },
        fnView : function(){
        	var self = this;
			$.pageChange("leisure/view.do", {leisureNo : self.leisureNo, lCnt : self.lCnt}); 
        },
		fnRemove : function(){
            var self = this;
	        if(!confirm("해당 레저를 삭제하시겠습니까?")){
	        	alert("취소되었습니다.");
	          	return;
	        }
	        
	        //해당 레저가 패키지 신청이 되어있다면 삭제 불가능
	        if(self.lCnt != 0){
	        	alert("패키지 신청한 레저의 정보는 삭제가 불가능합니다.");
	        	return;
	        }
	        
			var param = {leisureNo : self.leisureNo};
            $.ajax({
                url : "leisure/leisureRemove.dox",
                dataType:"json",	
                type : "POST", 
                data : param,
                success : function(data) {
                	alert("해당 레저의 정보가 삭제되었습니다.");
                	self.fnGetList();
                }
            });
        },
        changeLeisureNo : function(item, index){ //라디오박스를 선택할 때 마다 pk 값 변경
        	var self = this;
        	self.leisureNo = item.leisureNo;
        	self.lCnt = item.lCnt;
        	self.indexNo = index; // 인덱스 값을 업데이트
        },
        fnPackAdd : function(leisureNo){
			var self = this;
			console.log(leisureNo);
			if(!confirm("패키지를 신청하시겠습니까?")){
	        	alert("신청이 취소되었습니다.");
	          	return;
	        }
			var param = {leisureNo : leisureNo};
			$.ajax({
                url : "leisurePackAdd.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) {
                	alert("패키지 신청이 완료되었습니다.");
                	self.fnGetList();
                }
			});
        },
        fnPackDel : function(leisureNo){
			var self = this;
			if(!confirm("패키지 신청을 취소하시겠습니까?")){
	        	alert("변경이 취소되었습니다.");
	          	return;
	        }
			var param = {leisureNo : leisureNo};
			$.ajax({
                url : "leisurePackDel.dox",
                dataType:"json",	
                type : "POST",
                data : param,
                success : function(data) {
                	alert("패키지 신청이 취소되었습니다.");
                	self.fnGetList();
                }
			});
        },
        fnBack : function(){
        	location.href = "main.do"; 
		}
	}, // methods
	created : function() {
		var self = this;
		if(self.status !== "H"){
			alert("호스트만 접근할 수 있습니다.");
			location.href="../main.do";
		} else {
			self.fnGetList();
		}
	}// created
});
</script>