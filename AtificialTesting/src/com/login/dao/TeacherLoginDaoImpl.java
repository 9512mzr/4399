package com.login.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.entity.Journal;
import com.entity.Teacher;

@Repository
public class TeacherLoginDaoImpl{
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Object[]> findAll(){
		Query q=this.sessionFactory.getCurrentSession().createSQLQuery("select accountNumber,passWord,teacherid from teacher");
		List<Object[]> list = q.list();
		return list;
	}
	public List findUser(int id) {
		Query q=this.sessionFactory.getCurrentSession().createSQLQuery("select nickName from teacher where accountNumber = ?");
		q.setParameter(0, id);
		return q.list();
	}
	public void insertJournal(int id,String name,String time) {
		Journal nal = new Journal();
		nal.setTeacherId(id);
		nal.setNickName(name);
		nal.setLoginTime(time);
		Session s=this.sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		s.save(nal);
		t.commit();
		s.close();
	}
}




	
