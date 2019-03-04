package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyAccount;
import com.java.bean.MyTravels;
import com.java.service.MyTravelsService;
import com.java.util.DateUtil;
import com.java.util.UUIDUtil;


@Controller
public class MyTravelsController {
	@Autowired
	private MyTravelsService myTravelsService;
	
	@RequestMapping("/myTravels/toList.do")
	public ModelAndView toList(String con) throws UnsupportedEncodingException{
		ModelAndView mav=new ModelAndView();
		List<MyTravels> travelsList=null;
		
		
		if (con==null||con=="") {	
			travelsList=myTravelsService.getAll("%"+""+"%");
		}else{
			String conr=new String(con.getBytes("ISO-8859-1"),"utf-8");
			travelsList=myTravelsService.getAll("%"+conr+"%");
			mav.addObject("connr",conr);
		}
		
		//添加城市
		List<String> cityList=new ArrayList<String>();
		cityList.add("北京");
		cityList.add("天津");
		cityList.add("重庆");
		cityList.add("上海");
		
		cityList.add("河南");
		cityList.add("河北");
		cityList.add("云南");
		cityList.add("辽宁");
		cityList.add("黑龙江");
		cityList.add("湖南");
		cityList.add("安徽");
		cityList.add("山东");
		cityList.add("新疆");
		cityList.add("江苏");
		
		cityList.add("浙江");
		cityList.add("江西");
		cityList.add("湖北");
		cityList.add("广西");		
		cityList.add("甘肃");
		cityList.add("山西");
		cityList.add("内蒙古");
		cityList.add("陕西");
		cityList.add("吉林");
		cityList.add("福建");
		
		cityList.add("贵州");
		cityList.add("广东");
		cityList.add("青海");
		cityList.add("西藏");		
		cityList.add("四川");
		cityList.add("宁夏");
		cityList.add("海南");
		cityList.add("台湾");
		cityList.add("香港");
		cityList.add("澳门");
		
		
		
		mav.addObject("cList", cityList);
		for (int i = 0; i < cityList.size(); i++) {
			System.out.println(cityList.get(i));
		}
		
		
		
		mav.addObject("tList", travelsList);		
		mav.setViewName("myTravels/list");			
		return mav;			
	}
	
	@RequestMapping("/myTravels/toAdd.do")
	public ModelAndView toAdd(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("myTravels/add");
		return mav;
		
	}
	
	@RequestMapping("/myTravels/add.do")
	public ModelAndView add(MyTravels myTravels,HttpServletRequest req,MultipartFile pictureFile) throws IllegalStateException, IOException{
		ModelAndView mav=new ModelAndView();
		
		//如果添加数据不全，则返回添加页，重新进行添加
		System.out.println("-----------------------------------");
		System.out.println("_________"+myTravels.getName()+"__");
		System.out.println("--------------"+pictureFile);
		if (myTravels.getName().equals("")||myTravels.getName()==null||myTravels.getDays().equals("")||myTravels.getWay().equals("")||myTravels.getDescribe().equals("")||pictureFile==null||myTravels.getAddress().equals("")) {
			System.out.println("-----------------------------------");
			System.out.println(myTravels);
			mav.setViewName("myTravels/add");
			
		}else {
			myTravels.setId(UUIDUtil.getId());
			
			//得到用户名，从而存入作者，如果未登录，则作者名为游客
			MyAccount ma = (MyAccount)req.getSession().getAttribute("ma");
			String username=ma.getUsername();
			System.out.println(username);
			if (username!=null) {
				myTravels.setAuthor(username);
			}else{
				myTravels.setAuthor("游客");
			}
			String ysFileName=pictureFile.getOriginalFilename();//原始图片名称
			//操作图片
			if (ysFileName!=null && ysFileName != "") {
				
				String newFileName=UUIDUtil.getId()+ysFileName.substring(ysFileName.lastIndexOf("."),ysFileName.length());
				myTravels.setPicture_id(newFileName);			
				//得到图片新的路径，并写入磁盘中
				File file=new File("F:\\a\\"+newFileName);
				pictureFile.transferTo(file);			
			}
			myTravels.setTime(DateUtil.getDate());
			
			
			myTravelsService.add(myTravels);
			System.out.println("_____________________________________________"+myTravels);
			
			mav.addObject("mt", myTravels);
			mav.setViewName("myTravels/showAdd");
		}
		
		
		
		
		
		return mav;			
	}
	
	
	@RequestMapping("/myTravels/toShow.do")
	public ModelAndView toShow(String id){
		
		ModelAndView mav=new ModelAndView();
		
		MyTravels mt=myTravelsService.getById(id);
		
		mav.addObject("mt", mt);
		mav.setViewName("myTravels/show");
		
		

		
		return mav;	
		
		
		
		
	}
	

	@RequestMapping("/myTravels/toDelete.do")
	public ModelAndView toDelete(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		
		myTravelsService.delete(request.getParameter("id"));
		
	
		return mav;	
		
		
	}	
	
	@RequestMapping("/myTravels/toUpdate.do")
	public ModelAndView toUpdate(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		
		MyTravels mt  = myTravelsService.getById(request.getParameter("id"));
		
		request.setAttribute("mt", mt);
		mav.setViewName("myTravels/update");
	
		return mav;	
		
		
	}	
	
	
	//游记修改
	@RequestMapping("/myTravels/update.do")
	public String Update(HttpServletRequest request,MultipartFile pictureFile) throws IllegalStateException, IOException{
		
		ModelAndView mav=new ModelAndView();
		
		MyTravels mt  = new MyTravels();
		mt.setId(request.getParameter("id"));
		mt.setAddress(request.getParameter("address"));
		mt.setDays(request.getParameter("day"));
		mt.setDescribe(request.getParameter("describe"));
		if(pictureFile!=null){
			//图片上传成功后，将图片地址写到数据库
			String filePath = "F:\\a\\";
			//得到上传图片的原始名称
			String originalFileName = pictureFile.getOriginalFilename();
			System.out.println("++++++++++++++++++++++++++++++++++"+originalFileName);
			//新的图片名称
			if(originalFileName !=null && originalFileName!=""){
				String newFileName = UUIDUtil.getId()+originalFileName.substring(originalFileName.lastIndexOf("."));
				mt.setPicture_id(newFileName);
			
				System.out.println("----------------------------------"+newFileName);
				//新文件
				File file = new File(filePath+newFileName);
				//将内存中的文件写入磁盘
				pictureFile.transferTo(file);
				
				//图片上传成功后，将图片地址写入数据库
				
			}
			
		}else{
			System.out.println("没有上传图片");
			//ma.setPicture(request.getParameter("picture"));
		}
		
		myTravelsService.update(mt);
		
		return "forward:myTravels/toShow.do";
	
		
		
		
	}	
	
	
}
