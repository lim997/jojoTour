package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.RoomMapper;
import com.example.sample1.model.Room;

@Service
public class RoomServiceImpl implements RoomService {
	@Autowired
	RoomMapper roomMapper;

	@Override
	public List<Room> searchRoomList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return roomMapper.selectRoomList(map);
	}

	@Override
	public int removeRoom(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return roomMapper.deleteRoom(map);
	}

	@Override
	public Room searchRoomInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return roomMapper.selectRoomInfo(map);
	}
}
