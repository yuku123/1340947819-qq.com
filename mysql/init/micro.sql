/*
 Navicat Premium Data Transfer

 Source Server         : local_3308
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3308
 Source Schema         : micro

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 15/05/2020 22:54:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `alias` varchar(255) DEFAULT NULL COMMENT 'account的别名',
  `password` varchar(255) DEFAULT NULL COMMENT '账户的密码',
  `freeze` tinyint(1) DEFAULT '0' COMMENT '是否被冻结',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES (5, '吃饭', '1', 0);
COMMIT;

-- ----------------------------
-- Table structure for account_info
-- ----------------------------
DROP TABLE IF EXISTS `account_info`;
CREATE TABLE `account_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `account_id` int(11) NOT NULL COMMENT '账户id',
  `alias` varchar(255) DEFAULT NULL COMMENT 'account的别名',
  `password` varchar(255) DEFAULT NULL COMMENT '账户的密码',
  `freeze` tinyint(1) DEFAULT '0' COMMENT '是否被冻结',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for account_info_attribute
-- ----------------------------
DROP TABLE IF EXISTS `account_info_attribute`;
CREATE TABLE `account_info_attribute` (
  `account_info_attribute_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `item` varchar(255) DEFAULT NULL COMMENT 'item值',
  `translate` varchar(255) DEFAULT NULL COMMENT 'key的解释',
  PRIMARY KEY (`account_info_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for data_source_configuration
-- ----------------------------
DROP TABLE IF EXISTS `data_source_configuration`;
CREATE TABLE `data_source_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` varchar(255) DEFAULT NULL COMMENT '此数据源的绝对拥有者',
  `alias` varchar(255) DEFAULT NULL COMMENT '此数据源的别名',
  `datasource_type` varchar(255) DEFAULT NULL COMMENT '数据源种类',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip段',
  `port` varchar(255) DEFAULT NULL COMMENT '端口',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `description` varchar(255) DEFAULT NULL COMMENT '此数据源的描述',
  `public_flag` varchar(255) DEFAULT NULL COMMENT '是否公开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_source_configuration
-- ----------------------------
BEGIN;
INSERT INTO `data_source_configuration` VALUES (16, 'zifang', 'sss', NULL, 'ss', 'ss', 'piday', 'pidayoFFICE', 'ss', 'on');
COMMIT;

-- ----------------------------
-- Table structure for resource_item
-- ----------------------------
DROP TABLE IF EXISTS `resource_item`;
CREATE TABLE `resource_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `cms_id` varchar(255) NOT NULL COMMENT 'item值',
  `type` varchar(255) DEFAULT NULL COMMENT '资源种类',
  `owner_id` int(11) NOT NULL COMMENT '所属',
  `shared` tinyint(1) DEFAULT '0' COMMENT '是否被分享',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of resource_item
-- ----------------------------
BEGIN;
INSERT INTO `resource_item` VALUES (17, '5e8888e8be7fff746fb26b5a', '池', 5, 0, '2020-04-04 21:17:33', '2020-04-04 21:17:34');
INSERT INTO `resource_item` VALUES (18, '5e888e6bbe7fffda34c9301b', '的地位多所', 5, 0, '2020-04-04 21:41:00', '2020-04-04 21:41:00');
INSERT INTO `resource_item` VALUES (19, '5e889a23be7fff1ea2f924e2', '村上春树', 5, 0, '2020-04-04 22:31:00', '2020-04-04 22:31:00');
INSERT INTO `resource_item` VALUES (20, '5e889d41be7fff6124fcefe3', '??', 5, 0, '2020-04-04 22:44:17', '2020-04-04 22:44:17');
INSERT INTO `resource_item` VALUES (21, '5e889dcbbe7fff6c7a65a418', '??', 5, 0, '2020-04-04 22:46:36', '2020-04-04 22:46:36');
INSERT INTO `resource_item` VALUES (22, '5e889e76be7fff76e289da48', '??', 5, 0, '2020-04-04 22:49:26', '2020-04-04 22:49:26');
INSERT INTO `resource_item` VALUES (23, '5e889e98be7fff76e289da4c', '??', 5, 0, '2020-04-04 22:50:01', '2020-04-04 22:50:01');
INSERT INTO `resource_item` VALUES (24, '5e889f6abe7fff8a45c29f05', '??', 5, 0, '2020-04-04 22:53:31', '2020-04-04 22:53:31');
INSERT INTO `resource_item` VALUES (25, '5e88a107be7fffa2c4f7dc03', '??', 5, 0, '2020-04-04 23:00:24', '2020-04-04 23:00:24');
INSERT INTO `resource_item` VALUES (26, '5e88a15abe7fffabaccf8ba1', '??', 5, 0, '2020-04-04 23:01:51', '2020-04-04 23:01:52');
INSERT INTO `resource_item` VALUES (27, '5e88a8aabe7fff3173d852b4', '吃饭', 5, 0, '2020-04-04 23:32:58', '2020-04-04 23:32:58');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
