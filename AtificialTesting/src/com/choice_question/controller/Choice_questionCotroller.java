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
@RequestMapping("/Choice")
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
	
	
	@RequestMapping(value = "/saveChoice_question")
	public String saveChoice_question(HttpServletRequest request,
            HttpServletResponse response) {
		String question = request.getParameter("question");
		String option1 = request.getParameter("option1");
		String option2 = request.getParameter("option2");
		String option3 = request.getParameter("option3");
		String option4 = request.getParameter("option4");
		String answer = request.getParameter("answer");
		Choicequestion Choice_question = new Choicequestion();
		Choice_question.setContent(question);
		Choice_question.setOption1(option1);
		Choice_question.setOption2(option2);
		Choice_question.setOption3(option3);
		Choice_question.setOption4(option4);
		Choice_question.setAnswer(answer);
		choice_questionServiceImpl.addChoice_question(Choice_question);
		
		return "test";
	}
		
}
