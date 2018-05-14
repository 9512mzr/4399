package com.login.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Teacher;
import com.login.dao.TechermessageDaoImpl;

@Service
@Transactional(readOnly=true)
public class TechermessageServiceImpl {
	@Resource
	private TechermessageDaoImpl techermessageDaoImpl;
	public Teacher getname1(int id) {
		return this.techermessageDaoImpl.findUser1(id);
		}
	
	public List<Object[]>  listAll(){
		return this.techermessageDaoImpl.findAll();
	}
	public void updataPW(Teacher teacher,String id) {
		this.techermessageDaoImpl.updatepw(teacher,id);
		
	}

}
