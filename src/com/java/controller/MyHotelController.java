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
	//�Ƶ������Ա��¼
	@RequestMapping("/hotelManager/login.do")
	public String login(String username,String password,HttpServletRequest req){
		String str=null;
		MyManager mm= myManagerService.checkLogin(username, password);
		if (mm!=null) {
			req.getSession().setAttribute("user", mm);
			str="redirect:/hotelManager/toList.do";
		}else{			
			req.setAttribute("login", "�û�����������������µ�¼��");
			str="hotelManager/login";
		}	
		return str;		
	}*/
	
	//��ת���Ƶ��б�ҳ
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
	
	
	
	
	
	
	
	//��ת���鿴ҳ
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
		
		//ͨ��myCityId�ҵ�Ŀ�ĵأ���Ŀ�ĵص�����ȡ����
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
	
	//��ת���޸�ҳ
	@RequestMapping("/hotelManager/toUpdate.do")
	public ModelAndView toUpdate(String id,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		
		MyHotel hotel=myHotelService.getById(id);
		HotelVo hv=HotelVoUtil.getHotelVo(hotel);
		
		List<Code> list=CodeUtil.getCode("HOTEL");
		mav.addObject("typeList", list);
		
		//ͨ������Ŀ�ĵر�������Ŀ�ĵأ�Ȼ��ֵ
		List<MyCity> myCityList = myCityService.getAll("%%");
		request.setAttribute("myCityList",myCityList);
		
		mav.addObject("hotel",hv);
		mav.setViewName("hotelManager/update");
		return mav;
	}

	//�����޸Ĳ���
	@RequestMapping("/hotelManager/update.do")
	public String update(MyHotel myHotel,MultipartFile pictureFile ,MultipartFile mapFile) throws IllegalStateException, IOException{

		System.out.println(myHotel.getName());
		
		
		//����ͼƬ�洢
		if (pictureFile!=null) {
			String ysFileName=pictureFile.getOriginalFilename();//ԭʼͼƬ����
			if(ysFileName!=null&&ysFileName!=""){
				String newFileName=UUIDUtil.getId()+ysFileName.substring(ysFileName.lastIndexOf("."),ysFileName.length());
				myHotel.setPicture_id(newFileName);			
				//�õ�ͼƬ�µ�·������д�������
				File file=new File("F:\\a\\"+newFileName);
				pictureFile.transferTo(file);
			}
						
		}
		//���е�ͼ�洢
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
	
	//��ת�����ҳ
	@RequestMapping("/hotelManager/toAdd.do")
	public ModelAndView toAdd(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		List<Code> list=CodeUtil.getCode("HOTEL");
		mav.addObject("typeList", list);
		
		//ͨ������Ŀ�ĵر�������Ŀ�ĵأ�Ȼ��ֵ
		List<MyCity> myCityList = myCityService.getAll("%%");
		request.setAttribute("myCityList",myCityList);
		
		mav.setViewName("hotelManager/add");
		return mav;	
	}

	//������Ӳ���
	@RequestMapping("/hotelManager/add.do")
	public String add(MyHotel myHotel,MultipartFile pictureFile ,MultipartFile mapFile) throws IllegalStateException, IOException{
		
		myHotel.setId(UUIDUtil.getId());
		System.out.println("add����!!!!!!!!!!!!!!!!!!!!"+myHotel.getName()+"       "+myHotel.getId()+"    "+myHotel.getType());		
		
		myHotel.setCount("100");
		myHotel.setGrade("0");
		
		//����ͼƬ�洢
		if (pictureFile!=null) {
			String ysFileName=pictureFile.getOriginalFilename();//ԭʼͼƬ����
			if(ysFileName!=null&&ysFileName!=""){
				String newFileName=UUIDUtil.getId()+ysFileName.substring(ysFileName.lastIndexOf("."),ysFileName.length());
				myHotel.setPicture_id(newFileName);			
				//�õ�ͼƬ�µ�·������д�������
				File file=new File("F:\\a\\"+newFileName);
				pictureFile.transferTo(file);
			}
						
		}
		//���е�ͼ�洢
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
	//����ɾ������
	@RequestMapping("/hotelManager/delete.do")
	public String delete(String id){
		myHotelService.delete(id);
		
		
		return "redirect:/hotelManager/toList.do";
	}
	
	
	
	
}
