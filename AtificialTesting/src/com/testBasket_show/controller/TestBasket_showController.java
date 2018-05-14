package com.testBasket_show.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//import com.entity.Basket_Show;
import com.entity.Choicequestion;
import com.entity.Page;
import com.entity.TestBasket;
import com.testBasket_show.service.TestBasket_showServiceImpl;

@Controller
public class TestBasket_showController {
	@Resource
	@Autowired
	private TestBasket_showServiceImpl testBasket_showServiceImpl;
	@RequestMapping("/show")
	public String show(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		List<TestBasket> basket = this.testBasket_showServiceImpl.findAll();
		model.addAttribute("Basket", basket);
//		 try {
//	            String pageNo = request.getParameter("pageNo");
//	            if (pageNo == null|pageNo=="") {
//	                pageNo = "1";
//	            }
//	            Basket_Show page = this.testBasket_showServiceImpl.queryForPage(Integer.valueOf(pageNo), 10);
//	            
//	            request.setAttribute("page", page);
//	            
//	            List<TestBasket> course = page.getList();
//	            request.getSession().setAttribute("Basket", course);
//	        } catch (Exception e) {
//	            e.printStackTrace();
//	        }
		return "showBasket";
	}
}
