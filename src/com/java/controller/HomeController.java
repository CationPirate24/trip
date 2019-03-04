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
	 * 主页页面
	 */
	
	//首页
	@RequestMapping("/home/toHome.do")
	public ModelAndView toHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/home");
		return mav;
	}
	
	//城市主页
	@RequestMapping("/home/toCityHome.do")
	public ModelAndView toCityHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/cityHome");
		return mav;
	}
	
	//单个城市页面
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
	
	
	//酒店主页
	@RequestMapping("/home/toHotelHome.do")
	public ModelAndView toHotelHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/hotelHome");
		return mav;
	}
	
	//景点主页
	@RequestMapping("/home/toInterestHome.do")
	public ModelAndView toInterestHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/interestHome");
		return mav;
	}
	
	//美食主页
	@RequestMapping("/home/toFoodHome.do")
	public ModelAndView toFoodHome(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyCity> cList = myCityService.getAll("%%");
		
		request.setAttribute("cList", cList);
		mav.setViewName("home/foodHome");
		return mav;
	}
	
	/*
	 * 酒店页面
	 */
	@RequestMapping("/home/hotels/toHotelOfMyCity.do")
	public ModelAndView toHotelOfMyCity(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		//找到城市
		String myCityId = request.getParameter("myCityId");
		MyCity myCity = myCityService.getById(myCityId);
		request.setAttribute("myCity", myCity);
		//遍历这个城市的酒店
		List<MyHotel> myHotelList = myHotelService.getByMyCityId(myCityId);
		request.setAttribute("mhList",myHotelList);
		//找到这个城市的评论
		List<MyComment> myCommentList = myCommentService.getByType(myCityId);
		List<MyComment> mcList = CommentUtil.getComment(myCommentList);
		request.setAttribute("mcList",mcList);
		//这个酒店的评论条数
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
		
		//通过酒店id找到酒店
		String id = request.getParameter("id");
		MyHotel mh = myHotelService.getById(id);
		request.setAttribute("mh",mh);
		int grade = Integer.parseInt(mh.getGrade());
		if(grade>4){
			request.setAttribute("grade","非常好");
		}else if(grade>3){
			request.setAttribute("grade","很好");
		}else if(grade>2){
			request.setAttribute("grade","一般");
		}else{
			request.setAttribute("grade","差劲");
		}
		//通过酒店找到城市
		MyCity myCity = myCityService.getById(mh.getMy_city_id());
		request.setAttribute("myCity", myCity);
		//通过酒店id找到该酒店的评论
		List<MyComment> mcList = myCommentService.getByType(id);
		request.setAttribute("mcList",mcList);
		//通过酒店评论找到用户对象
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
	 * 景点页面
	 */
	@RequestMapping("/home/interests/toInterestOfMyCity.do")
	public ModelAndView toInterestOfMyCity(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		//找到城市
		String myCityId = request.getParameter("myCityId");
		MyCity myCity = myCityService.getById(myCityId);
		request.setAttribute("myCity", myCity);
		//遍历这个城市的景点
		List<MyInterest> miList = myInterestService.getByMyCityId(myCityId);
		request.setAttribute("miList",miList);
		//找到这个城市的评论
		List<MyComment> myCommentList = myCommentService.getByType(myCityId);
		List<MyComment> mcList = CommentUtil.getComment(myCommentList);
		request.setAttribute("mcList",mcList);
		//这个景点的评论条数
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
		//通过景点id找到景点
		String id = request.getParameter("id");
		MyInterest mi = myInterestService.getById(id);
		request.setAttribute("mi",mi);
		int grade = Integer.parseInt(mi.getGrade());
		if(grade>4){
			request.setAttribute("grade","非常好");
		}else if(grade>3){
			request.setAttribute("grade","很好");
		}else if(grade>2){
			request.setAttribute("grade","一般");
		}else{
			request.setAttribute("grade","差劲");
		}
		//通过景点找到城市
		MyCity myCity = myCityService.getById(mi.getMyCityId());
		request.setAttribute("myCity", myCity);
		//通过景点id找到该景点的评论
		List<MyComment> mcList = myCommentService.getByType(id);
		request.setAttribute("mcList",mcList);
		//通过景点评论找到用户对象
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
	 * 美食页面
	 */
	@RequestMapping("/home/foods/toFoodOfMyCity.do")
	public ModelAndView toFoodOfMyCity(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		//找到城市
		String myCityId = request.getParameter("myCityId");
		MyCity myCity = myCityService.getById(myCityId);
		request.setAttribute("myCity", myCity);
		//遍历这个城市的美食
		List<MyFood> myFoodList = myFoodService.getByMyCityId(myCityId);
		request.setAttribute("mfList", myFoodList);
		//找到这个城市的评论
		List<MyComment> myCommentList = myCommentService.getByType(myCityId);
		List<MyComment> mcList = CommentUtil.getComment(myCommentList);
		request.setAttribute("mcList",mcList);
		//这个美食的评论条数
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
		
		//通过美食id找到美食
		String id = request.getParameter("id");
		MyFood mf = myFoodService.getById(id);
		request.setAttribute("mf",mf);
		int grade = Integer.parseInt(mf.getGrade());
		if(grade>4){
			request.setAttribute("grade","非常好");
		}else if(grade>3){
			request.setAttribute("grade","很好");
		}else if(grade>2){
			request.setAttribute("grade","一般");
		}else{
			request.setAttribute("grade","差劲");
		}
		//通过美食找到城市
		MyCity myCity = myCityService.getById(mf.getAddress());
		request.setAttribute("myCity", myCity);
		//通过美食id找到该美食的评论
		List<MyComment> mcList = myCommentService.getByType(id);
		request.setAttribute("mcList",mcList);
		//通过美食评论找到用户对象
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
































