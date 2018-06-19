package com.test.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.testDaoImpl;

@Service
@Transactional(readOnly = false)
public class testServiceImpl {
	@Resource
	private testDaoImpl dao;
}
