package com.login.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Teacher;
import com.login.service.TechermessageServiceImpl;

@Controller
public class TeacherPwController {
	@Resource
	private TechermessageServiceImpl teachermessageImpl;
	@RequestMapping("pwchanged")
	public String login(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		String id = request.getParameter("name");
		String pw=request.getParameter("old_password");
		String pw1=request.getParameter("password");
		String pw2=request.getParameter("password2");
		int name1 = Integer.valueOf(id);
		
		Teacher teacher = teachermessageImpl.getname1(name1);
		if(teacher.getPassWord().equals(pw)&&pw1.equals(pw2)) {
			this.teachermessageImpl.updataPW(teacher,pw1);
			System.out.println("123");
			return "login";
			
			
		}
		else {
			System.out.println("321");
			modelMap.put("list1", teacher);
			return "pwchange";
			
		}
		
		
	}

}
