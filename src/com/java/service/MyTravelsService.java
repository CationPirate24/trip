package com.java.service;

import java.util.List;

import com.java.bean.MyTravels;

public interface MyTravelsService extends Service<MyTravels, String>{
	public List<MyTravels> getByAuthor(String author);
}
