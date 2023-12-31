package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Inquiry;

public interface InquiryService {
	
	HashMap<String, Object> searchInquiryList(HashMap<String, Object> map);
	// 문의게시판 글쓰기
	int addInquiry(HashMap<String, Object> map);
	
	// iNo 최댓값 찾기(유저/호스트가 작성한)
	HashMap<String, Object> maxINo(HashMap<String, Object> map);
	
	// 문의게시판 보기
	HashMap<String, Object> searchInquiryInfo(HashMap<String, Object> map);
	
	// 문의게시판 삭제
	int removeInquiry(HashMap<String, Object> map);
	
	// 문의게시판 수정
	int editInquiry(HashMap<String, Object> map);
	
	//체크박스한 문의게시판 삭제
	int removeInquiryCheck(HashMap<String, Object> map);
	
	// 문의게시판 답변
	int replyInquiry(HashMap<String, Object> map);
	
	// 관리자가 해당 게시글에 답변을 남기면, 기존 게시글의 답변 상태를 변경
	int editAnswer(HashMap<String, Object> map);
}
