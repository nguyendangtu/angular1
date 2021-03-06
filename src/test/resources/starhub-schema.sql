-- CREATE DATABASE  IF NOT EXISTS STARHUBDB;
-- USE STARHUBDB;

DROP TABLE IF EXISTS BANNER;
CREATE TABLE BANNER (
  ID INT NOT NULL AUTO_INCREMENT,
  BACKGROUND_IMAGE VARCHAR(200) DEFAULT NULL,
  TITLE VARCHAR(45) DEFAULT NULL,
  TEXT VARCHAR(45) DEFAULT NULL,
  LINK VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS TAB_CONTENT;
CREATE TABLE TAB_CONTENT (
  ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS TAB_TILE;
CREATE TABLE TAB_TILE (
  ID INT NOT NULL AUTO_INCREMENT,
  IMAGE VARCHAR(200) DEFAULT NULL,
  TITLE VARCHAR(45) DEFAULT NULL,
  TEXT VARCHAR(200) DEFAULT NULL,
  LINK VARCHAR(300) DEFAULT NULL,
  TAB_CONTENT_ID INT DEFAULT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT FK_TAB_TILE_1 FOREIGN KEY (TAB_CONTENT_ID) REFERENCES TAB_CONTENT (ID)
) ;