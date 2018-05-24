package com.testBasket_show.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Choicequestion;
import com.entity.TestBasket;

@Repository
public class TestBasket_showDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	private int AllRowCount0;
	public int getAllRowCount0() {
		return AllRowCount0;
	}
	public void setAllRowCount0(int allRowCount0) {
		AllRowCount0 = allRowCount0;
	}
	public List<TestBasket> findChoice(){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from TestBasket where bigQuestionId=1");
		return q.list();
	}
	public List<TestBasket> findBigQuestion(){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from TestBasket where ChoiceQuestionId=1");
		return q.list();
	}
//	public List<TestBasket> queryForPage(int offset,int length){
//		List<TestBasket> entitylist=null;
//		try {
//			Query query=(Query)sessionFactory.getCurrentSession().createQuery("from TestBasket");
//			this.setAllRowCount0(query.list().size());
//			query.setFirstResult(offset);
//			query.setMaxResults(length);
//			entitylist=query.list();
//		}catch(RuntimeException re) {
//			throw re;
//		}
//		return entitylist;
//	}
}
