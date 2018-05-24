package com.TestBasket.dao;

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
	
	public void saveChoice(int id,int bigId) {
		TestBasket basket = new TestBasket();
		basket.setChoiceQuestionId(id);
		basket.setBigQuestionId(bigId);
		Session s=this.sessionFactory.openSession();
		Transaction tr=s.beginTransaction();
		s.save(basket);
		tr.commit();
		s.close();
	}
//	public void saveBig(int id) {
//		TestBasket basket = new TestBasket();
//		basket.setBigQuestionId(id);
//		Session s=this.sessionFactory.openSession();
//		Transaction tr=s.beginTransaction();
//		s.save(basket);
//		tr.commit();
//		s.close();
//	}
}
