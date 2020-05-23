package com.cs.entity;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable{
	private int id;
	private String userName;
	private String userLoginName;
	private String userPassword;
	private String userSalt;
	private int userType;
	private int userNumber;
	private List<House> houseList;
	

	public List<House> getHouseList() {
		return houseList;
	}
	public void setHouseList(List<House> houseList) {
		this.houseList = houseList;
	}
	public int getId() {
		return id;
	}
	public String getUserName() {
		return userName;
	}
	public String getUserLoginName() {
		return userLoginName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public String getUserSalt() {
		return userSalt;
	}
	public int getUserType() {
		return userType;
	}
	public int getUserNumber() {
		return userNumber;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setUserLoginName(String userLoginName) {
		this.userLoginName = userLoginName;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public void setUserSalt(String userSalt) {
		this.userSalt = userSalt;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	
}
