package com.java.service;

import java.util.List;

import com.java.bean.MyCity;
import com.java.bean.Page;

public interface MyCityService extends Service<MyCity, String> {

	public int getAllCount();
	public List<MyCity> getEveryPageCount(Page page);
}
