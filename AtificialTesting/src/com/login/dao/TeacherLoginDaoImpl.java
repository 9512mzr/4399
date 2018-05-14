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
		Query q=this.sessionFactory.getCurrentSession().createSQLQuery("select teacherid,passWord from teacher");
		List<Object[]> list = q.list();
		return list;
	}
	public Teacher findUser(int id) {
        System.out.println(id);
        
		Teacher q=(Teacher)sessionFactory.getCurrentSession().get(Teacher.class,id);
		
		return q;
	}
}




	
