package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyManager;
import com.java.bean.Page;
import com.java.mapper.MyManagerMapper;

public class MyManagerServiceImpl implements MyManagerService{
	
	@Autowired
	private MyManagerMapper myManagerMapper;
	public MyManager checkManager(String username, String password) {
		
		return myManagerMapper.checkManager(username, password);
	}

	public boolean add(MyManager t) {
		return myManagerMapper.add(t);
	}

	public void delete(String id) {
		myManagerMapper.delete(id);
	}

	public List<MyManager> getAll(String con) {
		return myManagerMapper.getAll(con);
	}

	public MyManager getById(String id) {
		return myManagerMapper.getById(id);
	}

	public void update(MyManager t) {
		myManagerMapper.update(t);
	}

	public int getAllCount() {
		
		return myManagerMapper.getAllCount();
	}

	public List<MyManager> getEveryPageCount(Page page) {
		
		return myManagerMapper.getEveryPageCount(page);
	}

}
