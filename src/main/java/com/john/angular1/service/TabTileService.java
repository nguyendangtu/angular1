/**
 * File: TabTileService.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.service;

import java.util.List;

import com.john.angular1.model.TabTile;

/***
 * This class is a service for tab tile, provide transactions to crud any tab tile
 * @author nguyendangtu1987
 *
 */
public interface TabTileService {
	
	/***
	 * get list tab tile
	 * @return {@link TabTile}
	 */
	public List<TabTile> getTabTiles();

	/***
	 * get tab tile base on ID
	 * @return {@link TabTile}
	 */
	public TabTile getTabTile(int id);

	/***
	 * get tab tile from another tabtile
	 * @return {@link TabTile}
	 */
	public TabTile saveTabTile(TabTile tabTile);

}
