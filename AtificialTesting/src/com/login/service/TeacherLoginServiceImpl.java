package com.login.service;

import java.util.List;

import javax.annotation.Resource;

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
	public Teacher getname(int id) {
		return this.teacherLoginDaoImpl.findUser(id);
		
		
	}
}
