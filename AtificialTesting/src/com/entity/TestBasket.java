package com.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="testbasket")
public class TestBasket {
		private int testBasketId;
		private int choiceQuestionId;
		private Choicequestion choicequestion;
		
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
	
		public int getChoiceQuestionId() {
			return choiceQuestionId;
		}
		public void setChoiceQuestionId(int choiceQuestionId) {
			this.choiceQuestionId = choiceQuestionId;
		}
		@OneToOne(cascade=CascadeType.ALL)
		@PrimaryKeyJoinColumn(name="choiceQuestionId")
//		@OneToOne(mappedBy="basket")
		public Choicequestion getChoicequestion() {
			return choicequestion;
		}
		public void setChoicequestion(Choicequestion choicequestion) {
			this.choicequestion = choicequestion;
		}
	
}
