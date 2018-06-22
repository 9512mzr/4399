package com.judge_question.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Judge_question_show;
import com.entity.Student;
import com.entity.WrongQuestion_show;
import com.judge_question.service.judge_questionServiceImpl;

@Controller
@RequestMapping("Judge")
public class judge_questionController {
	@Resource
	@Autowired
	private judge_questionServiceImpl service;
	
//	public judge_questionController() {}
//	protected final transient Log log = LogserviceFactory.getLog(judge_questionController.class);
	
	@RequestMapping(value = "/getDates")
	public String getDates(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		request.getSession().setAttribute("dates", this.service.getDates());
		
		return "Judge0";
	}
	@RequestMapping(value = "/getJudges")
	public String getJudges(HttpServletRequest request,
            HttpServletResponse response) {
		String date=request.getParameter("date");
		ArrayList<Judge_question_show> m=this.service.getJudges(date);
		
		request.getSession().setAttribute("Judges", m);
		request.setAttribute("Judge", m.get(0));
		request.getSession().setAttribute("JudgePage", "1");
		return "judge";
	}
	
	@RequestMapping(value = "/ChangePage")
	public String ChangeJudge1(HttpServletRequest request,
            HttpServletResponse response) {
		ArrayList<Judge_question_show> m=(ArrayList<Judge_question_show>) request.getSession().getAttribute("Judges");
		System.out.println(request.getSession().getAttribute("JudgePage"));
		String n0=request.getSession().getAttribute("JudgePage").toString();
		int pageNo = Integer.parseInt(n0);
		String newPageNo=request.getParameter("ChangeJudgePage");
		System.out.println(newPageNo);
		if(newPageNo.equals("down")) {
			if(pageNo==m.size()) {
				pageNo--;
				request.setAttribute("Judge", m.get(pageNo));
				pageNo++;
				request.getSession().setAttribute("JudgePage", pageNo);
			}else {
				pageNo++;
				request.getSession().setAttribute("JudgePage", pageNo);
				pageNo--;
				request.setAttribute("Judge", m.get(pageNo));
			}
		}else if(newPageNo.equals("up")) {
			if(pageNo==1) {
				pageNo--;
				request.setAttribute("Judge", m.get(pageNo));
				pageNo++;
				request.getSession().setAttribute("JudgePage", pageNo);
			}else {
				pageNo--;
				request.getSession().setAttribute("JudgePage", pageNo);
				pageNo--;
				request.setAttribute("Judge", m.get(pageNo));
			}
		}else {
			
		}
		return "judge";
	}
	
	@RequestMapping(value = "/submit")
	public String submit2(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
		String score=request.getParameter("score");
		ArrayList<Judge_question_show> m=(ArrayList<Judge_question_show>) request.getSession().getAttribute("Judges");
		String n0=request.getSession().getAttribute("JudgePage").toString();
		int pageNo = Integer.parseInt(n0);
		if(score==null&score=="") {
			
		}else {
			Judge_question_show n=m.get(--pageNo);
			n.setScore(Integer.parseInt(score));
			n.setState("1");
			m.set(pageNo, n);
			pageNo++;
		}
		if(pageNo==m.size()) {
			this.service.saveJudges(m);
			response.sendRedirect("getDates");
		}else {
			pageNo++;
			request.getSession().setAttribute("JudgePage", pageNo);
			pageNo--;
			request.setAttribute("Judge", m.get(pageNo));
		}
		return "judge";
	}
	
	@RequestMapping(value = "/submit2")
	public String submit22(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
		String orders=request.getParameter("submit");
		
		String score0=request.getParameter("score");
		int score = Integer.parseInt(score0);
		
		ArrayList<Judge_question_show> m=(ArrayList<Judge_question_show>) request.getSession().getAttribute("Judges");
		
		String n0=request.getSession().getAttribute("JudgePage").toString();
		int pageNo = Integer.parseInt(n0);
		
		int i=pageNo-1;
		
		Judge_question_show ju=m.get(i);
		ju.setScore(score);
		ju.setState("1");
		m.set(i, ju);
		
		if(orders.equals("上一页")) {
			if(1==pageNo) {
				request.getSession().setAttribute("JudgePage", pageNo);
				request.setAttribute("Judge", m.get(i));
				return "judge";
			}
			request.getSession().setAttribute("JudgePage", --pageNo);
			request.setAttribute("Judge", m.get(--i));
			return "judge";
		}else if(orders.equals("下一页")) {
			if(m.size()==pageNo) {
				this.service.saveJudges(m);
				return "forward://Judge/getDates";
			}
			request.getSession().setAttribute("JudgePage", ++pageNo);
			request.setAttribute("Judge", m.get(++i));
			return "judge";
		}else if(orders.equals("保存")) {
			this.service.saveJudges(m);
			return "forward://Judge/getDates";
		}else {
			this.service.saveJudges(m);
			return "forward://Judge/getDates";
		}
	}
	
	@RequestMapping(value = "/getWorng")
	public String getWorng(HttpServletRequest request,
            HttpServletResponse response) {
		String Id=(String) request.getSession().getAttribute("teacherId");
		request.getSession().setAttribute("worng_studnet", this.service.getIds(Id));
		return "WrongQSN";
	}
	
	@RequestMapping(value = "/getStudnetWrongDate")
	public String getWorng2(HttpServletRequest request,
            HttpServletResponse response) {
		String TeacherId=(String) request.getSession().getAttribute("teacherId");
		String StudentId=request.getParameter("id");
		ArrayList<String> dates=this.service.getDateByStudnetWrong(StudentId, TeacherId);
		request.setAttribute("worng_studnet_dates", dates);
		request.setAttribute("StudentId", StudentId);
		return "WrongQSD";
	}
	
	@RequestMapping(value = "/getStudnetWrongDateQuestion")
	public String getWorng3(HttpServletRequest request,
            HttpServletResponse response) {
		String TeacherId=(String) request.getSession().getAttribute("teacherId");
		String StudentId=request.getParameter("StudentId");
		String date=request.getParameter("date");
		ArrayList<WrongQuestion_show> show=this.service.getStudnetWrongDateQuestion(StudentId, TeacherId, date);
		request.setAttribute("wrongQuestion", show);
		return "WrongQSNY";
	}
}
