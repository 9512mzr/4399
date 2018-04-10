package com.choice_question.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.choice_question.service.Choice_questionServiceImpl;
import com.entity.Page;

@Controller
@RequestMapping("Choice")
public class Choice_questionCotroller {
	@Resource
	@Autowired
	private Choice_questionServiceImpl choice_questionServiceImpl;
	

	public Choice_questionCotroller() {
	}

	protected final transient Log log = LogFactory.getLog(Choice_questionCotroller.class);

	@RequestMapping(value = "list")
	// 找到所有的记录并实现了分页
	public String findAll(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) {
		String pageNo = request.getParameter("pageNo");
		if (pageNo == null) {
			pageNo = "1";
		}
		Page page = choice_questionServiceImpl.queryForPage(Integer.valueOf(pageNo), 15);
		request.setAttribute("page", page);
		modelMap.put("methodname", "list");
		return "test";
	}
}
