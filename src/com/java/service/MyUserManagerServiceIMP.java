package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyAccount;
import com.java.bean.Page;
import com.java.mapper.MyUserMapper;

public class MyUserManagerServiceIMP implements MyUserManagerService{
	@Autowired
	MyUserMapper myUserMapper;

	public boolean add(MyAccount t) {
		
		return myUserMapper.add(t);
	}

	public void delete(String id) {
		
		myUserMapper.delete(id);
	}

	public void update(MyAccount t) {
		
		myUserMapper.update(t);
	}

	public MyAccount getById(String id) {
		
		return myUserMapper.getById(id);
	}

	public List<MyAccount> getAll(String con) {
		
		return myUserMapper.getAll(con);
	}

	public MyAccount checkLogin(String username, String password) {
		System.out.println("----------"+username);
		System.out.println("----------"+password);
		return myUserMapper.checkLogin(username, password);
	}

	public void add1(MyAccount m) {
		
		myUserMapper.add1(m);
	}

	public int getAllCount() {
		
		return myUserMapper.getAllCount();
	}

	public List<MyAccount> getEveryPageCount(Page page) {
		
		return myUserMapper.getEveryPageCount(page);
	}

}
