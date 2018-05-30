package com.judge_question.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Bigquestion;
import com.entity.Judge_question;
import com.entity.Judge_question_show;
import com.entity.Student;

@Repository
public class judge_questionDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public ArrayList<String> getDates(){
		List<Judge_question> qu0=null;
		Query query=(Query)sessionFactory.getCurrentSession().createQuery("from Judge_question where state='0' and teacher_id=1 and choicejudge='0'");
		qu0=query.list();
		ArrayList<String> date0=new ArrayList<String>();
		for(int i=0;i<qu0.size();i++) {
			date0.add(qu0.get(i).getDate());
		}
		HashSet s=new HashSet(date0);
		date0.clear();
		date0.addAll(s);
		
		return this.maopaopai(date0);
	}
	
	public ArrayList<Judge_question_show> getJudges(String date){
		List<Judge_question> qu0=(List<Judge_question>)sessionFactory.getCurrentSession().createQuery("from Judge_question where state='0' and teacher_id=1 and choicejudge='0' and date='"+date+"'").list();
		ArrayList<Judge_question_show> m=new ArrayList<Judge_question_show>();
		for(int i=0;i<qu0.size();i++) {
			
				Judge_question_show n=new Judge_question_show();
				n.setId(qu0.get(i).getId());
				n.setAnswer(this.getAnswer(qu0.get(i).getQuestion_id()));
				n.setFullmark(qu0.get(i).getFullmark().toString());
				n.setScore(qu0.get(i).getScore());
				n.setState(qu0.get(i).getState());
				n.setStudent_name(this.getStudentName(qu0.get(i).getStudent_id()));
				n.setImg(qu0.get(i).getRequest());
				n.setDate(qu0.get(i).getDate());
				n.setClasses(this.getStudentclass(qu0.get(i).getStudent_id()));
				m.add(n);
			
		}
		return m;
	}
	public String getStudentclass(int id) {
		List<Student> name=(List<Student>)sessionFactory.getCurrentSession().createQuery("from Student where id="+id+"").list();
		return name.get(0).getClasses();
	}
	public String getStudentName(int id) {
		List<Student> name=(List<Student>)sessionFactory.getCurrentSession().createQuery("from Student where id="+id+"").list();
		return name.get(0).getName();
	}
	public String getAnswer(int id) {
		List<Bigquestion> qu0=(List<Bigquestion>)sessionFactory.getCurrentSession().createQuery("from Bigquestion where bigQuestionId="+id+"").list();
		if(qu0.size()==0) {
			return null;
		}else {
			return qu0.get(0).getAnswer();
		}
	}
	
	public void submit(String id,int score) {
		List<Judge_question> qu0=(List<Judge_question>)sessionFactory.getCurrentSession().createQuery("from Judge_question where id="+id+"").list();
		Judge_question qu=qu0.get(0);
		qu.setState("1");
		qu.setScore(score);
		this.sessionFactory.getCurrentSession().update(qu);
	}
	
	public ArrayList<String> maopaopai(ArrayList<String> date1){
		int[] date2 = new int[date1.size()];
		for (int i = 0; i < date1.size(); i++) {
			String date = date1.get(i);
			if (date.length() == 9) {
				date = date.substring(0, 8) + "0" + date.substring(8, date.length());
				date1.set(i, date);
			}
			date1.set(i, date1.get(i).replace("-", ""));
			date2[i] = Integer.parseInt(date1.get(i));
		}

		for (int i = 0; i < date2.length - 1; i++) {
			for (int j = 0; j < date2.length - i - 1; j++) {// -1为了防止溢出
				if (date2[j] > date2[j + 1]) {
					int temp = date2[j];

					date2[j] = date2[j + 1];

					date2[j + 1] = temp;
				}
			}
		}
		date1.clear();
		for(int i=0;i<date2.length;i++) {
			String date=""+date2[i];
			String pan=date.charAt(6)+"";
			if(pan.equals("0")) {
				date=date.substring(0, 6)+date.charAt(7);
			}
			date=date.substring(0, 4)+"-"+date.substring(4, 6)+"-"+date.substring(6, date.length());
			date1.add(date);
			
		}
		return date1;
	}
}
 