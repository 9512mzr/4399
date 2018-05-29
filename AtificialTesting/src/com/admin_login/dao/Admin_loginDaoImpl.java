package com.admin_login.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class Admin_loginDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	public List findAllAdmin() {
		Query q=this.sessionFactory.getCurrentSession().createSQLQuery("select adminID,adminPass from admin ");
		List<Object[]> list = q.list();
		return list;
	}
	
}
