package com.login.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.entity.Teacher;

@Repository
public class TechermessageDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public Teacher findUser1(int id) {
        System.out.println(id);
   		Teacher q=(Teacher)sessionFactory.getCurrentSession().get(Teacher.class,id);
		return q;
	}
	
	public List<Object[]> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createSQLQuery("from teacher");
		List<Object[]> list = q.list();
		return list;
	}
	public void updatepw(Teacher teacher,String id) {
		Session s=this.sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		teacher.setPassWord(id);
		s.update(teacher);
		t.commit();
		s.close();	
		
	}

}
