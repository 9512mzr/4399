package com.big_question.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.big_question.service.big_questionServiceImpl;
import com.entity.BPage;
import com.entity.Bigquestion;

@Controller
@RequestMapping("Big")
public class big_questionController {
	@Resource
	@Autowired
	private big_questionServiceImpl big_questionServiceImpl;
	
	@RequestMapping(value = "/showAll")
    public String findAllCourse(HttpServletRequest request,
            HttpServletResponse response) {
        try {
            String pageNo = request.getParameter("pageNo");
            if (pageNo == null|pageNo=="") {
                pageNo = "1";
            }
            BPage page=this.big_questionServiceImpl.queryForPage(Integer.valueOf(pageNo), 5);
            request.setAttribute("Bpage", page);
            
            List<Bigquestion> course = page.getList();
            request.getSession().setAttribute("Bcourses", course);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "test";
    }
}
