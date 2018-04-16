/*
Navicat MySQL Data Transfer

Source Server         : php
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : vedio

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-16 01:35:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES ('1', 'admin', 'Admin', 'ad019aa3431de09f2614fee9a99eba37', '953467', '/assets/img/avatar.png', 'admin@admin.com', '0', '1523773737', '1492186163', '1523773737', '2e383939-5381-45b9-adc1-b0316a90caf6', 'normal');
INSERT INTO `fa_admin` VALUES ('2', 'admin2', 'admin2', '9a28ce07ce875fbd14172a9ca5357d3c', '2dHDmj', '/assets/img/avatar.png', 'admin2@fastadmin.net', '0', '1505450906', '1492186163', '1505450906', 'df45fdd5-26f4-45ca-83b3-47e4491a315a', 'normal');
INSERT INTO `fa_admin` VALUES ('3', 'admin3', 'admin3', '1c11f945dfcd808a130a8c2a8753fe62', 'WOKJEn', '/assets/img/avatar.png', 'admin3@fastadmin.net', '0', '1501980868', '1492186201', '1501982377', '', 'normal');
INSERT INTO `fa_admin` VALUES ('4', 'admin22', 'admin22', '1c1a0aa0c3c56a8c1a908aab94519648', 'Aybcn5', '/assets/img/avatar.png', 'admin22@fastadmin.net', '0', '0', '1492186240', '1492186240', '', 'normal');
INSERT INTO `fa_admin` VALUES ('5', 'admin32', 'admin32', 'ade94d5d7a7033afa7d84ac3066d0a02', 'FvYK0u', '/assets/img/avatar.png', 'admin32@fastadmin.net', '0', '0', '1492186263', '1492186263', '', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES ('1', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"0de56967a57a2c7ea37322c9175a0646\",\"username\":\"admin\",\"captcha\":\"icth\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523773737');
INSERT INTO `fa_admin_log` VALUES ('2', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"0142135541fe180000019ae9b8cf86.jpg@1280w_1l_2o_100sh.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523775931');
INSERT INTO `fa_admin_log` VALUES ('3', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"0142135541fe180000019ae9b8cf86.jpg@1280w_1l_2o_100sh.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523775946');
INSERT INTO `fa_admin_log` VALUES ('4', '1', 'admin', '/admin/vedio/add?dialog=1', 'Vedio 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"dasd\",\"desc\":\"adasdasd\",\"tags\":\"adasd\",\"fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"wait_fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"url\":\"https:\\/\\/www.bilibili.com\\/video\\/av21998272\\/\",\"is_tj\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523777291');
INSERT INTO `fa_admin_log` VALUES ('5', '1', 'admin', '/admin/vedio/edit/ids/0?dialog=1', 'Vedio 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"dasd\",\"desc\":\"adasdasd\",\"tags\":\"adasd\",\"fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"wait_fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"url\":\"https:\\/\\/www.bilibili.com\\/video\\/av21998272\\/\",\"is_tj\":\"1\"},\"ids\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523777577');
INSERT INTO `fa_admin_log` VALUES ('6', '1', 'admin', '/admin/vedio/edit/ids/0?dialog=1', 'Vedio 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"dasd\",\"desc\":\"adasdasd\",\"tags\":\"adasd\",\"fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"wait_fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"url\":\"https:\\/\\/www.bilibili.com\\/video\\/av21998272\\/\",\"is_tj\":\"1\"},\"ids\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523777583');
INSERT INTO `fa_admin_log` VALUES ('7', '1', 'admin', '/admin/user/paylog/add?dialog=1', '会员管理 Paylog 添加', '{\"dialog\":\"1\",\"row\":{\"uid\":\"1\",\"pay_way\":\"\\u5fae\\u4fe1\",\"money\":\"100\",\"score\":\"2100\",\"created\":\"2018-04-15 16:31:11\",\"success\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523781114');
INSERT INTO `fa_admin_log` VALUES ('8', '1', 'admin', '/admin/user/paylog/add?dialog=1', '会员管理 Paylog 添加', '{\"dialog\":\"1\",\"row\":{\"uid\":\"1\",\"pay_way\":\"\\u652f\\u4ed8\\u5b9d\",\"money\":\"10\",\"score\":\"100\",\"created\":\"2018-03-29 16:34:41\",\"success\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523781291');
INSERT INTO `fa_admin_log` VALUES ('9', '1', 'admin', '/admin/user/paylog/edit/ids/3?dialog=1', '会员管理 Paylog 编辑', '{\"dialog\":\"1\",\"row\":{\"success\":\"1\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523781412');
INSERT INTO `fa_admin_log` VALUES ('10', '1', 'admin', '/admin/user/user/edit/ids/1?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"admin\",\"password\":\"\",\"email\":\"admin@163.com\",\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"level\":\"0\",\"gender\":\"0\",\"bio\":\"\",\"score\":\"0\",\"prevtime\":\"2018-01-17 14:28:12\",\"logintime\":\"2018-01-17 14:46:54\",\"loginip\":\"127.0.0.1\",\"jointime\":\"2017-04-06 14:50:18\",\"is_vip\":\"1\",\"start_line\":\"2007-06-21 08:00:00\",\"end_line\":\"2018-12-21 08:00:00\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523782074');
INSERT INTO `fa_admin_log` VALUES ('11', '1', 'admin', '/admin/user/user/edit/ids/1?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"admin\",\"password\":\"\",\"email\":\"admin@163.com\",\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"level\":\"0\",\"gender\":\"0\",\"bio\":\"\",\"score\":\"0\",\"prevtime\":\"2018-01-17 14:28:12\",\"logintime\":\"2018-01-17 14:46:54\",\"loginip\":\"127.0.0.1\",\"jointime\":\"2017-04-06 14:50:18\",\"is_vip\":\"1\",\"start_line\":\"2018-01-01 08:33:27\",\"end_line\":\"2018-12-01 08:33:38\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523782191');
INSERT INTO `fa_admin_log` VALUES ('12', '1', 'admin', '/admin/user/user/edit/ids/1?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"admin\",\"password\":\"\",\"email\":\"admin@163.com\",\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"level\":\"0\",\"gender\":\"0\",\"bio\":\"\",\"score\":\"0\",\"prevtime\":\"2018-01-17 14:28:12\",\"logintime\":\"2018-01-17 14:46:54\",\"loginip\":\"127.0.0.1\",\"jointime\":\"2017-04-06 14:50:18\",\"is_vip\":\"1\",\"start_line\":\"2108-01-01 08:33:38\",\"end_line\":\"2018-12-01 08:33:38\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523782230');
INSERT INTO `fa_admin_log` VALUES ('13', '1', 'admin', '/admin/user/user/edit/ids/1?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"admin\",\"password\":\"\",\"email\":\"admin@163.com\",\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"level\":\"0\",\"gender\":\"0\",\"bio\":\"\",\"score\":\"0\",\"prevtime\":\"2018-01-17 14:28:12\",\"logintime\":\"2018-01-17 14:46:54\",\"loginip\":\"127.0.0.1\",\"jointime\":\"2017-04-06 14:50:18\",\"is_vip\":\"1\",\"start_line\":\"2018-01-01 08:33:27\",\"end_line\":\"2018-12-01 08:33:38\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523782288');
INSERT INTO `fa_admin_log` VALUES ('14', '1', 'admin', '/admin/user/user/edit/ids/1?dialog=1', '会员管理 会员管理 编辑', '{\"dialog\":\"1\",\"row\":{\"group_id\":\"1\",\"username\":\"admin\",\"password\":\"\",\"email\":\"admin@163.com\",\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"level\":\"0\",\"gender\":\"0\",\"bio\":\"\",\"score\":\"0\",\"prevtime\":\"2018-01-17 14:28:12\",\"logintime\":\"2018-01-17 14:46:54\",\"loginip\":\"127.0.0.1\",\"jointime\":\"2017-04-06 14:50:18\",\"is_vip\":\"1\",\"end_line\":\"2018-12-01 08:00:01\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523782843');
INSERT INTO `fa_admin_log` VALUES ('15', '1', 'admin', '/admin/vedio/add?dialog=1', 'Vedio 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5b89\\u8fbe\\u5e02\\u591a\",\"desc\":\"\\u6492\\u5927\\u58f0\\u5730\",\"tags\":\"\\u963f\\u8fbe\\u8bf4\\u7684\",\"fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"wait_fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"url\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"is_tj\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523783525');
INSERT INTO `fa_admin_log` VALUES ('16', '1', 'admin', '/admin/vedio/add?dialog=1', 'Vedio 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u963f\\u8fbe\",\"desc\":\"\\u5927\\u58f0\\u9053\",\"tags\":\"\\u5927\\u58f0\\u9053\",\"fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"wait_fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"url\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"is_tj\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523783591');
INSERT INTO `fa_admin_log` VALUES ('17', '1', 'admin', '/admin/vedio/add?dialog=1', 'Vedio 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5927\\u58f0\\u9053\",\"desc\":\"\\u5927\\u58f0\\u9053\",\"tags\":\"\\u963f\\u6253\\u7b97\",\"fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"wait_fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"url\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"is_tj\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523783754');
INSERT INTO `fa_admin_log` VALUES ('18', '1', 'admin', '/admin/vedio/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tag\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tag\",\"keyField\":\"id\",\"searchField\":[\"tag\"],\"tag\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784201');
INSERT INTO `fa_admin_log` VALUES ('19', '1', 'admin', '/admin/vedio/selectpage', '', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"\\u5927\\u58f0\\u9053\",\"orderBy\":[[\"tag\",\"ASC\"]],\"showField\":\"tag\",\"keyField\":\"id\",\"keyValue\":\"\\u5927\\u58f0\\u9053\",\"searchField\":[\"tag\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784204');
INSERT INTO `fa_admin_log` VALUES ('20', '1', 'admin', '/admin/vedio/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tag\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tag\",\"keyField\":\"id\",\"searchField\":[\"tag\"],\"tag\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784209');
INSERT INTO `fa_admin_log` VALUES ('21', '1', 'admin', '/admin/vedio/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tag\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tag\",\"keyField\":\"id\",\"searchField\":[\"tag\"],\"tag\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784211');
INSERT INTO `fa_admin_log` VALUES ('22', '1', 'admin', '/admin/vedio/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tag\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tag\",\"keyField\":\"id\",\"searchField\":[\"tag\"],\"tag\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784236');
INSERT INTO `fa_admin_log` VALUES ('23', '1', 'admin', '/admin/vedio/selectpage', '', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"\\u5927\\u58f0\\u9053\",\"orderBy\":[[\"tags\",\"ASC\"]],\"showField\":\"tags\",\"keyField\":\"id\",\"keyValue\":\"\\u5927\\u58f0\\u9053\",\"searchField\":[\"tags\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784241');
INSERT INTO `fa_admin_log` VALUES ('24', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"tags\",\"searchValue\":\"\\u963f\\u6253\\u7b97\",\"orderBy\":[[\"tags\",\"ASC\"]],\"showField\":\"tags\",\"keyField\":\"tags\",\"keyValue\":\"\\u963f\\u6253\\u7b97\",\"searchField\":[\"tags\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784393');
INSERT INTO `fa_admin_log` VALUES ('25', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784407');
INSERT INTO `fa_admin_log` VALUES ('26', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784410');
INSERT INTO `fa_admin_log` VALUES ('27', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784413');
INSERT INTO `fa_admin_log` VALUES ('28', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\\u5927\\u58f0\\u9053\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\\u5927\\u58f0\\u9053\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784415');
INSERT INTO `fa_admin_log` VALUES ('29', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\\u5927\\u58f0\\u9053\\u6536\\u5230\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\\u5927\\u58f0\\u9053\\u6536\\u5230\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784416');
INSERT INTO `fa_admin_log` VALUES ('30', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784417');
INSERT INTO `fa_admin_log` VALUES ('31', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\\u5927\\u58f0\\u9053\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\\u5927\\u58f0\\u9053\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784419');
INSERT INTO `fa_admin_log` VALUES ('32', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\\u5927\\u58f0\\u9053\\u7b80\\u4ecb2\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\\u5927\\u58f0\\u9053\\u7b80\\u4ecb2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784421');
INSERT INTO `fa_admin_log` VALUES ('33', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784423');
INSERT INTO `fa_admin_log` VALUES ('34', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\\u5927\\u8428\\u8fbe\\u6240\\u591a\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\\u5927\\u8428\\u8fbe\\u6240\\u591a\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784638');
INSERT INTO `fa_admin_log` VALUES ('35', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\\u5927\\u8428\\u8fbe\\u6240\\u591a\\u963f\\u6253\\u7b97\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\\u5927\\u8428\\u8fbe\\u6240\\u591a\\u963f\\u6253\\u7b97\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784728');
INSERT INTO `fa_admin_log` VALUES ('36', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784732');
INSERT INTO `fa_admin_log` VALUES ('37', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784736');
INSERT INTO `fa_admin_log` VALUES ('38', '1', 'admin', '/admin/vedio/edit/ids/4?dialog=1', 'Vedio 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5927\\u58f0\\u9053\",\"desc\":\"\\u5927\\u58f0\\u9053\",\"tags\":\"\\u5927\\u8428\\u8fbe\\u6240\\u591a\\u963f\\u6253\\u7b97\",\"fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"wait_fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"url\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"is_tj\":\"1\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784738');
INSERT INTO `fa_admin_log` VALUES ('39', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"tags\",\"searchValue\":\"\\u5927\\u8428\\u8fbe\\u6240\\u591a\\u963f\\u6253\\u7b97\",\"orderBy\":[[\"tags\",\"ASC\"]],\"showField\":\"tags\",\"keyField\":\"tags\",\"keyValue\":\"\\u5927\\u8428\\u8fbe\\u6240\\u591a\\u963f\\u6253\\u7b97\",\"searchField\":[\"tags\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784742');
INSERT INTO `fa_admin_log` VALUES ('40', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784743');
INSERT INTO `fa_admin_log` VALUES ('41', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\\u4eba\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\\u4eba\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784745');
INSERT INTO `fa_admin_log` VALUES ('42', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784747');
INSERT INTO `fa_admin_log` VALUES ('43', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\\u4eba\\u59bb\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\\u4eba\\u59bb\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784748');
INSERT INTO `fa_admin_log` VALUES ('44', '1', 'admin', '/admin/vedio/edit/ids/4?dialog=1', 'Vedio 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5927\\u58f0\\u9053\",\"desc\":\"\\u5927\\u58f0\\u9053\",\"tags\":\"\\u4eba\\u59bb\",\"fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"wait_fengmian\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"url\":\"\\/uploads\\/20180415\\/9805baf863101d903243362ff225a206.png\",\"is_tj\":\"1\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784751');
INSERT INTO `fa_admin_log` VALUES ('45', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"tags\",\"searchValue\":\"\\u5927\\u58f0\\u9053\",\"orderBy\":[[\"tags\",\"ASC\"]],\"showField\":\"tags\",\"keyField\":\"tags\",\"keyValue\":\"\\u5927\\u58f0\\u9053\",\"searchField\":[\"tags\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784755');
INSERT INTO `fa_admin_log` VALUES ('46', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523784757');
INSERT INTO `fa_admin_log` VALUES ('47', '1', 'admin', '/admin/vedio/index', 'Vedio 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"tags\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"tags\",\"keyField\":\"tags\",\"searchField\":[\"tags\"],\"tags\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523810206');
INSERT INTO `fa_admin_log` VALUES ('48', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"03cKvVs8riJUhPrDty4y_thumb_1498548884.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523810248');
INSERT INTO `fa_admin_log` VALUES ('49', '1', 'admin', '/admin/vedio/add?dialog=1', 'Vedio 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\",\"desc\":\"\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\\u6d4b\\u8bd5\",\"tags\":\"\\u4eba\\u59bb\",\"fengmian\":\"\\/uploads\\/20180416\\/659c5e234d3213b30c43ca92be971d7b.jpg\",\"wait_fengmian\":\"\\/uploads\\/20180416\\/659c5e234d3213b30c43ca92be971d7b.jpg\",\"url\":\"\",\"is_tj\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1523810270');

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES ('1', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES ('2', '/uploads/20180415/9805baf863101d903243362ff225a206.png', '1280', '720', 'png', '0', '653076', 'image/png', '', '1523775931', '1523775931', '1523775931', 'local', '65561af070dca4c5a6acc00307361fea887e2f3d');
INSERT INTO `fa_attachment` VALUES ('3', '/uploads/20180415/9805baf863101d903243362ff225a206.png', '1280', '720', 'png', '0', '653076', 'image/png', '', '1523775945', '1523775945', '1523775945', 'local', '65561af070dca4c5a6acc00307361fea887e2f3d');
INSERT INTO `fa_attachment` VALUES ('4', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '960', '540', 'jpg', '0', '169330', 'image/jpeg', '', '1523810248', '1523810248', '1523810247', 'local', '255b576d53f150b485d354d77c72e390e8163292');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `fa_auth_group` VALUES ('2', '1', 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', '1490883540', '1505465692', 'normal');
INSERT INTO `fa_auth_group` VALUES ('3', '2', 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `fa_auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `fa_auth_group` VALUES ('5', '2', 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES ('1', '1');
INSERT INTO `fa_auth_group_access` VALUES ('2', '2');
INSERT INTO `fa_auth_group_access` VALUES ('3', '3');
INSERT INTO `fa_auth_group_access` VALUES ('4', '5');
INSERT INTO `fa_auth_group_access` VALUES ('5', '5');

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES ('1', 'file', '0', 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', '1', '1497429920', '1497429920', '143', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('2', 'file', '0', 'general', 'General', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', 'fa fa-list', '', 'Category tips', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('4', 'file', '0', 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', '1', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('55', 'file', '4', 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('56', 'file', '4', 'addon/add', 'Add', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('58', 'file', '4', 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('59', 'file', '4', 'addon/local', 'Local install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('60', 'file', '4', 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('61', 'file', '4', 'addon/install', 'Install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('62', 'file', '4', 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('63', 'file', '4', 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('66', 'file', '0', 'user', 'User', 'fa fa-list', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('67', 'file', '66', 'user/user', 'User', 'fa fa-user', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('68', 'file', '67', 'user/user/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('69', 'file', '67', 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('70', 'file', '67', 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('71', 'file', '67', 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('72', 'file', '67', 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('73', 'file', '66', 'user/group', 'User group', 'fa fa-users', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('74', 'file', '73', 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('75', 'file', '73', 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('76', 'file', '73', 'user/group/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('77', 'file', '73', 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('78', 'file', '73', 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('79', 'file', '66', 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('80', 'file', '79', 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('81', 'file', '79', 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('82', 'file', '79', 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('83', 'file', '79', 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('84', 'file', '79', 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('85', 'file', '0', 'vedio', 'Vedio', 'fa fa-circle-o', '', '', '1', '1523775395', '1523775395', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('86', 'file', '85', 'vedio/index', '查看', 'fa fa-circle-o', '', '', '0', '1523775395', '1523775395', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('87', 'file', '85', 'vedio/add', '添加', 'fa fa-circle-o', '', '', '0', '1523775395', '1523775395', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('88', 'file', '85', 'vedio/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1523775395', '1523775395', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('89', 'file', '85', 'vedio/del', '删除', 'fa fa-circle-o', '', '', '0', '1523775395', '1523775395', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('90', 'file', '85', 'vedio/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1523775395', '1523775395', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('91', 'file', '66', 'user/paylog', 'Paylog', 'fa fa-circle-o', '', '', '1', '1523779249', '1523779249', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('92', 'file', '91', 'user/paylog/index', '查看', 'fa fa-circle-o', '', '', '0', '1523779249', '1523779249', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('93', 'file', '91', 'user/paylog/add', '添加', 'fa fa-circle-o', '', '', '0', '1523779249', '1523779249', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('94', 'file', '91', 'user/paylog/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1523779249', '1523779249', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('95', 'file', '91', 'user/paylog/del', '删除', 'fa fa-circle-o', '', '', '0', '1523779249', '1523779249', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('96', 'file', '91', 'user/paylog/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1523779249', '1523779249', '0', 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `fa_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `fa_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `fa_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `fa_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `fa_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `fa_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `fa_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `fa_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `fa_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `fa_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `fa_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `fa_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `fa_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(20) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of fa_ems
-- ----------------------------

-- ----------------------------
-- Table structure for fa_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_pay_log`;
CREATE TABLE `fa_pay_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `pay_way` varchar(255) DEFAULT NULL COMMENT '支付方式',
  `money` int(255) DEFAULT NULL COMMENT '支付金额',
  `score` int(255) DEFAULT NULL COMMENT '换取积分',
  `created` int(11) DEFAULT NULL COMMENT '充值时间',
  `success` tinyint(4) DEFAULT NULL COMMENT '支付成功',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_pay_log
-- ----------------------------
INSERT INTO `fa_pay_log` VALUES ('1', '1', '100', '100', '100', '1522312481', '1');
INSERT INTO `fa_pay_log` VALUES ('2', '1', '微信', '100', '2100', '1522312481', '0');
INSERT INTO `fa_pay_log` VALUES ('3', '1', '支付宝', '10', '100', '1522312481', '1');

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';

-- ----------------------------
-- Records of fa_sms
-- ----------------------------

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加入时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  `is_vip` int(11) DEFAULT NULL COMMENT 'vip',
  `start_line` int(11) DEFAULT NULL COMMENT 'vip开始时间',
  `end_line` int(11) DEFAULT NULL COMMENT 'vip结束时间',
  `collection` text COMMENT '收藏',
  `history` text COMMENT '历史',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES ('1', '1', 'admin', 'admin', '923e61552a03cfaef9ebe716d910054f', 'VRnzr4', 'admin@163.com', '13888888888', '/assets/img/avatar.png', '0', '0', '2017-04-15', '', '100', '2', '2', '1523797743', '1523810698', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1523810698', '', 'normal', '', '1', '1514766807', '1543622401', '', null);

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员组表';

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='会员规则表';

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `fa_user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `fa_user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `fa_user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `fa_user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `fa_user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `fa_user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `fa_user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `fa_user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `fa_user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `fa_user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `fa_user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分变动表';

-- ----------------------------
-- Records of fa_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员Token表';

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------
INSERT INTO `fa_user_token` VALUES ('c2d14354bb681b761d72bc3efe5c2d97f4cf72f9', '1', '1523810698', '1526402698');

-- ----------------------------
-- Table structure for fa_vedio
-- ----------------------------
DROP TABLE IF EXISTS `fa_vedio`;
CREATE TABLE `fa_vedio` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '标题',
  `desc` varchar(255) DEFAULT NULL COMMENT '简介',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `fengmian` varchar(255) DEFAULT NULL COMMENT '封面',
  `wait_fengmian` varchar(255) DEFAULT NULL COMMENT '等待的的封面',
  `url` varchar(255) DEFAULT NULL COMMENT '视屏地址',
  `is_tj` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `created` int(11) DEFAULT NULL COMMENT '上传时间',
  `uid` int(11) DEFAULT NULL COMMENT '上传人id',
  `time_long` varchar(60) NOT NULL DEFAULT '1:20:40',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=517 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_vedio
-- ----------------------------
INSERT INTO `fa_vedio` VALUES ('8', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('7', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('6', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('5', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('9', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('10', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('11', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('12', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('13', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('14', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('15', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('16', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('17', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('18', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('19', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('20', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('21', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('22', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('23', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('24', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('25', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('26', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('27', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('28', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('29', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('30', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('31', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('32', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('33', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('34', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('35', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('36', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('37', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('38', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('39', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('40', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('41', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('42', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('43', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('44', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('45', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('46', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('47', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('48', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('49', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('50', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('51', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('52', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('53', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('54', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('55', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('56', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('57', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('58', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('59', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('60', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('61', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('62', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('63', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('64', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('65', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('66', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('67', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('68', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('69', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('70', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('71', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('72', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('73', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('74', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('75', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('76', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('77', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('78', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('79', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('80', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('81', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('82', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('83', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('84', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('85', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('86', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('87', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('88', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('89', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('90', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('91', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('92', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('93', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('94', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('95', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('96', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('97', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('98', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('99', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('100', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('101', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('102', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('103', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('104', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('105', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('106', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('107', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('108', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('109', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('110', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('111', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('112', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('113', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('114', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('115', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('116', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('117', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('118', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('119', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('120', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('121', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('122', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('123', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('124', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('125', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('126', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('127', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('128', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('129', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('130', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('131', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('132', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('133', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('134', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('135', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('136', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('137', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('138', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('139', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('140', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('141', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('142', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('143', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('144', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('145', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('146', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('147', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('148', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('149', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('150', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('151', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('152', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('153', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('154', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('155', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('156', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('157', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('158', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('159', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('160', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('161', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('162', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('163', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('164', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('165', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('166', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('167', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('168', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('169', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('170', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('171', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('172', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('173', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('174', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('175', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('176', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('177', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('178', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('179', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('180', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('181', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('182', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('183', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('184', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('185', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('186', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('187', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('188', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('189', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('190', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('191', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('192', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('193', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('194', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('195', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('196', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('197', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('198', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('199', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('200', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('201', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('202', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('203', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('204', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('205', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('206', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('207', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('208', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('209', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('210', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('211', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('212', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('213', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('214', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('215', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('216', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('217', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('218', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('219', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('220', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('221', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('222', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('223', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('224', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('225', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('226', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('227', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('228', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('229', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('230', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('231', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('232', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('233', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('234', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('235', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('236', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('237', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('238', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('239', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('240', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('241', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('242', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('243', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('244', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('245', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('246', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('247', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('248', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('249', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('250', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('251', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('252', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('253', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('254', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('255', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('256', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('257', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('258', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('259', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('260', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('261', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('262', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('263', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('264', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('265', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('266', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('267', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('268', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('269', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('270', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('271', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('272', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('273', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('274', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('275', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('276', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('277', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('278', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('279', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('280', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('281', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('282', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('283', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('284', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('285', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('286', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('287', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('288', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('289', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('290', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('291', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('292', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('293', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('294', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('295', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('296', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('297', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('298', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('299', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('300', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('301', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('302', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('303', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('304', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('305', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('306', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('307', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('308', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('309', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('310', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('311', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('312', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('313', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('314', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('315', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('316', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('317', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('318', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('319', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('320', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('321', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('322', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('323', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('324', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('325', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('326', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('327', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('328', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('329', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('330', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('331', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('332', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('333', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('334', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('335', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('336', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('337', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('338', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('339', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('340', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('341', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('342', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('343', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('344', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('345', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('346', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('347', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('348', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('349', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('350', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('351', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('352', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('353', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('354', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('355', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('356', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('357', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('358', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('359', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('360', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('361', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('362', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('363', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('364', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('365', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('366', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('367', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('368', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('369', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('370', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('371', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('372', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('373', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('374', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('375', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('376', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('377', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('378', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('379', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('380', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('381', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('382', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('383', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('384', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('385', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('386', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('387', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('388', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('389', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('390', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('391', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('392', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('393', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('394', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('395', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('396', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('397', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('398', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('399', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('400', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('401', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('402', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('403', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('404', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('405', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('406', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('407', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('408', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('409', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('410', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('411', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('412', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('413', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('414', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('415', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('416', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('417', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('418', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('419', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('420', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('421', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('422', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('423', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('424', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('425', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('426', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('427', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('428', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('429', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('430', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('431', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('432', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('433', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('434', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('435', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('436', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('437', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('438', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('439', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('440', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('441', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('442', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('443', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('444', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('445', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('446', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('447', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('448', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('449', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('450', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('451', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('452', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('453', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('454', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('455', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('456', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('457', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('458', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('459', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('460', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('461', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('462', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('463', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('464', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('465', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('466', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('467', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('468', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('469', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('470', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('471', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('472', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('473', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('474', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('475', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('476', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('477', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('478', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('479', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('480', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('481', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('482', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('483', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('484', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('485', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('486', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('487', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('488', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('489', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('490', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('491', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('492', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('493', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('494', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('495', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('496', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('497', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('498', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('499', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('500', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('501', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('502', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('503', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('504', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('505', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('506', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('507', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('508', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('509', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('510', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('511', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('512', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('513', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('514', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('515', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');
INSERT INTO `fa_vedio` VALUES ('516', '测试测试测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试', '人妻', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '/uploads/20180416/659c5e234d3213b30c43ca92be971d7b.jpg', '', '1', '1523810270', '1', '1:20:40');

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='版本表';

-- ----------------------------
-- Records of fa_version
-- ----------------------------
INSERT INTO `fa_version` VALUES ('1', '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', '1', '1520425318', '0', '0', 'normal');
