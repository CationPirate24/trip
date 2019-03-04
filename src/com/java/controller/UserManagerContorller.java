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
import com.java.bean.Page;
import com.java.service.MyUserManagerService;
import com.java.util.CodeUtil;
import com.java.util.PageUtil;
import com.java.util.UUIDUtil;
import com.java.util.VoUtil;
import com.java.vo.MyAccountVo;

@Controller

public class UserManagerContorller {
	@Autowired
	MyUserManagerService myUserManagerService;

	/*@RequestMapping("user/toLogin.do")
	
	//管理员登录
	public ModelAndView toLogin(){
		System.out.println("-------------------------------------------11111111111111111");
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("managerUser/login");
		return mav;
		
	}
	@RequestMapping("/managerUser/checkLogin.do")
	public @ResponseBody MyValue checkLogin(String username ,String password,HttpServletRequest request){
		
		System.out.println(username+"111111111111");
		System.out.println("2222222222"+password);
		MyValue mv=new MyValue();
		//mv.setValue("lose");
		UserManager ma = myManagerService.tocheckLogin(username, password);
		if(ma !=null){
			System.out.println("=================================================");

			mv.setValue("success");
			request.getSession().setAttribute("ma", ma);
		}
		return mv;
	}*/
	@RequestMapping("/managerUser/toList.do")
	public ModelAndView toList(HttpServletRequest request){
	
		ModelAndView mav = new ModelAndView();
		
		Page page = new Page();
		int allRecodeCount = myUserManagerService.getAllCount();
		System.out.println("################"+allRecodeCount);
		
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr==null||"".equals(currentPageStr)||"null".equals(currentPageStr)){
			currentPageStr = "1";
		}
		int currentPage = Integer.valueOf(currentPageStr);
		
		String con =request.getParameter("con");
		if(con==null||"null".equals(con)){
			con = "";
		}
		
		page.setCon(con);
		page.setAllRecodeCount(allRecodeCount);
		page.setCurrentPage(currentPage);
		page.setEveryPageCount(5);
		
		List<MyAccount> list = myUserManagerService.getEveryPageCount(page);
		List<MyAccountVo> list2 = VoUtil.getMyAccountVo(list);
		for(MyAccountVo mav2:list2){
			System.out.println(mav2.getE_mail());
		}
		request.setAttribute("maList", list2);
		request.setAttribute("con", con);
		mav.setViewName("managerUser/list");
		
		PageUtil.setLocal(page);
		
		return mav;
	}
	@RequestMapping("/managerUser/toAdd.do")
	public ModelAndView toAdd(HttpServletRequest request){
		System.out.println("-------------------------------------------11111111111111111");

		ModelAndView mav = new ModelAndView();
		
		List<Code> codeList = CodeUtil.getCode("SEX");
		request.setAttribute("cList", codeList);
		
		mav.setViewName("managerUser/add");
		return mav;
		
	}
	
	@RequestMapping("/managerUser/add.do")
	public String add(HttpServletRequest request) throws IllegalStateException, IOException{
		System.out.println("1111111111111111111111111111111111111111111111111");
		
		
		
		MyAccount ma = new MyAccount();
		ma.setId(UUIDUtil.getId());
		ma.setUsername(request.getParameter("username"));
		ma.setName(request.getParameter("name"));
		ma.setPassword(request.getParameter("password"));
		ma.setAge(request.getParameter("age"));
		ma.setSex(request.getParameter("sex"));
		ma.setE_mail(request.getParameter("e_mail"));
		ma.setPhone(request.getParameter("phone"));
		ma.setMoney(request.getParameter("600"));
		System.out.println(ma);
		myUserManagerService.add(ma);	
	
	
		
		return "forward:/managerUser/toList.do";
		
		
	}
	@RequestMapping("/managerUser/toUpdate.do")
	public ModelAndView toUpdate(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		String id =request.getParameter("id");
	
		MyAccount ma= myUserManagerService.getById(id);
		
		List<Code> codeList = CodeUtil.getCode("SEX");
		request.setAttribute("cList", codeList);
		
		request.setAttribute("ma", ma);
		mav.setViewName("managerUser/update");
		return mav;
		
	}
	@RequestMapping("/managerUser/update.do")
	public String update(HttpServletRequest request,MultipartFile picture) throws IllegalStateException, IOException{
		System.out.println("1111111111111111111111111111111111111111111111111");
		
		//图片上传成功后，将图片地址写到数据库
		String filePath = "F:\\a\\";
		String newFileName1 = "";
		if(picture!=null){
			//得到上传图片的原始名称
			String originalFileName1 = picture.getOriginalFilename();
			System.out.println("~~~~~~~~~~~~~~~"+originalFileName1);
			if(originalFileName1!=null&&originalFileName1!=""){
				//新的图片名称
				newFileName1 = UUIDUtil.getId()+originalFileName1.substring(originalFileName1.lastIndexOf("."));
				System.out.println("%%%%%%%%%%%%%%%%"+newFileName1);
				//创建新文件
				File file1 = new File(filePath+newFileName1);
				//将内存中的文件写入磁盘
				picture.transferTo(file1);
			}
			
		}
		
		MyAccount ma = new MyAccount();
		ma.setId(request.getParameter("id"));
		ma.setUsername(request.getParameter("username"));
		ma.setName(request.getParameter("name"));
		ma.setPassword(request.getParameter("password"));
		ma.setAge(request.getParameter("age"));
		ma.setSex(request.getParameter("sex"));
		ma.setE_mail(request.getParameter("e_mail"));
		ma.setPhone(request.getParameter("phone"));
		ma.setMoney(request.getParameter("money"));
		ma.setPicture(newFileName1);
		System.out.println(ma);
		myUserManagerService.update(ma);	
	
	
		
		return "forward:/managerUser/toList.do";
		
		
	}
	@RequestMapping("managerUser/delete.do")
	public String detele(HttpServletRequest request){
		System.out.println("=================================================");
	
		
		String id =request.getParameter("id");
		myUserManagerService.delete(id);
		System.out.println("=================================================");
		return "forward:/managerUser/toList.do";
		
	}
	@RequestMapping("managerUser/toFind.do")
	public ModelAndView toFind(HttpServletRequest request){
		System.out.println("=================================================");
		ModelAndView mav = new ModelAndView();
		
		String id =request.getParameter("id");
		MyAccount ma = myUserManagerService.getById(id);
		request.setAttribute("ma",ma );
		
		String maSex = CodeUtil.getMyValue(ma.getSex(), "SEX");
		request.setAttribute("maSex", maSex);
		
		System.out.println("=================================================");
		mav.setViewName("/managerUser/find");
		return mav;
		
	}
	@RequestMapping("managerUser/find.do")
	public String find(){
		return "forward:/managerUser/toList.do";
	}
	
}











