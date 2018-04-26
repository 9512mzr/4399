package com.choice_question.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.entity.Choicequestion;
@Repository
public class Choice_questionDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	Transaction tx = sessionFactory.openSession().beginTransaction();
	private int AllRowCount0;
	public int getAllRowCount0() {
		return AllRowCount0;
	}
	public void setAllRowCount0(int allRowCount0) {
		AllRowCount0 = allRowCount0;
	}
	public List<Choicequestion> queryForPage(int offset,int length){
		List<Choicequestion> entitylist=null;
		try {
			Query query=(Query)sessionFactory.getCurrentSession().createQuery("from Choicequestion");
			this.setAllRowCount0(query.list().size());
			query.setFirstResult(offset);
			query.setMaxResults(length);
			entitylist=query.list();
		}catch(RuntimeException re) {
			throw re;
		}
		return entitylist;
	}
	public void addChoice_question(Choicequestion question) {
		 try{
			 tx.begin();
				
				Choicequestion Choice_question = question;
				sessionFactory.openSession().save(Choice_question);
				tx.commit();
				
		 }catch(Exception e){
			 e.printStackTrace();  
             tx.rollback();
		 }
		 
		
	}
}
