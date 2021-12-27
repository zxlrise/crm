/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : crm

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 30/11/2020 00:49:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_cus_dev_plan
-- ----------------------------
DROP TABLE IF EXISTS `t_cus_dev_plan`;
CREATE TABLE `t_cus_dev_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sale_chance_id` int DEFAULT NULL,
  `plan_item` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `plan_date` datetime DEFAULT NULL,
  `exe_affect` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_t_cus_dev_plan` (`sale_chance_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_cus_dev_plan
-- ----------------------------
BEGIN;
INSERT INTO `t_cus_dev_plan` VALUES (69, 96, 'test01', '2017-02-28 00:00:00', 'test01', '2017-02-28 00:00:00', '2017-02-28 21:06:24', 0);
INSERT INTO `t_cus_dev_plan` VALUES (70, 97, 'test02', '2017-02-28 00:00:00', 'test02', '2017-02-28 00:00:00', '2017-02-28 21:06:25', 0);
INSERT INTO `t_cus_dev_plan` VALUES (71, 97, 'test03', '2017-02-28 00:00:00', 'test03', '2017-02-28 16:44:17', '2017-02-28 16:44:17', 0);
INSERT INTO `t_cus_dev_plan` VALUES (72, 97, 'test06', '2017-02-27 00:00:00', 'test06', '2017-02-28 00:00:00', '2017-02-28 16:48:11', 1);
INSERT INTO `t_cus_dev_plan` VALUES (73, 97, 'test05', '2017-02-22 00:00:00', 'test05', '2017-02-28 00:00:00', '2017-02-28 16:48:10', 1);
INSERT INTO `t_cus_dev_plan` VALUES (74, 97, '23424', '2017-02-23 00:00:00', '234324', '2017-02-28 21:08:02', '2017-02-28 21:08:02', 1);
INSERT INTO `t_cus_dev_plan` VALUES (75, 97, '123213', '2017-04-10 00:00:00', '21321', '2017-04-10 19:06:06', '2017-04-10 19:06:06', 1);
INSERT INTO `t_cus_dev_plan` VALUES (76, 56, 'test', '2017-04-11 00:00:00', 'qqqq', '2017-04-11 16:37:24', '2019-09-23 17:28:43', 1);
INSERT INTO `t_cus_dev_plan` VALUES (77, 56, '345435', '2017-04-11 00:00:00', '345435', '2017-04-11 00:00:00', '2017-04-11 16:52:06', 0);
INSERT INTO `t_cus_dev_plan` VALUES (78, 56, '456546', '2017-04-27 00:00:00', '456546', '2017-04-11 00:00:00', '2017-04-11 16:52:18', 0);
INSERT INTO `t_cus_dev_plan` VALUES (79, 56, '567657', '2017-04-10 00:00:00', '567657', '2017-04-11 16:52:13', '2017-04-11 16:52:13', 0);
INSERT INTO `t_cus_dev_plan` VALUES (80, 62, 'test20', '2017-05-20 00:00:00', 'ok', '2017-05-23 16:22:51', '2017-05-23 16:32:34', 1);
INSERT INTO `t_cus_dev_plan` VALUES (81, 62, '234343', '2017-05-22 00:00:00', 'ok', '2017-05-23 16:28:41', '2017-05-23 16:28:41', 1);
INSERT INTO `t_cus_dev_plan` VALUES (82, 62, '345435', '2017-05-30 00:00:00', '345435', '2017-05-23 16:37:05', '2017-05-23 16:37:05', 1);
INSERT INTO `t_cus_dev_plan` VALUES (83, 62, '345435', '2017-05-31 00:00:00', '345435', '2017-05-23 16:37:13', '2017-05-23 16:37:13', 1);
INSERT INTO `t_cus_dev_plan` VALUES (85, 66, '111', '2017-09-16 00:44:58', 'qqq', '2017-09-16 00:44:58', '2017-09-16 00:44:58', 1);
INSERT INTO `t_cus_dev_plan` VALUES (86, 66, '111', '2017-09-16 00:45:41', 'qqq', '2017-09-16 00:45:41', '2017-09-16 00:45:41', 1);
INSERT INTO `t_cus_dev_plan` VALUES (87, 66, '111', '2017-09-16 00:00:00', 'qqq', '2017-09-16 00:45:50', '2017-09-16 00:45:50', 1);
INSERT INTO `t_cus_dev_plan` VALUES (88, 66, '111', '2017-09-16 00:45:55', 'qqq', '2017-09-16 00:45:55', '2017-09-16 00:45:55', 1);
INSERT INTO `t_cus_dev_plan` VALUES (89, 66, '3434543', '2017-09-16 00:00:00', 'ok', '2017-09-16 11:42:03', '2017-09-16 11:42:03', 1);
INSERT INTO `t_cus_dev_plan` VALUES (90, 66, '34353', '2017-09-16 00:00:00', 'ok', '2017-09-16 11:43:28', '2017-09-16 11:43:28', 1);
INSERT INTO `t_cus_dev_plan` VALUES (91, 66, '678678', '2017-09-02 00:00:00', '678678', '2017-09-16 11:44:16', '2017-09-16 11:44:16', 1);
INSERT INTO `t_cus_dev_plan` VALUES (92, 66, 'aaaa', '2017-09-16 00:00:00', '678678', '2017-09-16 11:59:24', '2017-09-16 11:59:24', 0);
INSERT INTO `t_cus_dev_plan` VALUES (93, 66, 'abc', '2017-09-16 00:00:00', '678678', '2017-09-16 11:59:56', '2017-09-16 11:59:56', 1);
INSERT INTO `t_cus_dev_plan` VALUES (94, 66, '客户即将开发成功', '2017-09-16 00:00:00', 'very good', '2017-09-16 12:01:35', '2017-09-16 12:01:35', 1);
INSERT INTO `t_cus_dev_plan` VALUES (95, 66, '请客吃饭', '2017-10-20 00:00:00', 'ok', '2017-10-20 17:28:20', '2017-10-20 17:28:20', 1);
INSERT INTO `t_cus_dev_plan` VALUES (96, 66, 'test02', '2017-10-18 00:00:00', 'test02', '2017-10-20 17:28:45', '2017-10-20 17:33:42', 0);
INSERT INTO `t_cus_dev_plan` VALUES (97, 67, 'test', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:29:07', 1);
INSERT INTO `t_cus_dev_plan` VALUES (98, 67, 'test02', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:29:06', 1);
INSERT INTO `t_cus_dev_plan` VALUES (99, 67, 'test03', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:29:05', 1);
INSERT INTO `t_cus_dev_plan` VALUES (100, 67, 'test04', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:29:06', 1);
INSERT INTO `t_cus_dev_plan` VALUES (101, 67, 'test05', '2018-01-11 00:00:00', 'ok', '2018-01-11 11:02:44', '2018-01-11 11:02:44', 0);
INSERT INTO `t_cus_dev_plan` VALUES (102, 67, 'test07', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:09:15', 0);
INSERT INTO `t_cus_dev_plan` VALUES (103, 67, '请老王吃饭', '2018-01-11 00:00:00', 'ok', '2018-01-11 00:00:00', '2018-01-11 11:07:45', 0);
INSERT INTO `t_cus_dev_plan` VALUES (104, 73, '133', '2018-05-02 00:00:00', '1', '2018-05-02 00:00:00', '2018-05-02 09:23:31', 1);
INSERT INTO `t_cus_dev_plan` VALUES (105, 73, '3', '2018-05-09 00:00:00', '3', '2018-05-02 09:23:43', '2018-05-02 09:23:43', 0);
INSERT INTO `t_cus_dev_plan` VALUES (106, 56, 'test', '2019-09-23 00:00:00', 'ok', '2019-09-23 17:20:51', '2019-09-23 17:20:51', 1);
INSERT INTO `t_cus_dev_plan` VALUES (107, 56, 'test', '2019-09-23 00:00:00', '123213', '2019-09-23 17:21:12', '2019-09-23 17:21:12', 0);
INSERT INTO `t_cus_dev_plan` VALUES (108, 56, 'test002', '2019-09-23 00:00:00', 'ok', '2019-09-23 17:23:33', '2019-09-23 17:28:17', 0);
INSERT INTO `t_cus_dev_plan` VALUES (109, 56, 'test00001', '2019-09-22 00:00:00', 'ok', '2019-09-23 17:24:41', '2019-09-23 17:28:28', 0);
INSERT INTO `t_cus_dev_plan` VALUES (110, 56, 'aaaa', '2019-09-23 00:00:00', 'ok', '2019-09-23 17:29:40', '2019-09-23 17:29:40', 0);
INSERT INTO `t_cus_dev_plan` VALUES (111, 97, '请客吃饭', '2019-11-04 00:00:00', '满意', '2019-11-05 00:00:00', '2019-11-05 16:08:35', 1);
INSERT INTO `t_cus_dev_plan` VALUES (112, 97, 'test', '2019-11-03 00:00:00', 'test', '2019-11-05 16:09:26', '2019-11-05 16:09:26', 1);
INSERT INTO `t_cus_dev_plan` VALUES (113, 97, 'test01', '2019-11-01 00:00:00', 'test01', '2019-11-05 16:10:34', '2019-11-05 16:10:34', 1);
INSERT INTO `t_cus_dev_plan` VALUES (114, 97, 'test02', '2019-11-02 00:00:00', 'test02', '2019-11-05 16:11:34', '2019-11-05 16:11:34', 1);
INSERT INTO `t_cus_dev_plan` VALUES (115, 98, '客户见面', '2019-12-06 00:00:00', '总体ok ，等待下一步沟通', '2019-12-06 11:15:35', '2019-12-06 11:15:35', 0);
INSERT INTO `t_cus_dev_plan` VALUES (116, 98, 'test01', '2019-12-05 00:00:00', 'test', '2019-12-06 00:00:00', '2019-12-06 11:17:58', 0);
INSERT INTO `t_cus_dev_plan` VALUES (117, 98, 'test02', '2019-12-06 00:00:00', 'test02', '2019-12-06 00:00:00', '2019-12-06 11:17:43', 0);
INSERT INTO `t_cus_dev_plan` VALUES (118, 98, '产品购买', '2019-12-06 00:00:00', '成交', '2019-12-06 11:37:13', '2019-12-06 11:37:13', 0);
INSERT INTO `t_cus_dev_plan` VALUES (119, 98, '产品购买', '2019-12-06 00:00:00', '成功', '2019-12-06 11:37:44', '2019-12-06 11:37:44', 0);
INSERT INTO `t_cus_dev_plan` VALUES (120, 96, 'test', '2020-01-11 00:00:00', 'test', '2020-01-11 11:46:09', '2020-01-11 11:46:09', 0);
INSERT INTO `t_cus_dev_plan` VALUES (121, 96, 'test05', '2020-01-03 00:00:00', 'test05', '2020-01-11 00:00:00', '2020-01-11 11:48:26', 0);
INSERT INTO `t_cus_dev_plan` VALUES (122, 93, 'test01', '2020-01-02 00:00:00', 'test01', '2020-01-11 00:00:00', '2020-01-11 11:48:54', 0);
INSERT INTO `t_cus_dev_plan` VALUES (123, 93, 'test', '2020-01-11 00:00:00', 'test', '2020-01-11 12:02:24', '2020-01-11 12:02:24', 1);
INSERT INTO `t_cus_dev_plan` VALUES (124, 124, 'test', '2020-01-10 00:00:00', 'test23423', '2020-02-18 22:41:13', '2020-02-18 22:43:20', 0);
INSERT INTO `t_cus_dev_plan` VALUES (125, 98, 'test', '2020-01-10 00:00:00', 'testasd', '2020-02-18 22:48:28', '2020-02-18 22:48:34', 1);
INSERT INTO `t_cus_dev_plan` VALUES (126, 98, 'test', '2020-01-10 00:00:00', 'test23423', '2020-02-18 22:48:41', '2020-02-18 22:48:41', 0);
INSERT INTO `t_cus_dev_plan` VALUES (127, 124, 'test', '2020-01-10 00:00:00', 'test23423', '2020-02-18 22:49:14', '2020-02-18 22:49:14', 1);
INSERT INTO `t_cus_dev_plan` VALUES (128, 97, 'test', '2020-01-10 00:00:00', 'test23423', '2020-02-23 23:29:27', '2020-02-23 23:29:27', 0);
INSERT INTO `t_cus_dev_plan` VALUES (129, 97, 'test01', '2020-01-20 00:00:00', 'ok', '2020-03-14 16:37:35', '2020-03-14 16:46:39', 0);
INSERT INTO `t_cus_dev_plan` VALUES (130, 130, '计划A', '2020-11-11 00:00:00', NULL, '2020-11-04 20:15:06', '2020-11-04 20:15:06', 1);
INSERT INTO `t_cus_dev_plan` VALUES (131, 130, '计划B', '2020-11-12 00:00:00', '执行成功', '2020-11-04 20:15:50', '2020-11-04 20:15:50', 1);
INSERT INTO `t_cus_dev_plan` VALUES (132, 127, '计划BB', '2020-12-13 00:00:00', '执行ok', '2020-11-04 21:12:29', '2020-11-04 21:48:19', 1);
INSERT INTO `t_cus_dev_plan` VALUES (133, 127, '计划一', '2020-12-13 00:00:00', 'ok', '2020-11-05 10:29:47', '2020-11-05 10:30:10', 0);
COMMIT;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `khno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cus_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `myd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `xyd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `post_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `web_site` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `yyzzzch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zczj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nyye` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `khyh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `khzh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dsdjh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gsdjh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` int DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
BEGIN;
INSERT INTO `t_customer` VALUES (1, 'KH21321321', '北京大牛科技', '北京', 'test', '战略合作伙伴', '☆☆☆', '☆☆☆', '北京海淀区双榆树东里15号', '100027', '010-62263393', '010-62263393', 'www.daniu.com', '420103000057404', '赵飞翔', '1000', '5000', '中国银行', '6225231243641', '4422214321321', '4104322332', 0, 1, '2017-01-16 11:28:43', '2016-08-24 18:42:19');
INSERT INTO `t_customer` VALUES (2, 'KH20150526073022', '风驰科技', '北京', 'test', '大客户', '☆☆☆☆', '☆☆☆☆', '321', '21', '321', '321', '321', '321', '码云', '', '21', '321', '321', '321', '3213', 0, 1, '2017-01-16 12:15:19', '2016-11-28 11:46:24');
INSERT INTO `t_customer` VALUES (20, 'KH201709181013450', '腾讯', '测试', 'test', '大客户', '☆☆☆☆☆', '☆☆☆☆', '', '', '13327792156', '', '', NULL, '赵飞翔', '', '', '', '', '', '', 0, 1, '2017-01-16 10:13:57', '2020-02-19 10:30:26');
INSERT INTO `t_customer` VALUES (21, 'KH201709181112739', '阿里巴巴', '北京', 'test01', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '浙江杭州', '324324', '23424324324', '2343', 'www.alibaba.com', '232432', '码云', '100', '100000', '杭州', '23432432', '4324324', '234324234', 0, 1, '2017-01-16 11:12:16', '2017-09-18 11:25:25');
INSERT INTO `t_customer` VALUES (22, 'KH20171021105508617', '中国工商银行', '上海', 'test', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '浦东', '201600', '18920156732', '12312321', 'www.icbc.com', '12323', '吴三强', '1000000', '100000', '工商', '212321', '', '', 0, 1, '2017-01-16 10:55:09', '2020-11-14 02:28:37');
INSERT INTO `t_customer` VALUES (23, 'KH20180115104723756', '百度', '北京', 'test', '战略合作伙伴', '☆☆☆☆', '☆☆☆☆☆', '北京西二旗', '100000', '2321321', '213123', '123213', '2321321', '李彦宏', '10000', '100000', '工商', '121321313', '', '', 0, 1, '2018-01-16 10:47:23', '2018-01-15 10:50:00');
INSERT INTO `t_customer` VALUES (24, 'KH20180504112003301', '小米科技', '上海', 'test', '重点开发客户', '☆☆☆☆☆', '☆☆☆☆☆', '北京市海淀区清河中街68号华润五彩城购物中心二期13层', '1000000', '010-12345678', '123123131', 'www.xiaomi.com', '110108012660422', '雷军', '185000', '5000000', '中国银行', '99999999999', '91110108551385082Q', '91110108551385082Q', 0, 1, '2018-05-04 11:16:21', '2018-05-04 11:22:24');
INSERT INTO `t_customer` VALUES (32, 'KH1605352800204', '网易test', '上海', 'admin', '大客户', NULL, '', '', '', '13787654345', '', '', NULL, '张三test', '', '', '', '', '', '', 0, 1, '2020-11-14 19:20:00', '2020-11-14 20:20:59');
INSERT INTO `t_customer` VALUES (33, 'KH1605352897591', '网易科技', NULL, NULL, '战略合作伙伴', NULL, NULL, NULL, NULL, '1589876543', NULL, NULL, NULL, '张三', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-11-14 19:21:38', '2020-11-14 19:21:38');
INSERT INTO `t_customer` VALUES (34, 'KH1605352974388', '网易科技有限公司', NULL, NULL, '战略合作伙伴', NULL, NULL, NULL, NULL, '15898765437', NULL, NULL, NULL, '张三', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-11-14 19:22:54', '2020-11-14 19:22:54');
INSERT INTO `t_customer` VALUES (35, 'KH1605353772927', '腾讯科技', '', '', '战略合作伙伴', NULL, '', '', '', '13787654345', '', '', NULL, '马化腾', '', '', '', '', '', '', 0, 1, '2020-11-14 19:36:13', '2020-11-14 20:21:04');
INSERT INTO `t_customer` VALUES (36, 'KH1605353908782', '测试测试', '', '', '战略合作伙伴', NULL, '', '', '', '15898765437', '', '', NULL, 'zhangsan', '', '', '', '', '', '', 0, 1, '2020-11-14 19:38:29', '2020-11-14 20:21:08');
COMMIT;

-- ----------------------------
-- Table structure for t_customer_contact
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_contact`;
CREATE TABLE `t_customer_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cus_id` int DEFAULT NULL,
  `contact_time` datetime DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `overview` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_customer_contact
-- ----------------------------
BEGIN;
INSERT INTO `t_customer_contact` VALUES (1, 1, '2015-05-14 05:00:00', '1', '2', NULL, NULL, 1);
INSERT INTO `t_customer_contact` VALUES (2, 1, '2015-05-06 00:00:00', '12', '22', NULL, NULL, 1);
INSERT INTO `t_customer_contact` VALUES (3, 1, '2015-08-22 00:00:00', '珠江路2', '吃饭2', NULL, NULL, 1);
INSERT INTO `t_customer_contact` VALUES (4, 1, '2016-09-01 00:00:00', '112', '233', '2016-09-01 09:53:39', '2016-09-01 09:53:39', 0);
INSERT INTO `t_customer_contact` VALUES (5, 1, '2016-11-22 00:00:00', '师德师风', '阿德的', '2016-11-25 09:38:37', '2016-11-25 09:38:37', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_customer_linkman
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_linkman`;
CREATE TABLE `t_customer_linkman` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cus_id` int DEFAULT NULL,
  `link_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zhiwei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `office_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `ceate_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_customer_linkman
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_customer_loss
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_loss`;
CREATE TABLE `t_customer_loss` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cus_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cus_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cus_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_order_time` date DEFAULT NULL,
  `confirm_loss_time` date DEFAULT NULL,
  `state` int DEFAULT NULL,
  `loss_reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_customer_loss
-- ----------------------------
BEGIN;
INSERT INTO `t_customer_loss` VALUES (395, 'KH21321321', '北京大牛科技', 'test', '2020-09-03', '2020-11-17', 1, NULL, 1, '2020-11-17 03:56:12', '2020-11-17 19:54:07');
INSERT INTO `t_customer_loss` VALUES (396, 'KH20150526073022', '风驰科技', 'test', '2020-09-03', '2020-11-17', 1, '公司理念不符', 1, '2020-11-17 03:56:12', '2020-11-17 19:55:54');
INSERT INTO `t_customer_loss` VALUES (397, 'KH201709181112739', '阿里巴巴', 'test01', '2020-09-03', NULL, 0, NULL, 1, '2020-11-17 03:56:12', '2020-11-17 03:56:12');
INSERT INTO `t_customer_loss` VALUES (398, 'KH20171021105508617', '中国工商银行', 'test', '2020-09-03', NULL, 0, NULL, 1, '2020-11-17 03:56:12', '2020-11-17 03:56:12');
INSERT INTO `t_customer_loss` VALUES (399, 'KH20180115104723756', '百度', 'test', '2020-09-03', NULL, 0, NULL, 1, '2020-11-17 03:56:12', '2020-11-17 03:56:12');
INSERT INTO `t_customer_loss` VALUES (400, 'KH20180504112003301', '小米科技', 'test', '2020-09-03', NULL, 0, NULL, 1, '2020-11-17 03:56:12', '2020-11-17 03:56:12');
COMMIT;

-- ----------------------------
-- Table structure for t_customer_order
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_order`;
CREATE TABLE `t_customer_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cus_id` int DEFAULT NULL,
  `order_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_customer_order
-- ----------------------------
BEGIN;
INSERT INTO `t_customer_order` VALUES (5, 20, '201910021001', '2020-09-03 14:56:10', '上海松江区', 1, '2016-01-29 14:56:15', '2016-11-29 14:56:17', 1);
INSERT INTO `t_customer_order` VALUES (6, 20, '202001022534', '2020-06-16 14:56:26', '杭州市滨江大道', 1, '2016-02-29 14:56:30', '2016-11-29 14:56:32', 1);
INSERT INTO `t_customer_order` VALUES (7, 24, '201911021082', '2018-10-01 17:27:31', '上海浦东', 1, '2019-09-01 17:27:13', '2017-01-01 17:27:21', 1);
INSERT INTO `t_customer_order` VALUES (8, 25, '201909021001', '2019-11-11 10:09:32', '背景海淀', 1, '2019-11-09 10:09:36', '2019-11-09 10:09:39', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_customer_reprieve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_reprieve`;
CREATE TABLE `t_customer_reprieve` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loss_id` int DEFAULT NULL,
  `measure` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_customer_reprieve
-- ----------------------------
BEGIN;
INSERT INTO `t_customer_reprieve` VALUES (44, 396, '请客户吃饭', 1, '2017-05-25 17:06:05', '2017-09-19 11:49:37');
INSERT INTO `t_customer_reprieve` VALUES (45, 383, '客户请客', 1, '2017-05-25 00:00:00', '2017-09-19 11:49:36');
INSERT INTO `t_customer_reprieve` VALUES (47, 396, '请马云吃顿饭_河马生鲜', 1, '2017-09-19 11:17:04', '2017-09-19 11:49:26');
INSERT INTO `t_customer_reprieve` VALUES (49, 135, '请老马喝喝茶，聊聊天', 1, '2017-10-21 00:00:00', '2017-10-21 00:00:00');
INSERT INTO `t_customer_reprieve` VALUES (50, 135, '请客吃饭', 1, '2017-10-21 18:10:35', '2017-10-21 18:10:35');
INSERT INTO `t_customer_reprieve` VALUES (66, 400, '和客户再次沟通', 1, '2020-11-17 17:26:18', '2020-11-17 17:27:41');
INSERT INTO `t_customer_reprieve` VALUES (67, 395, 'testtest', 0, '2020-11-17 17:51:08', '2020-11-17 18:19:37');
INSERT INTO `t_customer_reprieve` VALUES (68, 395, '测试', 0, '2020-11-17 17:51:19', '2020-11-17 18:19:40');
COMMIT;

-- ----------------------------
-- Table structure for t_customer_serve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_serve`;
CREATE TABLE `t_customer_serve` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serve_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `overview` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `service_request` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_people` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `assigner` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `assign_time` datetime DEFAULT NULL,
  `service_proce` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `service_proce_people` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `service_proce_time` datetime DEFAULT NULL,
  `service_proce_result` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `myd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `update_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_customer_serve
-- ----------------------------
BEGIN;
INSERT INTO `t_customer_serve` VALUES (74, '6', 'crm 有待改进', '腾讯', 'fw_005', '', 'admin', '42', '2020-02-20 16:32:57', '234234343423432', 'admin', '2020-02-20 18:32:35', '满意', '☆☆☆☆☆', 1, '2020-02-20 20:49:12', '2020-01-18 09:31:53');
INSERT INTO `t_customer_serve` VALUES (75, '9', 'crm 有待改进', '腾讯', 'fw_005', '', 'admin', '10', '2020-01-18 11:01:20', '客服需求已解决 等待反馈', 'admin', '2020-01-18 11:55:23', '满意', '☆☆☆☆☆', 1, '2020-01-18 12:09:00', '2020-01-18 10:20:10');
INSERT INTO `t_customer_serve` VALUES (76, '6', 'this is test...', '腾讯', 'fw_005', 'this is test...', NULL, '42', '2020-02-20 16:33:06', '23423423432', 'admin', '2020-02-20 18:32:46', '满意', '☆☆☆☆', 1, '2020-02-20 20:49:19', '2020-02-20 15:10:50');
INSERT INTO `t_customer_serve` VALUES (82, '6', 'Crm系统系统上线时间?', '腾讯', 'fw_003', '这是服务测试', 'admin', '10', '2020-02-28 11:13:21', 'Crm即将上线', 'admin', '2020-02-28 11:34:32', NULL, NULL, 1, '2020-02-28 11:34:32', '2020-02-28 09:57:18');
INSERT INTO `t_customer_serve` VALUES (83, '6', '了解了解', '百度', 'fw_003', '了解一下', 'admin', '10', '2020-10-26 21:53:05', '服务处理...', NULL, '2020-11-20 15:40:34', NULL, NULL, 1, '2020-11-20 15:40:34', '2020-10-26 21:52:45');
INSERT INTO `t_customer_serve` VALUES (84, '7', '测试', '腾讯', 'fw_005', '测试', 'admin', '10', '2020-11-19 18:07:06', '服务处理测试...', 'admin', '2020-11-20 15:43:14', '满意', '☆☆☆☆☆', 1, '2020-11-20 16:03:05', '2020-10-26 21:53:33');
INSERT INTO `t_customer_serve` VALUES (85, '6', '111', '腾讯', 'fw_002', '111', 'admin', '42', '2020-11-19 18:08:07', NULL, NULL, NULL, NULL, NULL, 1, '2020-11-19 18:08:07', '2020-10-26 21:54:00');
INSERT INTO `t_customer_serve` VALUES (86, '6', '添加服务测试。。。', '百度', 'fw_001', '添加服务测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-11-19 15:39:14', '2020-11-19 15:39:14');
INSERT INTO `t_customer_serve` VALUES (87, '6', '添加服务测试...', '百度', 'fw_001', '添加服务测试', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-11-19 15:40:33', '2020-11-19 15:40:32');
INSERT INTO `t_customer_serve` VALUES (88, '7', 'Test。。。', '腾讯', 'fw_001', 'Test', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-11-19 15:41:08', '2020-11-19 15:41:08');
COMMIT;

-- ----------------------------
-- Table structure for t_datadic
-- ----------------------------
DROP TABLE IF EXISTS `t_datadic`;
CREATE TABLE `t_datadic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_dic_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `data_dic_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_valid` tinyint DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_t_datadic` (`data_dic_value`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_datadic
-- ----------------------------
BEGIN;
INSERT INTO `t_datadic` VALUES (1, '客户等级', '普通客户', 1, '2020-02-20 10:04:27', '2020-02-20 10:04:48');
INSERT INTO `t_datadic` VALUES (2, '客户等级', '重点开发客户', 1, '2020-02-20 10:04:30', '2020-02-20 10:04:51');
INSERT INTO `t_datadic` VALUES (3, '客户等级', '大客户', 1, '2020-02-20 10:04:33', '2020-02-20 10:04:53');
INSERT INTO `t_datadic` VALUES (4, '客户等级', '合作伙伴', 1, '2020-02-20 10:04:35', '2020-02-20 10:04:56');
INSERT INTO `t_datadic` VALUES (5, '客户等级', '战略合作伙伴', 1, '2020-02-20 10:04:37', '2020-02-20 10:04:59');
INSERT INTO `t_datadic` VALUES (6, '服务类型', '咨询', 1, '2020-02-20 10:04:40', '2020-02-20 10:05:01');
INSERT INTO `t_datadic` VALUES (7, '服务类型', '建议', 1, '2020-02-20 10:04:43', '2020-02-20 10:05:04');
INSERT INTO `t_datadic` VALUES (8, '服务类型', '投诉', 1, '2020-02-20 10:04:45', '2016-08-24 15:48:46');
COMMIT;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exception_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exception_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `create_date` datetime DEFAULT NULL,
  `execute_time` int DEFAULT NULL,
  `create_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `result` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_log
-- ----------------------------
BEGIN;
INSERT INTO `t_log` VALUES (424, '营销机会-主页展示', 'index', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2020-01-19 09:55:48', 1, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (425, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2020-01-19 09:55:49', 119, 'admin', '{\"total\":28,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (426, '营销机会-主页展示', 'index', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2020-01-19 09:58:27', 1, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (427, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2020-01-19 09:58:28', 147, 'admin', '{\"total\":29,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (428, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2020-01-19 09:58:33', 22, 'admin', '{\"total\":29,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (429, '营销管理-添加', 'saveSaleChance', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"chanceSource\":\"官网\",\"customerName\":\"百度\",\"cgjl\":80,\"overview\":\"第一次合作  预祝合作愉快\",\"linkMan\":\"马小云\",\"linkPhone\":\"15710218929\",\"description\":\"\",\"createMan\":\"admin\",\"assignMan\":\"\",\"state\":0,\"devResult\":0,\"isValid\":1,\"createDate\":\"Jan 19, 2020 9:58:45 AM\",\"updateDate\":\"Jan 19, 2020 9:58:45 AM\"}]', '2020-01-19 09:58:46', 23, 'admin', '{\"code\":200,\"msg\":\"机会数据添加成功\"}');
INSERT INTO `t_log` VALUES (430, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2020-01-19 09:58:46', 11, 'admin', '{\"total\":30,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (431, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2020-01-19 09:59:52', 16, 'admin', '{\"total\":30,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
COMMIT;

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module` (
  `id` int NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源名称',
  `module_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '模块样式',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `parent_id` int DEFAULT NULL,
  `parent_opt_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `grade` int DEFAULT NULL COMMENT '等级',
  `opt_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限值',
  `orders` int DEFAULT NULL,
  `is_valid` tinyint DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_module
-- ----------------------------
BEGIN;
INSERT INTO `t_module` VALUES (1, '营销管理', '', '#', -1, NULL, 0, '10', 1, 1, '2017-09-28 00:00:00', '2020-02-17 15:46:59');
INSERT INTO `t_module` VALUES (2, '营销机会管理', '', 'saleChance/index', 1, NULL, 1, '1010', 1, 1, '2017-09-28 00:00:00', '2020-02-17 15:47:26');
INSERT INTO `t_module` VALUES (3, '营销机会管理查询', '', '#', 2, NULL, 2, '101001', 2, 1, '2017-09-28 00:00:00', '2020-02-17 15:47:51');
INSERT INTO `t_module` VALUES (4, '营销机会管理添加', '', '#', 2, NULL, 2, '101002', 2, 1, '2017-09-28 00:00:00', '2017-09-28 00:00:00');
INSERT INTO `t_module` VALUES (5, '营销机会管理删除', '', '#', 2, NULL, 2, '101003', 3, 1, '2017-09-28 00:00:00', '2017-09-28 00:00:00');
INSERT INTO `t_module` VALUES (6, '客户开发计划', '', 'cus_dev_plan/index', 1, NULL, 1, '1020', 2, 1, '2017-09-28 00:00:00', '2017-09-28 00:00:00');
INSERT INTO `t_module` VALUES (7, '查看详情', '', '#', 6, NULL, 2, '102001', 1, 1, '2017-09-28 00:00:00', '2017-09-28 00:00:00');
INSERT INTO `t_module` VALUES (8, '客户管理', '', 'customer/index', -1, NULL, 0, '20', 3, 1, '2017-07-01 00:00:00', '2017-07-01 00:00:00');
INSERT INTO `t_module` VALUES (9, '客户信息管理', '', 'customer/index', 8, NULL, 1, '2010', 1, 1, '2017-09-06 00:00:00', '2017-09-06 00:00:00');
INSERT INTO `t_module` VALUES (10, '创建', '', '#', 9, NULL, 2, '201001', 1, 1, '2017-07-01 00:00:00', '2017-07-01 00:00:00');
INSERT INTO `t_module` VALUES (11, '修改', '', '#', 9, NULL, 2, '201002', 2, 1, '2017-07-01 00:00:00', '2017-07-01 00:00:00');
INSERT INTO `t_module` VALUES (12, '客户流失管理', '', 'customer_loss/index', 8, NULL, 1, '2020', 2, 1, '2017-08-17 00:00:00', '2017-08-17 00:00:00');
INSERT INTO `t_module` VALUES (13, '暂缓流失', '', 'openCustomerReprieve', 12, NULL, 2, '202001', 1, 1, '2017-09-23 00:00:00', '2017-09-23 00:00:00');
INSERT INTO `t_module` VALUES (14, '统计报表', '', '#', -1, NULL, 0, '40', 4, 1, '2017-08-15 00:00:00', '2017-08-15 00:00:00');
INSERT INTO `t_module` VALUES (15, '客户贡献分析', '', 'report/1', 14, NULL, 1, '4010', 1, 1, '2017-08-15 00:00:00', '2017-08-15 00:00:00');
INSERT INTO `t_module` VALUES (16, '服务管理', '', '#', -1, NULL, 0, '30', 3, 1, '2017-08-18 00:00:00', '2017-08-18 00:00:00');
INSERT INTO `t_module` VALUES (17, '基础数据管理', '', '#', -1, NULL, 0, '50', 5, 1, '2017-08-18 00:00:00', '2017-08-18 00:00:00');
INSERT INTO `t_module` VALUES (18, '系统管理', '', '#', -1, NULL, 0, '60', 6, 1, '2017-08-18 00:00:00', '2017-08-18 00:00:00');
INSERT INTO `t_module` VALUES (19, '删除', '', '#', 9, NULL, 2, '201003', 3, 1, '2017-08-18 00:00:00', '2017-08-18 00:00:00');
INSERT INTO `t_module` VALUES (26, '用户管理', '', 'user/index', 18, NULL, 1, '6010', NULL, 1, '2017-10-24 16:54:12', '2017-10-24 16:54:12');
INSERT INTO `t_module` VALUES (27, '角色管理', '', 'role/index', 18, NULL, 1, '6020', NULL, 1, '2018-01-13 11:29:17', '2018-01-13 11:29:19');
INSERT INTO `t_module` VALUES (28, '资源管理', '', 'module/index/1', 18, NULL, 1, '6030', NULL, 1, '2018-01-13 11:29:40', '2018-01-13 11:29:42');
INSERT INTO `t_module` VALUES (34, '服务创建', '', NULL, 16, NULL, 1, '3010', NULL, 1, '2018-01-16 09:21:59', '2018-01-16 09:22:02');
INSERT INTO `t_module` VALUES (35, '服务分配', '', NULL, 16, NULL, 1, '3020', NULL, 1, '2018-01-16 09:22:26', '2018-01-16 09:22:28');
INSERT INTO `t_module` VALUES (36, '服务处理', '', NULL, 16, NULL, 1, '3030', NULL, 1, '2018-01-16 09:22:47', '2018-01-16 09:22:50');
INSERT INTO `t_module` VALUES (37, '服务反馈', '', NULL, 16, NULL, 1, '3040', NULL, 1, '2018-01-16 09:23:11', '2018-01-16 09:23:13');
INSERT INTO `t_module` VALUES (38, '服务归档', '', NULL, 16, NULL, 1, '3050', NULL, 1, '2018-01-16 09:23:37', '2018-01-16 09:23:39');
INSERT INTO `t_module` VALUES (39, '客户构成分析', '', NULL, 14, NULL, NULL, '4020', NULL, 1, '2018-01-16 14:57:24', '2018-01-16 14:57:27');
INSERT INTO `t_module` VALUES (40, '客户服务分析', '', NULL, 14, NULL, NULL, '4030', NULL, 1, '2018-01-16 16:14:48', '2018-01-16 16:14:50');
INSERT INTO `t_module` VALUES (44, '营销机会管理修改', '', NULL, 2, NULL, 2, '101004', NULL, 1, '2019-09-25 15:22:12', '2020-01-15 10:43:09');
INSERT INTO `t_module` VALUES (102, '数据字典管理', '', 'sale_chance/xxx', 17, NULL, 1, '5010', NULL, 1, '2019-09-26 11:07:00', '2019-09-26 11:07:00');
INSERT INTO `t_module` VALUES (103, '产品信息查询', '', '#', 17, NULL, 2, '5020', NULL, 1, '2019-09-26 11:13:14', '2019-09-26 11:13:14');
INSERT INTO `t_module` VALUES (109, '客户类别分析', '', 'report/r01', 14, NULL, 1, '4060', NULL, 1, '2019-11-09 16:31:58', '2019-11-09 16:31:58');
INSERT INTO `t_module` VALUES (126, '流失管理添加', '', NULL, 12, NULL, 2, '123213', 12323, 1, '2020-02-17 15:25:53', '2020-02-17 15:25:53');
INSERT INTO `t_module` VALUES (130, '用户添加', '', NULL, 26, NULL, 2, '601001', NULL, 1, '2020-02-17 15:55:45', '2020-02-17 15:55:45');
INSERT INTO `t_module` VALUES (131, '用户查询', '', NULL, 26, NULL, 2, '601002', NULL, 1, '2020-02-17 15:56:04', '2020-02-17 15:56:04');
INSERT INTO `t_module` VALUES (132, '用户修改', '', NULL, 26, NULL, 2, '601003', NULL, 1, '2020-02-17 15:56:20', '2020-02-17 15:56:20');
INSERT INTO `t_module` VALUES (133, '用户删除', '', NULL, 26, NULL, 2, '601004', NULL, 1, '2020-02-17 15:56:36', '2020-02-17 15:56:36');
INSERT INTO `t_module` VALUES (134, '角色添加', '', NULL, 27, NULL, 2, '602001', NULL, 1, '2020-02-17 15:56:53', '2020-02-17 15:56:53');
INSERT INTO `t_module` VALUES (135, '角色查询', '', NULL, 27, NULL, 2, '602002', NULL, 1, '2020-02-17 15:57:08', '2020-02-17 15:57:08');
INSERT INTO `t_module` VALUES (136, '角色修改', '', NULL, 27, NULL, 2, '602003', NULL, 1, '2020-02-17 15:57:23', '2020-02-17 15:57:23');
INSERT INTO `t_module` VALUES (137, '角色删除', '', NULL, 27, NULL, 2, '602004', NULL, 1, '2020-02-17 15:57:37', '2020-02-17 15:57:37');
INSERT INTO `t_module` VALUES (138, '资源添加', '', NULL, 28, NULL, 2, '603001', NULL, 1, '2020-02-17 15:57:57', '2020-02-17 15:57:57');
INSERT INTO `t_module` VALUES (139, '资源查询', '', NULL, 28, NULL, 2, '603002', NULL, 1, '2020-02-17 15:58:18', '2020-02-17 15:58:18');
INSERT INTO `t_module` VALUES (140, '资源修改', '', NULL, 28, NULL, 2, '603003', NULL, 1, '2020-02-17 15:58:31', '2020-02-17 15:58:31');
INSERT INTO `t_module` VALUES (141, '资源删除', '', NULL, 28, NULL, 2, '603004', NULL, 1, '2020-02-17 15:58:45', '2020-02-17 15:58:45');
INSERT INTO `t_module` VALUES (142, '字典管理', '', 'data_dic/index', 18, NULL, 1, '6040', NULL, 1, '2020-02-20 21:30:11', '2020-02-20 21:30:53');
INSERT INTO `t_module` VALUES (143, '字典添加', '', NULL, 142, NULL, 2, '604001', NULL, 1, '2020-02-20 21:31:12', '2020-02-20 21:31:12');
INSERT INTO `t_module` VALUES (144, '字典查询', '', NULL, 142, NULL, 2, '604002', NULL, 1, '2020-02-20 21:31:31', '2020-02-20 21:31:31');
INSERT INTO `t_module` VALUES (145, '字典修改', '', NULL, 142, NULL, 2, '604003', NULL, 1, '2020-02-20 21:31:47', '2020-02-20 21:31:47');
INSERT INTO `t_module` VALUES (146, '字典删除', '', NULL, 142, NULL, 2, '604004', NULL, 1, '2020-02-20 21:32:03', '2020-02-20 21:32:03');
INSERT INTO `t_module` VALUES (147, '服务创建查询', '', NULL, 34, NULL, 2, '301001', NULL, 1, '2020-02-20 21:32:39', '2020-02-20 21:34:40');
INSERT INTO `t_module` VALUES (149, '服务分配查询', '', NULL, 35, NULL, 2, '302001', NULL, 1, '2020-02-20 21:34:31', '2020-02-20 21:34:31');
INSERT INTO `t_module` VALUES (150, '服务处理查询', '', NULL, 36, NULL, 2, '303001', NULL, 1, '2020-02-20 21:34:56', '2020-02-20 21:34:56');
INSERT INTO `t_module` VALUES (151, '服务处理', '', NULL, 36, NULL, 2, '303002', NULL, 1, '2020-02-20 21:35:20', '2020-02-20 21:35:20');
INSERT INTO `t_module` VALUES (152, '服务反馈查询', '', NULL, 37, NULL, 2, '304001', NULL, 1, '2020-02-20 21:35:43', '2020-02-20 21:35:43');
INSERT INTO `t_module` VALUES (153, '服务反馈', '', NULL, 37, NULL, 2, '304002', NULL, 1, '2020-02-20 21:35:57', '2020-02-20 21:35:57');
INSERT INTO `t_module` VALUES (154, '测试管理', NULL, 'test/index', 1, NULL, 1, '1030', NULL, 1, '2020-11-13 02:57:06', '2020-11-13 02:57:06');
INSERT INTO `t_module` VALUES (155, '财务管理', NULL, NULL, -1, NULL, 0, '70', NULL, 1, '2020-11-13 02:58:52', '2020-11-13 02:58:52');
INSERT INTO `t_module` VALUES (156, '财务信息管理', NULL, 'aa/index', 155, NULL, 1, '7010', NULL, 1, '2020-11-13 03:00:11', '2020-11-13 03:00:11');
INSERT INTO `t_module` VALUES (157, '财务添加操作', NULL, NULL, 156, NULL, 2, '701001', NULL, 1, '2020-11-13 03:00:51', '2020-11-13 03:00:51');
INSERT INTO `t_module` VALUES (158, '测试管理1', '', NULL, -1, NULL, 0, '100', NULL, 1, '2020-11-13 03:32:21', '2020-11-13 04:26:26');
INSERT INTO `t_module` VALUES (159, '测试管理2', '', NULL, -1, NULL, 0, '90', NULL, 0, '2020-11-13 03:33:38', '2020-11-13 04:53:37');
INSERT INTO `t_module` VALUES (160, '测试子菜单一2', '', 'test001/index', 158, NULL, 1, '10010', NULL, 1, '2020-11-13 03:34:14', '2020-11-13 04:26:49');
INSERT INTO `t_module` VALUES (161, '测试子菜单一001', '', NULL, 160, NULL, 2, '1001001', NULL, 1, '2020-11-13 03:34:34', '2020-11-13 04:27:18');
INSERT INTO `t_module` VALUES (162, '测试子菜单一03', '', NULL, 160, NULL, 2, '801003', NULL, 1, '2020-11-13 03:34:47', '2020-11-13 04:05:44');
COMMIT;

-- ----------------------------
-- Table structure for t_order_details
-- ----------------------------
DROP TABLE IF EXISTS `t_order_details`;
CREATE TABLE `t_order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `goods_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_num` int DEFAULT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sum` float DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_order_details
-- ----------------------------
BEGIN;
INSERT INTO `t_order_details` VALUES (1, 5, '联想笔记本', 2, '台', 4900, 9800, 1, '2016-11-29 14:59:32', '2016-11-29 14:59:34');
INSERT INTO `t_order_details` VALUES (2, 5, '惠普音响', 4, '台', 200, 800, 1, '2017-03-01 11:32:34', '2017-03-01 11:32:36');
INSERT INTO `t_order_details` VALUES (3, 8, '罗技键盘', 10, '个', 90, 900, 1, '2017-03-01 11:32:39', '2017-03-01 11:32:41');
INSERT INTO `t_order_details` VALUES (4, 6, '艾利鼠标', 20, '个', 20, 400, 1, '2017-03-01 11:32:46', '2017-03-01 11:32:48');
INSERT INTO `t_order_details` VALUES (5, 7, '东芝U盘', 5, '个', 105, 525, 1, '2017-03-01 11:32:51', '2017-03-01 11:32:53');
INSERT INTO `t_order_details` VALUES (6, 7, '充电器', 1, '个', 30, 30, 1, '2017-03-01 11:32:55', '2017-03-01 11:32:57');
COMMIT;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL COMMENT '角色ID',
  `module_id` int DEFAULT NULL COMMENT '模块ID',
  `acl_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限值',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6696 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
BEGIN;
INSERT INTO `t_permission` VALUES (5980, 2, 1, '10', '2020-11-12 16:20:41', '2020-11-12 16:20:41');
INSERT INTO `t_permission` VALUES (5981, 2, 2, '1010', '2020-11-12 16:20:41', '2020-11-12 16:20:41');
INSERT INTO `t_permission` VALUES (5982, 2, 3, '101001', '2020-11-12 16:20:41', '2020-11-12 16:20:41');
INSERT INTO `t_permission` VALUES (5983, 2, 4, '101002', '2020-11-12 16:20:41', '2020-11-12 16:20:41');
INSERT INTO `t_permission` VALUES (5984, 2, 5, '101003', '2020-11-12 16:20:41', '2020-11-12 16:20:41');
INSERT INTO `t_permission` VALUES (5985, 2, 44, '101004', '2020-11-12 16:20:41', '2020-11-12 16:20:41');
INSERT INTO `t_permission` VALUES (5986, 2, 6, '1020', '2020-11-12 16:20:41', '2020-11-12 16:20:41');
INSERT INTO `t_permission` VALUES (5987, 2, 7, '102001', '2020-11-12 16:20:41', '2020-11-12 16:20:41');
INSERT INTO `t_permission` VALUES (6639, 1, 1, '10', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6640, 1, 2, '1010', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6641, 1, 3, '101001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6642, 1, 5, '101003', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6643, 1, 44, '101004', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6644, 1, 6, '1020', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6645, 1, 7, '102001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6646, 1, 8, '20', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6647, 1, 9, '2010', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6648, 1, 10, '201001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6649, 1, 11, '201002', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6650, 1, 19, '201003', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6651, 1, 12, '2020', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6652, 1, 13, '202001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6653, 1, 126, '123213', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6654, 1, 14, '40', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6655, 1, 15, '4010', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6656, 1, 39, '4020', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6657, 1, 40, '4030', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6658, 1, 109, '4060', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6659, 1, 16, '30', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6660, 1, 34, '3010', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6661, 1, 147, '301001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6662, 1, 35, '3020', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6663, 1, 149, '302001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6664, 1, 36, '3030', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6665, 1, 150, '303001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6666, 1, 151, '303002', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6667, 1, 37, '3040', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6668, 1, 152, '304001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6669, 1, 153, '304002', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6670, 1, 38, '3050', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6671, 1, 17, '50', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6672, 1, 102, '5010', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6673, 1, 103, '5020', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6674, 1, 18, '60', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6675, 1, 26, '6010', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6676, 1, 130, '601001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6677, 1, 131, '601002', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6678, 1, 132, '601003', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6679, 1, 133, '601004', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6680, 1, 27, '6020', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6681, 1, 134, '602001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6682, 1, 135, '602002', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6683, 1, 136, '602003', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6684, 1, 137, '602004', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6685, 1, 28, '6030', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6686, 1, 138, '603001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6687, 1, 139, '603002', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6688, 1, 140, '603003', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6689, 1, 141, '603004', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6690, 1, 142, '6040', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6691, 1, 143, '604001', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6692, 1, 144, '604002', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6693, 1, 145, '604003', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
INSERT INTO `t_permission` VALUES (6694, 1, 146, '604004', '2020-11-13 04:53:07', '2020-11-13 04:53:07');
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_valid` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO `t_role` VALUES (1, '系统管理员', '系统管理员', '2016-12-01 00:00:00', '2020-02-24 15:53:12', 1);
INSERT INTO `t_role` VALUES (2, '销售', '销售', '2016-12-01 00:00:00', '2020-02-24 15:53:18', 1);
INSERT INTO `t_role` VALUES (3, '客户经理', '客户经理', '2016-12-01 00:00:00', '2020-02-24 15:53:22', 1);
INSERT INTO `t_role` VALUES (14, '技术经理', '研发', '2017-06-30 14:50:24', '2020-02-24 15:53:25', 1);
INSERT INTO `t_role` VALUES (17, '人事', '人事', '2017-10-23 09:15:10', '2020-02-24 15:53:29', 1);
INSERT INTO `t_role` VALUES (18, '测试人员', NULL, '2020-11-10 14:34:00', '2020-11-10 14:34:00', 1);
INSERT INTO `t_role` VALUES (19, '测试经理', '测试经理', '2020-11-10 14:34:42', '2020-11-10 15:53:03', 0);
INSERT INTO `t_role` VALUES (20, '经理2号', '测试2', '2020-11-10 14:51:04', '2020-11-10 15:50:13', 0);
COMMIT;

-- ----------------------------
-- Table structure for t_sale_chance
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_chance`;
CREATE TABLE `t_sale_chance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chance_source` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机会来源',
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cgjl` int DEFAULT NULL,
  `overview` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `link_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `link_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `assign_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `assign_time` datetime DEFAULT NULL,
  `state` int DEFAULT NULL,
  `dev_result` int DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_sale_chance
-- ----------------------------
BEGIN;
INSERT INTO `t_sale_chance` VALUES (97, '官网', '百度', 80, '测试机会数据', '马小云', '15700008929', '测试机会数据', 'admin', '10', NULL, 1, 2, 1, '2019-11-05 10:28:41', '2020-03-19 20:16:43');
INSERT INTO `t_sale_chance` VALUES (98, '官网', '阿里云', 50, '测试机会数据', '马小云', '15710218920', '测试机会数据', 'admin', '42', '2029-02-23 16:24:38', 1, 2, 1, '2019-11-05 11:07:48', '2020-02-23 15:02:12');
INSERT INTO `t_sale_chance` VALUES (124, NULL, '百度', 70, NULL, '李彦宏', '18090261546', NULL, 'admin', NULL, NULL, 0, 0, 1, '2020-03-12 22:35:44', '2020-03-12 22:35:44');
INSERT INTO `t_sale_chance` VALUES (125, '同时介绍', '百度', NULL, '', '马小云', '18690251466', '', 'admin', '', NULL, 0, 0, 1, '2020-03-13 10:22:31', '2020-03-13 12:01:32');
INSERT INTO `t_sale_chance` VALUES (126, '官网', '百度', NULL, '', '马小云', '15710218920', '', 'admin', '', NULL, 0, 0, 1, '2020-03-13 10:22:58', '2020-03-13 10:52:47');
INSERT INTO `t_sale_chance` VALUES (127, '同事介绍', '百度', NULL, '', '马小云', '15710218929', '', 'admin', '10', '2020-03-13 14:57:06', 1, 2, 1, '2020-03-13 14:51:22', '2020-03-13 14:57:06');
INSERT INTO `t_sale_chance` VALUES (128, '同事介绍', '百度', NULL, '', '马小云', '15710218929', '', 'admin', '10', '2020-03-19 20:17:56', 1, 3, 1, '2020-03-19 20:17:56', '2020-03-19 20:17:56');
INSERT INTO `t_sale_chance` VALUES (129, NULL, '腾讯', NULL, NULL, '马小腾', '15898765432', NULL, NULL, NULL, NULL, 0, 0, 1, '2020-11-03 15:54:46', '2020-11-03 15:54:46');
INSERT INTO `t_sale_chance` VALUES (130, NULL, '阿里云', 80, NULL, '马小云', '15098765432', NULL, NULL, '10', '2020-11-03 15:56:03', 1, 1, 1, '2020-11-03 15:56:03', '2020-11-03 15:56:03');
INSERT INTO `t_sale_chance` VALUES (131, '广告', '腾讯', 80, '测试', '马小腾', '15876543212', 'Test', 'admin', '', NULL, 0, 0, 1, '2020-11-03 17:20:26', '2020-11-03 17:20:26');
INSERT INTO `t_sale_chance` VALUES (132, '官网', '腾讯', 70, '测试', '马小腾', '18876476567', '222', 'admin', '42', '2020-11-04 10:33:33', 1, 1, 1, '2020-11-03 19:54:07', '2020-11-04 10:33:33');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `true_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_valid` int DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (10, 'admin', '4QrcOUm6Wau+VuBX8g+IPg==', 'admin', '126@126.com', '13327792157', 1, '2016-12-01 12:05:49', '2020-11-19 18:06:31');
INSERT INTO `t_user` VALUES (42, 'scott', '4QrcOUm6Wau+VuBX8g+IPg==', 'scott', '234@126.com', '13327792157', 1, '2017-09-09 00:14:53', '2020-11-19 18:06:37');
INSERT INTO `t_user` VALUES (79, 'zhangsan', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'zhangsan@163.com', '18876545687', 0, '2020-11-05 17:15:50', '2020-11-05 17:15:50');
INSERT INTO `t_user` VALUES (80, 'lisi', '4QrcOUm6Wau+VuBX8g+IPg==', 'lisi', 'lisi@163.com', '18876767890', 0, '2020-11-05 17:16:35', '2020-11-05 17:16:35');
INSERT INTO `t_user` VALUES (81, 'test', '4QrcOUm6Wau+VuBX8g+IPg==', '王五', 'testa@163.com', '15856787654', 0, '2020-11-05 17:33:21', '2020-11-05 19:43:41');
INSERT INTO `t_user` VALUES (82, 'aabb', '4QrcOUm6Wau+VuBX8g+IPg==', 'ab', 'ab@163.com', '13876545678', 0, '2020-11-05 19:44:30', '2020-11-05 20:12:52');
INSERT INTO `t_user` VALUES (85, 'test001', '4QrcOUm6Wau+VuBX8g+IPg==', '测试一号', 'test001@163.com', '13787654345', 0, '2020-11-10 03:35:05', '2020-11-10 03:38:25');
INSERT INTO `t_user` VALUES (86, 'test002', '4QrcOUm6Wau+VuBX8g+IPg==', '测试二号', 'test002@163.com', '13876545678', 0, '2020-11-10 03:36:03', '2020-11-10 03:36:03');
COMMIT;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
BEGIN;
INSERT INTO `t_user_role` VALUES (194, 10, 1, '2020-11-19 18:06:31', '2020-11-19 18:06:31');
INSERT INTO `t_user_role` VALUES (195, 10, 3, '2020-11-19 18:06:31', '2020-11-19 18:06:31');
INSERT INTO `t_user_role` VALUES (196, 42, 2, '2020-11-19 18:06:36', '2020-11-19 18:06:36');
INSERT INTO `t_user_role` VALUES (197, 42, 3, '2020-11-19 18:06:36', '2020-11-19 18:06:36');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
