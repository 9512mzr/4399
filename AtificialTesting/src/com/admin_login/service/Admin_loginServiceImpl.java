package com.admin_login.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.admin_login.dao.Admin_loginDaoImpl;
 
@Service
@Transactional(readOnly=true)
public class Admin_loginServiceImpl {
	@Resource
	private Admin_loginDaoImpl admin_loginDaoImpl;
	
	public List<Object[]>  listAll(){
		return this.admin_loginDaoImpl.findAllAdmin();
	}

}
