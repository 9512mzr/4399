package com.check.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.check.service.CheckServiceImpl;
import com.entity.Choicequestion;
import com.entity.Page;

@Controller
public class CheckController {
	@Resource
	@Autowired
	private CheckServiceImpl checkServiceImpl;
	@RequestMapping("tochapter")
	public String chapter(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) {
		String number2=request.getParameter("number");
		String pageNo=request.getParameter("pageNo");
		String degree=request.getParameter("degree");
		System.out.println(degree+"�ж�");
		System.out.println(number2+"lll");
        if(pageNo==null) {
        	System.out.println("�����sssssssssssssssssssֵ��null");
			pageNo = "1";
		}

        if(number2 == "") {
            	System.out.println("�����strֵ��null666666"+number2+"798888");
            	number2="100";
            }


        if(degree == "") {
        	System.out.println("�����ggggggggggggggggggggggggggggֵ��null");
        	degree= "δ֪";
        }
        int number1 = Integer.parseInt(number2.trim());
        System.out.println(number2+"wocao");
		Page page = this.checkServiceImpl.queryForPage(Integer.valueOf(pageNo), 6,number1,degree);
		request.setAttribute("c_page", page);
		modelMap.put("number", number1);
		if(!degree.equals("δ֪")) {
			modelMap.put("degree",degree);
			
        }
		if(degree.equals("δ֪")) {
			modelMap.put("classall", "type-active");
		}
		else if(degree.equals("��")) {
			System.out.println("�Ǽ�");
			modelMap.put("class1", "type-active");
		}
		else if(degree.equals("һ��")) {
			modelMap.put("class2", "type-active");
		}
        else if(degree.equals("����")) {
        	modelMap.put("class3", "type-active");
		}

		
		modelMap.put("wocaonima", "tochapter");
        		
//		List<Choicequestion> list=this.checkServiceImpl.getlist(number1);
//		modelMap.put("c_page.c_list", list);
	    return "library";	
	}

}