package com.art.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.art.dao.ArtDaoImpl;
import com.entity.Choicequestion;

@Service
@Transactional(readOnly=true)
public class ArtServiceImpl {
	@Resource
	private ArtDaoImpl artDaoImpl;
	
	public Choicequestion artselect(int id){
		return this.artDaoImpl.artselect(id);
	}
}
