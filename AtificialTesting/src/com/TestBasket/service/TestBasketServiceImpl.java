package com.TestBasket.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.TestBasket.dao.TestBasketDaoImpl;
import com.entity.TestBasket;

@Service
@Transactional(readOnly=true)
public class TestBasketServiceImpl {
	@Resource
	private TestBasketDaoImpl testBasketDaoImpl;
	public void saveChoice(int id,int bigId) {
		testBasketDaoImpl.saveChoice(id,bigId);
	}
//	public void saveBig(int id) {
//		testBasketDaoImpl.saveBig(id);
//	}
	public List<TestBasket> findAll() {
		return this.testBasketDaoImpl.findAll();
	}
}
