package com.Administration.login_log.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Journal;

@Repository
public class LoginLogDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	public List<Journal> queryForPage(int offset, int length) {
		Query query = (Query) sessionFactory.getCurrentSession().createQuery("from Journal");
		query.setFirstResult(offset);
		query.setMaxResults(length);
		return query.list();
	}
	
	public int getAllRowCount() {
		int count = ((Long) sessionFactory.getCurrentSession().createQuery("select count(*) from Journal").iterate().next()).intValue();
		return count;
	}
}
