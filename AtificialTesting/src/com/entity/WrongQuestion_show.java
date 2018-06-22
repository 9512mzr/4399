package com.entity;

public class WrongQuestion_show {

	private int JudgeId;
	private int QuestionId;
	private int StudentId;
	private int TeacherId;
	private int problemModelId;
	private String content;
	private String answer;
	private String difficulty;
	private String request;
	private String date;
	private Integer score;
	private Integer fullmark;
	private String choicejudge;
	public int getJudgeId() {
		return JudgeId;
	}
	public void setJudgeId(int judgeId) {
		JudgeId = judgeId;
	}
	public int getQuestionId() {
		return QuestionId;
	}
	public void setQuestionId(int questionId) {
		QuestionId = questionId;
	}
	public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		StudentId = studentId;
	}
	public int getTeacherId() {
		return TeacherId;
	}
	public void setTeacherId(int teacherId) {
		TeacherId = teacherId;
	}
	public int getProblemModelId() {
		return problemModelId;
	}
	public void setProblemModelId(int problemModelId) {
		this.problemModelId = problemModelId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public Integer getFullmark() {
		return fullmark;
	}
	public void setFullmark(Integer fullmark) {
		this.fullmark = fullmark;
	}
	public String getChoicejudge() {
		return choicejudge;
	}
	public void setChoicejudge(String choicejudge) {
		this.choicejudge = choicejudge;
	}
}
