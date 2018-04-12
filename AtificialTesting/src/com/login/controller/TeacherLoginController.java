package com.login.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.login.service.TeacherLoginServiceImpl;

@Controller
public class TeacherLoginController {
	@Resource
	private TeacherLoginServiceImpl teacherLoginServiceImpl;
	
	@RequestMapping("teacherlogin")
	public String login(HttpServletRequest request, Model model) {
		String id = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		List<Object[]> list = this.teacherLoginServiceImpl.listAll();
		int user_id = Integer.parseInt(id);
		System.out.println(id);
//		Date time = new Date();
//		SimpleDateFormat ft = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
//		String time1 = ft.format(time);
		for (Object[] objs : list) {
			if (objs[0].equals(id) || objs[1].equals(pwd)) {
				HttpSession session = request.getSession();
//				String name = journalServiceImpl.userName(user_id).get(0);
//				journalServiceImpl.insert(user_id, name, time1);
				session.setAttribute("userid", id);
				return "hello";
			}
		}
		return "login";
	}
}
