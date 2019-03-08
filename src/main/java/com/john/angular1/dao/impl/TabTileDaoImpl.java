/**
 * File: TabTileDaoImpl.java
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

import com.john.angular1.dao.TabTileDao;
import com.john.angular1.model.TabTile;

@Repository("tabTileDao")
public class TabTileDaoImpl implements TabTileDao {

	@Autowired
	private SessionFactory sessionFactory;

	Session session = null;
	Transaction tx = null;

	@Override
	public List<TabTile> getTabTiles() {
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<TabTile> tabTiles = session.createCriteria(TabTile.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		tx.commit();
		session.close();
		return tabTiles;
	}

	@Override
	public TabTile getTabTile(int id) {
		return (TabTile) sessionFactory.getCurrentSession()
				.createCriteria(TabTile.class).add(Restrictions.eq("id", id))
				.uniqueResult();
	}

	@Override
	public TabTile saveTabTile(TabTile tabTile) {
		TabTile result = getTabTile(tabTile.getId());
		result.setImage(tabTile.getImage());
		result.setLink(tabTile.getLink());
		result.setText(tabTile.getText());
		result.setTitle(tabTile.getTitle());

		sessionFactory.getCurrentSession().saveOrUpdate(result);
		return result;
	}

}
