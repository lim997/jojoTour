package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.User;

public interface UserService {
	HashMap<String, Object> userLogin(HashMap<String, Object> map);

	int searchUserCnt(HashMap<String, Object> map);
	
	List<User> listUser(HashMap<String, Object> map);
}