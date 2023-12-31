package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Inquiry;
import com.example.sample1.model.MyPage;
import com.example.sample1.model.User;


@Mapper
public interface MyPageMapper {
	// 예약내역 전체 리스트 출력. 총금액, 사용완료, 사용전, 취소 COUNT
	List<MyPage> selectOrder(HashMap<String, Object> map);
	
	// 주문 번호에 따른 주문 정보 (주문할 때 입력한 핸드폰, 이메일 등)
	MyPage selectOrderUserInfo(HashMap<String, Object> map);
	
	// 주문자 정보 변경
	int updateUserInfo(HashMap<String, Object> map);
	
	// 주문 제품에 대한 요청 사항 수정
	int updateRequest(HashMap<String, Object> map);
	
	// 예약 취소 및 포인트 반환
	int cancelOrder(HashMap<String, Object> map);
	int returnUserPoint(HashMap<String, Object> map); // 사용자에게 포인트 반환
	int deductionPoint(HashMap<String, Object> map); // 주문내역에서 사용한 포인트 차감
	
	// 포인트 조회
	User selectPoint(HashMap<String, Object> map);
	
	int deleteReview(HashMap<String, Object> map);
	List<Inquiry> selectInquiry(HashMap<String, Object> map);
	int deleteInquiry(HashMap<String, Object> map);
	Inquiry selectInquiryInfo(HashMap<String, Object> map);
	// 나의 1:1문의 수정
	int editInquiry(HashMap<String, Object> map);
	
	// 찜목록!
	List<MyPage> selectJjim(HashMap<String, Object> map);
	
	// 찜 목록 중복 체크
	int checkJjim(HashMap<String, Object> map);
	
	int selectCnt(HashMap<String, Object> map);
	//체크한 찜목록 삭제
	int deleteJjimCheck(HashMap<String, Object> map);
	
	//리뷰
	List<MyPage> selectReview(HashMap<String, Object> map);
	int selectReviewCnt(HashMap<String, Object> map);
	
}
