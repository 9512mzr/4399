package com.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.login.service.TeacherRegistServiceImpl;

@Controller
public class TeacherRegistController {
	@Resource
	private TeacherRegistServiceImpl teacherRegistServiceImpl;
	
	@RequestMapping("/registtea")
	public String savee(HttpServletRequest request) {
		
		String nickName = request.getParameter("nickName");
		String passWord = request.getParameter("passWord");
		String idd = request.getParameter("id");
		int id = Integer.parseInt(idd);
		
//		Date time = new Date( );
//		SimpleDateFormat ft = new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
//		String time1 = ft.format(time);
//		int teacherid = Integer.parseInt(id);
		this.teacherRegistServiceImpl.save(id, passWord, nickName);
		return "login";
	}
}
