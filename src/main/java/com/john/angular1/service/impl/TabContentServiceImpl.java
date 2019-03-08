/**
 * File: TabContentServiceImpl.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import com.john.angular1.dao.TabContentDao;
import com.john.angular1.model.TabContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.john.angular1.service.TabContentService;

@Service("tabContentService")
@Transactional
public class TabContentServiceImpl implements TabContentService {

	@Autowired
	private TabContentDao tabContentDao;
	
	@Override
	public List<TabContent> getTabContents() {
		return tabContentDao.getTabContents();
	}

	@Override
	public TabContent getTabContent(int id) {
		return tabContentDao.getTabContent(id);
	}

	@Override
	public TabContent saveTabContent(TabContent tabContent) {
		return tabContentDao.saveTabContent(tabContent);
	}

}
