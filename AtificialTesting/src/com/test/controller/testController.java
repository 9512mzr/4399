package com.test.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lowagie.text.DocumentException;
import com.test.service.testServiceImpl;

@Controller
@RequestMapping("test")
public class testController {
	@Resource
	@Autowired
	private testServiceImpl service;


	@RequestMapping(value="up1") 
	public void getPaper3(@RequestParam(value = "fileList", required = true) MultipartFile[] multipartFiles,HttpServletRequest request, HttpServletResponse response) throws IOException{
	    
		MultipartFile file =null;
		for(MultipartFile multipartFile:multipartFiles){
	    	System.out.println(multipartFile.getOriginalFilename());
	    	System.out.println(multipartFile.getBytes());
	    	file=multipartFile;
	    }
		if (!file.isEmpty()) {
			// 上传文件路径
			String path = request.getServletContext().getRealPath("/img/");
			// 上传文件名
			String filename = file.getOriginalFilename();
			File filepath = new File(path, filename);
			// 判断路径是否存在，如果不存在就创建一个
			if (!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			// 将上传文件保存到一个目标文件当中
			file.transferTo(new File(path + File.separator + filename));
		} else {
		}
		System.out.println("getHeaderNames"+request.getHeaderNames());
		System.out.println("getHeader(x_filename)"+request.getHeader("X_FILENAME"));
		System.out.println(request.getServletContext().getRealPath("/img/"));
	}
}
