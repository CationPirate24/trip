package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyFood;
import com.java.bean.Page;
import com.java.mapper.MyFoodMapper;

public class MyFoodServiceImpl implements MyFoodService{
	
	@Autowired
	private MyFoodMapper myFoodMapper;
	
	
	
	public boolean add(MyFood t) {
		return myFoodMapper.add(t);
	}

	public void delete(String id) {
		myFoodMapper.delete(id);
	}

	public List<MyFood> getAll(String con) {
	
		return myFoodMapper.getAll(con);
	}

	public MyFood getById(String id) {
		return myFoodMapper.getById(id);
	}

	public void update(MyFood t) {
		
		myFoodMapper.update(t);
	}

	public int getAllCount() {
		
		return myFoodMapper.getAllCount();
	}

	public List<MyFood> getEveryPageCount(Page page) {
		
		return myFoodMapper.getEveryPageCount(page);
	}

	public List<MyFood> getByMyCityId(String myCityId) {
		
		return myFoodMapper.getByMyCityId(myCityId);
	}

	

}
