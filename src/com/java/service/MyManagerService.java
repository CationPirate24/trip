package com.java.service;

import java.util.List;

import com.java.bean.MyManager;
import com.java.bean.Page;

public interface MyManagerService extends Service<MyManager, String >{
	public MyManager checkManager(String username,String password);
	
	public int getAllCount();
	public List<MyManager> getEveryPageCount(Page page);
}
