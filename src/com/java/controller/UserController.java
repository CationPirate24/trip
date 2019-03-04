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
import com.java.bean.MyAccount;
import com.java.bean.MyComment;
import com.java.bean.MyTravels;
import com.java.service.MyCommentService;
import com.java.service.MyTravelsService;
import com.java.service.MyUserManagerService;
import com.java.util.CodeUtil;
import com.java.util.UUIDUtil;
import com.java.vo.MyAccountVo;

@Controller
public class UserController {
	
	@Autowired
	private MyUserManagerService myUserManagerService;//用户service
	@Autowired(required=true)
	private MyTravelsService myTravelsService;//游记
	@Autowired
	private MyCommentService myCommentService;//评论
	
	@RequestMapping("account1/toLogin.do")
	//用户登录
	public ModelAndView toLogin(){
		System.out.println("-------------------------------------------11111111111111111");
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("account/login");
		return mav;
		
	}
	
	//用户登录验证
	@RequestMapping("/account1/checkLogin.do")
	public String checkLogin(HttpServletRequest request){
		String str ;
		
		//mv.setValue("false");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		MyAccount  ma = myUserManagerService.checkLogin(username, password);
		System.out.println(ma);
		if(ma !=null){
			 str ="forward:/account1/toHome.do";//和项目后应该跳到主页跳到主页
			request.getSession().setAttribute("ma", ma);
		}else{
			
			String a ="密码或者用户名不正确";
			request.setAttribute("l",a );
			str="forward:/account1/toLogin.do";
		}
		return str;
	}
	
	
	
	@RequestMapping("/account1/toRegsiter.do")
	//用户注册
	public ModelAndView toRegsiter(){
		System.out.println("-------------------------------------------11111111111111111");
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("account/register");
		return mav;
		
	}
	@RequestMapping("/account1/register.do")
	//注册添加
	public ModelAndView toAdd(HttpServletRequest request){
		System.out.println("--------------------------------2222222222-----------11111111111111111");
		ModelAndView mav = new ModelAndView();
		MyAccount ma = new MyAccount();
		
		ma.setId(UUIDUtil.getId());
		ma.setUsername(request.getParameter("username"));
		ma.setPassword(request.getParameter("password"));
		ma.setPicture("001.jpg");
		myUserManagerService.add1(ma);
		request.getSession().setAttribute("ma", ma);
		mav.setViewName("account/see");
		return mav;
		
	}
	@RequestMapping("/account1/toHome.do")
	//个人信息查看页
	public ModelAndView toHome(HttpServletRequest request){
		System.out.println("-------------------------------------------11111111111111111");
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("account/home");
		return mav;
		
	}
	


//	@RequestMapping("/account1/toSee.do")
//	//个人信息查看页
//	public ModelAndView toAccountHome(HttpServletRequest request){
//		System.out.println("-------------------------------------------11111111111111111");
//		ModelAndView mav = new ModelAndView();
//		
//		mav.setViewName("account/see");
//		return mav;
//		
//	}

	@RequestMapping("/account1/toSee1.do")
	//修改后个人信息查看页
	public ModelAndView toSee(HttpServletRequest request){
		System.out.println("-------------------------------------------11111111111111111");
		ModelAndView mav = new ModelAndView();
		MyAccount ma =(MyAccount) request.getSession().getAttribute("ma");
		System.out.println(request.getParameter("accountid"));
		String id = ma.getId();
		ma = myUserManagerService.getById(id);
		String sexvo= CodeUtil.getMyValue(ma.getSex(), "SEX");
		MyAccountVo mavo = new MyAccountVo();
		mavo.setId(ma.getId());
		mavo.setAge(ma.getAge());
		mavo.setName(ma.getName());
		mavo.setUsername(ma.getUsername());
		mavo.setPassword(ma.getPassword());
		mavo.setPicture(ma.getPicture());
		mavo.setE_mail(ma.getE_mail());
		mavo.setMoney(ma.getMoney());
		mavo.setPhone(ma.getPhone());
		mavo.setSexVo(sexvo);
		
		
		request.setAttribute("ma", mavo);
	
		
		mav.setViewName("account/see");
		return mav;
		
	}
	
	
	
	@RequestMapping("/account1/toUpdate.do")
	//个人信息编辑,修改
	public ModelAndView toUpdate(HttpServletRequest request){
		System.out.println("-------------------------------------------11111111111111111");
		ModelAndView mav = new ModelAndView();
		List<Code> typeList = CodeUtil.getCode("SEX");
		for(Code c :typeList){
			System.out.println(c.getMyValue());
		}
		request.setAttribute("typeList", typeList);
		mav.setViewName("account/update");
		return mav;
		
	}
	@RequestMapping("/account1/update.do")
	public String update(HttpServletRequest request,MultipartFile picture)throws IllegalStateException, IOException{
		
		MyAccount ma = new MyAccount();
		if(picture!=null){
			//图片上传成功后，将图片地址写到数据库
			String filePath = "F:\\a\\";
			//得到上传图片的原始名称
			String originalFileName = picture.getOriginalFilename();
			System.out.println("++++++++++++++++++++++++++++++++++"+originalFileName);
			//新的图片名称
			if(originalFileName !=null && originalFileName!=""){
				String newFileName = UUIDUtil.getId()+originalFileName.substring(originalFileName.lastIndexOf("."));
				ma.setPicture(newFileName);
			
				System.out.println("----------------------------------"+newFileName);
				//新文件
				File file = new File(filePath+newFileName);
				//将内存中的文件写入磁盘
				picture.transferTo(file);
				
				//图片上传成功后，将图片地址写入数据库
				
			}
			
		}else{
			System.out.println("没有上传图片");
			//ma.setPicture(request.getParameter("picture"));
		}
		
		
		ma.setId(request.getParameter("accountid"));
		ma.setUsername(request.getParameter("username"));
		ma.setName(request.getParameter("name"));
		
		ma.setAge(request.getParameter("age"));
		ma.setSex(request.getParameter("sex"));
		ma.setE_mail(request.getParameter("mail"));
		ma.setPhone(request.getParameter("phone"));
		ma.setMoney(request.getParameter("money"));
		System.out.println(ma);
		
		myUserManagerService.update(ma);
		
		 String str="forward:/account1/toSee1.do";
		 
		return str; 
		
	}
	@RequestMapping("/account1/toAccount.do")
	//个人中心
	public ModelAndView toAccount(HttpServletRequest request){
		System.out.println("-------------------------------------------11111111111111111+我是跳转");
		ModelAndView mav = new ModelAndView();
		MyAccount ma = (MyAccount)request.getSession().getAttribute("ma");
		String username= ma.getUsername();
		List<MyTravels>list = myTravelsService.getByAuthor(username);
		
		for(MyTravels mt:list){
			
			System.out.println(mt+"---------------------------------------");
		}
		request.setAttribute("mtlist", list);
		mav.setViewName("account/account1");
		return mav;
		
	}
	
	
	//订单查看
	@RequestMapping("/account1/toMyOrder.do")
	public ModelAndView torder(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("account/order");
		return mav;
	}
	
	
	//个人评论查看
	
	
	@RequestMapping("/account1/toComment.do")
	public ModelAndView toMyComment(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		MyAccount ma = (MyAccount)request.getSession().getAttribute("ma");
		List<MyComment> list = myCommentService.getByAccountId(ma.getId());
		request.setAttribute("mcList", list);
		
		mav.setViewName("account/comment");
		return mav;
	}
	
	
	
	
	
}
