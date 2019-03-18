/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : range

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-04 14:32:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ballinfo
-- ----------------------------
DROP TABLE IF EXISTS `ballinfo`;
CREATE TABLE `ballinfo` (
  `tableid` int(10) NOT NULL,
  `state` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otime` datetime DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`tableid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ballinfo
-- ----------------------------
INSERT INTO `ballinfo` VALUES ('1', 'N', null, null);
INSERT INTO `ballinfo` VALUES ('2', 'N', null, null);
INSERT INTO `ballinfo` VALUES ('3', 'N', null, null);
INSERT INTO `ballinfo` VALUES ('4', 'N', null, null);
INSERT INTO `ballinfo` VALUES ('5', 'N', null, null);
