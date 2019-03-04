package com.java.service;

import com.java.bean.MyManager;

public interface InterestManagerService extends Service<MyManager,String>{

	public MyManager checkLogin(String username,String password);
}
