package com.Administration.teacher.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Administration.teacher.service.TeacherServiceImpl;
import com.entity.Page;

@Controller
@RequestMapping("teachers")
public class TeacherControllerImpl {

	@Resource
	@Autowired
	private TeacherServiceImpl teacherServiceImpl;
	
	@RequestMapping(value = "list")
	// 找到所有的记录并实现了分页
	public String findAll(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) {
		String pageNo = request.getParameter("pageNo");
		if (pageNo == null) {
			pageNo = "1";
		}
		Page page = teacherServiceImpl.queryForPage(Integer.valueOf(pageNo), 5);
		request.setAttribute("page", page);
		modelMap.put("methodname", "list");
		return "backstage/tab";
	}
}
