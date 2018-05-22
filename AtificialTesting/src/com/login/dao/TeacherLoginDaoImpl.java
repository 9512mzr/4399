package com.login.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


import com.entity.Teacher;

@Repository
public class TeacherLoginDaoImpl{
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Object[]> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createSQLQuery("select accountNumber,passWord from teacher");
		List<Object[]> list = q.list();
		return list;
	}
	public List findUser(int id) {
		Query q=this.sessionFactory.getCurrentSession().createSQLQuery("select nickName from teacher where accountNumber = ?");
		q.setParameter(0, id);
		return q.list();
	}
}




	
