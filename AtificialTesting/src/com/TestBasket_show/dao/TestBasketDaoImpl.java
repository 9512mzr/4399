package com.TestBasket_show.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.entity.TestBasket;

@Repository
public class TestBasketDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(int id) {
		TestBasket basket = new TestBasket();
		basket.setChoiceQuestionId(id);
		Session s=this.sessionFactory.openSession();
		Transaction tr=s.beginTransaction();
		s.save(basket);
		tr.commit();
		s.close();
	}
}
