package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="testbasket")
public class TestBasket {
		private int testBasketId;
		private int choiceQuestionId;
		@Id
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
	
}
