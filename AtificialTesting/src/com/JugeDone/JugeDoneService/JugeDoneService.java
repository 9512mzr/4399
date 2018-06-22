package com.JugeDone.JugeDoneService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.JugeDone.JugeDoneDao.JugeDoneDao;
import com.entity.Judge_question;

@Service
@Transactional(readOnly = false)
public class JugeDoneService {
	@Resource
	private  JugeDoneDao jugeDoneDao;
	
	public void judge() {
		
	}
	
	public ArrayList<String> getDates(String id){
		return this.jugeDoneDao.getDates(id);
	}
	
	public List<Judge_question> getChoice(String date,String teacherId){
		return this.jugeDoneDao.getChoice(date, teacherId);
	}
	
	public List<Judge_question> getBig(String date,String teacherId){
		return this.jugeDoneDao.getBig(date, teacherId);
	}
	
	public Map<String,Integer> getNameAndScore(String teacherId,String date){
		return this.jugeDoneDao.gettest1(teacherId, date);
	}
}
