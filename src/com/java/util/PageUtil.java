package com.java.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.java.bean.Page;
import com.java.mapper.MyInterestMapper;

public class PageUtil {

	private static ThreadLocal<Page> local = new ThreadLocal<Page>();
	private static ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
	private static MyInterestMapper mim = (MyInterestMapper)applicationContext.getBean("myInterestMapper");
	
	public static Page getLocal(){
		return local.get();
	}
	
	public static void setLocal(Page page){
		local.set(page);
	}
	
	public static void cancelLocal(){
		local.remove();
	}
	
	public static int getMyInterestAllCount(){
		
		int count = mim.getAllCount();
		
		return count;
	}
	
}

























