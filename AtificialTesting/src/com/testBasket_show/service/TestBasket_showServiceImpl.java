package com.testBasket_show.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Choicequestion;
//import com.entity.Basket_Show;
import com.entity.TestBasket;
import com.testBasket_show.dao.TestBasket_showDaoImpl;

@Service
@Transactional(readOnly=true)
public class TestBasket_showServiceImpl {
	@Resource
	private TestBasket_showDaoImpl testBasket_showDaoImpl;
	public List<TestBasket> findChoice(){
		return this.testBasket_showDaoImpl.findChoice();
	}
	public List<TestBasket> findBigQuestion(){
		return this.testBasket_showDaoImpl.findBigQuestion();
	}
//	public Basket_Show queryForPage(int currentPage,int pageSize) {
//		Basket_Show page=new Basket_Show();
//		int allRow = testBasket_showDaoImpl.getAllRowCount0();
//		int offset=page.countOffset(currentPage, pageSize);
//		List<TestBasket> list=testBasket_showDaoImpl.queryForPage(offset,pageSize);
//		page.setPageNo(currentPage);
//		page.setPageSize(pageSize);
//		page.setTotalRecords(allRow);
//		page.setList(list);
//		return page;
//	}
}
