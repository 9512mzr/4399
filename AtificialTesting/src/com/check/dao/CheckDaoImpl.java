package com.check.dao;



import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.springframework.stereotype.Repository;

import com.entity.Bigquestion;
import com.entity.Choicequestion;
import com.entity.Teacher;

@Repository
public class CheckDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	private int AllRowCount0;
	public int getAllRowCount0() {
		return AllRowCount0;
	}
	public void setAllRowCount0(int allRowCount0) {
		AllRowCount0 = allRowCount0;
	}
	
	
	@SuppressWarnings("null")
	public List<Choicequestion> queryForPage(int offset,int length,int a,String degree,String type1){
		List<Choicequestion> entitylist=null;
		int type = Integer.parseInt(type1);
		try {
			StringBuilder sql;
			if(type==2) {
				
				sql =new StringBuilder("select * from  Bigquestion  where 1= 1 and bigQuestionId != -1"); 
				System.out.println("�ۺ�����һ��");
			}
			else {
				sql =new StringBuilder("select * from  Choicequestion  where 1= 1 and choiceQuestionId != -1");
				System.out.println("ѡ������һ��");
			}

			
			System.out.println(a+degree+6);
	        if(a!=100 && degree != "未知") {
	        	System.out.println("1111111111111111111111111");
	        	sql.append(" and problemModelId= ? and difficulty = ?");
	        	Query query = (Query)sessionFactory.getCurrentSession().createSQLQuery(sql.toString());
	        	query.setParameter(0, a);
	        	query.setParameter(1, degree);
	        	
	        	System.out.println(sql.toString());
	        	this.setAllRowCount0(query.list().size());
				query.setFirstResult(offset);
				query.setMaxResults(length);
				if(type==2) {
					((SQLQuery) query).addEntity(Bigquestion.class);
				}
				else {
					((SQLQuery) query).addEntity(Choicequestion.class);
				}
				
				entitylist=query.list();
				System.out.println(entitylist.isEmpty());
	        }
	        else if(a!=100 && degree ==  "未知") {
	        	System.out.println("2222222222222222222222222");
	        	sql.append(" and problemModelId= ?");
	        	Query query = (Query)sessionFactory.getCurrentSession().createSQLQuery(sql.toString());
	        	query.setParameter(0, a);
	        	this.setAllRowCount0(query.list().size());
				query.setFirstResult(offset);
				query.setMaxResults(length);
				if(type==2) {
					((SQLQuery) query).addEntity(Bigquestion.class);
				}
				else {
					((SQLQuery) query).addEntity(Choicequestion.class);
				}
				
				entitylist=query.list();
				System.out.println(entitylist.isEmpty());
	        }
	        else if(a==100 && degree!= "未知") {
	        	System.out.println("333333333333333333333333333");
	        	sql.append(" and difficulty = ?");
	        	Query query = (Query)sessionFactory.getCurrentSession().createSQLQuery(sql.toString());
	        	
	        	query.setParameter(0, degree);
	        	this.setAllRowCount0(query.list().size());
				query.setFirstResult(offset);
				query.setMaxResults(length);
				if(type==2) {
					((SQLQuery) query).addEntity(Bigquestion.class);
				}
				else {
					((SQLQuery) query).addEntity(Choicequestion.class);
				}
				
				entitylist=query.list();
//                 for(Choicequestion aaa: entitylist) {
//					System.out.println(aaa.getChoiceQuestionId()+"���");
//				}
				System.out.println(entitylist.size()+"696666666666666666666");
				System.out.println(entitylist.isEmpty());
	        }
	        else {
	        	
	        	System.out.println("4444444444444444444444444444444");
                Query query = (Query)sessionFactory.getCurrentSession().createSQLQuery(sql.toString());
	        	this.setAllRowCount0(query.list().size());
				query.setFirstResult(offset);
				query.setMaxResults(length);
				if(type==2) {
					((SQLQuery) query).addEntity(Bigquestion.class);
				}
				else {
					((SQLQuery) query).addEntity(Choicequestion.class);
				}
				
				entitylist=query.list();
//                 for(Choicequestion aaa: entitylist) {
//					System.out.println(aaa.getChoiceQuestionId()+"���");
//				}
				System.out.println(entitylist.size()+"696666666666666666666");
				System.out.println(entitylist.isEmpty());

				System.out.println(entitylist.size()+"777777777777777777777777777");
				System.out.println(entitylist.isEmpty());
	        	
	        }
		}catch(RuntimeException re) {
			throw re;
		}
		return entitylist;
		
	}
	}