/**
 * File: BannerDao.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.dao;

import java.util.List;

import com.john.angular1.model.Banner;

/***
 * This class is a DAO for banner
 * @author nguyendangtu1987
 *
 */
public interface BannerDao {

	/***
	 * Get list banner
	 * @return {@link List<Banner>}
	 */
	public List<Banner> getBanners();

	/***
	 * Get banner base on ID
	 * @return {@link Banner}
	 */
	public Banner getBanner(int id);

	/***
	 * Save banner from another banner
	 * @return {@link Banner}
	 */
	public Banner saveBanner(Banner banner);

}
