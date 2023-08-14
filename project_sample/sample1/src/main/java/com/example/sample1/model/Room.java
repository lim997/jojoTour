package com.example.sample1.model;

import lombok.Data;

@Data
public class Room {
	// room
	private int roomNo;
	private int stayNo;
	private String roomName;
	private int roomPrice;
	private String roomSales;
	private String peopleMax;
	private String roomInsertTime;
	private String roomUpdateTime;
	private int roomResidue;
	
	
	// code_type
	private String cKind;
	private String cName;
	private String cType;
}
