package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.User;


@Mapper
public interface UserMapper {
	int insertUser(HashMap<String, Object> map);
	// 중복 체크
	int userCnt(HashMap<String, Object> map);
	
	User selectUser(HashMap<String, Object> map);
	
	int updateUserCnt(HashMap<String, Object> map);
	
	int resetUserCnt(HashMap<String, Object> map);
	
	User userCheckId(HashMap<String, Object> map);
	
	List<User> userList(HashMap<String, Object> map);
	
	int statusCnt(HashMap<String, Object> map);
	
	int userBan(HashMap<String, Object> map);
	
	int userReset(HashMap<String, Object> map);
	
	int joinPoint(HashMap<String, Object> map);
	
	User searchId(HashMap<String, Object> map);
	
	User searchPwd(HashMap<String, Object> map);
	
	User selectPoint(HashMap<String, Object> map);
	//비번 변경
	int changePwd(HashMap<String, Object> map);
	//회원정보 수정
	int changeMyInfo(HashMap<String, Object> map);
	//회원정보수정 인풋에 글씨 넣기
	User selectInfo(HashMap<String, Object> map);
	//아이디 삭제(delyn = y)
	int deleteId(HashMap<String, Object> map);
}
