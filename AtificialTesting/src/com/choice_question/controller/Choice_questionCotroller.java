package com.choice_question.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.choice_question.service.Choice_questionServiceImpl;
import com.entity.Choicequestion;
import com.entity.Page;

@Controller
@RequestMapping("Choice")
public class Choice_questionCotroller {
	@Resource
	@Autowired
	private Choice_questionServiceImpl choice_questionServiceImpl;
	
	@RequestMapping(value = "/showAll")
    public String findAllCourse(HttpServletRequest request,
            HttpServletResponse response) {
        try {
            String pageNo = request.getParameter("pageNo");
            if (pageNo == null|pageNo=="") {
                pageNo = "1";
            }
            Page page = this.choice_questionServiceImpl.queryForPage(Integer.valueOf(pageNo), 10);
            
            request.setAttribute("page", page);
            
            List<Choicequestion> course = page.getList();
            request.getSession().setAttribute("courses", course);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "test";
    }
}
