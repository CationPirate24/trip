package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyComment;
import com.java.service.MyCommentService;
import com.java.util.TimeUtil;
import com.java.util.UUIDUtil;

@Controller
public class MyCommentController {

	@Autowired
	private MyCommentService myCommentService;
	
	@RequestMapping("/myComment/toList.do")
	public ModelAndView toList(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String con = request.getParameter("con");
		if(con==null||"null".equals(con)){
			con = "%%";
		}else{
			con = "%"+con+"%";
		}
		List<MyComment> list = myCommentService.getAll(con);
		request.setAttribute("icList", list);
		
		mav.setViewName("myComment/list");
		return mav;
	}
	
	@RequestMapping("/myComment/toAdd.do")
	public ModelAndView toAdd(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("myComment/add");
		return mav;
	}
	
	@RequestMapping("/myComment/add.do")
	public String add(HttpServletRequest request){
		
		String username = request.getParameter("username");
		String title = request.getParameter("title");
		String describe = request.getParameter("describe");
		String type = request.getParameter("type");
		String grade = request.getParameter("grade");
		String pictureId = request.getParameter("pictureId");
		
		MyComment ic = new MyComment();
		ic.setId(UUIDUtil.getId());
		ic.setUsername(username);
		ic.setDescribe(describe);
		ic.setGrade(grade);
		ic.setTime(TimeUtil.getDate());
		ic.setPictureId(pictureId);
		ic.setTitle(title);
		ic.setType(type);
		ic.setAccountId("accountId");
		
		myCommentService.add(ic);
		return "forward:/myComment/toList.do";
	}
	
	@RequestMapping("/myComment/toFind.do")
	public ModelAndView toFind(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		MyComment ic = myCommentService.getById(id);
		request.setAttribute("ic", ic);
		
		mav.setViewName("myComment/find");
		return mav;
	}
	
	@RequestMapping("/myComment/find.do")
	public String find(){
		return "forward:/myComment/toList.do";
	}
	
	@RequestMapping("/myComment/toUpdate.do")
	public ModelAndView toUpdate(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		MyComment ic = myCommentService.getById(id);
		request.setAttribute("ic", ic);
		
		mav.setViewName("myComment/update");
		return mav;
	}
	
	@RequestMapping("/myComment/update.do")
	public String update(HttpServletRequest request){
		
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String title = request.getParameter("title");
		String describe = request.getParameter("describe");
		String type = request.getParameter("type");
		String grade = request.getParameter("grade");
		String time = request.getParameter("time");
		String pictureId = request.getParameter("pictureId");
		String accountId = request.getParameter("accountId");
		
		MyComment ic = new MyComment();
		ic.setId(id);
		ic.setUsername(username);
		ic.setDescribe(describe);
		ic.setGrade(grade);
		ic.setTime(time);
		ic.setPictureId(pictureId);
		ic.setAccountId(accountId);
		ic.setTitle(title);
		ic.setType(type);
		
		myCommentService.update(ic);
		return "forward:/myComment/toList.do";
	}
	
	@RequestMapping("/myComment/delete.do")
	public String delete(HttpServletRequest request){
		String id = request.getParameter("id");
		myCommentService.delete(id);
		return "forward:/myComment/toList.do";
	}
	
}




























