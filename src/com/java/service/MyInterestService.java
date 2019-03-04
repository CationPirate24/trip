package com.java.service;

import java.util.List;

import com.java.bean.MyInterest;
import com.java.bean.Page;

public interface MyInterestService extends Service<MyInterest,String>{

	public int getAllCount();
	public List<MyInterest> getEveryPageCount(Page page);
	
	public List<MyInterest> getByMyCityId(String myCityId);
}
