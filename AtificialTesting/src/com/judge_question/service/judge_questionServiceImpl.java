package com.judge_question.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Judge_question;
import com.entity.Judge_question_show;
import com.judge_question.dao.judge_questionDaoImpl;

@Service
@Transactional(readOnly=false)
public class judge_questionServiceImpl {
	@Resource
	private judge_questionDaoImpl judge_questionDaoImpl;
	
	public ArrayList<String> getDates(){
		return this.judge_questionDaoImpl.getDates();
	}
	
	public ArrayList<Judge_question_show> getJudges(String date){
		return this.judge_questionDaoImpl.getJudges(date);
	}
	
	public void saveJudges(ArrayList<Judge_question_show> n) {
		ArrayList<Judge_question_show> m=new ArrayList<Judge_question_show>();
		for(int i=0;i<n.size();i++) {
			if(n.get(i).equals("")&n.get(i).equals(null)) {
				continue;
			}
			if(n.get(i).getState().equals("0")) {
			}else {
				m.add(n.get(i));
			}
		}
		for(int i=0;i<m.size();i++) {
			this.judge_questionDaoImpl.submit(m.get(i).getId()+"", m.get(i).getScore());
		}
	}
}
