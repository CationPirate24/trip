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
import com.java.bean.MyHotel;
import com.java.bean.Page;
import com.java.service.MyCityService;
import com.java.service.MyHotelService;
import com.java.util.CodeUtil;
import com.java.util.HotelVoUtil;
import com.java.util.PageUtil;
import com.java.util.UUIDUtil;
import com.java.vo.HotelVo;


@Controller
public class MyHotelController {
	@Autowired
	private MyHotelService myHotelService;
	@Autowired
	private MyCityService myCityService;
	/*@Autowired
	private MyManagerService myManagerService;
	
	
	@RequestMapping("/hotelManager/toLogin.do")
	public ModelAndView toLogin(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("hotelManager/login");
		return mav;	
	}
	//酒店管理人员登录
	@RequestMapping("/hotelManager/login.do")
	public String login(String username,String password,HttpServletRequest req){
		String str=null;
		MyManager mm= myManagerService.checkLogin(username, password);
		if (mm!=null) {
			req.getSession().setAttribute("user", mm);
			str="redirect:/hotelManager/toList.do";
		}else{			
			req.setAttribute("login", "用户名或密码错误，请重新登录！");
			str="hotelManager/login";
		}	
		return str;		
	}*/
	
	//跳转到酒店列表页
	@RequestMapping("/hotelManager/toList.do")
	public ModelAndView toList(String con,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		
		Page page = new Page();
		int allRecodeCount = myHotelService.getAllCount();
		System.out.println("################"+allRecodeCount);
		
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr==null||"".equals(currentPageStr)||"null".equals(currentPageStr)){
			currentPageStr = "1";
		}
		int currentPage = Integer.valueOf(currentPageStr);
		
		if (con==null||"".equals(con)||"null".equals(con)) {
			con = "";
		}
		
		page.setCon(con);
		page.setAllRecodeCount(allRecodeCount);
		page.setCurrentPage(currentPage);
		page.setEveryPageCount(5);
		
		List<MyHotel> list = myHotelService.getEveryPageCount(page);
		for(MyHotel mi:list){
			System.out.println("&&&&&&&&&&&&&&&&"+mi.getDescribe());
		}
		
		List<HotelVo> hvList=HotelVoUtil.getHotelVo(list);
		mav.addObject("hvList", hvList);
		PageUtil.setLocal(page);
		mav.setViewName("hotelManager/list");			
		return mav;		
	}
	
	
	
	
	
	
	
	//跳转到查看页
	@RequestMapping("/hotelManager/toFind.do")
	public ModelAndView toFind(String id,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		MyHotel hotel=myHotelService.getById(id);
		HotelVo hv=HotelVoUtil.getHotelVo(hotel);
		mav.addObject("hv",hv);
		System.out.println("---------------------------------"+hotel);
		System.out.println(hv);
		
		String hotelType[] = hv.getType().split(",");
		String hotelTypes = CodeUtil.getTypeValues(hotelType, "HOTEL");
		request.setAttribute("hotelTypes", hotelTypes);
		
		//通过myCityId找到目的地，将目的地的名字取出来
		MyCity myCity = myCityService.getById(hv.getMy_city_id());
		String myCityName = myCity.getName();
		request.setAttribute("myCityName",myCityName);
		
		mav.setViewName("hotelManager/find");
		return mav;
	}
	@RequestMapping("/hotelManager/find")
	public String find(){
		return "redirect:/hotelManager/toList.do";
	}
	
	//跳转到修改页
	@RequestMapping("/hotelManager/toUpdate.do")
	public ModelAndView toUpdate(String id,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		
		MyHotel hotel=myHotelService.getById(id);
		HotelVo hv=HotelVoUtil.getHotelVo(hotel);
		
		List<Code> list=CodeUtil.getCode("HOTEL");
		mav.addObject("typeList", list);
		
		//通过遍历目的地表查出所有目的地，然后传值
		List<MyCity> myCityList = myCityService.getAll("%%");
		request.setAttribute("myCityList",myCityList);
		
		mav.addObject("hotel",hv);
		mav.setViewName("hotelManager/update");
		return mav;
	}

	//进行修改操作
	@RequestMapping("/hotelManager/update.do")
	public String update(MyHotel myHotel,MultipartFile pictureFile ,MultipartFile mapFile) throws IllegalStateException, IOException{

		System.out.println(myHotel.getName());
		
		
		//进行图片存储
		if (pictureFile!=null) {
			String ysFileName=pictureFile.getOriginalFilename();//原始图片名称
			if(ysFileName!=null&&ysFileName!=""){
				String newFileName=UUIDUtil.getId()+ysFileName.substring(ysFileName.lastIndexOf("."),ysFileName.length());
				myHotel.setPicture_id(newFileName);			
				//得到图片新的路径，并写入磁盘中
				File file=new File("F:\\a\\"+newFileName);
				pictureFile.transferTo(file);
			}
						
		}
		//进行地图存储
		if (mapFile!=null) {
			String ysFileName=mapFile.getOriginalFilename();
			if(ysFileName!=null&&ysFileName!=""){
				String newFileName=UUIDUtil.getId()+ysFileName.substring(ysFileName.lastIndexOf("."),ysFileName.length());
				myHotel.setMap_id(newFileName);
				File file=new File("F:\\a\\"+newFileName);
				mapFile.transferTo(file);
			}
						
		}
		myHotelService.update(myHotel);

		return "redirect:/hotelManager/toList.do";
	}
	
	//跳转到添加页
	@RequestMapping("/hotelManager/toAdd.do")
	public ModelAndView toAdd(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		List<Code> list=CodeUtil.getCode("HOTEL");
		mav.addObject("typeList", list);
		
		//通过遍历目的地表查出所有目的地，然后传值
		List<MyCity> myCityList = myCityService.getAll("%%");
		request.setAttribute("myCityList",myCityList);
		
		mav.setViewName("hotelManager/add");
		return mav;	
	}

	//进行添加操作
	@RequestMapping("/hotelManager/add.do")
	public String add(MyHotel myHotel,MultipartFile pictureFile ,MultipartFile mapFile) throws IllegalStateException, IOException{
		
		myHotel.setId(UUIDUtil.getId());
		System.out.println("add操作!!!!!!!!!!!!!!!!!!!!"+myHotel.getName()+"       "+myHotel.getId()+"    "+myHotel.getType());		
		
		myHotel.setCount("100");
		myHotel.setGrade("0");
		
		//进行图片存储
		if (pictureFile!=null) {
			String ysFileName=pictureFile.getOriginalFilename();//原始图片名称
			if(ysFileName!=null&&ysFileName!=""){
				String newFileName=UUIDUtil.getId()+ysFileName.substring(ysFileName.lastIndexOf("."),ysFileName.length());
				myHotel.setPicture_id(newFileName);			
				//得到图片新的路径，并写入磁盘中
				File file=new File("F:\\a\\"+newFileName);
				pictureFile.transferTo(file);
			}
						
		}
		//进行地图存储
		if (mapFile!=null) {
			String ysFileName=mapFile.getOriginalFilename();
			if(ysFileName!=null&&ysFileName!=""){
				String newFileName=UUIDUtil.getId()+ysFileName.substring(ysFileName.lastIndexOf("."),ysFileName.length());
				myHotel.setMap_id(newFileName);
				File file=new File("F:\\a\\"+newFileName);
				mapFile.transferTo(file);
			}
						
		}
		System.out.println("------------------------"+myHotel);
		myHotelService.add(myHotel);
		
		return "redirect:/hotelManager/toList.do";
	}
	//进行删除操作
	@RequestMapping("/hotelManager/delete.do")
	public String delete(String id){
		myHotelService.delete(id);
		
		
		return "redirect:/hotelManager/toList.do";
	}
	
	
	
	
}
