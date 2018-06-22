package com.JugeDone.JugeDoneDao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Judge_question;
import com.entity.Student;

@Repository
public class JugeDoneDao {
	@Resource
	private SessionFactory sessionFactory;

	public void artificialDao() {

	}
	
	public ArrayList<String> getDates(String id) {
		List<Judge_question> qu0 = null;
		Query query = (Query) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where state='1' and teacher_id="+id+"");
		qu0 = query.list();
		ArrayList<String> date0 = new ArrayList<String>();
		for (int i = 0; i < qu0.size(); i++) {
			date0.add(qu0.get(i).getDate());
		}
		HashSet s = new HashSet(date0);
		date0.clear();
		date0.addAll(s);

		return this.maopaopai(date0);
	}
	public ArrayList<String> maopaopai(ArrayList<String> date1) {
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
		for (int i = 0; i < date2.length; i++) {
			String date = "" + date2[i];
			String pan = date.charAt(6) + "";
			if (pan.equals("0")) {
				date = date.substring(0, 6) + date.charAt(7);
			}
			date = date.substring(0, 4) + "-" + date.substring(4, 6) + "-" + date.substring(6, date.length());
			date1.add(date);
		}
		return date1;
	}
	
	public List<Judge_question> getChoice(String date,String teacherId){
		List<Judge_question> qu0 = null;
		Query query = (Query) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where state='1' and teacher_id="+teacherId+" and choicejudge='1' and date='"+date+"'");
		qu0 = query.list();
		
		return qu0;
		
	}
	
	public List<Judge_question> getBig(String date,String teacherId){
		List<Judge_question> qu0 = null;
		Query query = (Query) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where state='1' and teacher_id="+teacherId+" and choicejudge='0' and date='"+date+"'");
		qu0 = query.list();
		
		return qu0;
		
	}
	
	public Map<String, Integer> gettest1(String teacherId,String date) {
		List<Judge_question> qu0 = null;
		Query query = (Query) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where date='"+date+"' and teacher_id=1 and state='1'");
		qu0 = query.list();
		ArrayList<Integer> studentIds=new ArrayList<Integer>();
		for(int i=0;i<qu0.size();i++) {
			studentIds.add(qu0.get(i).getStudent_id());
		}
		HashSet s = new HashSet(studentIds);
		studentIds.clear();
		studentIds.addAll(s);

	    for(int i=0; i<studentIds.size(); i++){//表示n次排序过程。
	        for(int j=1; j<studentIds.size()-i; j++){
	            if(studentIds.get(j-1)>studentIds.get(j)) {
	            	Integer temp=studentIds.get(j-1);
	            	studentIds.set(j-1, studentIds.get(j));
	            	studentIds.set(j, temp);
	            }
	        }
	    }
	    
	    return this.getNameAndScore(studentIds, teacherId, date);
	}
	
	public Map<String,Integer> getNameAndScore(ArrayList<Integer> sts0,String teacherId,String date){
		Map<String,Integer> NameScore=new HashMap<String, Integer>();
		for(int i=0;i<sts0.size();i++) {
			Integer id=sts0.get(i);
			Integer scores=this.getOneStudnetScore(sts0.get(i)+"", teacherId, date);
			Student s=this.getStudnetById(id);
			String name="";
			if(s==null) {
				continue;
			}else {
				name=s.getName();
			}
			NameScore.put(name, scores);
		}
		return NameScore;
	}
	
	public Integer getOneStudnetScore(String StudnetId,String teacherId,String date) {
		List<Judge_question> qu0 = null;
		Query query = (Query) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where state='1' and teacher_id="+teacherId+" and student_id="+StudnetId+" and date='"+date+"'");
		qu0 = query.list();
		Integer scores=0;
		for(int i=0;i<qu0.size();i++) {
			scores+=qu0.get(i).getScore();
		}
		return scores;
	}
	
	
	public Student getStudnetById(Integer id) {
		List<Student> qu0 = null;
		Query query = (Query) sessionFactory.getCurrentSession()
				.createQuery("from Student where id="+id+"");
		qu0 = query.list();
		if(qu0.size()>0) {
			return qu0.get(0);
		}else {
			return null;
		}
	}
	public void gettest2() {
		List<Judge_question> qu0 = null;
		Query query = (Query) sessionFactory.getCurrentSession()
				.createQuery("from Judge_question where state='1' and teacher_id=1 and choicejudge='1'");
		qu0 = query.list();
	}
}
