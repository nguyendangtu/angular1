/**
 * File: BannerDaoImpl.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.john.angular1.dao.BannerDao;
import com.john.angular1.model.Banner;

@Repository("bannerDao")
public class BannerDaoImpl implements BannerDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Banner> getBanners() {
		@SuppressWarnings("unchecked")
		List<Banner> banners = sessionFactory.getCurrentSession()
				.createCriteria(Banner.class).list();

		return banners;
	}

	@Override
	public Banner getBanner(int id) {
		Banner banner = (Banner) sessionFactory.getCurrentSession()
				.createCriteria(Banner.class).add(Restrictions.eq("id", id))
				.uniqueResult();

		return banner;
	}

	@Override
	public Banner saveBanner(Banner banner) {
		Banner result = getBanner(banner.getId());
		result.setBackgroundImage(banner.getBackgroundImage());
		result.setLink(banner.getLink());
		result.setText(banner.getText());
		result.setTitle(banner.getTitle());

		sessionFactory.getCurrentSession().saveOrUpdate(result);

		return result;
	}

}
