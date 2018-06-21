package com.testBasket_show.dao;

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
public class TestBasket_showDeleteDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public void choiceDelete(int id) {
		Query q = this.sessionFactory.getCurrentSession().createQuery("delete TestBasket where ChoiceQuestionId = ?");
		q.setParameter(0, id);
		int ret = q.executeUpdate();
		System.out.print(ret);
	}
//	public List<TestBasket> findChoice(int id){
//		Query q=this.sessionFactory.getCurrentSession().createQuery(" from TestBasket where ChoiceQuestionId = id");
//		return q.list();
//	}
	public void bigDelete(int id) {
		Query q = this.sessionFactory.getCurrentSession().createQuery("delete TestBasket where BigQuestionId = ?");
		q.setParameter(0, id);
		int ret = q.executeUpdate();
		System.out.print(ret);
	}
}
