package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyManager;
import com.java.mapper.InterestManagerMapper;

public class InterestManagerServiceImpl implements InterestManagerService {

	@Autowired
	private InterestManagerMapper interestManagerMapper;
	
	public MyManager checkLogin(String username, String password) {
		
		MyManager myManager = null;
		myManager = interestManagerMapper.checkLogin(username, password);
		
		return myManager;
	}

	public boolean add(MyManager t) {
		
		boolean flag = true;
		int count = interestManagerMapper.sameUsername(t.getUsername());
		if(count==1){
			flag = false;
		}else{
			interestManagerMapper.add(t);
		}
		
		return flag;
	}

	public void delete(String id) {
		interestManagerMapper.delete(id);
	}

	public List<MyManager> getAll(String con) {
		
		return interestManagerMapper.getAll(con);
	}

	public MyManager getById(String id) {
		
		return interestManagerMapper.getById(id);
	}

	public void update(MyManager t) {
		interestManagerMapper.update(t);
	}

}
