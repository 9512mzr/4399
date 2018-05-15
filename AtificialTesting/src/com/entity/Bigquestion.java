package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bigquestion")
public class Bigquestion {

	private Integer bigQuestionId;
	private Integer ProblemModelId;
	private String Image;
	private String Answer;
	private String content;
	@Id
	public Integer getBigQuestionId() {
		return bigQuestionId;
	}
	public void setbigQuestionId(Integer bigQuestionId) {
		this.bigQuestionId = bigQuestionId;
	}
	public Integer getProblemModelId() {
		return ProblemModelId;
	}
	public void setProblemModelId(Integer problemModelId) {
		ProblemModelId = problemModelId;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	public String getAnswer() {
		return Answer;
	}
	public void setAnswer(String answer) {
		Answer = answer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
