package com.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="testbasket")
public class TestBasket {
		private int testBasketId;
//		private int choiceQuestionId;
		private Choicequestion choicequestion;
//		private int bigQuestionId;
		private Bigquestion bigQuestion;
		@Id
		@GenericGenerator(name="loginid", strategy="assigned")
		@GeneratedValue(generator="loginid")
//		@GenericGenerator(name="Choicequestion", strategy="foreign", parameters={@Parameter(name="property", value="choicequestion")})
//		@GeneratedValue(generator="Choicequestion")
		public int getTestBasketId() {
			return testBasketId;
		}
		public void setTestBasketId(int testBasketId) {
			this.testBasketId = testBasketId;
		}

//		public int getChoiceQuestionId() {
//			return choiceQuestionId;
//		}
//		public void setChoiceQuestionId(int choiceQuestionId) {
//			this.choiceQuestionId = choiceQuestionId;
//		}
//		@OneToOne(cascade=CascadeType.ALL)
//		@JoinColumn(name="choiceQuestionId")
		@ManyToOne
		@JoinColumn(name="choiceQuestionId")
		public Choicequestion getChoicequestion() {
			return choicequestion;
		}
		public void setChoicequestion(Choicequestion choicequestion) {
			this.choicequestion = choicequestion;
		}
//		@OneToOne(cascade=CascadeType.ALL)
//		@JoinColumn(name="bigQuestionId")
		@ManyToOne
		@JoinColumn(name="bigQuestionId")
		public Bigquestion getBigQuestion() {
			return bigQuestion;
		}
		public void setBigQuestion(Bigquestion bigQuestion) {
			this.bigQuestion = bigQuestion;
		}
//
//		public int getBigQuestionId() {
//			return bigQuestionId;
//		}
//		public void setBigQuestionId(int bigQuestionId) {
//			this.bigQuestionId = bigQuestionId;
//		}
//	
}
