package com.Administration.teacher.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Teacher;

@Repository
public class TeacherDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Teacher> queryForPage(int offset, int length) {
		Query query = (Query) sessionFactory.getCurrentSession().createQuery("from Teacher");
		query.setFirstResult(offset);
		query.setMaxResults(length);
		return query.list();
	}
	
	// 查询记录总数
		public int getAllRowCount() {
			int count = ((Long) sessionFactory.getCurrentSession().createQuery("select count(*) from Teacher").iterate().next()).intValue();
			return count;
		}
	
}
