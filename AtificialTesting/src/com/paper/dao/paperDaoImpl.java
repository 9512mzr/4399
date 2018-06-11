package com.paper.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Bigquestion;
import com.entity.Choicequestion;
import com.entity.Judge_question;
import com.entity.TestBasket;
import com.entity.paper;

@Repository
public class paperDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public void save(String datikasize) {
		List<TestBasket> choice=this.findChoice();
		List<TestBasket> big=this.findBigQuestion();
		String choices="";
		String bigs="";
		for(int i=0;i<choice.size();i++) {
			if(i==0) {
				System.out.println(choice.get(i).getChoicequestion().getChoiceQuestionId());
				choices=choices+choice.get(i).getChoicequestion().getChoiceQuestionId();
				continue;
			}
			choices=choices+";"+choice.get(i).getChoicequestion().getChoiceQuestionId();
			
		}
		for(int i=0;i<big.size();i++) {
			if(i==0) {
				bigs=bigs+big.get(i).getBigQuestion().getBigQuestionId();
				continue;
			}
			bigs=bigs+";"+big.get(i).getBigQuestion().getBigQuestionId();
		}
		paper p=new paper();
		p.setDatikasize(datikasize);
		p.setId(0);
		p.setBig(bigs);
		p.setChoice(choices);
		this.sessionFactory.getCurrentSession().save(p);
		this.deleteAll();
		
	}
	
	public List<TestBasket> findChoice(){
		Query q=this.sessionFactory.getCurrentSession().createQuery(" from TestBasket where bigQuestionId = -1");
		return q.list();
	}
	
	public List<TestBasket> findBigQuestion(){
		Query q=this.sessionFactory.getCurrentSession().createQuery(" from TestBasket where ChoiceQuestionId = -1");
		return q.list();
	}
	public void deleteAll(){
		Query q=this.sessionFactory.getCurrentSession().createQuery(" from TestBasket");
		List<TestBasket> t=q.list();
		for(int i=0;i<t.size();i++) {
			TestBasket t2=t.get(i);
			this.sessionFactory.getCurrentSession().delete(t2);
		}
	}
	
	public String findnewId() {
		List<paper> ps=this.sessionFactory.getCurrentSession().createQuery(" from paper").list();
		int id0=0;
		if(ps.size()==0) {
			return "000001";
		}
		for(int i=0;i<ps.size();i++) {
			if(ps.get(i).getId()>=id0) {
				id0=ps.get(i).getId();
			}
		}
		id0++;
		String id=id0+"";
		int length=id.length();
		for(int i=0;i<6-length;i++) {
			id="0"+id;
		}
		return id;
	}
	
	public List<String> findxuanId(int Paperid,int size){
		List<paper> ps=this.sessionFactory.getCurrentSession().createQuery(" from paper where id="+Paperid).list();
		String datikasize=ps.get(0).getDatikasize();
		String[] datikasizes=datikasize.split(";");
		int c_num=0;
		int b_num=0;
		for(int i=0;i<datikasizes.length-1;i++) {
			if(i==size-1) {
				break;
			}
			String size0=datikasizes[i];
			String xinxis[]=size0.split(":");
			c_num=c_num+Integer.parseInt(xinxis[2].substring(0, xinxis[2].length()-1));
			b_num=b_num+Integer.parseInt(xinxis[3]);
		}
		String size0=datikasizes[size-1];
		String xinxis[]=size0.split(":");
		int c_num2=Integer.parseInt(xinxis[2].substring(0, xinxis[2].length()-1));
		int b_num2=Integer.parseInt(xinxis[3]);
		String[] xuans=ps.get(0).getChoice().split(";");
		List<String> ids=new ArrayList<String>();
		for(int i=c_num;i<c_num+c_num2;i++) {
			ids.add(xuans[i]);
		}
		return ids;
	}
	
	public List<String> findbigId(int Paperid,int size){
		List<paper> ps=this.sessionFactory.getCurrentSession().createQuery(" from paper where id="+Paperid).list();
		String datikasize=ps.get(0).getDatikasize();
		String[] datikasizes=datikasize.split(";");
		int c_num=0;
		int b_num=0;
		for(int i=0;i<datikasizes.length-1;i++) {
			if(i==size-1) {
				break;
			}
			String size0=datikasizes[i];
			String xinxis[]=size0.split(":");
			c_num=c_num+Integer.parseInt(xinxis[2].substring(0, xinxis[2].length()-1));
			b_num=b_num+Integer.parseInt(xinxis[3]);
		}
		String size0=datikasizes[size-1];
		String xinxis[]=size0.split(":");
		int c_num2=Integer.parseInt(xinxis[2].substring(0, xinxis[2].length()-1));
		int b_num2=Integer.parseInt(xinxis[3]);
		String[] xuans=ps.get(0).getBig().split(";");
		List<String> ids=new ArrayList<String>();
		for(int i=b_num;i<b_num+b_num2;i++) {
			ids.add(xuans[i]);
		}
		return ids;
	}
	
	public void chpan(int StudentId,int TeacherId,List<String> requests,List<String> ids) {
		Date ss = new Date();  
        SimpleDateFormat format0 = new SimpleDateFormat("yyyy-MM-dd");  
        String time = format0.format(ss.getTime());
		for(int i=0;i<ids.size();i++) {
			String request=requests.get(i);
			String id=ids.get(i);
			List<Choicequestion> ans0=this.sessionFactory.getCurrentSession().createQuery(" from Choicequestion where choiceQuestionId="+id).list();
			String ans=ans0.get(0).getAnswer();
			Judge_question ju=new Judge_question();
			ju.setDate(time);
			ju.setId(0);
			ju.setStudent_id(StudentId);
			ju.setTeacher_id(TeacherId);
			ju.setFullmark(10);
			ju.setState("0");
			ju.setRequest(request);
			ju.setChoicejudge("1");
			ju.setQuestion_id(Integer.parseInt(ids.get(i)));
			if(ans.equals(request)) {
				ju.setScore(10);
			}else {
				ju.setScore(0);
			}
			this.sessionFactory.getCurrentSession().save(ju);
		}
	}
	
	public void bigsave(int StudentId,int TeacherId,List<String> requests,List<String> ids) {
		Date ss = new Date();  
        SimpleDateFormat format0 = new SimpleDateFormat("yyyy-MM-dd");  
        String time = format0.format(ss.getTime());
		for(int i=0;i<ids.size();i++) {
			String request=requests.get(i);
			Judge_question ju=new Judge_question();
			ju.setDate(time);
			ju.setId(0);
			ju.setStudent_id(StudentId);
			ju.setTeacher_id(TeacherId);
			ju.setFullmark(10);
			ju.setState("0");
			ju.setRequest(request);
			ju.setChoicejudge("0");
			ju.setQuestion_id(Integer.parseInt(ids.get(i)));
			ju.setScore(0);
			this.sessionFactory.getCurrentSession().save(ju);
		}
	}
}
