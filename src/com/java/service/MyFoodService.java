package com.java.service;

import java.util.List;

import com.java.bean.MyFood;
import com.java.bean.Page;


public interface MyFoodService extends Service<MyFood, String >{
	
	public int getAllCount();
	public List<MyFood> getEveryPageCount(Page page);
	
	public List<MyFood> getByMyCityId(String myCityId);
}
