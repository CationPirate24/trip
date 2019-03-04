package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.Code;
import com.java.bean.MyCity;
import com.java.bean.MyInterest;
import com.java.bean.Page;
import com.java.service.MyCityService;
import com.java.service.MyInterestService;
import com.java.util.CodeUtil;
import com.java.util.PageUtil;
import com.java.util.UUIDUtil;

@Controller
public class MyInterestController {

	@Autowired
	private MyInterestService myInterestService;
	@Autowired
	private MyCityService myCityService;
	
	@RequestMapping("/interest/toList.do")
	public ModelAndView toList(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		Page page = new Page();
		int allRecodeCount = myInterestService.getAllCount();
		System.out.println("################"+allRecodeCount);
		
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr==null||"".equals(currentPageStr)||"null".equals(currentPageStr)){
			currentPageStr = "1";
		}
		int currentPage = Integer.valueOf(currentPageStr);
		
		String con = request.getParameter("con");
		if(con==null||"null".equals(con)){
			con = "";
		}
		
		page.setCon(con);
		page.setAllRecodeCount(allRecodeCount);
		page.setCurrentPage(currentPage);
		page.setEveryPageCount(5);
		
		List<MyInterest> list = myInterestService.getEveryPageCount(page);
		for(MyInterest mi:list){
			System.out.println("&&&&&&&&&&&&&&&&"+mi.getDescribe());
		}
		request.setAttribute("miList", list);
		request.setAttribute("con", con);
		PageUtil.setLocal(page);
		
		mav.setViewName("interest/list");
		return mav;
	}
	
	@RequestMapping("/interest/toAdd.do")
	public ModelAndView toAdd(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		List<Code> cList = CodeUtil.getCode("INTEREST");
		request.setAttribute("cList", cList);
		
		//通过遍历目的地表查出所有目的地，然后传值
		List<MyCity> myCityList = myCityService.getAll("%%");
		request.setAttribute("myCityList",myCityList);
		
		mav.setViewName("interest/add");
		return mav;
	}
	
	@RequestMapping("/interest/add.do")
	public String add(HttpServletRequest request,MultipartFile pictureId,MultipartFile mapId) throws IllegalStateException, IOException{
		
		//图片上传成功后，将图片地址写到数据库
		String filePath = "F:\\a\\";
		String newFileName1 = "";
		String newFileName2 = "";
		System.out.println("+++++++++++++++++++++++");
		if(pictureId!=null){
			//得到上传图片的原始名称
			String originalFileName1 = pictureId.getOriginalFilename();
			System.out.println("~~~~~~~~~~~~~~~"+originalFileName1);
			if(originalFileName1!=null&&originalFileName1!=""){
				//新的图片名称
				newFileName1 = UUIDUtil.getId()+originalFileName1.substring(originalFileName1.lastIndexOf("."));
				System.out.println("%%%%%%%%%%%%%%%%"+newFileName1);
				//创建新文件
				File file1 = new File(filePath+newFileName1);
				//将内存中的文件写入磁盘
				pictureId.transferTo(file1);
			}
			
		}
		if(mapId!=null){
			//得到上传图片的原始名称
			String originalFileName2 = mapId.getOriginalFilename();
			System.out.println("~~~~~~~~~~~~~~~"+originalFileName2);
			if(originalFileName2!=null&&originalFileName2!=""){
				//新的图片名称
				newFileName2 = UUIDUtil.getId()+originalFileName2.substring(originalFileName2.lastIndexOf("."));
				System.out.println("%%%%%%%%%%%%%%%%"+newFileName2);
				//创建新文件
				File file2 = new File(filePath+newFileName2);
				//将内存中的文件写入磁盘
				mapId.transferTo(file2);
			}
			
		}
		
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String describe = request.getParameter("describe");
		String type[] = request.getParameterValues("interestType");
		String address = request.getParameter("address");
		String myCityId = request.getParameter("myCityId");
		System.out.println("*********"+name);
		System.out.println("*********"+price);
		System.out.println("*********"+describe);
		
		System.out.println("&&&&&&&&&&&"+price);
		//int price2 = Integer.parseInt(price);
		String types = CodeUtil.getTypes(type);
		
		MyInterest mi = new MyInterest();
		mi.setId(UUIDUtil.getId());
		mi.setName(name);
		mi.setPrice(price);
		mi.setDescribe(describe);
		mi.setPictureId(newFileName1);
		mi.setMapId(newFileName2);
		mi.setGrade("0");
		mi.setInterestType(types);
		mi.setMyCityId(myCityId);
		mi.setAddress(address);
		
		myInterestService.add(mi);
		return "forward:/interest/toList.do";
		
	}
	
	@RequestMapping("/interest/toFind.do")
	public ModelAndView toFind(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		MyInterest mi = myInterestService.getById(id);
		request.setAttribute("mi", mi);
		System.out.println("-------------"+mi.getInterestType());
		String type[] = mi.getInterestType().split(",");
		String types = CodeUtil.getTypeValues(type,"INTEREST");
		System.out.println("=========="+types);
		request.setAttribute("types", types);
		
		//通过myCityId找到目的地，将目的地的名字取出来
		MyCity myCity = myCityService.getById(mi.getMyCityId());
		String myCityName = myCity.getName();
		request.setAttribute("myCityName",myCityName);
		
		mav.setViewName("interest/find");
		return mav;
	}
	
	@RequestMapping("/interest/find.do")
	public String find(){
		return "forward:/interest/toList.do";
	}
	
	@RequestMapping("/interest/toUpdate.do")
	public ModelAndView toUpdate(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		MyInterest mi = myInterestService.getById(id);
		request.setAttribute("mi", mi);
		List<Code> cList = CodeUtil.getCode("INTEREST");
		request.setAttribute("cList", cList);
		
		//通过遍历目的地表查出所有目的地，然后传值
		List<MyCity> myCityList = myCityService.getAll("%%");
		request.setAttribute("myCityList",myCityList);
		
		mav.setViewName("interest/update");
		return mav;
	}
	
	@RequestMapping("/interest/update.do")
	public String update(HttpServletRequest request,MultipartFile pictureId,MultipartFile mapId) throws IllegalStateException, IOException{
		
		//图片上传成功后，将图片地址写到数据库
		String filePath = "F:\\a\\";
		String newFileName1 = "";
		String newFileName2 = "";
		System.out.println("+++++++++++++++++++++++");
		if(pictureId!=null){
			//得到上传图片的原始名称
			String originalFileName1 = pictureId.getOriginalFilename();
			System.out.println("~~~~~~~~~~~~~~~"+originalFileName1);
			if(originalFileName1!=null&&originalFileName1!=""){
				//新的图片名称
				newFileName1 = UUIDUtil.getId()+originalFileName1.substring(originalFileName1.lastIndexOf("."));
				System.out.println("%%%%%%%%%%%%%%%%"+newFileName1);
				//创建新文件
				File file1 = new File(filePath+newFileName1);
				//将内存中的文件写入磁盘
				pictureId.transferTo(file1);
			}
			
		}
		if(mapId!=null){
			//得到上传图片的原始名称
			String originalFileName2 = mapId.getOriginalFilename();
			System.out.println("~~~~~~~~~~~~~~~"+originalFileName2);
			if(originalFileName2!=null&&originalFileName2!=""){
				//新的图片名称
				newFileName2 = UUIDUtil.getId()+originalFileName2.substring(originalFileName2.lastIndexOf("."));
				System.out.println("%%%%%%%%%%%%%%%%"+newFileName2);
				//创建新文件
				File file2 = new File(filePath+newFileName2);
				//将内存中的文件写入磁盘
				mapId.transferTo(file2);
			}
			
		}
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String describe = request.getParameter("describe");
		String grade = request.getParameter("grade");
		String types[] = request.getParameterValues("interestType");
		String myCityId = request.getParameter("myCityId");
		String address = request.getParameter("address");
		System.out.println("+++"+id);
		System.out.println("---"+name);
		System.out.println("#########"+price);
		System.out.println("************"+types);
		//int price2 = Integer.parseInt(price);
		String type = CodeUtil.getTypes(types);
		
		MyInterest mi = new MyInterest();
		mi.setId(id);
		mi.setName(name);
		mi.setPrice(price);
		mi.setDescribe(describe);
		mi.setPictureId(newFileName1);
		mi.setMapId(newFileName2);
		mi.setGrade(grade);
		mi.setInterestType(type);
		mi.setMyCityId(myCityId);
		mi.setAddress(address);
		
		myInterestService.update(mi);
		return "forward:/interest/toList.do";
		
	}
	
	@RequestMapping("/interest/delete.do")
	public String delete(HttpServletRequest request){
		String id = request.getParameter("id");
		myInterestService.delete(id);
		return "forward:/interest/toList.do";
	}
}

































