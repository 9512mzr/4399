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
	
	/* 登录日志分页查询*/
	public Page queryForPage(int currentPage, int pageSize) {
		Page page = new Page();
		// 总记录数
		int allRow = loginLogDaoImpl.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<Journal> list =loginLogDaoImpl.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setJournalList(list);
		return page;
	}
}
