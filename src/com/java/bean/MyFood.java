package com.java.bean;

public class MyFood {
	private String id;
	private String name;
	private String price;
	private String describe;
	
	private String grade;
	private String pictureId;
	private String type;
	private String address;
	private String mapId;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public String getPictureId() {
		return pictureId;
	}
	public void setPictureId(String pictureId) {
		this.pictureId = pictureId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getMapId() {
		return mapId;
	}
	public void setMapId(String mapId) {
		this.mapId = mapId;
	}
	@Override
	public String toString() {
		return "MyFood [address=" + address + ", describe=" + describe
				+ ", grade=" + grade + ", id=" + id + ", name=" + name
				+ ", pictureId=" + pictureId + ", price=" + price + ", type="
				+ type + "]";
	}
	
	
}
	
	
	
	
	
	

