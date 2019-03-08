/**
 * File: TabTile.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tab_tile")
public class TabTile implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "image")
	private String image;

	@Column(name = "title")
	private String title;

	@Column(name = "text")
	private String text;

	@Column(name = "link")
	private String link;

	@ManyToOne
	@JoinColumn(name = "TAB_CONTENT_ID")
	private TabContent tabcontent;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public TabContent getTabcontent() {
		return tabcontent;
	}

	public void setTabcontent(TabContent tabcontent) {
		this.tabcontent = tabcontent;
	}

}
