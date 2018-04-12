package com.choice_question.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Choicequestion;
@Repository
public class Choice_questionDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	private int AllRowCount0;
	public int getAllRowCount0() {
		return AllRowCount0;
	}
	public void setAllRowCount0(int allRowCount0) {
		AllRowCount0 = allRowCount0;
	}
	public List<Choicequestion> queryForPage(int offset,int length){
		//Query query=(Query)sessionFactory.getCurrentSession().createQuery("from choicequestion");
		List<Choicequestion> entitylist=null;
		try {
			Query query=(Query)sessionFactory.getCurrentSession().createQuery("from Choicequestion");
			this.setAllRowCount0(query.list().size());
			query.setFirstResult(offset);
			query.setMaxResults(length);
			entitylist=query.list();
			System.out.println(entitylist.size());
		}catch(RuntimeException re) {
			throw re;
		}
		return entitylist;
	}
	
	public void showall() {
			Query query=(Query)sessionFactory.getCurrentSession().createQuery("from Choicequestion");
			ArrayList<Choicequestion> n=(ArrayList<Choicequestion>) query.list();
			for(int i=0;i<n.size();i++) {
				System.out.println(n.get(i).getChoiceQuestionId());
				System.out.println(n.get(i).getContent());
			}
			
		
	}
}
