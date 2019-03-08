/**
 * File: AdminController.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {

	public static final String PREFIX = "/WEB-INF/views/admin/";

	@RequestMapping
	public ModelAndView getDefaultPage() {

		return new ModelAndView("/WEB-INF/views/admin/admin");
	}

	@RequestMapping(value = "{path}")
	public ModelAndView getPathPage(@PathVariable String path) {

		return new ModelAndView(PREFIX + path);
	}

}
