

package com.check.service;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.check.dao.CheckDaoImpl;
import com.entity.Choicequestion;
import com.entity.Page;
import com.entity.Teacher;



@Service
@Transactional(readOnly=true)
public class CheckServiceImpl {
	@Resource
	@Autowired
	private CheckDaoImpl checkDaoImpl;

	public Page queryForPage(int currentPage,int pageSize,int a,String degree,String type) {
		Page page=new Page();
		
		int offset=page.countOffset(currentPage, pageSize);
		List<Choicequestion> list=checkDaoImpl.queryForPage(offset,pageSize,a,degree,type);
		int allRow = checkDaoImpl.getAllRowCount0();
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setC_list(list);
		return page;
	}
	
}
