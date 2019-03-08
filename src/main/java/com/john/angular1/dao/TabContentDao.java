/**
 * File: TabContentDao.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.dao;

import java.util.List;

import com.john.angular1.model.TabContent;

/***
 * This class is a DAO for Tab Content
 * @author nguyendangtu1987
 *
 */
public interface TabContentDao {

	/***
	 * get list tab content
	 * @return {@link TabContent}
	 */
	public List<TabContent> getTabContents();

	/***
	 * get tab content base ID
	 * @return {@link TabContent}
	 */
	public TabContent getTabContent(int id);

	/***
	 * Save tab content from another tab content
	 * @return {@link TabContent}
	 */
	public TabContent saveTabContent(TabContent tabContent);

}
