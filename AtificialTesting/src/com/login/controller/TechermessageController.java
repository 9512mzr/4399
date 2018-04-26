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
public class TechermessageController {
	@Resource
	private TechermessageServiceImpl teachermessageImpl;
	@RequestMapping("changepage")
	public String login(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		String id = request.getParameter("name");
		int name1 = Integer.valueOf(id);
		Teacher list1 = teachermessageImpl.getname1(name1);
		modelMap.put("list1", list1);
		return "pwchange";
		
		
	}

}
