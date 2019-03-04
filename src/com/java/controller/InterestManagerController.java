package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyManager;
import com.java.service.InterestManagerService;
import com.java.util.UUIDUtil;

@Controller
public class InterestManagerController {

	@Autowired
	private InterestManagerService interestManagerService;
	
	@RequestMapping("/interestManager/toLogin.do")
	public ModelAndView toLogin(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("interestManager/login");
		return mav;
	}
	
	@RequestMapping("/interestManager/login.do")
	public String login(HttpServletRequest request,String username,String password){
		
		System.out.println("------------"+username);
		System.out.println("============"+password);
		
		MyManager mm = interestManagerService.checkLogin(username, password);
		request.getSession().setAttribute("interestManager", mm);
		if(mm==null){
			return "forward:/interestManager/toLogin.do";
		}else{
			return "forward:/interest/toList.do";
		}
		
	}
	
	@RequestMapping("/interestManager/toList.do")
	public ModelAndView toList(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String con = request.getParameter("con");
		if(con==null||"null".equals(con)){
			con = "%%";
		}else{
			con = "%"+con+"%";
		}
		List<MyManager> list = interestManagerService.getAll(con);
		request.setAttribute("mmList", list);
		
		mav.setViewName("interestManager/list");
		return mav;
	}
	
	@RequestMapping("/interestManager/toAdd.do")
	public ModelAndView toAdd(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("interestManager/add");
		return mav;
	}
	
	@RequestMapping("/interestManager/add.do")
	public String add(HttpServletRequest request){
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		
		MyManager mm = new MyManager();
		mm.setId(UUIDUtil.getId());
		mm.setUsername(username);
		mm.setPassword(password);
		mm.setName(name);
		mm.setAge(age);
		mm.setSex(sex);
		mm.setEmail(email);
		mm.setPhone(phone);
		mm.setType(type);
		
		interestManagerService.add(mm);
		
		return "forward:/interestManager/toList.do";
	}
	
	@RequestMapping("/interestManager/toFind.do")
	public ModelAndView toFind(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		MyManager mm = interestManagerService.getById(id);
		request.setAttribute("mm", mm);
		
		mav.setViewName("interestManager/find");
		return mav;
	}
	
	@RequestMapping("/interestManager/find.do")
	public String find(){
		return "forward:/interestManager/toList.do";
	}
	
	@RequestMapping("/interestManager/toUpdate.do")
	public ModelAndView toUpdate(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		MyManager mm = interestManagerService.getById(id);
		request.setAttribute("mm", mm);
		
		mav.setViewName("interestManager/update");
		return mav;
	}
	
	@RequestMapping("/interestManager/update.do")
	public String update(HttpServletRequest request){
		
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		
		MyManager mm = new MyManager();
		mm.setId(id);
		mm.setUsername(username);
		mm.setPassword(password);
		mm.setName(name);
		mm.setAge(age);
		mm.setSex(sex);
		mm.setEmail(email);
		mm.setPhone(phone);
		mm.setType(type);
		
		interestManagerService.update(mm);
		
		return "forward:/interestManager/toList.do";
	}
	
	@RequestMapping("/interestManager/delete.do")
	public String delete(HttpServletRequest request){
		String id = request.getParameter("id");
		interestManagerService.delete(id);
		return "forward:/interestManager/toList.do";
	}
	
}


























