package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.MyPage;
import com.example.sample1.model.Review;

@Mapper
public interface ReviewMapper {
	// 리뷰리스트
	List<Review> selectReviewList(HashMap<String, Object> map);
	int selectReviewCnt(HashMap<String, Object> map);
	//리뷰 상세보기
	Review selectReview(HashMap<String, Object> map);
	
	// 리뷰 조회수 증가
	int rHitsPlus(HashMap<String, Object> map);
	// 리뷰수정창
	int editReview(HashMap<String, Object> map);
	int deleteReview(HashMap<String, Object> map);
	
	int insertReview(HashMap<String, Object> map);
}
