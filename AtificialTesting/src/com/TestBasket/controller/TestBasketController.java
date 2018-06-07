package com.TestBasket.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.TestBasket.service.TestBasketServiceImpl;
import com.entity.TestBasket;

@Controller
public class TestBasketController {
	@Resource
	@Autowired
	private TestBasketServiceImpl testBasketServiceImpl;

	@RequestMapping("/add")
	public String add(HttpServletRequest request, HttpServletResponse response,ModelMap modelMap) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int bigId = Integer.parseInt(request.getParameter("bigId"));
		List<TestBasket> l = this.testBasketServiceImpl.findAll();
		if(bigId == -1) {
		for (TestBasket i : l) {
			if ( i.getChoicequestion().getChoiceQuestionId() == id) {
				modelMap.put("wocaonima", "showsome");
				return "redirect:showsome";
			}
		}
		testBasketServiceImpl.saveChoice(id,bigId);
	}else if(id == -1){
		for (TestBasket i : l) {
			if ( i.getBigQuestion().getBigQuestionId() == bigId) {
				modelMap.put("wocaonima", "showsome");
				return "redirect:showsome";
			}
		}
		testBasketServiceImpl.saveChoice(id,bigId);
	}
		modelMap.put("wocaonima", "showsome");
//		System.out.println(bigId);
//		System.out.println(id);
//		testBasketServiceImpl.saveBig(bigId);
		return "redirect:showsome";
		}
	}
