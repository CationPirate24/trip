package com.java.mapper;

import java.util.List;

import com.java.bean.MyInterest;
import com.java.bean.Page;

public interface MyInterestMapper extends Dao<MyInterest,String>{

	public int getAllCount();
	public List<MyInterest> getEveryPageCount(Page page);
	
	public List<MyInterest> getByMyCityId(String myCityId);
}
