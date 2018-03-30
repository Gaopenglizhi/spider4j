/*
Navicat MySQL Data Transfer

Source Server         : ali_mysql
Source Server Version : 50715
Source Host           : 101.132.229.69:3306
Source Database       : springboot

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-11-22 18:58:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `musicId` int(10) NOT NULL COMMENT '音乐Id',
  `name` varchar(400) NOT NULL COMMENT '音乐名称',
  `album` varchar(100) DEFAULT NULL COMMENT '专辑名称',
  `score` int(10) NOT NULL COMMENT '热度',
  `commentThreadId` varchar(30) DEFAULT NULL COMMENT '评论请求ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `music_idx` (`musicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='音乐表';
