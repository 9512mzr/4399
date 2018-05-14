package com.TestBasket_show.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.TestBasket_show.service.TestBasketServiceImpl;

@Controller
public class TestBasketController {
	@Resource
	@Autowired
	private TestBasketServiceImpl testBasketServiceImpl;

	@RequestMapping("/add")
	public String add(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		testBasketServiceImpl.save(id);
		return "redirect:Choice/showAll";
	}
}
