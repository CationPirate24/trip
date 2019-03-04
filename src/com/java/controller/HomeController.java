package com.java.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyAccount;
import com.java.bean.MyCity;
import com.java.bean.MyComment;
import com.java.bean.MyFood;
import com.java.bean.MyHotel;
import com.java.bean.MyInterest;
import com.java.service.MyCityService;
import com.java.service.MyCommentService;
import com.java.service.MyFoodService;
import com.java.service.MyHotelService;
import com.java.service.MyInterestService;
import com.java.service.MyUserManagerService;
import com.java.util.CommentUtil;
import com.java.vo.MyCommentAndAccountVo;

@Controller
public class HomeController {

	@Autowired
	private MyCityService  myCityService;
	@Autowired
	private MyInterestService myInterestService;
	@Autowired
	private MyCommentService myCommentService;
	@Autowired
	private MyFoodService myFoodService;
	@Autowired
	private MyHotelService myHotelService;
	@Autowired
	private MyUserManagerService myUserManagerService;
	
	
	/*
	 * ��ҳҳ��
	 */
	
	//��ҳ
	@RequestMapping("/home/toHome.do")
	public ModelAndView toHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/home");
		return mav;
	}
	
	//������ҳ
	@RequestMapping("/home/toCityHome.do")
	public ModelAndView toCityHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/cityHome");
		return mav;
	}
	
	//��������ҳ��
	@RequestMapping("/home/toOneCity.do")
	public ModelAndView toOneCity(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		MyCity myCity = null;
		String id = request.getParameter("id");
		String myCityId = request.getParameter("myCityId");
		
		if(id!=null&&myCityId==null){
			myCity = myCityService.getById(id);
		}if(id==null&&myCityId!=null){
			myCity = myCityService.getById(myCityId);
		}
		
		request.setAttribute("myCity",myCity);
		
		mav.setViewName("home/oneCity");
		return mav;
	}
	
	
	//�Ƶ���ҳ
	@RequestMapping("/home/toHotelHome.do")
	public ModelAndView toHotelHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/hotelHome");
		return mav;
	}
	
	//������ҳ
	@RequestMapping("/home/toInterestHome.do")
	public ModelAndView toInterestHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/interestHome");
		return mav;
	}
	
	//��ʳ��ҳ
	@RequestMapping("/home/toFoodHome.do")
	public ModelAndView toFoodHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/foodHome");
		return mav;
	}
	
	/*
	 * �Ƶ�ҳ��
	 */
	@RequestMapping("/home/hotels/toHotelOfMyCity.do")
	public ModelAndView toHotelOfMyCity(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		//�ҵ�����
		String myCityId = request.getParameter("myCityId");
		MyCity myCity = myCityService.getById(myCityId);
		request.setAttribute("myCity", myCity);
		//����������еľƵ�
		List<MyHotel> myHotelList = myHotelService.getByMyCityId(myCityId);
		request.setAttribute("mhList",myHotelList);
		//�ҵ�������е�����
		List<MyComment> myCommentList = myCommentService.getByType(myCityId);
		List<MyComment> mcList = CommentUtil.getComment(myCommentList);
		request.setAttribute("mcList",mcList);
		//����Ƶ����������
		int count = 0;
		for(MyHotel mh:myHotelList){
			System.out.println("=========="+mh.getName());
			count += myCommentService.getCountByType(mh.getId());
			System.out.println("~~~~~~~~~~"+count);
		}
		request.setAttribute("count",count);
		
		mav.setViewName("home/hotels/hotelOfMyCity");
		return mav;
	}
	
	@RequestMapping("/home/hotels/toHotelSelf.do")
	public ModelAndView toHotelSelf(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		//ͨ���Ƶ�id�ҵ��Ƶ�
		String id = request.getParameter("id");
		MyHotel mh = myHotelService.getById(id);
		request.setAttribute("mh",mh);
		int grade = Integer.parseInt(mh.getGrade());
		if(grade>4){
			request.setAttribute("grade","�ǳ���");
		}else if(grade>3){
			request.setAttribute("grade","�ܺ�");
		}else if(grade>2){
			request.setAttribute("grade","һ��");
		}else{
			request.setAttribute("grade","�");
		}
		//ͨ���Ƶ��ҵ�����
		MyCity myCity = myCityService.getById(mh.getMy_city_id());
		request.setAttribute("myCity", myCity);
		//ͨ���Ƶ�id�ҵ��þƵ������
		List<MyComment> mcList = myCommentService.getByType(id);
		request.setAttribute("mcList",mcList);
		//ͨ���Ƶ������ҵ��û�����
		List<MyCommentAndAccountVo> maaList = new ArrayList<MyCommentAndAccountVo>();
		for(MyComment mc:mcList){
			MyAccount ma = myUserManagerService.getById(mc.getAccountId());
			
			MyCommentAndAccountVo maa = new MyCommentAndAccountVo();
			maa.setName(ma.getName());
			maa.setDescribe(mc.getDescribe());
			maa.setPicture(ma.getPicture());
			maa.setPictureId(mc.getPictureId());
			maa.setTitle(mc.getTitle());
			maa.setType(mc.getType());
			
			maaList.add(maa);
		}
		request.setAttribute("maaList",maaList);
		mav.setViewName("home/hotels/hotelSelf");
		return mav;
	}
	
	/*
	 * ����ҳ��
	 */
	@RequestMapping("/home/interests/toInterestOfMyCity.do")
	public ModelAndView toInterestOfMyCity(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		//�ҵ�����
		String myCityId = request.getParameter("myCityId");
		MyCity myCity = myCityService.getById(myCityId);
		request.setAttribute("myCity", myCity);
		//����������еľ���
		List<MyInterest> miList = myInterestService.getByMyCityId(myCityId);
		request.setAttribute("miList",miList);
		//�ҵ�������е�����
		List<MyComment> myCommentList = myCommentService.getByType(myCityId);
		List<MyComment> mcList = CommentUtil.getComment(myCommentList);
		request.setAttribute("mcList",mcList);
		//����������������
		int count = 0;
		for(MyInterest mi:miList){
			System.out.println("=========="+mi.getName());
			count += myCommentService.getCountByType(mi.getId());
			System.out.println("~~~~~~~~~~"+count);
		}
		request.setAttribute("count",count);
		mav.setViewName("home/interests/interestOfMyCity");
		return mav;
	}
	
	@RequestMapping("/home/interests/toInterestSelf.do")
	public ModelAndView toInterestSelf(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		//ͨ������id�ҵ�����
		String id = request.getParameter("id");
		MyInterest mi = myInterestService.getById(id);
		request.setAttribute("mi",mi);
		int grade = Integer.parseInt(mi.getGrade());
		if(grade>4){
			request.setAttribute("grade","�ǳ���");
		}else if(grade>3){
			request.setAttribute("grade","�ܺ�");
		}else if(grade>2){
			request.setAttribute("grade","һ��");
		}else{
			request.setAttribute("grade","�");
		}
		//ͨ�������ҵ�����
		MyCity myCity = myCityService.getById(mi.getMyCityId());
		request.setAttribute("myCity", myCity);
		//ͨ������id�ҵ��þ��������
		List<MyComment> mcList = myCommentService.getByType(id);
		request.setAttribute("mcList",mcList);
		//ͨ�����������ҵ��û�����
		List<MyCommentAndAccountVo> maaList = new ArrayList<MyCommentAndAccountVo>();
		for(MyComment mc:mcList){
			MyAccount ma = myUserManagerService.getById(mc.getAccountId());
			
			MyCommentAndAccountVo maa = new MyCommentAndAccountVo();
			maa.setName(ma.getName());
			maa.setDescribe(mc.getDescribe());
			maa.setPicture(ma.getPicture());
			maa.setPictureId(mc.getPictureId());
			maa.setTitle(mc.getTitle());
			maa.setType(mc.getType());
			
			maaList.add(maa);
		}
		request.setAttribute("maaList",maaList);
		
		mav.setViewName("home/interests/interestSelf");
		return mav;
	}
	
	/*
	 * ��ʳҳ��
	 */
	@RequestMapping("/home/foods/toFoodOfMyCity.do")
	public ModelAndView toFoodOfMyCity(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		//�ҵ�����
		String myCityId = request.getParameter("myCityId");
		MyCity myCity = myCityService.getById(myCityId);
		request.setAttribute("myCity", myCity);
		//����������е���ʳ
		List<MyFood> myFoodList = myFoodService.getByMyCityId(myCityId);
		request.setAttribute("mfList", myFoodList);
		//�ҵ�������е�����
		List<MyComment> myCommentList = myCommentService.getByType(myCityId);
		List<MyComment> mcList = CommentUtil.getComment(myCommentList);
		request.setAttribute("mcList",mcList);
		//�����ʳ����������
		int count = 0;
		for(MyFood mf:myFoodList){
			System.out.println("=========="+mf.getName());
			count += myCommentService.getCountByType(mf.getId());
			System.out.println("~~~~~~~~~~"+count);
		}
		request.setAttribute("count",count);
		
		mav.setViewName("home/foods/foodOfMyCity");
		return mav;
	}
	
	@RequestMapping("/home/foods/toFoodSelf.do")
	public ModelAndView toFoodSelf(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		//ͨ����ʳid�ҵ���ʳ
		String id = request.getParameter("id");
		MyFood mf = myFoodService.getById(id);
		request.setAttribute("mf",mf);
		int grade = Integer.parseInt(mf.getGrade());
		if(grade>4){
			request.setAttribute("grade","�ǳ���");
		}else if(grade>3){
			request.setAttribute("grade","�ܺ�");
		}else if(grade>2){
			request.setAttribute("grade","һ��");
		}else{
			request.setAttribute("grade","�");
		}
		//ͨ����ʳ�ҵ�����
		MyCity myCity = myCityService.getById(mf.getAddress());
		request.setAttribute("myCity", myCity);
		//ͨ����ʳid�ҵ�����ʳ������
		List<MyComment> mcList = myCommentService.getByType(id);
		request.setAttribute("mcList",mcList);
		//ͨ����ʳ�����ҵ��û�����
		List<MyCommentAndAccountVo> maaList = new ArrayList<MyCommentAndAccountVo>();
		for(MyComment mc:mcList){
			MyAccount ma = myUserManagerService.getById(mc.getAccountId());
			
			MyCommentAndAccountVo maa = new MyCommentAndAccountVo();
			maa.setName(ma.getName());
			maa.setDescribe(mc.getDescribe());
			maa.setPicture(ma.getPicture());
			maa.setPictureId(mc.getPictureId());
			maa.setTitle(mc.getTitle());
			maa.setType(mc.getType());
			
			maaList.add(maa);
		}
		request.setAttribute("maaList",maaList);
		
		mav.setViewName("home/foods/foodSelf");
		return mav;
	}
}
































