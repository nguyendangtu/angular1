/**
 * File: PersonalController.java
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
@RequestMapping("/personal")
public class PersonalController {

	public static final String PREFIX = "/WEB-INF/views/personal/";
	
	@RequestMapping
	public ModelAndView getDefaultPage() {

		return new ModelAndView("/WEB-INF/views/personal/mobile");
	}

	@RequestMapping(value = "{path}")
	public ModelAndView getPathPage(@PathVariable String path) {

		return new ModelAndView(PREFIX + path);
	}
}
