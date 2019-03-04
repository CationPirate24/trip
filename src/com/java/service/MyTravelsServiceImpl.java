package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyTravels;
import com.java.mapper.MyTravelsMapper;

public class MyTravelsServiceImpl implements MyTravelsService{

	@Autowired
	private MyTravelsMapper myTravelsMapper;
	public boolean add(MyTravels t) {
		boolean flog=true;
		try {
			myTravelsMapper.add(t);
		} catch (Exception e) {
			flog=false;
		}
		return flog;
	}

	public void delete(String id) {
		myTravelsMapper.delete(id);
		
	}

	public void update(MyTravels t) {
		myTravelsMapper.update(t);
		
	}

	public MyTravels getById(String id) {
		
		return myTravelsMapper.getById(id);
	}

	public List<MyTravels> getAll(String con) {
		
		return myTravelsMapper.getAll(con);
	}

	public List<MyTravels> getByAuthor(String author) {
		
		return myTravelsMapper.getByAuthor(author);
	} 

}
