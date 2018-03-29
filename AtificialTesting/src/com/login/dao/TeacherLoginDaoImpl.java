package com.login.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TeacherLoginDaoImpl{
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Object[]> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createSQLQuery("select teacherid,passWord from teacher");
		List<Object[]> list = q.list();
		return list;
	}
}
