package com.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.Parameter;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Choicequestion")
public class Choicequestion {
	private int choiceQuestionId;
	private Integer problemModelId;
	private String content;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
	private String image;
	private String difficulty;
//	private TestBasket basket;
	
	@Id
//	@GenericGenerator(name="loginid", strategy="assigned")
//	@GeneratedValue(generator="loginid")
	public int getChoiceQuestionId() {
		return choiceQuestionId;
	}
	public void setChoiceQuestionId(int choiceQuestionId) {
		this.choiceQuestionId = choiceQuestionId;
	}
	public Integer getProblemModelId() {
		return problemModelId;
	}
	public void setProblemModelId(Integer problemModelId) {
		this.problemModelId = problemModelId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
//	@OneToOne(cascade=CascadeType.ALL)
//	@PrimaryKeyJoinColumn(name="choiceQuestionId")
//	public TestBasket getBasket() {
//		return basket;
//	}
//	public void setBasket(TestBasket basket) {
//		this.basket = basket;
//	}
	public String getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}
	
}
