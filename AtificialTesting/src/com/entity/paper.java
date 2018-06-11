package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="paper")
public class paper {
	
	private int id;
	private String choice;
	private String big;
	private String datikasize;
	@Id
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getChoice() {
		return choice;
	}
	public void setChoice(String choice) {
		this.choice = choice;
	}
	public String getBig() {
		return big;
	}
	public void setBig(String big) {
		this.big = big;
	}
	public String getDatikasize() {
		return datikasize;
	}
	public void setDatikasize(String datikasize) {
		this.datikasize = datikasize;
	}
}
