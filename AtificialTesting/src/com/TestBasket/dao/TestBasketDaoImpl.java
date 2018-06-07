package com.TestBasket.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.entity.Bigquestion;
import com.entity.Choicequestion;
import com.entity.TestBasket;

@Repository
public class TestBasketDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	public void saveChoice(int id, int bigId) {
		// basket.setChoiceQuestionId(id);
		// basket.setBigQuestionId(bigId);
		Session s = this.sessionFactory.openSession();
		Choicequestion cc = this.findChoice(id);
		Bigquestion bb = this.findBig(bigId);
		TestBasket basket = new TestBasket();
		basket.setBigQuestion(bb);
		basket.setChoicequestion(cc);
		Transaction tr = s.beginTransaction();
		s.save(basket);
		tr.commit();
		s.close();
	}

	public Choicequestion findChoice(int id) {
		Choicequestion q = (Choicequestion) sessionFactory.getCurrentSession().get(Choicequestion.class, id);
		return q;
	}

	public Bigquestion findBig(int bigId) {
		Bigquestion b = (Bigquestion) sessionFactory.getCurrentSession().get(Bigquestion.class, bigId);
		return b;
	}

	public List<TestBasket> findAll() {
		Query q = this.sessionFactory.getCurrentSession().createQuery("from TestBasket");
		return q.list();
	}

	// public void saveBig(int id) {
	// TestBasket basket = new TestBasket();
	// basket.setBigQuestionId(id);
	// Session s=this.sessionFactory.openSession();
	// Transaction tr=s.beginTransaction();
	// s.save(basket);
	// tr.commit();
	// s.close();
	// }
}
