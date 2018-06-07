package com.login.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Teacher;
import com.login.dao.TeacherLoginDaoImpl;

@Service
@Transactional(readOnly=true)
public class TeacherLoginServiceImpl {
	@Resource
	private TeacherLoginDaoImpl teacherLoginDaoImpl;
	
	public List<Object[]>  listAll(){
		return this.teacherLoginDaoImpl.findAll();
	}
	public List<String> getname(int id) {
		return this.teacherLoginDaoImpl.findUser(id);	
	}
	public void insert(int id,String name,String time) {
		this.teacherLoginDaoImpl.insertJournal(id, name, time);
	}
}
