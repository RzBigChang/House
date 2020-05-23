package com.cs.entity;

import java.io.Serializable;

public class Power implements Serializable{
	private int id;
	private String powerName;
	private String reamrk;
	private int type;
	private String url;
	private int partnetId;
	public String getPowerName() {
		return powerName;
	}
	public String getReamrk() {
		return reamrk;
	}
	public int getType() {
		return type;
	}
	public String getUrl() {
		return url;
	}
	public int getPartnetId() {
		return partnetId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setPowerName(String powerName) {
		this.powerName = powerName;
	}
	public void setReamrk(String reamrk) {
		this.reamrk = reamrk;
	}
	public void setType(int type) {
		this.type = type;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public void setPartnetId(int partnetId) {
		this.partnetId = partnetId;
	}
}
