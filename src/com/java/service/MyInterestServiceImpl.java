package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyInterest;
import com.java.bean.Page;
import com.java.mapper.MyInterestMapper;

public class MyInterestServiceImpl implements MyInterestService{

	@Autowired
	private MyInterestMapper myInterestMapper;
	
	public boolean add(MyInterest t) {
		
		return myInterestMapper.add(t);
	}

	public void delete(String id) {
		myInterestMapper.delete(id);
	}

	public List<MyInterest> getAll(String con) {
		
		return myInterestMapper.getAll(con);
	}

	public MyInterest getById(String id) {
		
		return myInterestMapper.getById(id);
	}

	public void update(MyInterest t) {
		myInterestMapper.update(t);
	}

	public int getAllCount() {
		
		return myInterestMapper.getAllCount();
	}

	public List<MyInterest> getEveryPageCount(Page page) {
		
		return myInterestMapper.getEveryPageCount(page);
	}

	public List<MyInterest> getByMyCityId(String myCityId) {
		
		return myInterestMapper.getByMyCityId(myCityId);
	}

}
