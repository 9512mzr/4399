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
		String type=request.getParameter("thetype");
		String number2=request.getParameter("number");
		String pageNo=request.getParameter("pageNo");
		String degree=request.getParameter("degree");
		System.out.println(degree+"ï¿½Ð¶ï¿½");
		System.out.println(number2+"lll");
        if(pageNo==null) {
        	System.out.println("ï¿½ï¿½ï¿½ï¿½ï¿½sssssssssssssssssssÖµï¿½ï¿½null");
			pageNo = "1";
		}
        
        if(number2 == "") {
            	System.out.println("ï¿½ï¿½ï¿½ï¿½ï¿½strÖµï¿½ï¿½null666666"+number2+"798888");
            	number2="100";
            }
        
        if(degree == "") {
        	System.out.println("ï¿½ï¿½ï¿½ï¿½ï¿½ggggggggggggggggggggggggggggÖµï¿½ï¿½null");
        	degree= "Î´Öª";
        }
        System.out.println("ï¿½ï¿½ï¿½ï¿½ï¿½typetypetypetpeï¿½ï¿½"+type);
        if(!type.equals("2")) {
        	System.out.println("type77878787878787878887878type");
        	type= "1";
        }
        else {
        	System.out.println("type5555555555555555555555555type");
        }

        
        int number1 = Integer.parseInt(number2.trim());
        
        System.out.println(number2+"wocao");
		Page page = this.checkServiceImpl.queryForPage(Integer.valueOf(pageNo), 6,number1,degree,type);
		request.setAttribute("c_page", page);
		modelMap.put("number", number1);
		if(!degree.equals("Î´Öª")) {
			modelMap.put("degree",degree);
			
        }
		if(degree.equals("Î´Öª")) {
			modelMap.put("classall", "type-active");
		}
		else if(degree.equals("ÈÝÒ×")) {
			System.out.println("ÈÝÒ×");
			modelMap.put("class1", "type-active");
		}
		else if(degree.equals("Ò»°ã")) {
			modelMap.put("class2", "type-active");
		}
        else if(degree.equals("À§ÄÑ")) {
        	modelMap.put("class3", "type-active");
		}
		if(!type.equals("2")) {
			modelMap.put("typeclass1", "type-active");
			
		}
		else {
			modelMap.put("typeclass2", "type-active");
		}
		modelMap.put("thetype",type);

		
		modelMap.put("wocaonima", "tochapter");
        		
//		List<Choicequestion> list=this.checkServiceImpl.getlist(number1);
//		modelMap.put("c_page.c_list", list);
	    return "library";	
	}

}
