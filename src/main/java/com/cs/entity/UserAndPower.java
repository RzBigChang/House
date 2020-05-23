package com.cs.entity;

import java.io.Serializable;

public class UserAndPower implements Serializable{
	private int powerId;
	private int userId;
	public int getPowerId() {
		return powerId;
	}
	public int getUserId() {
		return userId;
	}
	public void setPowerId(int powerId) {
		this.powerId = powerId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
}
