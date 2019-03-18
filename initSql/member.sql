/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : range

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-04 14:33:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `memid` int(10) NOT NULL,
  `mname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mtel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mrank` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` double(3,2) DEFAULT NULL,
  `mpsw` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yue` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`memid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of member
-- ----------------------------
