package com.entity;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class demo {
	 public void htmlToWord2() throws Exception {
         InputStream bodyIs = new FileInputStream("f:\\2.html");
         
         //InputStream cssIs = new FileInputStream("f:\\1.css");
         String body0 = this.getContent(bodyIs);
         //String css = this.getContent(cssIs);
         //拼一个标准的HTML格式文档
         //String content = "<html><head><style>" + css + "</style></head><body>" + body + "</body></html>";
         body0=body0.substring(body0.indexOf("<!-- 以下为分页内容 -->	"), body0.lastIndexOf("<a href=\"getshijuan\">生成试卷</a>"));
         String[] bodys0=body0.split("<!-- fenyekaishi -->");
         ArrayList<String> bodys00=new ArrayList<String>();
         for(int i=0;i<bodys0.length;i++) {
        	 if(bodys0[i].indexOf("<!-- fenyejieshu -->")==-1) {
        		 continue;
        	 }
        	 String bodys000=bodys0[i].substring(0, bodys0[i].indexOf("<!-- fenyejieshu -->"));
        	 bodys00.add(bodys000);
         }
         String body="";
         for(int i=0;i<bodys00.size();i++) {
        	 body=body+bodys00.get(i);
        	 System.out.println(bodys00.get(i));
         }
         System.out.println(body);
        // body="<p>下图表示动物、植物细胞二合一显微结构模式图。<br /><img src=\"http://tiku.21cnjy.com/tikupic/94/28/946286075c3ff25b70253d69b23bb656.png\" style=\"vertical-align:middle;\" /><br />请回答以下问题：<br />（1）图中结构1是<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>，提取该结构上的磷脂分子，在空气——水界面上铺展成单分子层，测得的单分子层面积<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>（选填“大于”、“等于”或“小于”）该结构表面积的2倍。<br />（2）分离各种细胞器常用的方法是<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>。<br />（3）把氨基酸组装成蛋白质的场所是[&nbsp;&nbsp;&nbsp;&nbsp; ]<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>，与动物细胞有丝分裂有关的细胞器[&nbsp;&nbsp;&nbsp;&nbsp; ]<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>。如果B图为是植物根尖分生区细胞，则该细胞没有的结构是叶绿体和[&nbsp;&nbsp;&nbsp;&nbsp; ]<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>。（[ ]内填序号，<u>&nbsp;&nbsp;&nbsp;</u>&nbsp;上写名称）<br />（4）有双层膜的结构但又不属于细胞器的是<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>（只写名称），它是遗传物质<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>储存和复制的场所。<br />（5）与图中真核细胞相比，构成原核生物的细胞的显著特点是：<u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>。<br />（6）病毒没有细胞结构，只由蛋白质和核酸或者仅由蛋白质构成，就病毒的结构推断病毒的生活方式为__________。</p>";
         String content = "<html><head></head><body>" +body + "</body></html>";
         InputStream is = new ByteArrayInputStream(content.getBytes("UTF-8"));
         OutputStream os = new FileOutputStream("f:\\1.doc");
         this.inputStreamToWord(is, os);
      }
      
	 public void htmltoWord3(String content,String address) throws IOException {
		 content = "<html><head></head><body>" +content+ "</body></html>";
         InputStream is = new ByteArrayInputStream(content.getBytes("UTF-8"));
         OutputStream os = new FileOutputStream(address);
         this.inputStreamToWord(is, os);
	 }
	 
      /**
       * 把is写入到对应的word输出流os中
       * 不考虑异常的捕获，直接抛出
       * @param is
       * @param os
       * @throws IOException
       */
      private void inputStreamToWord(InputStream is, OutputStream os) throws IOException {
         POIFSFileSystem fs = new POIFSFileSystem();
         //对应于org.apache.poi.hdf.extractor.WordDocument
         fs.createDocument(is, "WordDocument");
         fs.writeFilesystem(os);
         os.close();
         is.close();
      }
      
      /**
       * 把输入流里面的内容以UTF-8编码当文本取出。
       * 不考虑异常，直接抛出
       * @param ises
       * @return
       * @throws IOException
       */
      private String getContent(InputStream... ises) throws IOException {
         if (ises != null) {
            StringBuilder result = new StringBuilder();
            BufferedReader br;
            String line;
            for (InputStream is : ises) {
               br = new BufferedReader(new InputStreamReader(is, "GBK"));
               while ((line=br.readLine()) != null) {
                   result.append(line);
               }
            }
            return result.toString();
         }
         return null;
      }
}
