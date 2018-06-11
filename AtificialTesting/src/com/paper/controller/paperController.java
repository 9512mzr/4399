package com.paper.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.TestBasket;
import com.entity.datika;
import com.entity.demo;
import com.entity.test4;
import com.lowagie.text.DocumentException;
import com.paper.service.paperServiceImpl;

@Controller
@RequestMapping("paper")
public class paperController {
	@Resource
	@Autowired
	private paperServiceImpl service;
	
	@RequestMapping(value="getpaper")
	public String getPaper(HttpServletRequest request,
            HttpServletResponse response, ModelMap modelMap) throws ServletException, IOException, DocumentException {
		
		String name=request.getParameter("name");
		String id="<p>"+this.service.getMaxId()+"</p>"+"<p>左边涂写试卷编号(6位)加一位答题卡编号，右边涂写学生信息（7位）</p>";
		List<TestBasket> basket = this.service.findChoice();
		List<TestBasket> basket1 = this.service.findBigQuestion();
		String content=id;
		for(int i=0;i<basket.size();i++) {
			content=content+basket.get(i).getChoicequestion().getContent();
		}
		for(int i=0;i<basket1.size();i++) {
			content=content+basket1.get(i).getBigQuestion().getContent();
		}
		demo d=new demo();
		String address="d:\\"+name+"_text.doc";
		try {
			d.htmltoWord3(content,address);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//获得试卷地址未知
		
		datika da=new datika();
		address="d:\\"+name+"_datika.doc";
		String address2=request.getSession().getServletContext().getRealPath("/");
		da.main1(basket.size(), basket1.size(),address,address2);
		//获得答题卡
		
		content="";
		for(int i=0;i<basket.size();i++) {
			content=content+basket.get(i).getChoicequestion().getAnswer();
		}
		for(int i=0;i<basket1.size();i++) {
			content=content+basket1.get(i).getBigQuestion().getAnswer();
		}
		address="d:\\"+name+"_answer.doc";
		d.htmltoWord3(content,address);
		//获得答案
		System.out.println("成功生成三样");
		this.service.save(getDatikaxinxi(basket.size(),basket1.size()));
		
		return "hello";

		
	}
	public String getDatikaxinxi(int c,int b) {
		int page=1;
		int c0=c;
		int zong=120;
		int c1=0;
		String xinxi="";
		if(b!=0) {
			
			if(c0==0) {
				
			}else if(c0>0&c0<24*8) {
				if(c0%8==0) {
					zong=zong-5*(c0/8);
					c1=c0;
				}else {
					zong=zong-5*((c0/8)+1);
					c1=c0;
				}
			}else if(c0==24*8) {
				xinxi=xinxi+page+":c:192b:0;";
				page++;
				zong=120;
				c1=0;
			}else {
				int x=c0/192;
				int y=c0%192;
				for(int i=0;i<x;i++) {
					xinxi=xinxi+page+":c:192b:0;";
					
					page++;
				}
				if(y==0) {
					
				}else {
					if(y%8==0) {
						zong=zong-5*(y/8);
						c1=y;
					}else {
						zong=zong-(5*(y/8)+1);
						c1=y;
					}
				}
			}
		}else {
			if(c0==0) {
				return page+":c:0b:0;";
			}else if(c0>0&c0<24*8) {
				xinxi=xinxi+page+":c:"+c0+"b:0;";
				return xinxi;
			}else if(c0==24*8) {
				xinxi=xinxi+page+":c:192b:0;";
				return xinxi;
			}else {
				int x=c0/192;
				int y=c0%192;
				for(int i=0;i<x;i++) {
					xinxi=xinxi+page+":c:192b:0;";
					page++;
				}
				if(y==0) {
					
				}else {
					xinxi=xinxi+page+":c:"+y+"b:0;";
					return xinxi;
					
				}
			}
		}
		
		
		int b0=b;
		int b1=0;
		if(c==0) {
			if(b0<=5) {
				xinxi=xinxi+page+":c:0b:"+b0+";";
				return xinxi;
			}else {
				int x=b0/5;
				int y=b0%5;
				for(int i=0;i<x;i++) {
					xinxi=xinxi+page+":c:0b:5;";
					page++;
				}
				if(y==0) {
					
				}else {
					xinxi=xinxi+page+":c:0b:"+y+";";
				}
			}
		}else {
			if(zong/25>0) {
				int x=zong/25;
				if(b0<=x) {
					return xinxi=xinxi+page+":c:"+c1+"b:"+b0+";";
				}else {
					b0=b0-x;
					xinxi=xinxi+page+":c:"+c1+"b:"+x+";";
					page++;
					x=b0/5;
					int y=b0%5;
					for(int i=0;i<x;i++) {
						xinxi=xinxi+page+":c:0b:"+5+";";
						page++;
					}
					if(y==0) {
						return xinxi;
					}else {
						return xinxi=xinxi+page+":c:0b:"+y+";";
					}
				}
			}else {
				int x=b0/5;
				int y=b0%5;
				for(int i=0;i<x;i++) {
					xinxi=xinxi+page+":c:0b:"+x+";";
					page++;
				}
				if(y==0) {
					return xinxi;
				}else {
					xinxi=xinxi+page+":c:0b:"+y+";";
					return xinxi;
				}
			}
		}
		return xinxi;
	}
	
	@RequestMapping(value = "/fengeshijuan")
	public String getfenge(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap) throws Exception {
		String address1=request.getSession().getServletContext().getRealPath("/")+"img/ceshi_datika.jpg";
		String address2=request.getSession().getServletContext().getRealPath("/")+"img/";
		test4 t=new test4();
		String TestId0=t.getstudentId(address1, address2);
		String StudentId0=t.getTestId(address1, address2);
		int TestId=this.getId(TestId0);
		int TestNo=this.getNo(TestId0);
		int StudentId=this.getStudentId(StudentId0);
		List<String> ChIds=this.service.findxuanId(TestId, TestNo);
		System.out.println("chId:");
		List<String> BigIds=this.service.findbigId(TestId, TestNo);
//		//获取选择题数，大题数量
		List<String> chRequests0=t.getChoiceRequest(address1,address2, ChIds.size());
		List<String> chRequests=new ArrayList<String>();
		for(int i=0;i<chRequests0.size();i++) {
			String ans=chRequests0.get(i);
			if(ans.equals("1")) {
				chRequests.add("A");
			}else if(ans.equals("2")){
				chRequests.add("B");
			}else if(ans.equals("3")){
				chRequests.add("C");
			}else if(ans.equals("4")){
				chRequests.add("D");
			}else {
				chRequests.add("null");
			}
		}
		this.service.panCh(StudentId, 1, chRequests, ChIds);
		ArrayList<String> url=t.bigfenge(address1, address2, ChIds.size(),BigIds.size());
		this.service.bigsave(StudentId, 1, url, BigIds);
		System.out.println(request.getSession().getServletContext().getRealPath("/"));
		return "Judge0";
	}
	public int getId(String content) {
		String a=content;
		String a1=a.substring(0, 6);
		String id0="";
		int s=0;
		for(int i=0;i<a1.length();i++) {
			if((a1.charAt(i)+"").equals("0")&s==0) {
				continue;
			}else {
				s=1;
				id0=id0+a1.charAt(i);
			}
		}
		int id=Integer.parseInt(id0);
		return id;
	}
	public int getStudentId(String content) {
		String a1=content;
		String id0="";
		int s=0;
		for(int i=0;i<a1.length();i++) {
			if((a1.charAt(i)+"").equals("0")&s==0) {
				continue;
			}else {
				s=1;
				id0=id0+a1.charAt(i);
			}
		}
		int id=Integer.parseInt(id0);
		return id;
	}
	public int getNo(String content) {
		String a=content;
		String a2=a.substring(6, 7);
		int No=Integer.parseInt(a2);
		return No;
	}
}
