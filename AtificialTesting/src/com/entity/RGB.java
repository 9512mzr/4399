package com.entity;

public class RGB {
	private int x;
	private int y;
	private int R;
	private int G;
	private int B;
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	public int getR() {
		return R;
	}
	public void setR(int r) {
		R = r;
	}
	public int getG() {
		return G;
	}
	public void setG(int g) {
		G = g;
	}
	public int getB() {
		return B;
	}
	public void setB(int b) {
		B = b;
	}
	
	public boolean panblack() {
		if(this.getR()<20&this.getG()<20&this.getB()<20) {
			return true;
		}else {
			return false;
		}
	}
}
