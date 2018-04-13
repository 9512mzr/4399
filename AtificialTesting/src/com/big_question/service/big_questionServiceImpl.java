package com.big_question.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.big_question.dao.big_questionDaoImpl;
import com.entity.BPage;
import com.entity.Bigquestion;

@Service
@Transactional(readOnly = false)
public class big_questionServiceImpl {
	@Resource
	private big_questionDaoImpl big_questionDaoImpl;
	
	public BPage queryForPage(int currentPage,int pageSize) {
		BPage page=new BPage();
		int allRow = big_questionDaoImpl.getAllRowCount0();
		int offset=page.countOffset(currentPage, pageSize);
		List<Bigquestion> list=big_questionDaoImpl.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList(list);
		return page;
	}
}
