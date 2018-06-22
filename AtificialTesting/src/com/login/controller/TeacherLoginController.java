package com.login.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Teacher;
import com.login.service.TeacherLoginServiceImpl;

@Controller
public class TeacherLoginController {
	@Resource
	private TeacherLoginServiceImpl teacherLoginServiceImpl;
	
	@RequestMapping("teacherlogin")
	public String login(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		String id = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		List<Object[]> list = this.teacherLoginServiceImpl.listAll();
		System.out.println(id);
		Date time=new Date();
		SimpleDateFormat ft = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
		String time1 = ft.format(time);
		for (Object[] objs : list) {
			if (objs[0].equals(id) || objs[1].equals(pwd)) {
				HttpSession session = request.getSession();
				int name1 = Integer.valueOf(id);
				String name = teacherLoginServiceImpl.getname(name1).get(0);
				teacherLoginServiceImpl.insert(name1, name, time1);
				session.setAttribute("userid", id);
				System.out.println("teacherId:  "+objs[2]);
				session.setAttribute("teacherId", objs[2].toString());
				List<String> list1 = teacherLoginServiceImpl.getname(name1);
				session.setAttribute("teacherName", list1.get(0));
				System.out.println(list1);
				modelMap.put("list", list1);
				return "hello";
			}
		}
		
		return "login";
	}
}
