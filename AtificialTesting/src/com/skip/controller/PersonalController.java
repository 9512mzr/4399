package com.skip.controller;



import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Teacher;

import com.skip.service.PersonalServiceImpl;


@Controller
public class PersonalController {
	@Resource
	private PersonalServiceImpl personalServiceImpl;
	@RequestMapping("topersonal")
	public String login(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		String id = request.getParameter("name");
		int name1 = Integer.valueOf(id);
		Teacher list1 = personalServiceImpl.getname1(name1);
		modelMap.put("list1", list1);
		return "selfcenter";
		
		
	}
}
