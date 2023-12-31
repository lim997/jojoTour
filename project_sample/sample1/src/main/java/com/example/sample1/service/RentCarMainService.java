package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.RentCar;
import com.example.sample1.model.RentCarImg;

public interface RentCarMainService {
	HashMap<String, Object> searchCarList(HashMap<String, Object> map);
	HashMap<String, Object> searchCarKind(HashMap<String, Object> map);
	//렌트카 상세페이지
	RentCar searchRentCarInfo(HashMap<String, Object> map);
	//렌트카 이미지출력
	List<RentCarImg> searchCarImgList(HashMap<String, Object> map);
	//렌트카 상세 이미지 출력
	RentCarImg searchCarDetailImg(HashMap<String, Object> map);
	//렌트카 검색
	HashMap<String, Object> searchCarSearchList(HashMap<String, Object> map);
	//찜목록추가
	int addJjim(HashMap<String, Object> map);
	//찜목록해제
	int delJjim(HashMap<String, Object> map);
	//렌터카 인기순
	HashMap<String, Object> searchFavoriteList(HashMap<String, Object> map);
	//렌터카 장바구니
	int addRentCart(HashMap<String, Object> map);
}
