package com.testBasket_show.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.TestBasket;
import com.entity.datika;
import com.entity.demo;
import com.lowagie.text.DocumentException;
import com.testBasket_show.service.TestBasket_showServiceImpl;

@Controller
public class TestBasket_showController {
	@Resource
	@Autowired
	private TestBasket_showServiceImpl testBasket_showServiceImpl;
	@RequestMapping("/show")
	public String show(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		List<TestBasket> basket = this.testBasket_showServiceImpl.findChoice();
		model.addAttribute("Basket", basket);
		List<TestBasket> basket1 = this.testBasket_showServiceImpl.findBigQuestion();
		model.addAttribute("Basket1", basket1);	
		return "showBasket";
	}
	
	@RequestMapping("/getAlldoc")
	public void showall(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		List<TestBasket> basket = this.testBasket_showServiceImpl.findChoice();
		List<TestBasket> basket1 = this.testBasket_showServiceImpl.findBigQuestion();
		String name=request.getParameter("name");
		System.out.println(name);
		try {
			request.getRequestDispatcher("show").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	}
	
	@RequestMapping("/htmltoword")
	public void show2(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		List<TestBasket> basket = this.testBasket_showServiceImpl.findChoice();
		List<TestBasket> basket1 = this.testBasket_showServiceImpl.findBigQuestion();
		String content="";
		for(int i=0;i<basket.size();i++) {
			content=content+basket.get(i).getChoicequestion().getContent();
		}
		for(int i=0;i<basket1.size();i++) {
			content=content+basket1.get(i).getBigQuestion().getContent();
		}
		demo d=new demo();
		String address="d:\\text.doc";
		d.htmltoWord3(content,address);
		try {
			request.getRequestDispatcher("show").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	}
	
	@RequestMapping("/datika")
	public void datika(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException, DocumentException {
		List<TestBasket> basket = this.testBasket_showServiceImpl.findChoice();
		List<TestBasket> basket1 = this.testBasket_showServiceImpl.findBigQuestion();
		datika da=new datika();
		String address="d://datika.doc";
		String address2=request.getSession().getServletContext().getRealPath("/");
		da.main1(basket.size(), basket1.size(),address,address2);
		try {
			request.getRequestDispatcher("show").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	}
	
	@RequestMapping("/getAnswer")
	public void show3(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException, ServletException {
		List<TestBasket> basket = this.testBasket_showServiceImpl.findChoice();
		List<TestBasket> basket1 = this.testBasket_showServiceImpl.findBigQuestion();
		String content="";
		for(int i=0;i<basket.size();i++) {
			content=content+basket.get(i).getChoicequestion().getAnswer();
		}
		for(int i=0;i<basket1.size();i++) {
			content=content+basket1.get(i).getBigQuestion().getAnswer();
		}
		demo d=new demo();
		String address="d:\\answer.doc";
		d.htmltoWord3(content,address);
		request.getRequestDispatcher("show").forward(request, response);  
	}
}
