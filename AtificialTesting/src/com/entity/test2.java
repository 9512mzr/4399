package com.entity;

import java.awt.AWTException;
import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;

import javax.imageio.ImageIO;

public class test2 {
	public int width;
	/** 
     * 读取一张图片的RGB值 
     *  
     * @throws Exception 
     */  
    public ArrayList<ArrayList<RGB>> getImagePixel(String image) throws Exception {  
        int[] rgb = new int[3];  
        File file = new File(image);  
        BufferedImage bi = null;  
        try {  
            bi = ImageIO.read(file);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        int width = bi.getWidth();  
        int height = bi.getHeight();  
        int minx = bi.getMinX();  
        int miny = bi.getMinY();  
        System.out.println("width=" + width + ",height=" + height + ".");  
        System.out.println("minx=" + minx + ",miniy=" + miny + ".");  
        this.width=width;
        ArrayList<ArrayList<RGB>> rgb0=new ArrayList<ArrayList<RGB>>();
        for (int i = minx; i < width; i++) {  
        	ArrayList<RGB> rgb00=new ArrayList<RGB>();
            for (int j = miny; j < height; j++) {  
                int pixel = bi.getRGB(i, j); // 下面三行代码将一个数字转换为RGB数字  
                rgb[0] = (pixel & 0xff0000) >> 16;  
                rgb[1] = (pixel & 0xff00) >> 8;  
                rgb[2] = (pixel & 0xff);  
               // System.out.println("i=" + i + ",j=" + j + ":(" + rgb[0] + ","  
               //         + rgb[1] + "," + rgb[2] + ")");  
                RGB a=new RGB();
                a.setX(i);
                a.setY(j);
                a.setR(rgb[0]);
                a.setG(rgb[1]);
                a.setB(rgb[2]);
                rgb00.add(a);
            }  
            rgb0.add(rgb00);
        }  
        return rgb0;
    }  
  
    /** 
     * 返回屏幕色彩值 
     *  
     * @param x 
     * @param y 
     * @return 
     * @throws AWTException 
     */  
    public int getScreenPixel(int x, int y) throws AWTException { // 函数返回值为颜色的RGB值。  
        Robot rb = null; // java.awt.image包中的类，可以用来抓取屏幕，即截屏。  
        rb = new Robot();  
        Toolkit tk = Toolkit.getDefaultToolkit(); // 获取缺省工具包  
        Dimension di = tk.getScreenSize(); // 屏幕尺寸规格  
        System.out.println(di.width);  
        System.out.println(di.height);  
        Rectangle rec = new Rectangle(0, 0, di.width, di.height);  
        BufferedImage bi = rb.createScreenCapture(rec);  
        int pixelColor = bi.getRGB(x, y);  
  
        return 16777216 + pixelColor; // pixelColor的值为负，经过实践得出：加上颜色最大值就是实际颜色值。  
    }  
  
    /** 
     * @param args 
     */  
    public static void main(String[] args) throws Exception {  

        int x = 0;  
        test2 rc = new test2();  
        x = rc.getScreenPixel(100, 345);  
        System.out.println(x + " - ");  
        ArrayList<RGB> rgb02=new ArrayList<RGB>();
        ArrayList<ArrayList<RGB>> rgb0=rc.getImagePixel("e:\\c.jpg"); 
        for(int i=4;i<rgb0.size()-4;i++) {
        	for(int j=4;j<rgb0.get(i).size()-4;j++) {
        		RGB r=findblack(rgb0,i,j);
        		if(r==null) {
        			
        		}else {
        			rgb02.add(findblack(rgb0,i,j));
        		}
        		
        	}
        }
        find2(rgb02);
    }
    
    public RGB findRGB(ArrayList<ArrayList<RGB>> rgb0,int a,int b) {
    	for(int i=0;i<rgb0.size();i++) {
    		for(int j=0;j<rgb0.get(i).size();j++) {
    			if(a==rgb0.get(i).get(j).getX()&b==rgb0.get(i).get(j).getY()) {
    				return rgb0.get(i).get(j);
    			}
    		}
    	}
		return null;
    }
    
    public static RGB findblack(ArrayList<ArrayList<RGB>> n,int a,int b) {
    	
    	RGB a0=n.get(a).get(b);
    	if(a0.getG()>50&a0.getG()>50&a0.getB()>50) {
    		
        		
        	
    		return null;
    	}
    	
    	for(int i=0;i<9;i++) {
    		for(int j=0;j<9;j++) {
    			if(n.get(Math.abs(a-4+i)).get(Math.abs(b-4+j)).getR()<50&n.get(Math.abs(a-4+i)).get(Math.abs(b-4+j)).getG()<50&n.get(Math.abs(a-4+i)).get(Math.abs(b-4+j)).getB()<50) {
    			}else {
    				
    				return null;
    			}
    		}
    	}
    	//System.out.println(n.get(a).get(b).getX()+" "+n.get(a).get(b).getY());
    	return n.get(a).get(b);
    	
    }
    	
    public static void find3(ArrayList<RGB> n) {
    	ArrayList<ArrayList<RGB>> n1=new ArrayList<ArrayList<RGB>>();
    	ArrayList<RGB> n2=new ArrayList<RGB>();
    	RGB r=n.get(0);
    	n.remove(0);
    	for(int i=0;i<n.size();i++) {
    		int l=Math.abs(r.getX()-n.get(i).getX())^2+Math.abs(r.getY()-n.get(i).getY())^2;
    		if(l<=2) {
    			
    		}
    	}
    }
    
    public static void find2(ArrayList<RGB> n) {
    	ArrayList<ArrayList<RGB>> n1=new ArrayList<ArrayList<RGB>>();
    	ArrayList<RGB> n2=new ArrayList<RGB>();
    	RGB r=n.get(0);
    	for(int i=1;i<n.size();i++) {
    		if(r.getX()==n.get(i).getX()) {
    			if(r.getY()==(n.get(i).getY()-1)){
    				n2.add(n.get(i));
    			}else {
    				n1.add(n2);
    				
        			n2=new ArrayList<RGB>();
//        			int fs=n1.size()-1;
//        			for(int j=0;j<n1.get(fs).size();j++) {
//        				System.out.println(n1.get(fs).get(j).getX()+" "+n1.get(fs).get(j).getY());
//        			}
//        			System.out.println();
    			}
    		}else {
    			n1.add(n2);
    			n2=new ArrayList<RGB>();
//    			int fs=n1.size()-1;
//    			for(int j=0;j<n1.get(fs).size();j++) {
//    				System.out.println(n1.get(fs).get(j).getX()+" "+n1.get(fs).get(j).getY());
//    			}
//    			System.out.println();
    		}
    		r=n.get(i);
    	}
    	System.out.println(n1.size());
    	for(int i=0;i<n1.size();i++) {
    		for(int j=0;j<n1.get(i).size();j++) {
    			System.out.println(n1.get(i).get(j).getX()+" "+n1.get(i).get(j).getY());
    		}
    		System.out.println();
    	}
    }
    
    
}
