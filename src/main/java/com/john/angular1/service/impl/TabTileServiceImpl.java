/**
 * File: TabTileServiceImpl.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import com.john.angular1.dao.TabTileDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.john.angular1.model.TabTile;
import com.john.angular1.service.TabTileService;

@Service("tabTileService")
@Transactional
public class TabTileServiceImpl implements TabTileService {

	@Autowired
	private TabTileDao tabTileDao;

	@Override
	public List<TabTile> getTabTiles() {
		return tabTileDao.getTabTiles();
	}

	@Override
	public TabTile getTabTile(int id) {
		return tabTileDao.getTabTile(id);
	}

	@Override
	public TabTile saveTabTile(TabTile tabTile) {
		return tabTileDao.saveTabTile(tabTile);
	}

}
