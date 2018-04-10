package com.choice_question.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Choicequestion;

public class Choice_questionDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	/**
	 * 分页查询
	 * 
	 * @param hql
	 *            查询的条件
	 * @param offset
	 *            开始记录
	 * @param length
	 *            一次查询几条记录
	 * @return 返回查询记录集合
	 */
	@RequestMapping("select")
	public List<Choicequestion> queryForPage(int offset, int length) {
		// 查询所有的记录数
		Query query = (Query) sessionFactory.getCurrentSession().createQuery("from Choicequestion");
		query.setFirstResult(offset);
		query.setMaxResults(length);
		return query.list();
	}


	// 查询记录总数
	public int getAllRowCount() {
		int count = ((Long) sessionFactory.getCurrentSession().createQuery("select count(*) from Choicequestion").iterate()
				.next()).intValue();
		return count;
	}
}
