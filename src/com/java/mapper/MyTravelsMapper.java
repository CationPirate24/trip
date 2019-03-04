package com.java.mapper;

import java.util.List;

import com.java.bean.MyTravels;

public interface MyTravelsMapper  extends Dao<MyTravels, String>{
	public List<MyTravels> getByAuthor(String author);
}
