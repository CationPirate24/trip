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
		
		//��ӳ���
		List<String> cityList=new ArrayList<String>();
		cityList.add("����");
		cityList.add("���");
		cityList.add("����");
		cityList.add("�Ϻ�");
		
		cityList.add("����");
		cityList.add("�ӱ�");
		cityList.add("����");
		cityList.add("����");
		cityList.add("������");
		cityList.add("����");
		cityList.add("����");
		cityList.add("ɽ��");
		cityList.add("�½�");
		cityList.add("����");
		
		cityList.add("�㽭");
		cityList.add("����");
		cityList.add("����");
		cityList.add("����");		
		cityList.add("����");
		cityList.add("ɽ��");
		cityList.add("���ɹ�");
		cityList.add("����");
		cityList.add("����");
		cityList.add("����");
		
		cityList.add("����");
		cityList.add("�㶫");
		cityList.add("�ຣ");
		cityList.add("����");		
		cityList.add("�Ĵ�");
		cityList.add("����");
		cityList.add("����");
		cityList.add("̨��");
		cityList.add("���");
		cityList.add("����");
		
		
		
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
		
		//���������ݲ�ȫ���򷵻����ҳ�����½������
		System.out.println("-----------------------------------");
		System.out.println("_________"+myTravels.getName()+"__");
		System.out.println("--------------"+pictureFile);
		if (myTravels.getName().equals("")||myTravels.getName()==null||myTravels.getDays().equals("")||myTravels.getWay().equals("")||myTravels.getDescribe().equals("")||pictureFile==null||myTravels.getAddress().equals("")) {
			System.out.println("-----------------------------------");
			System.out.println(myTravels);
			mav.setViewName("myTravels/add");
			
		}else {
			myTravels.setId(UUIDUtil.getId());
			
			//�õ��û������Ӷ��������ߣ����δ��¼����������Ϊ�ο�
			MyAccount ma = (MyAccount)req.getSession().getAttribute("ma");
			String username=ma.getUsername();
			System.out.println(username);
			if (username!=null) {
				myTravels.setAuthor(username);
			}else{
				myTravels.setAuthor("�ο�");
			}
			String ysFileName=pictureFile.getOriginalFilename();//ԭʼͼƬ����
			//����ͼƬ
			if (ysFileName!=null && ysFileName != "") {
				
				String newFileName=UUIDUtil.getId()+ysFileName.substring(ysFileName.lastIndexOf("."),ysFileName.length());
				myTravels.setPicture_id(newFileName);			
				//�õ�ͼƬ�µ�·������д�������
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
	
	
	//�μ��޸�
	@RequestMapping("/myTravels/update.do")
	public String Update(HttpServletRequest request,MultipartFile pictureFile) throws IllegalStateException, IOException{
		
		ModelAndView mav=new ModelAndView();
		
		MyTravels mt  = new MyTravels();
		mt.setId(request.getParameter("id"));
		mt.setAddress(request.getParameter("address"));
		mt.setDays(request.getParameter("day"));
		mt.setDescribe(request.getParameter("describe"));
		if(pictureFile!=null){
			//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
			String filePath = "F:\\a\\";
			//�õ��ϴ�ͼƬ��ԭʼ����
			String originalFileName = pictureFile.getOriginalFilename();
			System.out.println("++++++++++++++++++++++++++++++++++"+originalFileName);
			//�µ�ͼƬ����
			if(originalFileName !=null && originalFileName!=""){
				String newFileName = UUIDUtil.getId()+originalFileName.substring(originalFileName.lastIndexOf("."));
				mt.setPicture_id(newFileName);
			
				System.out.println("----------------------------------"+newFileName);
				//���ļ�
				File file = new File(filePath+newFileName);
				//���ڴ��е��ļ�д�����
				pictureFile.transferTo(file);
				
				//ͼƬ�ϴ��ɹ��󣬽�ͼƬ��ַд�����ݿ�
				
			}
			
		}else{
			System.out.println("û���ϴ�ͼƬ");
			//ma.setPicture(request.getParameter("picture"));
		}
		
		myTravelsService.update(mt);
		
		return "forward:myTravels/toShow.do";
	
		
		
		
	}	
	
	
}
