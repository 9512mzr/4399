package com.check.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


import com.entity.Choicequestion;
import com.entity.Teacher;

@Repository
public class CheckDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	private int AllRowCount0;
	public int getAllRowCount0() {
		return AllRowCount0;
	}
	public void setAllRowCount0(int allRowCount0) {
		AllRowCount0 = allRowCount0;
	}
	public List<Choicequestion> queryForPage(int offset,int length,int a){
		List<Choicequestion> entitylist=null;
		try {
			Query query=(Query)sessionFactory.getCurrentSession().createQuery("from Choicequestion where problemModelId= ?");
			query.setParameter(0, a);
			this.setAllRowCount0(query.list().size());
			query.setFirstResult(offset);
			query.setMaxResults(length);
			entitylist=query.list();
		}catch(RuntimeException re) {
			throw re;
		}
		return entitylist;
	}


		


	

}
