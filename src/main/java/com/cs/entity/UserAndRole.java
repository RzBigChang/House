package com.cs.entity;

import java.io.Serializable;

public class UserAndRole implements Serializable{
	private int userId;
	private int roleId;
	public int getUserId() {
		return userId;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
}
