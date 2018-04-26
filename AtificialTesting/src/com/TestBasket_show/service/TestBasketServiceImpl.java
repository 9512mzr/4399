package com.TestBasket_show.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.TestBasket_show.dao.TestBasketDaoImpl;

@Service
@Transactional(readOnly=true)
public class TestBasketServiceImpl {
	@Resource
	private TestBasketDaoImpl testBasketDaoImpl;
	public void save(int id) {
		testBasketDaoImpl.save(id);
	}
}
