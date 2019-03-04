package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.bean.Code;
import com.java.bean.MyAccount;
import com.java.bean.MyManager;
import com.java.bean.Page;
import com.java.service.MyManagerService;
import com.java.service.MyUserManagerService;
import com.java.util.CodeUtil;
import com.java.util.PageUtil;
import com.java.util.UUID1;
import com.java.util.VoUtil;
import com.java.vo.MyManagerVo;


@Controller
public class MyManagerController {

	
	@Autowired
	private MyManagerService myManagerService;
	@Autowired
	private MyUserManagerService myUserManagerService;//ÓÃ»§service
	
	
	@RequestMapping("/manager/toLogin.do")
	public String toLogin(){
	
		return "manager/login";
	}
	
	@RequestMapping("/manager/checkLogin.do")
	public @ResponseBody String  checkLogin(HttpServletRequest request, String username,String password){
		String aa = "success";
		System.out.println("========="+username);
		System.out.println("+++++++++"+password);
		MyManager myManager = myManagerService.checkManager(username, password);
		if (myManager!=null) {
			if (myManager.getType().equals("A")) {
				
			}
			if (myManager.getType().equals("B")) {
				aa = "forward:/food/toList.do";
			}
			if (myManager.getType().equals("C")) {
				aa = "forward:/food/toList.do";
			}
			if (myManager.getType().equals("D")) {
				
			}
		}else{
			
			aa="lose";
		}	
			
			request.getSession().setAttribute("m", myManager);
		
		return aa;
		
	}
	
	
	@RequestMapping("/manager/login.do")
	public String login(HttpServletRequest request){
		String aa="";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println("++++++++++++++"+username);
		MyManager myManager = myManagerService.checkManager(username, password);
		if (myManager!=null) {
			if (myManager.getType().equals("A")) {
				aa = "forward:/manager/toList.do";
			}
			if (myManager.getType().equals("B")) {
				aa = "forward:/food/toList.do";
			}
			if (myManager.getType().equals("C")) {
				aa = "forward:/interest/toList.do";
			}
			if (myManager.getType().equals("D")) {
				aa = "forward:/hotelManager/toList.do";
			}
			if (myManager.getType().equals("E")) {
				aa = "forward:/user/toList.do";
			}
			if (myManager.getType().equals("F")) {
				aa = "forward:/managerUser/toList.do";
			}
			
			request.getSession().setAttribute("myManager", myManager);
		}
		else {
			MyAccount myAccount = myUserManagerService.checkLogin(username, password);
			if(myAccount!=null){
				aa = "forward:/account1/toAccount.do";
				request.getSession().setAttribute("ma", myAccount);
			}else{
				 aa = "forward:/manager/toLogin.do";
			}
			
		}
		
		return aa;
	}
	
	
	
	
	@RequestMapping("/manager/toList.do")
	public String toList(HttpServletRequest request){
		
		Page page = new Page();
		int allRecodeCount = myManagerService.getAllCount();
		System.out.println("################"+allRecodeCount);
		
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr==null||"".equals(currentPageStr)||"null".equals(currentPageStr)){
			currentPageStr = "1";
		}
		int currentPage = Integer.valueOf(currentPageStr);
		
		String con = request.getParameter("con");
		if (con==null) {
			con="";
		}
		
		page.setCon(con);
		page.setAllRecodeCount(allRecodeCount);
		page.setCurrentPage(currentPage);
		page.setEveryPageCount(6);
		
		List<MyManager> list = myManagerService.getEveryPageCount(page);
		List<MyManagerVo> mmvList = VoUtil.getMyManagerVo(list);
		for (MyManager myManager : list) {
			System.out.println(myManager);
		}
		
		request.setAttribute("mmvList", mmvList);
		request.setAttribute("con", con);
		PageUtil.setLocal(page);
		
		return "manager/list";
	}
	
	//×¢²á
	@RequestMapping("/manager/toAdd.do")
	public String toAdd(HttpServletRequest request){
		
		List<Code> sexList = CodeUtil.getCode("SEX");
		request.setAttribute("sexList", sexList);
		
		List<Code> managerList = CodeUtil.getCode("MANAGER");
		request.setAttribute("managerList", managerList);
		
		return "manager/add";
	}
	//×¢²á
	@RequestMapping("/manager/add.do")
	public String add(HttpServletRequest request){
		
		String id = UUID1.getUUID();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		
		MyManager myManager = new MyManager();
		myManager.setId(id);
		myManager.setUsername(username);
		myManager.setPassword(password);
		myManager.setName(name);
		myManager.setAge(age);
		myManager.setSex(sex);
		myManager.setEmail(email);
		myManager.setPhone(phone);
		myManager.setType(type);
		
		myManagerService.add(myManager);
		
		return "forward:/manager/toLogin.do";
	}
	
	@RequestMapping("/manager/delete.do")
	public String delete(HttpServletRequest request){
		
		String id = request.getParameter("id");
		myManagerService.delete(id);
		return "forward:/manager/toList.do";
	}
	
	@RequestMapping("/manager/toUpdate.do")
	public String toUpdate(HttpServletRequest request){
		
		String id = request.getParameter("id");
		MyManager myManager = myManagerService.getById(id);
		request.setAttribute("mm", myManager);
		
		List<Code> typeList = CodeUtil.getCode("MANAGER");
		request.setAttribute("typeList", typeList);
		
		return "manager/update";
	}
	
	@RequestMapping("/manager/update.do")
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
		
		MyManager myManager = new MyManager();
		myManager.setId(id);
		myManager.setUsername(username);
		myManager.setPassword(password);
		myManager.setName(name);
		myManager.setAge(age);
		myManager.setSex(sex);
		myManager.setEmail(email);
		myManager.setPhone(phone);
		myManager.setType(type);
		
		myManagerService.update(myManager);
		
		return "forward:/manager/toList.do";
	}
	
	@RequestMapping("/manager/toFind.do")
	public String toFind(HttpServletRequest request){
		
		String id = request.getParameter("id");
		MyManager myManager = myManagerService.getById(id);
		request.setAttribute("mm", myManager);
		System.out.println("~~~~~~~~~~~~~~~~~"+myManager.getSex());
		String mmSex = CodeUtil.getMyValue(myManager.getSex(),"SEX");
		System.out.println("~~~~~~~~~~~~~~~~~"+mmSex);
		request.setAttribute("mmSex", mmSex);
		
		String mmType = CodeUtil.getMyValue(myManager.getType(), "MANAGER");
		request.setAttribute("mmType", mmType);
		
		return "manager/find";
	}
	
	@RequestMapping("manager/find.do")
	public String find(){
		return "forward:/manager/toList.do";
	}
	
	
}
