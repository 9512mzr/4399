package com.big_question.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.big_question.dao.big_questionDaoImpl;
import com.entity.Bigquestion;
import com.entity.Page;

@Service
@Transactional(readOnly = false)
public class big_questionServiceImpl {
	@Resource
	private big_questionDaoImpl big_questionDaoImpl;
	
	public Page queryForPage(int currentPage,int pageSize) {
		Page page=new Page();
		
		int offset=page.countOffset(currentPage, pageSize);
		List<Bigquestion> list=big_questionDaoImpl.queryForPage(offset, pageSize);
		int allRow = big_questionDaoImpl.getAllRowCount0();
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setB_list(list);
		return page;
	}
}
