package com.library.service;





import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import com.entity.Choicequestion;
import com.entity.Page;
import com.entity.Teacher;
import com.library.dao.LibraryDaoImpl;


@Service
@Transactional(readOnly=true)
public class LibraryServiceImpl {
	@Resource
	private LibraryDaoImpl libraryDaoImpl;
	public Teacher getname1(int id) {
		return this.libraryDaoImpl.findUser1(id);
		}
	public List<Choicequestion>  listAll(){
		return this.libraryDaoImpl.findAll();
	}
	public Page queryForPage(int currentPage,int pageSize) {
		Page page=new Page();
		
		int offset=page.countOffset(currentPage, pageSize);
		List<Choicequestion> list=libraryDaoImpl.queryForPage(offset,pageSize);
		int allRow = libraryDaoImpl.getAllRowCount0();
		page.setPageNo(currentPage);
		page.setPageSize(pageSize);
		page.setTotalRecords(allRow);
		page.setC_list(list);
		return page;
	}
	
}
