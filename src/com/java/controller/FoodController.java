package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;



import com.java.bean.Code;
import com.java.bean.MyCity;
import com.java.bean.MyFood;
import com.java.bean.Page;
import com.java.service.MyCityService;
import com.java.service.MyFoodService;
import com.java.util.CodeUtil;
import com.java.util.PageUtil;
import com.java.util.UUID1;


@Controller
public class FoodController {

	@Autowired
	private MyFoodService myFoodService; 
	
	@Autowired
	private MyCityService myCityService;

	
	
	@RequestMapping("/food/toList.do")
	public String toList(HttpServletRequest request){
		
		Page page = new Page();
		int allRecodeCount = myFoodService.getAllCount();
		System.out.println("################"+allRecodeCount);
		
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr==null||"".equals(currentPageStr)||"null".equals(currentPageStr)){
			currentPageStr = "1";
		}
		int currentPage = Integer.valueOf(currentPageStr);
		
		String con = request.getParameter("con");
		if (con==null) {
			con="";
		}
		
		page.setCon(con);
		page.setAllRecodeCount(allRecodeCount);
		page.setCurrentPage(currentPage);
		page.setEveryPageCount(5);
		
		List<MyFood> list = myFoodService.getEveryPageCount(page);
		for (MyFood myFood : list) {
			System.out.println(myFood);
			
		}
		request.setAttribute("mfList", list);
		request.setAttribute("con", con);
		PageUtil.setLocal(page);
		
		return "food/list";
	}
	
	
	@RequestMapping("/food/toAdd.do")
	public String toAdd(HttpServletRequest request){

		List<Code> cList = CodeUtil.getCode("FOOD");
		request.setAttribute("cList", cList);
		
		//通过遍历目的地表查出所有目的地，然后传值
		List<MyCity> myCityList = myCityService.getAll("%%");
		request.setAttribute("myCityList",myCityList);
		
		return "food/add";
	}
	
	
	@RequestMapping("/food/add.do")
	public String add(HttpServletRequest request,MultipartFile pictureFile,MultipartFile mapId) throws IllegalStateException, IOException{
		
		MyFood myFood = new MyFood();
		
		String id = UUID1.getUUID();
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String describe= request.getParameter("describe");
		
		String type= request.getParameter("type");
		
		String address = request.getParameter("address");
		
		if (pictureFile!=null) {
			String filePath="F:\\a\\";
			String originalFileName = pictureFile.getOriginalFilename();
			if(originalFileName!=""&&originalFileName!=null){
				System.out.println("99999999999999999999999999999'"+originalFileName);
				String newName = UUID1.getUUID()+originalFileName.substring(originalFileName.lastIndexOf("."));
				System.out.println("++++++++++++++++++++++++++"+newName);
				File file = new File(filePath+newName);
				pictureFile.transferTo(file);
				
				myFood.setPictureId(newName);
				
			}
			
		}
		else {
			System.out.println("没有上传图片");
		}
		
		if (mapId!=null) {
			String filePath="F:\\a\\";
			String originalFileName = mapId.getOriginalFilename();
			if(originalFileName!=""&&originalFileName!=null){
				System.out.println("99999999999999999999999999999'"+originalFileName);
				String newName = UUID1.getUUID()+originalFileName.substring(originalFileName.lastIndexOf("."));
				System.out.println("++++++++++++++++++++++++++"+newName);
				File file = new File(filePath+newName);
				mapId.transferTo(file);
				
				myFood.setMapId(newName);
				
			}
			
		}
		else {
			System.out.println("没有上传图片");
		}
		
		
		myFood.setId(id);
		myFood.setName(name);
		myFood.setDescribe(describe);
		
		myFood.setPrice(price);
		myFood.setGrade("0");
		myFood.setType(type);
		myFood.setAddress(address);
		System.out.println("000000000000000000000000000"+myFood);
		myFoodService.add(myFood);
		System.out.println("+++++++++++++++++++++++++++++++++++++++++++++");
		
		return "forward:/food/toList.do";
	}
	
	
	@RequestMapping("/food/delete.do")
	public String delete(HttpServletRequest request){
		
		String id = request.getParameter("id");
		myFoodService.delete(id);
		
		return "forward:/food/toList.do";
	}
	
	
	@RequestMapping("/food/toUpdate.do")
	public String toUpdate(HttpServletRequest request){
		
		String id = request.getParameter("id");
		MyFood myFood = myFoodService.getById(id);
		request.setAttribute("mf", myFood);	
		
		List<Code> cList = CodeUtil.getCode("FOOD");
		request.setAttribute("cList", cList);
		
		//通过遍历目的地表查出所有目的地，然后传值
		List<MyCity> myCityList = myCityService.getAll("%%");
		request.setAttribute("myCityList",myCityList);
		
		return "food/update";
	}
	
	
	@RequestMapping("/food/update.do")
	public String update(HttpServletRequest request,MultipartFile pictureFile,MultipartFile mapId) throws IllegalStateException, IOException{
		 
		System.out.println("==================================");
		MyFood myFood = new MyFood();
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String describe = request.getParameter("describe");
		
		String grade = request.getParameter("grade");
		String type = request.getParameter("type");
		String address = request.getParameter("address");
		
		if (pictureFile!=null) {
			String filePath="F:\\a\\";
			String originalFileName = pictureFile.getOriginalFilename();
			if(originalFileName!=null&&originalFileName!=""){
				System.out.println("99999999999999999999999999999'"+originalFileName);
				String newName = UUID1.getUUID()+originalFileName.substring(originalFileName.lastIndexOf("."));
				System.out.println("++++++++++++++++++++++++++"+newName);
				File file = new File(filePath+newName);
				pictureFile.transferTo(file);
				
				myFood.setPictureId(newName);
				
			}
			
		}
		else {
			System.out.println("没有上传图片");
		}
		
		if (mapId!=null) {
			String filePath="F:\\a\\";
			String originalFileName = mapId.getOriginalFilename();
			if(originalFileName!=null&&originalFileName!=""){
				System.out.println("99999999999999999999999999999'"+originalFileName);
				String newName = UUID1.getUUID()+originalFileName.substring(originalFileName.lastIndexOf("."));
				System.out.println("++++++++++++++++++++++++++"+newName);
				File file = new File(filePath+newName);
				mapId.transferTo(file);
				
				myFood.setMapId(newName);
				
			}
			
		}
		else {
			System.out.println("没有上传图片");
		}
		
		myFood.setId(id);
		myFood.setName(name);
		myFood.setPrice(price);
		myFood.setDescribe(describe);
		
		myFood.setGrade(grade);
		myFood.setType(type);
		myFood.setAddress(address);
		myFoodService.update(myFood);
		
		return "forward:/food/toList.do";
	}
	
	
	@RequestMapping("/food/toFind.do")
	public String toFind(HttpServletRequest request){
		
		String id = request.getParameter("id");
		MyFood myFood = myFoodService.getById(id);
		request.setAttribute("mf", myFood);
		
		String foodType[] = myFood.getType().split(",");
		String foodTypes = CodeUtil.getTypeValues(foodType, "FOOD");
		request.setAttribute("foodTypes", foodTypes);
		
		MyCity myCity = myCityService.getById(myFood.getAddress());
		String myCityName = myCity.getName();
		request.setAttribute("myCityName",myCityName);
		
		return "food/find";
	}
	
	
	@RequestMapping("/food/find.do")
	public String find(){
		
		return "forward:/food/toList.do";
	}
}
