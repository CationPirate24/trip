package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyHotel;
import com.java.bean.Page;
import com.java.mapper.MyHotelMapper;

public class MyHotelServiceImpl implements MyHotelService{
	@Autowired
	private MyHotelMapper myHotelMapper;
	public boolean add(MyHotel t) {
		boolean flog=true;
		try {
			myHotelMapper.add(t);
			
		} catch (Exception e) {
			flog=false;
		}
		return flog;
	}

	public void delete(String id) {
		myHotelMapper.delete(id);
		
	}

	public void update(MyHotel t) {
		myHotelMapper.update(t);
		
	}

	public MyHotel getById(String id) {
		
		return myHotelMapper.getById(id);
	}

	public List<MyHotel> getAll(String con) {
		
		return myHotelMapper.getAll(con);
	}

	public int getAllCount() {
		
		return myHotelMapper.getAllCount();
	}

	public List<MyHotel> getEveryPageCount(Page page) {
		
		return myHotelMapper.getEveryPageCount(page);
	}

	public List<MyHotel> getByMyCityId(String myCityId) {
		
		return myHotelMapper.getByMyCityId(myCityId);
	}
	
}
