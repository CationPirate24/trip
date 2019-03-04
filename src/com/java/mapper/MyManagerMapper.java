package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.MyManager;
import com.java.bean.Page;

public interface MyManagerMapper extends Dao<MyManager, String >{
	public MyManager checkManager(@Param("username")String username, @Param("password")String password);
	
	public int getAllCount();
	public List<MyManager> getEveryPageCount(Page page);
}
