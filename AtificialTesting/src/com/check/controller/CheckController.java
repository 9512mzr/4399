package com.check.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.check.service.CheckServiceImpl;
import com.entity.Choicequestion;
import com.entity.Page;

@Controller
public class CheckController {
	@Resource
	@Autowired
	private CheckServiceImpl checkServiceImpl;
	@RequestMapping("tochapter")
	public String chapter(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		String number2=request.getParameter("number");
		String pageNo=request.getParameter("pageNo");
		int number1 = Integer.parseInt(number2);
		if(pageNo==null) {
			pageNo = "1";
		}
		Page page = this.checkServiceImpl.queryForPage(Integer.valueOf(pageNo), 6,number1);
		request.setAttribute("c_page", page);
		modelMap.put("c_metodname1", "showsome");
		
		
		
		
		
//		List<Choicequestion> list=this.checkServiceImpl.getlist(number1);
//		modelMap.put("c_page.c_list", list);
	    return "library";	
	}

}
