package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.MyAccount;
import com.java.bean.Page;

public interface MyUserMapper extends Dao<MyAccount,String>{
    
	public MyAccount checkLogin(@Param("username") String username,@Param("password") String password);
	public void add1(MyAccount m);
	
	public int getAllCount();
	public List<MyAccount> getEveryPageCount(Page page);
}