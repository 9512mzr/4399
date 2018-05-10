package com.skip.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Teacher;
@Repository
public class PersonalDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public Teacher findUser1(int id) {
        System.out.println(id);
   		Teacher q=(Teacher)sessionFactory.getCurrentSession().get(Teacher.class,id);
		return q;
	}

}
