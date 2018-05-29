package com.admin_login.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin_login.service.Admin_loginServiceImpl;

@Controller
public class Admin_loginController {

	@Resource
	private Admin_loginServiceImpl admin_loginServiceImpl;
	
	@RequestMapping("adminlogin")
	public String login(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		String id = request.getParameter("aid");
		String pwd = request.getParameter("apass");
		System.out.print(id);
		System.out.print(pwd);
		List<Object[]> list=this.admin_loginServiceImpl.listAll();
		for (Object[] objs : list) {
			if (objs[0].equals(id) && objs[1].equals(pwd)){
				return "hello";
			}
		}
		
		return "test";
	}
}
