package com.java.vo;

public class HotelVo {
	private String id;
	private String name;
	private String	price;
	private String begin_time;
	private String end_time;
	private String total;
	private String describe;
	private String count;
	private String picture_id;
	private String map_id;
	private String grade;
	private String type;
	private String my_city_id;
	private String typeVo;
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
	public String getBegin_time() {
		return begin_time;
	}
	public void setBegin_time(String begin_time) {
		this.begin_time = begin_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(String picture_id) {
		this.picture_id = picture_id;
	}
	public String getMap_id() {
		return map_id;
	}
	public void setMap_id(String map_id) {
		this.map_id = map_id;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMy_city_id() {
		return my_city_id;
	}
	public void setMy_city_id(String my_city_id) {
		this.my_city_id = my_city_id;
	}
	public String getTypeVo() {
		return typeVo;
	}
	public void setTypeVo(String typeVo) {
		this.typeVo = typeVo;
	}
	@Override
	public String toString() {
		return "HotelVo [id=" + id + ", name=" + name + ", price=" + price
				+ ", begin_time=" + begin_time + ", end_time=" + end_time
				+ ", total=" + total + ", describe=" + describe + ", count="
				+ count + ", picture_id=" + picture_id + ", map_id=" + map_id
				+ ", grade=" + grade + ", type=" + type + ", my_city_id="
				+ my_city_id + ", typeVo=" + typeVo + "]";
	}
	
	
}
