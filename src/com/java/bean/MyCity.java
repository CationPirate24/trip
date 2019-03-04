package com.java.bean;

public class MyCity {

	private String id;
	private String name;
	private String picture_id;
	private String describe;
	private String map;
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
	public String getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(String pictureId) {
		picture_id = pictureId;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getMap() {
		return map;
	}
	public void setMap(String map) {
		this.map = map;
	}
	@Override
	public String toString() {
		return "MyCity [describe=" + describe + ", id=" + id + ", map=" + map
				+ ", name=" + name + ", picture_id=" + picture_id + "]";
	}
	
	
}
