package com.entity;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.context.annotation.RequestScope;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class test4 {

	public void main() throws Exception {
		// TODO Auto-generated method stub
		//getstudentmessage("e://datika-1.jpg");
		//分割试卷信息并且获得试卷信息
//		choicequestion("e://datika-1.jpg",88);
		//分割选择题
//		System.out.println(findchoiceblack("e://datika/datika-1-choicequestion21.jpg"));
		//获得一道选择题的答案
		//14 77 138 160
		//bigfenge0("e://datika2/datika-1.jpg",11*8,2);
		//bigfenge("e://datika2/datika3.jpg",16,1);
		
	}
	
	public List<String> getChoiceRequest(String address1,String address2,int size) throws Exception {
		choicequestion(address1,address2,size);
		
		List<String> requests=new ArrayList<String>();
		for(int i=0;i<size;i++) {
			if(i==size-1) {
				requests.add(findchoiceblack(address2+"datika-1-choicequestion"+(i+1)+".jpg"));
			}else {
				requests.add(findchoiceblack(address2+"datika-1-choicequestion"+(i+1)+".jpg"));
			}
			File folder=new File(address2+"datika-1-choicequestion"+(i+1)+".jpg");
			folder.delete();
		}
		return requests;
	}
	
	public ArrayList<String> bigfenge(String address1,String address2,int Choice,int big) throws IOException {
		ArrayList<String> s=new ArrayList<String>();
		caijian n=new caijian();
		if(Choice==0) {
			for(int i=0;i<big;i++) {
				n.cropImage(address1, address2+"datika-1-dati"+(i+1)+".jpg", 46, 422+i*594, 1825, 950-422, "JPG", "JPG");
				s.add("datika-1-dati"+(i+1)+".jpg");
			}
		}else {
			int height=Choice/8;
			if(Choice%8==0) {
				
			}else {
				height=height+1;
			}
			for(int i=0;i<big;i++) {
				n.cropImage(address1, address2+"datika-1-dati"+(i+1)+".jpg", 46, 515+(height-1)*110+i*594, 1825, 950-422, "JPG", "JPG");
				s.add("datika-1-dati"+(i+1)+".jpg");
			}
		}
		return s;
	}
	public String getstudentId(String address1,String address2) throws Exception {
		caijian n=new caijian();
		for(int i=0;i<7;i++) {
			n.cropImage(address1, address2+"datika-1-getStudent"+(i+1)+".jpg", 41, 25+i*43, 850, 30, "JPG", "JPG");
		}
		String StudentId="";
		for(int i=1;i<=7;i++) {
			StudentId=StudentId+studentmessage0(address2+"datika-1-getStudent"+i+".jpg");
		}
		for(int i=0;i<7;i++) {
			File folder=new File(address2+"datika-1-getStudent"+(i+1)+".jpg");
			folder.delete();
		}
		return StudentId;
	}
	
	public String getTestId(String address1,String address2) throws Exception {
		caijian n=new caijian();
		for(int i=0;i<7;i++) {
			n.cropImage(address1, address2+"datika-1-juanze"+(i+1)+".jpg", 911, 25+i*43, 850, 30, "JPG", "JPG");
		}
		String TestId="";
		for(int i=1;i<=7;i++) {
			TestId=TestId+studentmessage0(address2+"datika-1-juanze"+i+".jpg");
		}
		for(int i=0;i<7;i++) {
			File folder=new File(address2+"datika-1-juanze"+(i+1)+".jpg");
			folder.delete();
		}
		return TestId;
	}
	
	public void choicequestion(String address1,String address2,int size) throws IOException {
		int x=29;
		int y=415;
		caijian n=new caijian();
		for(int i=0;i<size;i++) {
			x=29+(i%8)*282;
			y=415+(i/8)*115;
			n.cropImage(address1, address2+"datika-1-choicequestion"+(i+1)+".jpg", x, y, 255, 30, "JPG", "JPG");
		}
	}
	
	public String findchoiceblack(String url) throws Exception {
		test2 t=new test2();
		
		ArrayList<RGB> kuais=new ArrayList<RGB>();
		ArrayList<ArrayList<RGB>> rgbs=t.getImagePixel(url);
		int width=t.width;
		for(int i=0;i<rgbs.size();i++) {
			for(int j=0;j<rgbs.get(i).size();j++) {
				if(rgbs.get(i).get(j).panblack()) {
					if(i+10<rgbs.size()&j+10<rgbs.get(i).size()) {
						if(findblackkuai(i,j,rgbs,10,10)) {
							kuais.add(rgbs.get(i).get(j));
						}
						
					}
				}
			}
		}
		if(kuais.size()==0) {
			return "null";
		}
		kuais=removechong(kuais);
		//65 130 194
		int x=kuais.get(0).getX();
		String re="";
		for(int i=0;i<4;i++) {
			int widths=width/4;
			if(x>=i*widths&x<=(i+1)*widths) {
				re=re+(i+1);
			}
		}
		return re;
	}
	
	public static String studentmessage0(String url) throws Exception {
		
		test2 t=new test2();
		
		ArrayList<RGB> kuais=new ArrayList<RGB>();
		ArrayList<ArrayList<RGB>> rgbs=t.getImagePixel(url);
		int width=t.width;
		int a=0;
		for(int i=0;i<rgbs.size();i++) {
			for(int j=0;j<rgbs.get(i).size();j++) {
				if(rgbs.get(i).get(j).panblack()) {
					if(i+10<rgbs.size()&j+10<rgbs.get(i).size()) {
						a++;
						if(findblackkuai(i,j,rgbs,10,10)) {
							kuais.add(rgbs.get(i).get(j));
						}
						
					}
				}
			}
		}
		
		kuais=removechong(kuais);
		int x=kuais.get(0).getX();
		String re="";
		for(int i=0;i<10;i++) {
			int widths=width/10;
			if(x>=i*widths&x<=(i+1)*widths) {
				if(i==9) {
					re=re+0;
				}else {
					re=re+(i+1);
				}
			}
		}
		return re;
	}

	
	public static  boolean findblackkuai(int x,int y,ArrayList<ArrayList<RGB>> ku0,int width,int height) {
		for(int i=0;i<width;i++) {
			for(int j=0;j<height;j++) {
				RGB r=ku0.get(x+i).get(y+j);
				if(r.panblack()) {
					
				}else {
					return false;
				}
			}
		}
		return true;
	}
	
	public static ArrayList<RGB> removechong(ArrayList<RGB> r){
		ArrayList<RGB> r2=new ArrayList<RGB>();
		for(int i=0;i<r.size();i++) {
			int a=0;
			for(int j=i+1;j<r.size();j++) {
				int x=Math.abs(r.get(i).getX()-r.get(j).getX());
				int y=Math.abs(r.get(i).getY()-r.get(j).getY());
				if(Math.abs(x-y)<10) {
					a=1;
					break;
				}
			}
			if(a==0) {
				r2.add(r.get(i));
			}
		}
		return r2;
	}

}
