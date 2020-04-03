/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : buyer

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 01/04/2020 16:56:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for analysis
-- ----------------------------
DROP TABLE IF EXISTS `analysis`;
CREATE TABLE `analysis`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `season` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `big_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `top` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `valuesd` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10092 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for back_acc_info
-- ----------------------------
DROP TABLE IF EXISTS `back_acc_info`;
CREATE TABLE `back_acc_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '账户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `dep_id` int(11) NOT NULL COMMENT 'depID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户姓名',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户密码',
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户手机号',
  `create_people` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '该账户创建人',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否启动该账户',
  `comment` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台系统，账号管理，账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for back_dep
-- ----------------------------
DROP TABLE IF EXISTS `back_dep`;
CREATE TABLE `back_dep`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称		',
  `number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门人数',
  `create_people` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门创建人',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台系统，组织架构，部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for back_dep_men
-- ----------------------------
DROP TABLE IF EXISTS `back_dep_men`;
CREATE TABLE `back_dep_men`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门成员ID',
  `dep_id` int(11) NOT NULL COMMENT '部门ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员姓名',
  `sex` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员性别',
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员手机号',
  `position` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员职位',
  `job_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员工号',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员email',
  `off_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员办公电话',
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员地址',
  `create_people` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门成员创建人',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `born_date` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生出日期',
  `avatar` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像 Base64编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台系统，组织架构，成员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for back_permission
-- ----------------------------
DROP TABLE IF EXISTS `back_permission`;
CREATE TABLE `back_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父ID',
  `permi_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名',
  `level` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '等级',
  `permi_status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '启用状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台系统，角色管理，权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for back_role
-- ----------------------------
DROP TABLE IF EXISTS `back_role`;
CREATE TABLE `back_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色类型',
  `description` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色简介',
  `create_people` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台系统，角色管理，角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for back_role_rel_permin
-- ----------------------------
DROP TABLE IF EXISTS `back_role_rel_permin`;
CREATE TABLE `back_role_rel_permin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色权限ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `permi_id` int(11) NOT NULL COMMENT '权限ID',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '启用状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台系统，角色管理，角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '采购商ＩＤ',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购商名字',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购商性别:0 男 1 女',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购商手机',
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购商公司名',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购商邮箱',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购商地址',
  `business` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购商涉及业务',
  `create_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态',
  `mature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成熟度',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型',
  `user_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '哪一年',
  `quarter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '季度',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '种类名称',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关键字名称',
  `valuesd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '词频'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for condition
-- ----------------------------
DROP TABLE IF EXISTS `condition`;
CREATE TABLE `condition`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `worth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `named` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for designer
-- ----------------------------
DROP TABLE IF EXISTS `designer`;
CREATE TABLE `designer`  (
  `designer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `designer_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师登录名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `freeze` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冻结状态',
  PRIMARY KEY (`designer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师登录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for designer_info
-- ----------------------------
DROP TABLE IF EXISTS `designer_info`;
CREATE TABLE `designer_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `designer_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师id',
  `designer_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师名字',
  `designer_image` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像 Base64编码',
  `designer_experience` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师工作经验',
  `designer_level` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师级别',
  `designer_birth` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师出生日期',
  `designer_company` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师所属公司',
  `designer_position` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师职位',
  `sex` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师性别',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师电话',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师邮件',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '设计师简介',
  `designer_level_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级值',
  `designer_year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师年份',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `freeze` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '冻结状态 0:未冻结 1:冻结',
  `qualification` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0:没有认证 1:通过认证',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for designer_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `designer_info_tag`;
CREATE TABLE `designer_info_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `designer_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设计师id',
  `tag_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设计师标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `goods_attribute`;
CREATE TABLE `goods_attribute`  (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 属性代号',
  `attribute_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性名称',
  `attribute_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性值',
  PRIMARY KEY (`attribute_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品类目属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_attribute_category`;
CREATE TABLE `goods_attribute_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL COMMENT '产品分类id',
  `attribute_id` bigint(20) NOT NULL COMMENT '属性id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 506 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品分类与产品的属性中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_attribute_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_attribute_info`;
CREATE TABLE `goods_attribute_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
  `attribute_id` bigint(20) NOT NULL COMMENT '属性id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 433 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品基本信息与产品属性中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_attribute_limit
-- ----------------------------
DROP TABLE IF EXISTS `goods_attribute_limit`;
CREATE TABLE `goods_attribute_limit`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 属性代号',
  `choose` tinyint(1) NULL DEFAULT NULL COMMENT '状态 0:单选 1:多选',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '状态 0:必填项 1:非必填项',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品类目属性限制表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category`  (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类级别',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父目录id',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_colour
-- ----------------------------
DROP TABLE IF EXISTS `goods_colour`;
CREATE TABLE `goods_colour`  (
  `colour_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `colour_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '颜色代号',
  `colour_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '颜色名称',
  `colour_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性值',
  `colour_rgb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '颜色对照值rgb',
  PRIMARY KEY (`colour_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 337 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品颜色属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_colour_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_colour_info`;
CREATE TABLE `goods_colour_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
  `colour_id` bigint(20) NOT NULL COMMENT '颜色属性id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 189 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品基本信息与产品颜色属性中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_height
-- ----------------------------
DROP TABLE IF EXISTS `goods_height`;
CREATE TABLE `goods_height`  (
  `height_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `height_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身高代号',
  `height_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身高名称',
  `height_value` int(255) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`height_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品身高属性表 id=0的一行数据无意义不可更改替换，前端显示需要' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_height_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_height_info`;
CREATE TABLE `goods_height_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
  `height_id` bigint(20) NOT NULL COMMENT '身高属性id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 231 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品基本信息与产品身高属性中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_img
-- ----------------------------
DROP TABLE IF EXISTS `goods_img`;
CREATE TABLE `goods_img`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `tag` tinyint(1) NOT NULL COMMENT '主图？ 0：不是 1：是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 325 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品id',
  `owner` bigint(30) NULL DEFAULT NULL COMMENT '产品拥有者',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品标题',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品描述',
  `category_id` bigint(20) NOT NULL COMMENT '产品分类表id',
  `prime_cost` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成本价格',
  `sale_price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售价格',
  `colour_remark` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色备注',
  `custom_height` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义身高',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0:上架 1:下架 2:平台强制下架',
  `lock_status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0：非锁定 1：锁定　默认为非锁定状态',
  `designer_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设计师id',
  `has_cloth` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0:没有样衣 1:有样衣',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '申请时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改时间',
  `delete_flag` tinyint(1) NULL DEFAULT 0 COMMENT '删除状态 0:未删除 1:删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2342 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_info_limited
-- ----------------------------
DROP TABLE IF EXISTS `goods_info_limited`;
CREATE TABLE `goods_info_limited`  (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_view_frequency
-- ----------------------------
DROP TABLE IF EXISTS `goods_view_frequency`;
CREATE TABLE `goods_view_frequency`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
  `frequency` bigint(20) NOT NULL COMMENT '点击频次',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '查看产品详情频次表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单Id',
  `order_amount` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单的价格',
  `order_status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态',
  `payment_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式',
  `payment_status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付状态',
  `seller_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卖方id，原则上是取自设计师id(designer_info.designer_id)',
  `seller_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卖方名称，原则上是取自设计师',
  `seller_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卖方电话号码，原则上是取自设计师的电话号码',
  `buyer_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '买方id，原则上是取自(sys_user)供货商id',
  `buyer_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '买方名称，原则上是取自供货商名称',
  `buyer_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '买方电话，原则上是取自供货商联系号码',
  `create_time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `update_time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_mapper
-- ----------------------------
DROP TABLE IF EXISTS `order_mapper`;
CREATE TABLE `order_mapper`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单Id',
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '款式Id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单对应款式信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for payment_cart
-- ----------------------------
DROP TABLE IF EXISTS `payment_cart`;
CREATE TABLE `payment_cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
  `user_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 220 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for recindexcount
-- ----------------------------
DROP TABLE IF EXISTS `recindexcount`;
CREATE TABLE `recindexcount`  (
  `purchaser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Rec_index` float NULL DEFAULT NULL,
  `rec_amount` float NULL DEFAULT NULL,
  PRIMARY KEY (`purchaser`, `goodsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sample_info
-- ----------------------------
DROP TABLE IF EXISTS `sample_info`;
CREATE TABLE `sample_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品id',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品标题',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品描述',
  `category_id` bigint(20) NOT NULL COMMENT '产品分类表id',
  `sale_price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售价格',
  `create_time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `designer_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '隶属的设计师名称',
  `designer_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '隶属的设计师Id',
  `status` tinyint(1) NOT NULL COMMENT '状态 0：未入库 1：已入库 2:已出库',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '样衣信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_code
-- ----------------------------
DROP TABLE IF EXISTS `sys_code`;
CREATE TABLE `sys_code`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '无意义',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证码',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0：未激活 1：已激活',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存放验证码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_drop_down
-- ----------------------------
DROP TABLE IF EXISTS `sys_drop_down`;
CREATE TABLE `sys_drop_down`  (
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别',
  `category_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '筛选条件下拉框' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_forecast_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_forecast_info`;
CREATE TABLE `sys_forecast_info`  (
  `product_id` bigint(20) NOT NULL COMMENT '产品id',
  `reference_price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '同类产品价格参考',
  `rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流行预测等级'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '外来预测信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0：未读 1：已读',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '消息内容',
  `recipient_type` tinyint(1) NULL DEFAULT NULL COMMENT '收信人类型 0:普通用户 1:设计师 2:千玺妈妈',
  `recipient_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人Id',
  `message_type` tinyint(1) NULL DEFAULT NULL COMMENT '0:订单消息 1:系统消息',
  `addition` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '额外消息 如果是消息 则是订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '我的消息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_product
-- ----------------------------
DROP TABLE IF EXISTS `sys_product`;
CREATE TABLE `sys_product`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `season` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5041 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_programme
-- ----------------------------
DROP TABLE IF EXISTS `sys_programme`;
CREATE TABLE `sys_programme`  (
  `programme_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `state` tinyint(1) NOT NULL COMMENT '状态 0：使用中 1：已完成',
  PRIMARY KEY (`programme_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试销方案' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_trial_product
-- ----------------------------
DROP TABLE IF EXISTS `sys_trial_product`;
CREATE TABLE `sys_trial_product`  (
  `programme_id` bigint(20) NOT NULL COMMENT '方案id',
  `product_id` bigint(20) NOT NULL COMMENT '产品id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试销产品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `avatar` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像 Base64编码',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `born_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户出生日期\r\n',
  `company` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户公司',
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户职业',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `expired` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员有效期',
  `freeze` int(1) NULL DEFAULT 0 COMMENT '冻结状态',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_info`;
CREATE TABLE `sys_user_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `born_time` date NULL DEFAULT NULL COMMENT '用户出生日期',
  `company` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户公司',
  `position` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户职位',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `member` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员信息',
  `expired` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员过期时间',
  `freeze` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冻结状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trials_data_update_time
-- ----------------------------
DROP TABLE IF EXISTS `trials_data_update_time`;
CREATE TABLE `trials_data_update_time`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchaser_id` bigint(20) NOT NULL COMMENT '采购商id',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '记录数据更新时间' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trials_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `trials_goods_info`;
CREATE TABLE `trials_goods_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trials_plan_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试销方案id',
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
  `new_total_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新建试销总件数',
  `new_total_cost` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新建试销总成本',
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试销周期开始时间',
  `end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试销周期结束时间',
  `goods_state` tinyint(1) NOT NULL COMMENT '产品状态 无数据 0:未试销 1：试销中 2：试销完成',
  `life_cycle_state` tinyint(1) NOT NULL COMMENT '试销生命周期状态 0：确认试销数量 1:匹配中 2：确认试销周期中 3：试销生命周期完成',
  `completion_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 产品试销完成时记录当前时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trials_plan_id`(`trials_plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品试销基本表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trials_input_data
-- ----------------------------
DROP TABLE IF EXISTS `trials_input_data`;
CREATE TABLE `trials_input_data`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trials_plan_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试销方案id',
  `trials_plan_entry_id` bigint(20) NOT NULL COMMENT '试销方案明细条目id',
  `purchaser_id` bigint(20) NOT NULL COMMENT '采购商id',
  `date_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日期',
  `sales_volume` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售量',
  `current_inventory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '当前库存',
  `inventory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1217 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试销数据录入表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trials_matching_purchaser_details
-- ----------------------------
DROP TABLE IF EXISTS `trials_matching_purchaser_details`;
CREATE TABLE `trials_matching_purchaser_details`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trials_plan_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试销方案id',
  `trials_plan_entry_id` bigint(20) NOT NULL COMMENT '试销方案明细条目id',
  `purchaser_id` bigint(20) NOT NULL COMMENT '采购商id',
  `inventory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '库存',
  `recommended_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '建议数量',
  `subtotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小计金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 419 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '记录{采购商智能匹配}信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trials_plan_entry
-- ----------------------------
DROP TABLE IF EXISTS `trials_plan_entry`;
CREATE TABLE `trials_plan_entry`  (
  `trials_plan_entry_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trials_plan_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试销方案id',
  `colour` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '颜色',
  `colour_rgb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '颜色rgb值',
  `height` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参考身高',
  `cost_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成本价',
  `trials_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '确定试销数量',
  `subtotal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小计金额',
  PRIMARY KEY (`trials_plan_entry_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试销方案明细条目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trials_purchaser
-- ----------------------------
DROP TABLE IF EXISTS `trials_purchaser`;
CREATE TABLE `trials_purchaser`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchaser_id` bigint(20) NOT NULL COMMENT '采购商id',
  `goods_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品id',
  `recommend_index` int(101) NULL DEFAULT NULL COMMENT '推荐指数',
  `forecast_measure` bigint(255) NULL DEFAULT NULL COMMENT '预测试销量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试销采购商列表，存算法相关数据' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
