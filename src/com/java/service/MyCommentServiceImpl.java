package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyComment;
import com.java.mapper.MyCommentMapper;

public class MyCommentServiceImpl implements MyCommentService{

	@Autowired
	private MyCommentMapper interestCommentMapper;
	
	public boolean add(MyComment t) {
		
		return interestCommentMapper.add(t);
	}

	public void delete(String id) {
		interestCommentMapper.delete(id);
	}

	public List<MyComment> getAll(String con) {
		
		return interestCommentMapper.getAll(con);
	}

	public MyComment getById(String id) {
		
		return interestCommentMapper.getById(id);
	}

	public void update(MyComment t) {
		interestCommentMapper.update(t);
	}

	public List<MyComment> getByAccountId(String accountId) {
		
		return interestCommentMapper.getByAccountId(accountId);
	}

	public List<MyComment> getByType(String type) {
		
		return interestCommentMapper.getByType(type);
	}

	public int getCountByAccountId(String accountId) {
		
		return interestCommentMapper.getCountByAccountId(accountId);
	}

	public int getCountByType(String type) {
		
		return interestCommentMapper.getCountByType(type);
	}

}
