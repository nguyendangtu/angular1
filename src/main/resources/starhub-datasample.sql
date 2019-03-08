-- USE STARHUBDB;
INSERT INTO BANNER (BACKGROUND_IMAGE, TITLE, TEXT, LINK) VALUES ('/resources/images/carousel-lg-g4.jpg','Starhub','Enjoy more saving and free delivery','http://www.starhub.com/personal/mobile.html');
INSERT INTO BANNER (BACKGROUND_IMAGE, TITLE, TEXT, LINK) VALUES ('/resources/images/carousel-iphone-64-gb-online-exclusive.jpg','Starhub LINE 2','SALE OFF 70USD for one shop only','http://www.starhub.com/personal/mobile.html');
INSERT INTO BANNER (BACKGROUND_IMAGE, TITLE, TEXT, LINK) VALUES ('/resources/images/carousel-homehub-go.jpg','Starhub LINE 3','SALE OFF 100USD for one shop only','http://www.starhub.com/personal/mobile.html');
INSERT INTO BANNER (BACKGROUND_IMAGE, TITLE, TEXT, LINK) VALUES ('/resources/images/carousel-homehub-go-samsung-100-dollars-off.jpg','Starhub LINE 4','SALE OFF 200USD for one shop only','http://www.starhub.com/personal/mobile.html');

INSERT INTO TAB_CONTENT (NAME) VALUES ('Existing Customer');
INSERT INTO TAB_CONTENT (NAME) VALUES ('New Customer');

INSERT INTO TAB_TILE (IMAGE, TITLE, TEXT, LINK, TAB_CONTENT_ID) VALUES ('/resources/images/shop.png','Store','View our latest phones or recontract',NULL,1);
INSERT INTO TAB_TILE (IMAGE, TITLE, TEXT, LINK, TAB_CONTENT_ID) VALUES ('/resources/images/promotion.png','Promotions','See our latest deals',NULL,1);
INSERT INTO TAB_TILE (IMAGE, TITLE, TEXT, LINK, TAB_CONTENT_ID) VALUES ('/resources/images/support.png','Support','Get your solution here',NULL,1);
INSERT INTO TAB_TILE (IMAGE, TITLE, TEXT, LINK, TAB_CONTENT_ID) VALUES ('/resources/images/sign-in.png','Hub iD Sign-in','Manage your account',NULL,1);
INSERT INTO TAB_TILE (IMAGE, TITLE, TEXT, LINK, TAB_CONTENT_ID) VALUES ('/resources/images/why-starhub.png','Why StarHub','Learn about our service',NULL,2);
INSERT INTO TAB_TILE (IMAGE, TITLE, TEXT, LINK, TAB_CONTENT_ID) VALUES ('/resources/images/mobile-plans.png','Mobile Plans','View our Postpaid Plans',NULL,2);
INSERT INTO TAB_TILE (IMAGE, TITLE, TEXT, LINK, TAB_CONTENT_ID) VALUES ('/resources/images/promotion.png','Promotions','See our latest deals',NULL,2);
INSERT INTO TAB_TILE (IMAGE, TITLE, TEXT, LINK, TAB_CONTENT_ID) VALUES ('/resources/images/hubbing.png','Home hubbing','Bundle your services & Sale',NULL,2);
