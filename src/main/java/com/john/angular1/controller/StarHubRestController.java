/**
 * File: StarHubRestController.java
 * Version: 0.1
 * Revision: $log$
 * Date: 01/08/2015
 * 
 * FSOFT Java Coding Problem: simple site for starhub
 */
package com.john.angular1.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import com.john.angular1.model.Banner;
import com.john.angular1.model.TabTile;
import com.john.angular1.service.BannerService;
import com.john.angular1.service.TabContentService;
import com.john.angular1.service.TabTileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;

@RestController
@RequestMapping("/rest")
public class StarHubRestController {

	@Autowired
	private BannerService bannerService;
	
	@Autowired
	private TabContentService tabContentService;
	
	@Autowired
	private TabTileService tabTileService;
	
	
	@RequestMapping(value="/banners", method=RequestMethod.GET)
    public String banners() {
		return new JSONSerializer().rootName("banners").exclude("*.class").deepSerialize(bannerService.getBanners());
    }
	
	@RequestMapping(value="/tabcontents", method=RequestMethod.GET)
    public String tabcontents() {
		return new JSONSerializer().rootName("tabcontents").exclude("*.class").deepSerialize(tabContentService.getTabContents());
    }
	
	@RequestMapping(value = "/saveBanner", method = RequestMethod.POST)
	public String saveBanner(@RequestBody String jsonBanner) {
		Banner banner = new JSONDeserializer<Banner>().use( null, Banner.class ).deserialize( jsonBanner );
		return new JSONSerializer().rootName("banner").exclude("*.class").deepSerialize(bannerService.saveBanner(banner));
	}
	
	@RequestMapping(value = "/saveTabTile", method = RequestMethod.POST)
	public String saveTabTile(@RequestBody String jsonTabTile) {
		TabTile tabTile = new JSONDeserializer<TabTile>().use( null, TabTile.class ).deserialize( jsonTabTile );
		return new JSONSerializer().rootName("tabtile").exclude("*.class").deepSerialize(tabTileService.saveTabTile(tabTile));
	}
	
	@RequestMapping(value = "/uploadImage" , method = RequestMethod.POST)
	public void upload(HttpServletRequest request) throws IOException {

	    MultipartHttpServletRequest mRequest;
	    mRequest = (MultipartHttpServletRequest) request;

	    Iterator<String> itr = mRequest.getFileNames();
	    while (itr.hasNext()) {
	        MultipartFile mFile = mRequest.getFile(itr.next());

	        File file = new File("/resources/images");
	        FileCopyUtils.copy(mFile.getBytes(), file);
	    }
	}
}
