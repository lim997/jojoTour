package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Product;

public interface LeisureService {
	// 레저 정보 리스트 출력
	List<Product> searchLeisureList(HashMap<String, Object> map);
}
