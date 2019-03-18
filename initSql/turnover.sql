/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : range

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-04 14:33:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for turnover
-- ----------------------------
DROP TABLE IF EXISTS `turnover`;
CREATE TABLE `turnover` (
  `laiyuan` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taihao` int(10) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `man` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shi` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of turnover
-- ----------------------------
