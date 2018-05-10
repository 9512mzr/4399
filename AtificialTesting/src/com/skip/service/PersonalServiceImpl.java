package com.skip.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Teacher;
import com.skip.dao.PersonalDaoImpl;
@Service
@Transactional(readOnly=true)

public class PersonalServiceImpl {
	@Resource
	private PersonalDaoImpl personalDaoImpl;
	public Teacher getname1(int id) {
		return this.personalDaoImpl.findUser1(id);
		}

}
