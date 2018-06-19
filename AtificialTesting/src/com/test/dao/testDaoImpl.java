package com.test.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class testDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public void save() {
	}
}
