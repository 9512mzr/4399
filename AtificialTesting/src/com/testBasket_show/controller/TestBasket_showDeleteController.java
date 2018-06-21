package com.testBasket_show.controller;

import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.testBasket_show.service.TestBasket_showDeleteServiceImpl;

@Controller
public class TestBasket_showDeleteController {
	@Resource
	@Autowired
	private TestBasket_showDeleteServiceImpl testBasket_showDeleteServiceimpl;
	@RequestMapping("/choiceDelete")
	public String bb(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		int id=Integer.parseInt(request.getParameter("id"));
	    this.testBasket_showDeleteServiceimpl.choiceDelete(id);
		return "showBasket";
	}
	@RequestMapping("/bigDelete")
	public String aa(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		int id=Integer.parseInt(request.getParameter("id"));
	    this.testBasket_showDeleteServiceimpl.bigDelete(id);
		return "showBasket";
	}
}
