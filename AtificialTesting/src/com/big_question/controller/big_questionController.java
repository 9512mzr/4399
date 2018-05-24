package com.big_question.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.big_question.service.big_questionServiceImpl;
import com.entity.Page;

@Controller
@RequestMapping("Big")
public class big_questionController {
	@Resource
	@Autowired
	private big_questionServiceImpl big_questionServiceImpl;
	
	@RequestMapping(value = "/showAll")
    public String findAllCourse(HttpServletRequest request,
            HttpServletResponse response,ModelMap modelMap) {
		String pageNo=request.getParameter("pageNo");
		if(pageNo==null) {
			pageNo = "1";
		}
		Page page = this.big_questionServiceImpl.queryForPage(Integer.valueOf(pageNo), 10);
		request.getSession().setAttribute("b_page", page);
		modelMap.put("b_metodname", "showAll");
        return "library";
    }
}
