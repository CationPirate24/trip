package com.java.service;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.java.bean.Code;
import com.java.mapper.CodeMapper;

public class CodeServiceImpl implements CodeService{

	ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");		 
	CodeMapper codeMapper = (CodeMapper) applicationContext.getBean("codeMapper");

	
	public Code getByKeyAndType(String myKey, String type) {
		
		return codeMapper.getByKeyAndType(myKey, type);
	}

	public List<Code> getByType(String type) {
		
		return codeMapper.getByType(type);
	}

	public boolean add(Code t) {
		// TODO Auto-generated method stub
		return false;
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	public List<Code> getAll(String con) {
		// TODO Auto-generated method stub
		return null;
	}

	public Code getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(Code t) {
		// TODO Auto-generated method stub
		
	}

}
