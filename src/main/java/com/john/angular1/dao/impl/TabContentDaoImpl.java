/**
 * File: TabContentDaoImpl.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.john.angular1.dao.TabContentDao;
import com.john.angular1.model.TabContent;

@Repository("tabContentDao")
public class TabContentDaoImpl implements TabContentDao {

	@Autowired
	private SessionFactory sessionFactory;

	Session session = null;
	Transaction tx = null;

	@Override
	public List<TabContent> getTabContents() {
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<TabContent> tabContents = session.createCriteria(TabContent.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		tx.commit();
		session.close();
		return tabContents;
	}

	@Override
	public TabContent getTabContent(int id) {
		return (TabContent) sessionFactory.getCurrentSession()
				.createCriteria(TabContent.class)
				.add(Restrictions.eq("id", id)).uniqueResult();
	}

	@Override
	public TabContent saveTabContent(TabContent tabContent) {
		TabContent result = getTabContent(tabContent.getId());
		result.setName(tabContent.getName());
		result.setTabTiles(tabContent.getTabTiles());

		sessionFactory.getCurrentSession().saveOrUpdate(result);
		return result;
	}

}
