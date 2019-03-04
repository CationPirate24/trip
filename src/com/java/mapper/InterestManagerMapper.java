package com.java.mapper;

import org.apache.ibatis.annotations.Param;

import com.java.bean.MyManager;

public interface InterestManagerMapper extends Dao<MyManager,String> {

	public MyManager checkLogin(@Param("username") String username,@Param("password") String password);
	public int sameUsername(String username);
}
