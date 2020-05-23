package com.cs.entity;

import java.io.Serializable;

public class UserAndHouse implements Serializable{
	private int userId;
	private int houseId;
	public int getUserId() {
		return userId;
	}
	public int getHouseId() {
		return houseId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
}
