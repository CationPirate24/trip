package com.java.service;

import java.util.List;

import com.java.bean.MyHotel;
import com.java.bean.Page;

public interface MyHotelService extends Service<MyHotel, String>{

	public int getAllCount();
	public List<MyHotel> getEveryPageCount(Page page);
	
	public List<MyHotel> getByMyCityId(String myCityId);
}
