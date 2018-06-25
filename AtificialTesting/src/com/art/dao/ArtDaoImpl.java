package com.art.dao;

import java.util.List;

import javax.annotation.Resource;

import com.entity.Bigquestion;
import com.entity.Choicequestion;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ArtDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public Choicequestion artselect(int id) {
		Query query = (Query) sessionFactory.getCurrentSession().createQuery("from Choicequestion where choiceQuestionId = "+id+"");
		Choicequestion ch=(Choicequestion) query.list().get(0);
		return ch;
	}
	
	public Bigquestion artselectBigquestion(int id) {
		Query query = (Query) sessionFactory.getCurrentSession().createQuery("from Bigquestion where bigQuestionId = "+id+"");
		Bigquestion big=(Bigquestion) query.list().get(0);
		return big;
	}
}
