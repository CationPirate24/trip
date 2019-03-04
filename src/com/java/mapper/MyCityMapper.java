package com.java.mapper;

import java.util.List;

import com.java.bean.MyCity;
import com.java.bean.Page;

public interface MyCityMapper extends Dao<MyCity, String> {

	public int getAllCount();
	public List<MyCity> getEveryPageCount(Page page);
}
