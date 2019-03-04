package com.java.mapper;


import java.util.List;

import com.java.bean.MyFood;
import com.java.bean.Page;

public interface MyFoodMapper extends Dao<MyFood, String >{
	
	public int getAllCount();
	public List<MyFood> getEveryPageCount(Page page);
	
	public List<MyFood> getByMyCityId(String myCityId);
}
