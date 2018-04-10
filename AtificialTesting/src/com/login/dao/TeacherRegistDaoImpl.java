package com.login.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.entity.Teacher;

@Repository
public class TeacherRegistDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public void registuser(String email,String passWord,String nickName) {
		Teacher teacher = new Teacher();
		
		teacher.setEmail(email);
		teacher.setNickName(nickName);
		teacher.setPassWord(passWord);
		
		Session s=this.sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		s.save(teacher);
		t.commit();
		s.close();
	}
}
