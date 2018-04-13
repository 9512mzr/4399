package com.choice_question.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.choice_question.dao.Choice_questionDaoImpl;
import com.entity.Choicequestion;
import com.entity.Page;

@Service
@Transactional(readOnly = false)
public class Choice_questionServiceImpl {
	@Resource
	private Choice_questionDaoImpl choice_questionDaoImpl;
	
	public Page queryForPage(int currentPage,int pageSize) {
		Page page=new Page();
		int allRow = choice_questionDaoImpl.getAllRowCount0();
		int offset=page.countOffset(currentPage, pageSize);
		List<Choicequestion> list=choice_questionDaoImpl.queryForPage(offset,pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setList(list);
		return page;
	}

}
