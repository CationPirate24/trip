package com.java.service;

import java.util.List;

import com.java.bean.MyComment;

public interface MyCommentService extends Service<MyComment,String>{

	public List<MyComment> getByAccountId(String accountId);
	public List<MyComment> getByType(String type);

	public int getCountByAccountId(String accountId);
	public int getCountByType(String type);
}
