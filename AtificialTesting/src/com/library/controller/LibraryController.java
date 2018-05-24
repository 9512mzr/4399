package com.library.controller;






import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Teacher;

import com.entity.Choicequestion;
import com.entity.Page;
import com.library.service.LibraryServiceImpl;


@Controller

public class LibraryController {
	@Resource
	@Autowired
	private LibraryServiceImpl libraryServiceImpl;
	@RequestMapping("showsome")
	public String turn(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		
		String pageNo=request.getParameter("pageNo");
		if(pageNo==null) {
			pageNo = "1";
		}
		Page page = this.libraryServiceImpl.queryForPage(Integer.valueOf(pageNo), 6);
		request.setAttribute("c_page", page);
		modelMap.put("wocaonima", "showsome");

		return "library";

	}
	
	

}


