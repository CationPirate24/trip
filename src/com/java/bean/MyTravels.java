package com.java.bean;

public class MyTravels {
	private String id;
	private String author;
	private String name;
	private String time;
	private String days;
	private String describe;
	private String picture_id;
	private String address;
	private String way;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(String picture_id) {
		this.picture_id = picture_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getWay() {
		return way;
	}
	public void setWay(String way) {
		this.way = way;
	}
	@Override
	public String toString() {
		return "MyTravels [id=" + id + ", author=" + author + ", name=" + name
				+ ", time=" + time + ", days=" + days + ", describe="
				+ describe + ", picture_id=" + picture_id + ", address="
				+ address + ", way=" + way + "]";
	}
	
	
}
