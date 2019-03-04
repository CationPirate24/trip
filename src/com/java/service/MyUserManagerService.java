package com.java.service;

import java.util.List;

import com.java.bean.MyAccount;
import com.java.bean.Page;

import org.apache.ibatis.annotations.Param;

public interface MyUserManagerService extends Service<MyAccount,String>{
	
	public MyAccount checkLogin(@Param("username") String username,@Param("password") String password);
	public void add1(MyAccount m);
	
	public int getAllCount();
	public List<MyAccount> getEveryPageCount(Page page);
}
