package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyCity;
import com.java.bean.Page;
import com.java.mapper.MyCityMapper;

public class MyCityServiceImpl implements MyCityService {

	@Autowired
	private MyCityMapper myCityMapper;
	public boolean add(MyCity t) {
		
		return myCityMapper.add(t);
	}

	public void delete(String id) {
		myCityMapper.delete(id);
	}

	public List<MyCity> getAll(String id) {
		
		return myCityMapper.getAll(id);
	}

	public MyCity getById(String id) {
		
		return myCityMapper.getById(id);
	}

	public void update(MyCity t) {

		myCityMapper.update(t);
	}

	public int getAllCount() {
		
		return myCityMapper.getAllCount();
	}

	public List<MyCity> getEveryPageCount(Page page) {
		
		return myCityMapper.getEveryPageCount(page);
	}

}
