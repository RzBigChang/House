package com.cs.entity;

import java.io.Serializable;

public class House implements Serializable{
	private int id;
	private String houseName;
	private String houseVolume;
	private String houseCourtroom;
	private String houseAddress;
	private int houseRentOrSell;
	private String houseRent;
	private String houseFloor;
	private int houseHeat;
	private String housePhoto;
	private String houseType;
	private String houseAdvantage;
	private int houseExamine;
	
	private User userHouse;
	public User getUserHouse() {
		return userHouse;
	}
	public void setUserHouse(User userHouse) {
		this.userHouse = userHouse;
	}
	public int getId() {
		return id;
	}
	public String getHouseName() {
		return houseName;
	}
	public String getHouseVolume() {
		return houseVolume;
	}
	public String getHouseCourtroom() {
		return houseCourtroom;
	}
	public String getHouseAddress() {
		return houseAddress;
	}
	public int getHouseRentOrSell() {
		return houseRentOrSell;
	}
	public String getHouseRent() {
		return houseRent;
	}
	public String getHouseFloor() {
		return houseFloor;
	}
	public int getHouseHeat() {
		return houseHeat;
	}
	public String getHousePhoto() {
		return housePhoto;
	}
	public String getHouseType() {
		return houseType;
	}
	public String getHouseAdvantage() {
		return houseAdvantage;
	}
	public int getHouseExamine() {
		return houseExamine;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}
	public void setHouseVolume(String houseVolume) {
		this.houseVolume = houseVolume;
	}
	public void setHouseCourtroom(String houseCourtroom) {
		this.houseCourtroom = houseCourtroom;
	}
	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}
	public void setHouseRentOrSell(int houseRentOrSell) {
		this.houseRentOrSell = houseRentOrSell;
	}
	public void setHouseRent(String houseRent) {
		this.houseRent = houseRent;
	}
	public void setHouseFloor(String houseFloor) {
		this.houseFloor = houseFloor;
	}
	public void setHouseHeat(int houseHeat) {
		this.houseHeat = houseHeat;
	}
	public void setHousePhoto(String housePhoto) {
		this.housePhoto = housePhoto;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public void setHouseAdvantage(String houseAdvantage) {
		this.houseAdvantage = houseAdvantage;
	}
	public void setHouseExamine(int houseExamine) {
		this.houseExamine = houseExamine;
	}

}
