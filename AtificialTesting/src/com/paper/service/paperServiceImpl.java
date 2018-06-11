package com.paper.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.TestBasket;
import com.paper.dao.paperDaoImpl;

@Service
@Transactional(readOnly = false)
public class paperServiceImpl {
	@Resource
	private paperDaoImpl dao;
	
	public void save(String datikasize){
		this.dao.save(datikasize);
	}
	
	public List<TestBasket> findChoice(){
		return this.dao.findChoice();
	}
	public List<TestBasket> findBigQuestion(){
		return this.dao.findBigQuestion();
	}
	public String getMaxId() {
		return this.dao.findnewId();
	}
	
	public List<String> findxuanId(int Paperid,int size){
		return this.dao.findxuanId(Paperid, size);
	}
	public List<String> findbigId(int Paperid,int size){
		return this.dao.findbigId(Paperid, size);
	}
	public void panCh(int StudentId,int TeacherId,List<String> requests,List<String> ids) {
		this.dao.chpan(StudentId, TeacherId, requests, ids);
	}
	public void bigsave(int StudentId,int TeacherId,List<String> requests,List<String> ids) {
		this.dao.bigsave(StudentId, TeacherId, requests, ids);
	}
}
