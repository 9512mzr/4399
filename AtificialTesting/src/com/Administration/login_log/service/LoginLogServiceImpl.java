package com.Administration.login_log.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Administration.login_log.dao.LoginLogDaoImpl;
import com.entity.Journal;
import com.entity.Page;

@Service
public class LoginLogServiceImpl {
	@Resource
	private LoginLogDaoImpl loginLogDaoImpl;
	
	/* ��¼��־��ҳ��ѯ*/
	public Page queryForPage(int currentPage, int pageSize) {
		Page page = new Page();
		// �ܼ�¼��
		int allRow = loginLogDaoImpl.getAllRowCount();
		// ��ǰҳ��ʼ��¼
		int offset = page.countOffset(currentPage, pageSize);
		// ��ҳ��ѯ�����
		List<Journal> list =loginLogDaoImpl.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setJournalList(list);
		return page;
	}
}
