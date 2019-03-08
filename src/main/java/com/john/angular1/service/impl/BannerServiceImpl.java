/**
 * File: BannerServiceImpl.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import com.john.angular1.dao.BannerDao;
import com.john.angular1.model.Banner;
import com.john.angular1.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("bannerService")
@Transactional
public class BannerServiceImpl implements BannerService {

	@Autowired
	private BannerDao bannerDao;
	
	@Override
	public List<Banner> getBanners() {
		return bannerDao.getBanners();
	}

	@Override
	public Banner getBanner(int id) {
		return bannerDao.getBanner(id);
	}

	@Override
	public Banner saveBanner(Banner banner) {
		return bannerDao.saveBanner(banner);
	}

}
