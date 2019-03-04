package com.java.mapper;

import org.apache.ibatis.annotations.Param;

import com.java.bean.UserManager;

public interface MyAccountManagerMapper extends Dao<UserManager,String>{
	
	public UserManager tocheckLogin (@Param("username") String username,@Param("password") String password);

}
