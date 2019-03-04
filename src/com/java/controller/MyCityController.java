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

import com.java.bean.MyCity;
import com.java.bean.Page;
import com.java.service.MyCityService;
import com.java.util.PageUtil;
import com.java.util.UUIDUtil;

@Controller
public class MyCityController {

	@Autowired
	private MyCityService myCityService;
	
	private String picture_id;
	private String map;
	@RequestMapping("/user/toList")
	public ModelAndView toList(HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		
		Page page = new Page();
		int allRecodeCount = myCityService.getAllCount();
		System.out.println("################"+allRecodeCount);
		
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr==null||"".equals(currentPageStr)||"null".equals(currentPageStr)){
			currentPageStr = "1";
		}
		int currentPage = Integer.valueOf(currentPageStr);
		
		String con = request.getParameter("con");
		request.setAttribute("con",con);
		if(con==null||"null".equals(con)){
			con = "";
		}
		
		page.setCon(con);
		page.setAllRecodeCount(allRecodeCount);
		page.setCurrentPage(currentPage);
		page.setEveryPageCount(5);
		
		List<MyCity> list = myCityService.getEveryPageCount(page);
		for(MyCity mi:list){
			System.out.println("&&&&&&&&&&&&&&&&"+mi.getDescribe());
		}
		
		if(list!=null){
			for(MyCity mu:list){
				System.out.println(mu.getName());
				System.out.println("----------");
			}
		}else{
			System.out.println("û������");
		}
		
		request.setAttribute("muList",list);
		request.setAttribute("con", con);
		PageUtil.setLocal(page);
		
		mav.setViewName("user/list");
		return mav;
		
	}
	
	@RequestMapping("/user/toAdd.do")
	public ModelAndView toAdd(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/add");
		return mav;
	}
	@RequestMapping("/user/add.do")
	public String add(HttpServletRequest request,MultipartFile pictureFile,MultipartFile pictureFile1) throws IllegalStateException, IOException{
		String id = UUIDUtil.getId();
		String name = request.getParameter("name");
		String describe = request.getParameter("describe");
		System.out.println("#############");
		
		
		
		if(pictureFile!=null){
			//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
			String filePath = "F:\\a\\";
			//�õ��ϴ�ͼƬ��ԭʼ����
			String originalFileName = pictureFile.getOriginalFilename();
			System.out.println("++++++++++++++++++++++++++++++++++"+originalFileName);
			if(originalFileName!=null&&originalFileName!=""){
				//�µ�ͼƬ����
				String newFileName = UUIDUtil.getId()+originalFileName.substring(originalFileName.lastIndexOf("."));
				picture_id =newFileName;
				System.out.println("----------------------------------"+newFileName);
				//���ļ�
				File file = new File(filePath+newFileName);
				//���ڴ��е��ļ�д�����
				pictureFile.transferTo(file);
				
				//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
			}
			
		}else{
			System.out.println("û���ϴ�ͼƬ");
		}
		
		if(pictureFile1!=null){
			//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
			String filePath = "F:\\a\\";
			//�õ��ϴ�ͼƬ��ԭʼ����
			String originalFileName = pictureFile1.getOriginalFilename();
			System.out.println("++++++++++++++++++++++++++++++++++"+originalFileName);
			if(originalFileName!=null&&originalFileName!=""){
				//�µ�ͼƬ����
				String newFileName = UUIDUtil.getId()+originalFileName.substring(originalFileName.lastIndexOf("."));
				map = newFileName;
				System.out.println("----------------------------------"+newFileName);
				//���ļ�
				File file = new File(filePath+newFileName);
				//���ڴ��е��ļ�д�����
				pictureFile1.transferTo(file);
				
				//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
			}
			
		}else{
			System.out.println("û���ϴ�ͼƬ");
		}
		
		MyCity myCity = new MyCity();
		myCity.setId(id);
		myCity.setName(name);
		myCity.setDescribe(describe);
		myCity.setPicture_id(picture_id);
		myCity.setMap(map);
		myCityService.add(myCity);
		
		return "forward:/user/toList.do";
	}
	
	@RequestMapping("/user/delete.do")
	public String delete(HttpServletRequest request){
		String id = request.getParameter("id");
		System.out.println("$$$$$$$$$$$$$"+id);
		myCityService.delete(id);
		return "forward:/user/toList.do";
	}
	
	@RequestMapping("/user/toUpdate.do")
	public String toUpdate(HttpServletRequest request){
		String id = request.getParameter("id");
		MyCity myUser = myCityService.getById(id);
		request.setAttribute("m", myUser);
		
		
		return "user/update";
	}
	
	@RequestMapping("/user/update.do")
	public String update(MyCity m,MultipartFile pictureFile,MultipartFile pictureFile1) throws IllegalStateException, IOException{
		
		if(pictureFile!=null){
			//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
			String filePath = "F:\\a\\";
			//�õ��ϴ�ͼƬ��ԭʼ����
			String originalFileName = pictureFile.getOriginalFilename();
			System.out.println("++++++++++++++++++++++++++++++++++"+originalFileName);
			if(originalFileName!=null&&originalFileName!=""){
				//�µ�ͼƬ����
				String newFileName = UUIDUtil.getId()+originalFileName.substring(originalFileName.lastIndexOf("."));
				picture_id =newFileName;
				System.out.println("----------------------------------"+newFileName);
				//���ļ�
				File file = new File(filePath+newFileName);
				//���ڴ��е��ļ�д�����
				pictureFile.transferTo(file);
				
				//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
			}
			
		}else{
			System.out.println("û���ϴ�ͼƬ");
		}
		
		if(pictureFile1!=null){
			
			String filePath = "F:\\a\\";
			
			String originalFileName = pictureFile1.getOriginalFilename();
			System.out.println("++++++++++++++++++++++++++++++++++"+originalFileName);
			if(originalFileName!=null&&originalFileName!=""){

				String newFileName = UUIDUtil.getId()+originalFileName.substring(originalFileName.lastIndexOf("."));
				map = newFileName;
				System.out.println("----------------------------------"+newFileName);
				
				File file = new File(filePath+newFileName);
				pictureFile1.transferTo(file);
				
				//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
			}
			
		}else{
			
			System.out.println("û���ϴ�ͼƬ");
		}
		m.setPicture_id(picture_id);
		m.setMap(map);
		System.out.println("@@@@@@@@@@@@"+m);
		myCityService.update(m);
		
		
		return "forward:/user/toList.do";
	}
	
	@RequestMapping("user/toFind.do")
	public ModelAndView toFind(String id){
		System.out.println("#########"+id);
		MyCity myCity = myCityService.getById(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject(myCity);
		mav.setViewName("user/find");
		return mav;
	}
	
	@RequestMapping("user/find.do")
	public String find(){
		return "forward:/user/toList.do";
	}
	
}









