package com.testBasket_show.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.testBasket_show.dao.TestBasket_showDeleteDaoImpl;

@Service
@Transactional
public class TestBasket_showDeleteServiceImpl {
	@Resource
	private TestBasket_showDeleteDaoImpl TestBasket_showDeletedaoImpl;
	public void choiceDelete(int id) {
		TestBasket_showDeletedaoImpl.choiceDelete(id);
	}
	public void bigDelete(int id) {
		TestBasket_showDeletedaoImpl.bigDelete(id);
	}
}
