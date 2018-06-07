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
	
	/* �û���ҳ��ѯ*/
	public Page queryForPage(int currentPage, int pageSize) {
		Page page = new Page();
		// �ܼ�¼��
		int allRow = teacherDaoImpl.getAllRowCount();
		// ��ǰҳ��ʼ��¼
		int offset = page.countOffset(currentPage, pageSize);
		// ��ҳ��ѯ�����
		List<Teacher> list =teacherDaoImpl.queryForPage(offset, pageSize);
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setTeacherList(list);
		return page;
	}
}
