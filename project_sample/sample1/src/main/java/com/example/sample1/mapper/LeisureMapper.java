package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Product;

@Mapper
public interface LeisureMapper {
	// 레저 정보 출력
	List<Product> selectLeisureList(HashMap<String, Object> map);
	
	// 레저 정보 수정
	
}
