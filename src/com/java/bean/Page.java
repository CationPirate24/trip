package com.java.bean;

public class Page {

	private int allRecodeCount;		//���м�¼����
	private int everyPageCount;		//ÿҳ��ʾ��������¼
	private int pageCount;			//һ������ҳ
	private int currentPage;		//��ǰҳ�ǵڼ�ҳ
	private String con;				//��ѯ����
	
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
