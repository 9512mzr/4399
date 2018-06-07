package com.Administration.teacher.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Administration.teacher.dao.TeacherDaoImpl;
import com.entity.Page;
import com.entity.Teacher;

@Service
public class TeacherServiceImpl {
	
	@Resource
	private TeacherDaoImpl teacherDaoImpl;
	
	/* 用户分页查询*/
	public Page queryForPage(int currentPage, int pageSize) {
		Page page = new Page();
		// 总记录数
		int allRow = teacherDaoImpl.getAllRowCount();
		// 当前页开始记录
		int offset = page.countOffset(currentPage, pageSize);
		// 分页查询结果集
		List<Teacher> list =teacherDaoImpl.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setTeacherList(list);
		return page;
	}
}
