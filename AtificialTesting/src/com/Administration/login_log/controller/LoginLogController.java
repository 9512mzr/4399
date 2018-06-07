package com.Administration.login_log.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Administration.login_log.service.LoginLogServiceImpl;
import com.entity.Page;

@Controller
@RequestMapping("loginlog")
public class LoginLogController {
	@Resource
	@Autowired
	private LoginLogServiceImpl loginLogServiceImpl;
	
	@RequestMapping(value = "list")
	// 找到所有的记录并实现了分页
	public String findAll(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) {
		String pageNo = request.getParameter("pageNo");
		if (pageNo == null) {
			pageNo = "1";
		}
		Page page = loginLogServiceImpl.queryForPage(Integer.valueOf(pageNo), 5);
		request.setAttribute("page", page);
		modelMap.put("methodname", "list");
		return "backstage/tab2";
	}
	

}
