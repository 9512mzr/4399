package com.big_question.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Bigquestion;

@Repository
public class big_questionDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	private int AllRowCount0;
	
	public List<Bigquestion> queryForPage(int offset,int length){
		List<Bigquestion> entitylist=null;
		try {
			Query query=(Query)sessionFactory.getCurrentSession().createQuery("from Bigquestion");
			this.setAllRowCount0(query.list().size());
			query.setFirstResult(offset);
			query.setMaxResults(length);
			entitylist=query.list();
		}catch(RuntimeException re) {
			throw re;
		}
		return entitylist;
	}
	
	public int getAllRowCount0() {
		return AllRowCount0;
	}
	public void setAllRowCount0(int allRowCount0) {
		AllRowCount0 = allRowCount0;
	}
}
