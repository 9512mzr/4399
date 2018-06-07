package com.library.dao;



import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


import com.entity.Choicequestion;
import com.entity.Teacher;

@Repository
public class LibraryDaoImpl {
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
		List<Choicequestion> entitylist=null;
		try {
			Query query=(Query)sessionFactory.getCurrentSession().createQuery("from Choicequestion where choiceQuestionId != -1");
			this.setAllRowCount0(query.list().size());
			query.setFirstResult(offset);
			query.setMaxResults(length);
			entitylist=query.list();
		}catch(RuntimeException re) {
			throw re;
		}
		return entitylist;
	}
	
	
	
	
	
	

	
	
	
	public Teacher findUser1(int id) {
        System.out.println(id);
   		Teacher q=(Teacher)sessionFactory.getCurrentSession().get(Teacher.class,id);
		return q;
	}
	public List<Choicequestion> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createQuery("from Choicequestion where  choiceQuestionId != -1");
		List<Choicequestion> list = q.list();
		return list;
	}
	
	

}
