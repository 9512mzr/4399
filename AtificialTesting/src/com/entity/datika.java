package com.entity;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.ArrayList;

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.Image;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.rtf.RtfWriter2;

public class datika {
	
	public void main1(int a,int b,String address,String address2) throws DocumentException, IOException {
		// TODO Auto-generated method stub

	       Document document = new Document(PageSize.A4);
	       File file = new File(address);
	       RtfWriter2.getInstance(document, new FileOutputStream(file));
	       
	       document.open();
	       int zong=120;
	       addStudentId(document,address2);
	       zong=addChoiceImg(document,zong,a,address2);
	       addBigImg(document,zong,b,address2);
	       //addBigImg0(document);
	       document.close();
	}
	public void addStudentId(Document document,String address2) throws MalformedURLException, IOException, DocumentException {
		Image img = Image.getInstance(address2+"img/studentId3.jpg");

		img.setAbsolutePosition(0, 0);

		img.setAlignment(Image.LEFT);// 设置图片显示位置

	       //
	       // img.scaleAbsolute(60, 60);// 直接设定显示尺寸
	       //
		img.scalePercent(40);//表示显示的大小为原尺寸的50%
	       //
	       // // img.scalePercent(25, 12);//图像高宽的显示比例
	       //
	       // // img.setRotation(30);//图像旋转一定角度
	       //
		document.add(img);
	}
	public void addTetal(Document document) throws DocumentException, IOException {
		BaseFont bfChinese = BaseFont.createFont(BaseFont.HELVETICA,
                BaseFont.WINANSI, BaseFont.NOT_EMBEDDED);
		Font titleFont = new Font(bfChinese, 12, Font.BOLD);

	       // // 正文字体风格
	       //
	       Font contextFont = new Font(bfChinese, 10, Font.NORMAL);

	       Paragraph title = new Paragraph("2018/5/30Big_questionTest");
	       //
	       // 设置标题格式对齐方式

	       title.setAlignment(Element.ALIGN_CENTER);

	       // title.setFont(titleFont);

	       document.add(title);
	}
	
	public void addBigImg0(Document document,String address2) throws MalformedURLException, IOException, DocumentException {
			Image img = Image.getInstance(address2+"img/bigquesitonda.jpg");

			img.setAbsolutePosition(0, 0);

			img.setAlignment(Image.LEFT);// 设置图片显示位置

		       //
		       // img.scaleAbsolute(60, 60);// 直接设定显示尺寸
		       //
			img.scalePercent(20);//表示显示的大小为原尺寸的50%
		       //
		       // // img.scalePercent(25, 12);//图像高宽的显示比例
		       //
		       // // img.setRotation(30);//图像旋转一定角度
		       //
			document.add(img);
	}
	
	public void addBigImg(Document document,int zong,int size,String address2) throws MalformedURLException, IOException, DocumentException {

		do {
			if(size==0) {
				break;
			}
			if(zong>24) {
				addBigImg0(document,address2);
				zong=zong-24;
				size=size-1;
			}else {
				int a=zong/4;
				for(int i=0;i<a;i++) {
					addtext(document,"");
				}
				addStudentId(document,address2);
				zong=120;
			}
		}while(true);
	}
	
	public int addChoiceImg(Document document,int zong,int size,String address2) throws MalformedURLException, IOException, DocumentException {
		do {
			if(size==0) {
				break;
			}
			if(zong>=5) {
				if(size>=8) {
					addChoiceImg0(document,address2+"img/choicequestion8.jpg");
					size=size-8;
					zong=zong-5;
				}else {
					String img0=address2+"img/choicequestion"+size+".jpg";
					addChoiceImg0(document,img0);
					zong=zong-5;
					break;
				}
			}else {
				addStudentId(document,address2);
				zong=120;
			}
		}while(true);
		return zong;
	}
	public void addChoiceImg0(Document document,String img0) throws MalformedURLException, IOException, DocumentException {
			Image img = Image.getInstance(img0);

		       img.setAbsolutePosition(0, 0);

		       img.setAlignment(Image.LEFT);// 设置图片显示位置

		       //
		       // img.scaleAbsolute(60, 60);// 直接设定显示尺寸
		       //
		       img.scalePercent(15);//表示显示的大小为原尺寸的50%
		       document.add(img);
	}
	public void addImg(Document document,String address2) throws DocumentException, MalformedURLException, IOException {
	       Image img = Image.getInstance(address2+"img/choicequestion4.jpg");

	       img.setAbsolutePosition(0, 0);

	       img.setAlignment(Image.LEFT);// 设置图片显示位置

	       //
	       // img.scaleAbsolute(60, 60);// 直接设定显示尺寸
	       //
	       img.scalePercent(25);//表示显示的大小为原尺寸的50%
	       //
	       // // img.scalePercent(25, 12);//图像高宽的显示比例
	       //
	       // // img.setRotation(30);//图像旋转一定角度
	       //
	       document.add(img);
	}
	
	public void addtext(Document document,String content) throws DocumentException {
	    	   
	    	   Paragraph context = new Paragraph(content);

		       // 正文格式左对齐

		       context.setAlignment(Element.ALIGN_LEFT);

		       // context.setFont(contextFont);

		       // 离上一段落（标题）空的行数

		       context.setSpacingBefore(5);

		       // 设置第一行空的列数

		       context.setFirstLineIndent(20);

		       document.add(context);
	    	   
	    	   
	    	   context.setAlignment(Element.ALIGN_LEFT);
	}
}
