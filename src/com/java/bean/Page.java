package com.java.bean;

public class Page {

	private int allRecodeCount;		//所有记录条数
	private int everyPageCount;		//每页显示多少条记录
	private int pageCount;			//一共多少页
	private int currentPage;		//当前页是第几页
	private String con;				//查询条件
	
	public int getAllRecodeCount() {
		return allRecodeCount;
	}
	public void setAllRecodeCount(int allRecodeCount) {
		this.allRecodeCount = allRecodeCount;
	}
	public int getEveryPageCount() {
		return everyPageCount;
	}
	public void setEveryPageCount(int everyPageCount) {
		this.everyPageCount = everyPageCount;
	}
	public int getPageCount() {
		
		if(this.allRecodeCount%this.everyPageCount==0){
			this.pageCount = this.allRecodeCount/this.everyPageCount;
		}else{
			this.pageCount = this.allRecodeCount/this.everyPageCount+1;
		}
		
		return pageCount;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public String getCon() {
		return con;
	}
	public void setCon(String con) {
		this.con = con;
	}
	
}
