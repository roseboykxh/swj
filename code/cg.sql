/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.155
Source Server Version : 50553
Source Host           : 192.168.1.155:3306
Source Database       : cg

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-09-06 15:55:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zc_admin`
-- ----------------------------
DROP TABLE IF EXISTS `zc_admin`;
CREATE TABLE `zc_admin` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of zc_admin
-- ----------------------------
INSERT INTO `zc_admin` VALUES ('1', 'admin', 'Admin', '10aac192395434048477a9897d1f18fc', '38045e', '/assets/img/avatar.png', 'admin@admin.com', '0', '1536218554', '1492186163', '1536218554', '495acfb9-fd51-4ead-a538-19765b5208a9', 'normal');
INSERT INTO `zc_admin` VALUES ('6', 'hrzc1688', 'hrzc1688', '76299a177a005b0e72f7c01d6fe37530', 'k9hfQw', '/assets/img/avatar.png', '67513455@qq.com', '3', '1535504706', '1534927699', '1536031148', '', 'normal');

-- ----------------------------
-- Table structure for `zc_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `zc_admin_log`;
CREATE TABLE `zc_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- ----------------------------
-- Records of zc_admin_log
-- ----------------------------
INSERT INTO `zc_admin_log` VALUES ('1', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"8324fea290f9bccd3aca0db5e186351e\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534898762');
INSERT INTO `zc_admin_log` VALUES ('2', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"summernote\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.3\",\"faversion\":\"1.0.0.20180806_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534899325');
INSERT INTO `zc_admin_log` VALUES ('3', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534899325');
INSERT INTO `zc_admin_log` VALUES ('4', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"alisms\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.2\",\"faversion\":\"1.0.0.20180806_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534899374');
INSERT INTO `zc_admin_log` VALUES ('5', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534899374');
INSERT INTO `zc_admin_log` VALUES ('6', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"8646a571395f28e6d264932301a2a2fe\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534899580');
INSERT INTO `zc_admin_log` VALUES ('7', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"wechat\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.2\",\"faversion\":\"1.0.0.20180806_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534899640');
INSERT INTO `zc_admin_log` VALUES ('8', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534899640');
INSERT INTO `zc_admin_log` VALUES ('9', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"thumb\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.1\",\"faversion\":\"1.0.0.20180806_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900043');
INSERT INTO `zc_admin_log` VALUES ('10', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900044');
INSERT INTO `zc_admin_log` VALUES ('11', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"thumb\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900090');
INSERT INTO `zc_admin_log` VALUES ('12', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900092');
INSERT INTO `zc_admin_log` VALUES ('13', '1', 'admin', '/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"thumb\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900104');
INSERT INTO `zc_admin_log` VALUES ('14', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900105');
INSERT INTO `zc_admin_log` VALUES ('15', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"crontab\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.1\",\"faversion\":\"1.0.0.20180806_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900128');
INSERT INTO `zc_admin_log` VALUES ('16', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900129');
INSERT INTO `zc_admin_log` VALUES ('17', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"database\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.2\",\"faversion\":\"1.0.0.20180806_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900141');
INSERT INTO `zc_admin_log` VALUES ('18', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900142');
INSERT INTO `zc_admin_log` VALUES ('19', '1', 'admin', '/admin/general.database/query', '常规管理 数据库管理 查询', '{\"do_action\":\"viewdata\",\"tablename\":[\"zc_admin\"],\"submit2\":\"\\u67e5\\u770b\\u8868\\u6570\\u636e\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900213');
INSERT INTO `zc_admin_log` VALUES ('20', '1', 'admin', '/admin/general.database/query', '常规管理 数据库管理 查询', '{\"do_action\":\"viewdata\",\"tablename\":[\"zc_admin_log\"],\"submit2\":\"\\u67e5\\u770b\\u8868\\u6570\\u636e\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900228');
INSERT INTO `zc_admin_log` VALUES ('21', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900257');
INSERT INTO `zc_admin_log` VALUES ('22', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900560');
INSERT INTO `zc_admin_log` VALUES ('23', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900565');
INSERT INTO `zc_admin_log` VALUES ('24', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900597');
INSERT INTO `zc_admin_log` VALUES ('25', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900601');
INSERT INTO `zc_admin_log` VALUES ('26', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * 1 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900651');
INSERT INTO `zc_admin_log` VALUES ('27', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * 1 * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900651');
INSERT INTO `zc_admin_log` VALUES ('28', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"0 0 1 0 0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900680');
INSERT INTO `zc_admin_log` VALUES ('29', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 0 1 0 0\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900680');
INSERT INTO `zc_admin_log` VALUES ('30', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 0 1 0 0\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900685');
INSERT INTO `zc_admin_log` VALUES ('31', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 0 1 0 0\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900691');
INSERT INTO `zc_admin_log` VALUES ('32', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * 1 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900703');
INSERT INTO `zc_admin_log` VALUES ('33', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * 1 * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900703');
INSERT INTO `zc_admin_log` VALUES ('34', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"0 0 1 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900722');
INSERT INTO `zc_admin_log` VALUES ('35', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 0 1 * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900722');
INSERT INTO `zc_admin_log` VALUES ('36', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"0 24 * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900757');
INSERT INTO `zc_admin_log` VALUES ('37', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 24 * * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900757');
INSERT INTO `zc_admin_log` VALUES ('38', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 24 * * *\",\"days\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900760');
INSERT INTO `zc_admin_log` VALUES ('39', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 24 * * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900761');
INSERT INTO `zc_admin_log` VALUES ('40', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"0 0 * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900768');
INSERT INTO `zc_admin_log` VALUES ('41', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 0 * * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900768');
INSERT INTO `zc_admin_log` VALUES ('42', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"0 0 3 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900812');
INSERT INTO `zc_admin_log` VALUES ('43', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 0 3 * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900812');
INSERT INTO `zc_admin_log` VALUES ('44', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"0 3 3 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900826');
INSERT INTO `zc_admin_log` VALUES ('45', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 3 3 * *\",\"days\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900826');
INSERT INTO `zc_admin_log` VALUES ('46', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 3 3 * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900832');
INSERT INTO `zc_admin_log` VALUES ('47', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 3 3 * *\",\"days\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900834');
INSERT INTO `zc_admin_log` VALUES ('48', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"0 3 3 * 1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900872');
INSERT INTO `zc_admin_log` VALUES ('49', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 3 3 * 1\",\"days\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900872');
INSERT INTO `zc_admin_log` VALUES ('50', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * * * 1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900885');
INSERT INTO `zc_admin_log` VALUES ('51', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * 1\",\"days\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900885');
INSERT INTO `zc_admin_log` VALUES ('52', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * * * 13\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900942');
INSERT INTO `zc_admin_log` VALUES ('53', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * * * 4\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900949');
INSERT INTO `zc_admin_log` VALUES ('54', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * 4\",\"days\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900949');
INSERT INTO `zc_admin_log` VALUES ('55', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900966');
INSERT INTO `zc_admin_log` VALUES ('56', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900966');
INSERT INTO `zc_admin_log` VALUES ('57', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * * 1 *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900979');
INSERT INTO `zc_admin_log` VALUES ('58', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * 1 *\",\"days\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534900979');
INSERT INTO `zc_admin_log` VALUES ('59', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901006');
INSERT INTO `zc_admin_log` VALUES ('60', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901022');
INSERT INTO `zc_admin_log` VALUES ('61', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901035');
INSERT INTO `zc_admin_log` VALUES ('62', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901051');
INSERT INTO `zc_admin_log` VALUES ('63', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * * * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901078');
INSERT INTO `zc_admin_log` VALUES ('64', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901078');
INSERT INTO `zc_admin_log` VALUES ('65', '1', 'admin', '/admin/general/crontab/edit/ids/2?dialog=1', '常规管理 定时任务 编辑 ', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u67e5\\u8be2\\u4e00\\u6761SQL\",\"type\":\"sql\",\"content\":\"SELECT 1;\",\"schedule\":\"* * * * *\",\"maximums\":\"0\",\"begintime\":\"2017-01-01 00:00:00\",\"endtime\":\"2018-06-01 00:00:00\",\"weigh\":\"2\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901079');
INSERT INTO `zc_admin_log` VALUES ('66', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901082');
INSERT INTO `zc_admin_log` VALUES ('67', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"fa5d8f7efcd3099875a174e8dd12ecb4\",\"username\":\"admin\",\"captcha\":\"mrd7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534901789');
INSERT INTO `zc_admin_log` VALUES ('68', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"name\":\"\\u534e\\u745e\\u4f17\\u7b79\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{\\\"backend\\\":\\\"zh-cn\\\",\\\"frontend\\\":\\\"zh-cn\\\"}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534902210');
INSERT INTO `zc_admin_log` VALUES ('69', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"system\",\"title\":\"\\u7cfb\\u7edf\",\"icon\":\"fa fa-desktop\",\"weigh\":\"10\",\"condition\":\"system\",\"remark\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926372');
INSERT INTO `zc_admin_log` VALUES ('70', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926374');
INSERT INTO `zc_admin_log` VALUES ('71', '1', 'admin', '/admin/auth/rule/edit/ids/123?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"system\",\"title\":\"\\u7cfb\\u7edf\",\"icon\":\"fa fa-desktop\",\"weigh\":\"300\",\"condition\":\"system\",\"remark\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"status\":\"normal\"},\"ids\":\"123\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926396');
INSERT INTO `zc_admin_log` VALUES ('72', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926396');
INSERT INTO `zc_admin_log` VALUES ('73', '1', 'admin', '/admin/auth/rule/edit/ids/1?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dashboard\",\"title\":\"\\u63a7\\u5236\\u53f0\",\"icon\":\"fa fa-dashboard\",\"weigh\":\"500\",\"condition\":\"\",\"remark\":\"Dashboard tips\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926405');
INSERT INTO `zc_admin_log` VALUES ('74', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926406');
INSERT INTO `zc_admin_log` VALUES ('75', '1', 'admin', '/admin/auth/rule/edit/ids/2?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"123\",\"name\":\"general\",\"title\":\"\\u5e38\\u89c4\\u7ba1\\u7406\",\"icon\":\"fa fa-cogs\",\"weigh\":\"137\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926504');
INSERT INTO `zc_admin_log` VALUES ('76', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926505');
INSERT INTO `zc_admin_log` VALUES ('77', '1', 'admin', '/admin/auth/rule/edit/ids/5?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"123\",\"name\":\"auth\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa fa-group\",\"weigh\":\"99\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926621');
INSERT INTO `zc_admin_log` VALUES ('78', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926622');
INSERT INTO `zc_admin_log` VALUES ('79', '1', 'admin', '/admin/auth/rule/edit/ids/4?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"123\",\"name\":\"addon\",\"title\":\"\\u63d2\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa fa-rocket\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"Addon tips\",\"status\":\"normal\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926699');
INSERT INTO `zc_admin_log` VALUES ('80', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926701');
INSERT INTO `zc_admin_log` VALUES ('81', '1', 'admin', '/admin/auth/rule/edit/ids/85?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"123\",\"name\":\"wechat\",\"title\":\"\\u5fae\\u4fe1\\u7ba1\\u7406\",\"icon\":\"fa fa-wechat\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"85\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926886');
INSERT INTO `zc_admin_log` VALUES ('82', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534926887');
INSERT INTO `zc_admin_log` VALUES ('83', '1', 'admin', '/admin/auth/rule/multi/ids/79', '', '{\"action\":\"\",\"ids\":\"79\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927045');
INSERT INTO `zc_admin_log` VALUES ('84', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927045');
INSERT INTO `zc_admin_log` VALUES ('85', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"user\",\"title\":\"\\u4f1a\\u5458\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"100\",\"condition\":\"user\",\"remark\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927093');
INSERT INTO `zc_admin_log` VALUES ('86', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"alluser\",\"title\":\"\\u4f1a\\u5458\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"100\",\"condition\":\"alluser\",\"remark\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927115');
INSERT INTO `zc_admin_log` VALUES ('87', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927116');
INSERT INTO `zc_admin_log` VALUES ('88', '1', 'admin', '/admin/auth/rule/edit/ids/124?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"124\",\"name\":\"alluser\",\"title\":\"\\u4f1a\\u5458\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"100\",\"condition\":\"alluser\",\"remark\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"124\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927140');
INSERT INTO `zc_admin_log` VALUES ('89', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927141');
INSERT INTO `zc_admin_log` VALUES ('90', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"alluser\",\"title\":\"\\u4f1a\\u5458\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"alluser\",\"remark\":\"alluser\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927295');
INSERT INTO `zc_admin_log` VALUES ('91', '1', 'admin', '/admin/auth/rule/edit/ids/124?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"alluser\",\"title\":\"\\u4f1a\\u5458\",\"icon\":\"fa fa-group\",\"weigh\":\"100\",\"condition\":\"alluser\",\"remark\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"124\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927409');
INSERT INTO `zc_admin_log` VALUES ('92', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927413');
INSERT INTO `zc_admin_log` VALUES ('93', '1', 'admin', '/admin/auth/rule/edit/ids/66?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"124\",\"name\":\"user\",\"title\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"66\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927466');
INSERT INTO `zc_admin_log` VALUES ('94', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927467');
INSERT INTO `zc_admin_log` VALUES ('95', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"yunwei\",\"title\":\"\\u8fd0\\u7ef4\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"yunwei\",\"remark\":\"yunwei\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927516');
INSERT INTO `zc_admin_log` VALUES ('96', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927516');
INSERT INTO `zc_admin_log` VALUES ('97', '1', 'admin', '/admin/auth/rule/edit/ids/3?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"125\",\"name\":\"category\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"119\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"normal\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927535');
INSERT INTO `zc_admin_log` VALUES ('98', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927535');
INSERT INTO `zc_admin_log` VALUES ('99', '1', 'admin', '/admin/auth/rule/edit/ids/125?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"yunwei\",\"title\":\"\\u8fd0\\u7ef4\",\"icon\":\"fa fa-list\",\"weigh\":\"150\",\"condition\":\"yunwei\",\"remark\":\"yunwei\",\"status\":\"normal\"},\"ids\":\"125\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927558');
INSERT INTO `zc_admin_log` VALUES ('100', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927559');
INSERT INTO `zc_admin_log` VALUES ('101', '1', 'admin', '/admin/auth/group/del/ids/4', '系统 权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927588');
INSERT INTO `zc_admin_log` VALUES ('102', '1', 'admin', '/admin/auth/group/del/ids/5', '系统 权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"5\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927591');
INSERT INTO `zc_admin_log` VALUES ('103', '1', 'admin', '/admin/auth/group/del/ids/3', '系统 权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927598');
INSERT INTO `zc_admin_log` VALUES ('104', '1', 'admin', '/admin/auth/group/del/ids/5', '系统 权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"5\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927600');
INSERT INTO `zc_admin_log` VALUES ('105', '1', 'admin', '/admin/auth/admin/del/ids/5,4,3,2', '系统 权限管理 管理员管理 删除', '{\"action\":\"del\",\"ids\":\"5,4,3,2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927618');
INSERT INTO `zc_admin_log` VALUES ('106', '1', 'admin', '/admin/auth/group/del/ids/2,3,5', '系统 权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"2,3,5\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927630');
INSERT INTO `zc_admin_log` VALUES ('107', '1', 'admin', '/admin/auth/group/del/ids/2', '系统 权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927633');
INSERT INTO `zc_admin_log` VALUES ('108', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927636');
INSERT INTO `zc_admin_log` VALUES ('109', '1', 'admin', '/admin/auth/group/add?dialog=1', '系统 权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,13,14,16,15,17,123,2,6,18,19,20,21,22,7,23,24,25,26,27,28,8,29,30,31,32,33,34,112,113,114,115,116,117,118,119,120,121,122,5,9,40,41,42,43,10,44,45,46,11,47,48,49,50,12,51,52,53,54,4,55,56,57,58,59,60,61,62,63,64,65,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,125,3,35,36,37,38,39,124,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84\",\"pid\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927653');
INSERT INTO `zc_admin_log` VALUES ('110', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927656');
INSERT INTO `zc_admin_log` VALUES ('111', '1', 'admin', '/admin/auth/admin/add?dialog=1', '系统 权限管理 管理员管理 添加', '{\"dialog\":\"1\",\"group\":[\"6\"],\"row\":{\"username\":\"hrzc1688\",\"email\":\"67513455@qq.com\",\"nickname\":\"hrzc1688\",\"password\":\"123456\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927699');
INSERT INTO `zc_admin_log` VALUES ('112', '6', 'hrzc1688', '/admin/index/login', '登录', '{\"__token__\":\"4c327212d6cadb6ee88de772f714c798\",\"username\":\"hrzc1688\",\"captcha\":\"zdpw\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927727');
INSERT INTO `zc_admin_log` VALUES ('113', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"d5957c5b814ea6cfcf979c5eeb62ff4d\",\"username\":\"admin\",\"captcha\":\"mwhu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927907');
INSERT INTO `zc_admin_log` VALUES ('114', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927926');
INSERT INTO `zc_admin_log` VALUES ('115', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534927974');
INSERT INTO `zc_admin_log` VALUES ('116', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '系统 权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,113,114,115,116,117,119,120,121,122,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,35,36,37,38,39,68,69,70,71,72,74,75,76,77,78,80,81,82,83,84,1,6,7,112,118,9,10,11,12,5,3,125,67,73,79,66,124,2,123\",\"pid\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534928001');
INSERT INTO `zc_admin_log` VALUES ('117', '0', 'Unknown', '/admin/index/login', '登录', '{\"__token__\":\"027dc6f51d1ea9d14dedc46bb849d6de\",\"username\":\"hezc1688\",\"captcha\":\"kapa\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534928040');
INSERT INTO `zc_admin_log` VALUES ('118', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"d7f1f6dc3ce91f61117f390827060d51\",\"username\":\"hrzc1688\",\"captcha\":\"kapa\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534928046');
INSERT INTO `zc_admin_log` VALUES ('119', '6', 'hrzc1688', '/admin/index/login', '登录', '{\"__token__\":\"e0789b1bae322a5c484122f4bfa64efc\",\"username\":\"hrzc1688\",\"captcha\":\"pmc3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534928060');
INSERT INTO `zc_admin_log` VALUES ('120', '6', 'hrzc1688', '/admin/auth/group/roletree', '', '{\"pid\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1534928630');
INSERT INTO `zc_admin_log` VALUES ('121', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"36232fd318adb29970853be46332199e\",\"username\":\"admin\",\"captcha\":\"ueaw\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100172');
INSERT INTO `zc_admin_log` VALUES ('122', '6', 'hrzc1688', '/admin/index/login', '登录', '{\"__token__\":\"57187f069f2423d4b845c8199268527e\",\"username\":\"hrzc1688\",\"captcha\":\"t6vg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100246');
INSERT INTO `zc_admin_log` VALUES ('123', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"93d1e3739f077ccfa165dd2f53d81bf4\",\"username\":\"admin\",\"captcha\":\"hddz\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100375');
INSERT INTO `zc_admin_log` VALUES ('124', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * * * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100467');
INSERT INTO `zc_admin_log` VALUES ('125', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"* * 1 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100490');
INSERT INTO `zc_admin_log` VALUES ('126', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"* * 1 * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100490');
INSERT INTO `zc_admin_log` VALUES ('127', '1', 'admin', '/admin/general/crontab/check_schedule', '', '{\"row\":{\"schedule\":\"0 0 1 * *\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100497');
INSERT INTO `zc_admin_log` VALUES ('128', '1', 'admin', '/admin/general/crontab/get_schedule_future', '', '{\"schedule\":\"0 0 1 * *\",\"days\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100497');
INSERT INTO `zc_admin_log` VALUES ('129', '1', 'admin', '/admin/general.database/query', '系统 常规管理 数据库管理 查询', '{\"do_action\":\"viewinfo\",\"tablename\":[\"zc_admin\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100544');
INSERT INTO `zc_admin_log` VALUES ('130', '1', 'admin', '/admin/general.database/query', '系统 常规管理 数据库管理 查询', '{\"do_action\":\"repair\",\"tablename\":[\"zc_admin_log\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100565');
INSERT INTO `zc_admin_log` VALUES ('131', '1', 'admin', '/admin/general.database/query', '系统 常规管理 数据库管理 查询', '{\"do_action\":\"optimize\",\"tablename\":[\"zc_admin\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100645');
INSERT INTO `zc_admin_log` VALUES ('132', '1', 'admin', '/admin/general.database/query', '系统 常规管理 数据库管理 查询', '{\"do_action\":\"doquery\",\"sqlquery\":\"select * from zc_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100696');
INSERT INTO `zc_admin_log` VALUES ('133', '1', 'admin', '/admin/general/database/backup', '系统 常规管理 数据库管理 备份', '{\"action\":\"backup\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100710');
INSERT INTO `zc_admin_log` VALUES ('134', '1', 'admin', '/admin/addon/config?name=database&dialog=1', '系统 插件管理 配置', '{\"name\":\"database\",\"dialog\":\"1\",\"row\":{\"backupDir\":\"..\\/data\\/\",\"backupIgnoreTables\":\"zc_admin_log\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100766');
INSERT INTO `zc_admin_log` VALUES ('135', '1', 'admin', '/admin/addon/config?name=database&dialog=1', '系统 插件管理 配置', '{\"name\":\"database\",\"dialog\":\"1\",\"row\":{\"backupDir\":\"..\\/data\\/\",\"backupIgnoreTables\":\"zc_admin_log\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535100851');
INSERT INTO `zc_admin_log` VALUES ('136', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"de73feb537b49566df8474785a59726f\",\"username\":\"admin\",\"captcha\":\"c34z\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535158709');
INSERT INTO `zc_admin_log` VALUES ('137', '6', 'hrzc1688', '/admin/index/login.html', '登录', '{\"__token__\":\"ac22cbbdbb6a38369f99147baa978eda\",\"username\":\"hrzc1688\",\"captcha\":\"xlnm\"}', '192.168.1.123', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535421932');
INSERT INTO `zc_admin_log` VALUES ('138', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"49855c39b56f443e813912e1103d96a4\",\"username\":\"hrzc1688\",\"captcha\":\"xjfj\"}', '192.168.1.188', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1535422041');
INSERT INTO `zc_admin_log` VALUES ('139', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"73bef02b44df54d7c7c8e3e2b39380f9\",\"username\":\"hrzc1688\",\"captcha\":\"najk\"}', '192.168.1.188', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1535422048');
INSERT INTO `zc_admin_log` VALUES ('140', '6', 'hrzc1688', '/admin/index/login', '登录', '{\"__token__\":\"2b631df7ccfa07a8c74757c5987e8d8e\",\"username\":\"hrzc1688\",\"captcha\":\"XNBY\"}', '192.168.1.188', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1535422055');
INSERT INTO `zc_admin_log` VALUES ('141', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"ddb5b4ae0f69ac445e97425c0862bf57\",\"username\":\"hrzc1688\",\"captcha\":\"upxu\"}', '192.168.1.123', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535424021');
INSERT INTO `zc_admin_log` VALUES ('142', '6', 'hrzc1688', '/admin/index/login', '登录', '{\"__token__\":\"054eecafb4839471e501713074a31b5f\",\"username\":\"hrzc1688\",\"captcha\":\"m5xk\"}', '192.168.1.123', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535424028');
INSERT INTO `zc_admin_log` VALUES ('143', '6', 'hrzc1688', '/admin/index/login.html', '登录', '{\"__token__\":\"95e52d0c054181dfd1bcd532e7b2a1c7\",\"username\":\"hrzc1688\",\"captcha\":\"vmw2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502192');
INSERT INTO `zc_admin_log` VALUES ('144', '6', 'hrzc1688', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"would\",\"title\":\"\\u98ce\\u63a7\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"would\",\"remark\":\"would\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502485');
INSERT INTO `zc_admin_log` VALUES ('145', '6', 'hrzc1688', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502485');
INSERT INTO `zc_admin_log` VALUES ('146', '6', 'hrzc1688', '/admin/auth/rule/edit/ids/126?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"would\",\"title\":\"\\u98ce\\u63a7\",\"icon\":\"fa fa-list\",\"weigh\":\"80\",\"condition\":\"would\",\"remark\":\"would\",\"status\":\"normal\"},\"ids\":\"126\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502587');
INSERT INTO `zc_admin_log` VALUES ('147', '6', 'hrzc1688', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502587');
INSERT INTO `zc_admin_log` VALUES ('148', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"c9e43ecf636b48304bc9f27752cabead\",\"username\":\"admin\",\"captcha\":\"6cjr\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502645');
INSERT INTO `zc_admin_log` VALUES ('149', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502660');
INSERT INTO `zc_admin_log` VALUES ('150', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '系统 权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,3,5,6,7,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,112,113,114,115,116,117,118,119,120,121,122,124,125,126,123,2\",\"pid\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502668');
INSERT INTO `zc_admin_log` VALUES ('151', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"finance\",\"title\":\"\\u8d22\\u52a1\",\"icon\":\"fa fa-list\",\"weigh\":\"50\",\"condition\":\"finance\",\"remark\":\"finance\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502726');
INSERT INTO `zc_admin_log` VALUES ('152', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502727');
INSERT INTO `zc_admin_log` VALUES ('153', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502742');
INSERT INTO `zc_admin_log` VALUES ('154', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '系统 权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,3,5,6,7,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,112,113,114,115,116,117,118,119,120,121,122,124,125,126,127,123,2\",\"pid\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502747');
INSERT INTO `zc_admin_log` VALUES ('155', '6', 'hrzc1688', '/admin/index/login', '登录', '{\"__token__\":\"310581176ee9808fc6ef274c2095fc9e\",\"username\":\"hrzc1688\",\"captcha\":\"vygw\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535502873');
INSERT INTO `zc_admin_log` VALUES ('156', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"052ea1cb788a92dcbb80f4a0b4291d3a\",\"username\":\"admin\",\"captcha\":\"akat\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503126');
INSERT INTO `zc_admin_log` VALUES ('157', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"47558a5b54de941fdaf463c69355028a\",\"username\":\"admin\",\"captcha\":\"2kat\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503139');
INSERT INTO `zc_admin_log` VALUES ('158', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"exten\",\"title\":\"\\u63a8\\u5e7f\",\"icon\":\"fa fa-list\",\"weigh\":\"50\",\"condition\":\"exten\",\"remark\":\"exten\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503187');
INSERT INTO `zc_admin_log` VALUES ('159', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503188');
INSERT INTO `zc_admin_log` VALUES ('160', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"wechat\",\"title\":\"\\u5fae\\u4fe1\",\"icon\":\"fa fa-list\",\"weigh\":\"30\",\"condition\":\"wechat\",\"remark\":\"wechat\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503258');
INSERT INTO `zc_admin_log` VALUES ('161', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"wechatmenu\",\"title\":\"\\u5fae\\u4fe1\",\"icon\":\"fa fa-list\",\"weigh\":\"30\",\"condition\":\"wechatmenu\",\"remark\":\"wechatmenu\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503288');
INSERT INTO `zc_admin_log` VALUES ('162', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503289');
INSERT INTO `zc_admin_log` VALUES ('163', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503296');
INSERT INTO `zc_admin_log` VALUES ('164', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '系统 权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,3,5,6,7,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,112,113,114,115,116,117,118,119,120,121,122,124,125,126,127,128,129,123,2\",\"pid\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503300');
INSERT INTO `zc_admin_log` VALUES ('165', '1', 'admin', '/admin/auth/rule/edit/ids/85?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"129\",\"name\":\"wechat\",\"title\":\"\\u5fae\\u4fe1\\u7ba1\\u7406\",\"icon\":\"fa fa-wechat\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"85\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503393');
INSERT INTO `zc_admin_log` VALUES ('166', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503394');
INSERT INTO `zc_admin_log` VALUES ('167', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503404');
INSERT INTO `zc_admin_log` VALUES ('168', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '系统 权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,124,125,126,127,128,129,123\",\"pid\":\"1\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503438');
INSERT INTO `zc_admin_log` VALUES ('169', '6', 'hrzc1688', '/admin/index/login', '登录', '{\"__token__\":\"15e26f6101e4435a8330c33ba2c15e3a\",\"username\":\"hrzc1688\",\"captcha\":\"jx4h\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503460');
INSERT INTO `zc_admin_log` VALUES ('170', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"340374e602a7ae9ad7d8f5167c387abc\",\"username\":\"admin\",\"captcha\":\"sqbw\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503756');
INSERT INTO `zc_admin_log` VALUES ('171', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"79eb7a41f0c67f65d7c016d00f161bf5\",\"username\":\"admin\",\"captcha\":\"wmed\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503943');
INSERT INTO `zc_admin_log` VALUES ('172', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"d73d48702f9d1f89c9f8d5f0429ee080\",\"username\":\"hrzc1688\",\"captcha\":\"momj\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503978');
INSERT INTO `zc_admin_log` VALUES ('173', '6', 'hrzc1688', '/admin/index/login', '登录', '{\"__token__\":\"bb63202d481110235293ad090df8eb26\",\"username\":\"hrzc1688\",\"captcha\":\"qtnp\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535503985');
INSERT INTO `zc_admin_log` VALUES ('174', '6', 'hrzc1688', '/admin/index/login.html', '登录', '{\"__token__\":\"99be9f85d0fe133db61bed3a47ebe8df\",\"username\":\"hrzc1688\",\"captcha\":\"dxjt\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535504706');
INSERT INTO `zc_admin_log` VALUES ('175', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"036d2c131078eb81fd680df22fd686a5\",\"username\":\"admin\",\"captcha\":\"hlzx\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535505915');
INSERT INTO `zc_admin_log` VALUES ('176', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"f33ab394c197989f1b49297478b7ea5a\",\"username\":\"admin\",\"captcha\":\"7m7k\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535592437');
INSERT INTO `zc_admin_log` VALUES ('177', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"33917f3179e8b722ef987dfa3cc9843c\",\"username\":\"admin\",\"captcha\":\"8ptk\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535681919');
INSERT INTO `zc_admin_log` VALUES ('178', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"a77ca8c4438f22e7a4dc3a97d9c2a3a5\",\"username\":\"admin\",\"captcha\":\"rapm\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535937826');
INSERT INTO `zc_admin_log` VALUES ('179', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"125\",\"name\":\"basicset\",\"title\":\"\\u57fa\\u7840\\u8bbe\\u7f6e\",\"icon\":\"fa fa-cog\",\"weigh\":\"10\",\"condition\":\"basicset\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535937974');
INSERT INTO `zc_admin_log` VALUES ('180', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535937976');
INSERT INTO `zc_admin_log` VALUES ('181', '1', 'admin', '/admin/auth/rule/add?dialog=1', '系统 权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"130\",\"name\":\"city\",\"title\":\"\\u57ce\\u5e02\\u8bbe\\u7f6e\",\"icon\":\"fa fa-list\",\"weigh\":\"1\",\"condition\":\"city\",\"remark\":\"city\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535938095');
INSERT INTO `zc_admin_log` VALUES ('182', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535938096');
INSERT INTO `zc_admin_log` VALUES ('183', '1', 'admin', '/admin/auth/rule/edit/ids/131?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"130\",\"name\":\"basicset\\/city\",\"title\":\"\\u57ce\\u5e02\\u8bbe\\u7f6e\",\"icon\":\"fa fa-list\",\"weigh\":\"20\",\"condition\":\"basicset\\/city\",\"remark\":\"basicset\\/city\",\"status\":\"normal\"},\"ids\":\"131\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535938773');
INSERT INTO `zc_admin_log` VALUES ('184', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535938774');
INSERT INTO `zc_admin_log` VALUES ('185', '1', 'admin', '/admin/auth/rule/edit/ids/131?dialog=1', '系统 权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"130\",\"name\":\"basicset\\/city\",\"title\":\"\\u57ce\\u5e02\\u8bbe\\u7f6e\",\"icon\":\"fa fa-list\",\"weigh\":\"20\",\"condition\":\"basicset\\/city\",\"remark\":\"\\u7cfb\\u7edf\\u57ce\\u5e02\\u5b57\\u5178\",\"status\":\"normal\"},\"ids\":\"131\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535962073');
INSERT INTO `zc_admin_log` VALUES ('186', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1535962074');
INSERT INTO `zc_admin_log` VALUES ('187', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"2a45830f3eedbd8b8213c270a71dde91\",\"username\":\"admin\",\"captcha\":\"kkhc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536021271');
INSERT INTO `zc_admin_log` VALUES ('188', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025007');
INSERT INTO `zc_admin_log` VALUES ('189', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025037');
INSERT INTO `zc_admin_log` VALUES ('190', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"A\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025046');
INSERT INTO `zc_admin_log` VALUES ('191', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"A\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025071');
INSERT INTO `zc_admin_log` VALUES ('192', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"A\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025083');
INSERT INTO `zc_admin_log` VALUES ('193', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025110');
INSERT INTO `zc_admin_log` VALUES ('194', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025165');
INSERT INTO `zc_admin_log` VALUES ('195', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025207');
INSERT INTO `zc_admin_log` VALUES ('196', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025218');
INSERT INTO `zc_admin_log` VALUES ('197', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536025349');
INSERT INTO `zc_admin_log` VALUES ('198', '0', 'Unknown', '/admin/index/login.html', '登录', '{\"__token__\":\"275d26dde91d7057ca3a6e9b65926ae8\",\"username\":\"123456\",\"captcha\":\"ifnw\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536030794');
INSERT INTO `zc_admin_log` VALUES ('199', '0', 'Unknown', '/admin/index/login.html', '', '{\"__token__\":\"9b16ff95981d907c9547d679fb709849\",\"username\":\"hrzc1688\",\"captcha\":\"ifnw\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536030845');
INSERT INTO `zc_admin_log` VALUES ('200', '0', 'Unknown', '/admin/index/login.html', '登录', '{\"__token__\":\"51025697e04d5532a5b946223c548ad8\",\"username\":\"hrzc1688\",\"captcha\":\"qdtk\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536030853');
INSERT INTO `zc_admin_log` VALUES ('201', '0', 'Unknown', '/admin/index/login.html', '', '{\"__token__\":\"a66f68701eedc988b4716dc842ffe332\",\"username\":\"hrzc1688\",\"captcha\":\"qdtk\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536031012');
INSERT INTO `zc_admin_log` VALUES ('202', '0', 'Unknown', '/admin/index/login.html', '', '{\"__token__\":\"a3142c9bdcd189d2064c03a0ddbad902\",\"username\":\"hrzc1688\",\"captcha\":\"eohw\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536031020');
INSERT INTO `zc_admin_log` VALUES ('203', '0', 'Unknown', '/admin/index/login.html', '', '{\"__token__\":\"ac81163068ec57eafc14f44cc930b0c6\",\"username\":\"hrzc1688\",\"captcha\":\"bnc2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536031031');
INSERT INTO `zc_admin_log` VALUES ('204', '0', 'Unknown', '/admin/index/login.html', '登录', '{\"__token__\":\"c40cef9b3099a2f5d2cb81b7cd5d1b4d\",\"username\":\"hrzc1688\",\"captcha\":\"qkek\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536031042');
INSERT INTO `zc_admin_log` VALUES ('205', '0', 'Unknown', '/admin/index/login.html', '', '{\"__token__\":\"41fed718e74adb53144503c9732a46d2\",\"username\":\"hrzc1688\",\"captcha\":\"qkek\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536031135');
INSERT INTO `zc_admin_log` VALUES ('206', '0', 'Unknown', '/admin/index/login.html', '登录', '{\"__token__\":\"2635bce7045e863e6ccee958cb08af16\",\"username\":\"hrzc1688\",\"captcha\":\"wugf\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536031148');
INSERT INTO `zc_admin_log` VALUES ('207', '0', 'Unknown', '/admin/index/login.html', '', '{\"__token__\":\"60b8d8a0aa65facffc50210d38d8d619\",\"username\":\"admin\",\"captcha\":\"wugf\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536031173');
INSERT INTO `zc_admin_log` VALUES ('208', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"5fa87b9aa0519add1e4baa906d96b928\",\"username\":\"admin\",\"captcha\":\"mdqj\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536031186');
INSERT INTO `zc_admin_log` VALUES ('209', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536044818');
INSERT INTO `zc_admin_log` VALUES ('210', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"B\",\"city_name\":\"\\u5317\\u4eac\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536045045');
INSERT INTO `zc_admin_log` VALUES ('211', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"S\",\"city_name\":\"\\u4e0a\\u6d77\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536045059');
INSERT INTO `zc_admin_log` VALUES ('212', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"N\",\"city_name\":\"\\u5357\\u4eac\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536045069');
INSERT INTO `zc_admin_log` VALUES ('213', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"Q\",\"city_name\":\"\\u9752\\u5c9b\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536045077');
INSERT INTO `zc_admin_log` VALUES ('214', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"T\",\"city_name\":\"\\u901a\\u8fbd\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536045110');
INSERT INTO `zc_admin_log` VALUES ('215', '1', 'admin', '/admin/basicset/city/edit/ids/6?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"id\":\"6\",\"city_code\":\"Y\",\"city_name\":\"\\u70df\\u53f0\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536047629');
INSERT INTO `zc_admin_log` VALUES ('216', '1', 'admin', '/admin/basicset/city/del/ids/6', '', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536047937');
INSERT INTO `zc_admin_log` VALUES ('217', '1', 'admin', '/admin/basicset/city/del/ids/4,5', '', '{\"action\":\"del\",\"ids\":\"4,5\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536047954');
INSERT INTO `zc_admin_log` VALUES ('218', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536048217');
INSERT INTO `zc_admin_log` VALUES ('219', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"B\",\"city_name\":\"\\u5317\\u4eac\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536048222');
INSERT INTO `zc_admin_log` VALUES ('220', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"G\",\"city_name\":\"\\u4e0a\\u6d77\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536048229');
INSERT INTO `zc_admin_log` VALUES ('221', '1', 'admin', '/admin/basicset/city/del/ids/7,9', '', '{\"action\":\"del\",\"ids\":\"7,9\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536048261');
INSERT INTO `zc_admin_log` VALUES ('222', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"D\",\"city_name\":\"\\u5927\\u8fde\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536048467');
INSERT INTO `zc_admin_log` VALUES ('223', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"Q\",\"city_name\":\"\\u9752\\u5c9b\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536050655');
INSERT INTO `zc_admin_log` VALUES ('224', '0', 'Unknown', '/admin/index/login.html', '', '{\"__token__\":\"89ed66b16c464f7890486cf4b15e5ce5\",\"username\":\"admin\",\"captcha\":\"cpxx\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536107454');
INSERT INTO `zc_admin_log` VALUES ('225', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"2d11af191a2218d52af9e7122679169e\",\"username\":\"admin\",\"captcha\":\"Qpxx\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536107461');
INSERT INTO `zc_admin_log` VALUES ('226', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"c330ca5804499ffab3387a6ee5f73034\",\"username\":\"admin\",\"captcha\":\"jydu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536107886');
INSERT INTO `zc_admin_log` VALUES ('227', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"5e6fbab2de08936257922caaebe0c25a\",\"username\":\"admin\",\"captcha\":\"hgdf\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', '1536214480');
INSERT INTO `zc_admin_log` VALUES ('228', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"9df92827b958b3f92928b28386135489\",\"username\":\"admin\",\"captcha\":\"b7je\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536218554');
INSERT INTO `zc_admin_log` VALUES ('229', '1', 'admin', '/admin/basicset/city/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"city_code\":\"C\",\"city_name\":\"\\u957f\\u6625\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.26 Safari/537.36 Core/1.63.6726.400 QQBrowser/10.2.2265.400', '1536218581');

-- ----------------------------
-- Table structure for `zc_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `zc_attachment`;
CREATE TABLE `zc_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
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
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='附件表';

-- ----------------------------
-- Records of zc_attachment
-- ----------------------------
INSERT INTO `zc_attachment` VALUES ('1', '1', '0', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- ----------------------------
-- Table structure for `zc_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `zc_auth_group`;
CREATE TABLE `zc_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分组表';

-- ----------------------------
-- Records of zc_auth_group
-- ----------------------------
INSERT INTO `zc_auth_group` VALUES ('1', '0', '开发者组', '*', '1490883540', '149088354', 'normal');
INSERT INTO `zc_auth_group` VALUES ('6', '1', '超级管理', '1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,124,125,126,127,128,129,123', '1534927653', '1535503438', 'normal');

-- ----------------------------
-- Table structure for `zc_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `zc_auth_group_access`;
CREATE TABLE `zc_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限分组表';

-- ----------------------------
-- Records of zc_auth_group_access
-- ----------------------------
INSERT INTO `zc_auth_group_access` VALUES ('1', '1');
INSERT INTO `zc_auth_group_access` VALUES ('6', '6');

-- ----------------------------
-- Table structure for `zc_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `zc_auth_rule`;
CREATE TABLE `zc_auth_rule` (
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of zc_auth_rule
-- ----------------------------
INSERT INTO `zc_auth_rule` VALUES ('1', 'file', '0', 'dashboard', '控制台', 'fa fa-dashboard', '', 'Dashboard tips', '1', '1497429920', '1534926405', '500', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('2', 'file', '123', 'general', '常规管理', 'fa fa-cogs', '', '', '1', '1497429920', '1534926504', '137', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('3', 'file', '125', 'category', '分类管理', 'fa fa-list', '', 'Category tips', '1', '1497429920', '1534927535', '119', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('4', 'file', '123', 'addon', '插件管理', 'fa fa-rocket', '', 'Addon tips', '1', '1502035509', '1534926698', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('5', 'file', '123', 'auth', '权限管理', 'fa fa-group', '', '', '1', '1497429920', '1534926621', '99', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('55', 'file', '4', 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('56', 'file', '4', 'addon/add', 'Add', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('58', 'file', '4', 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('59', 'file', '4', 'addon/local', 'Local install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('60', 'file', '4', 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('61', 'file', '4', 'addon/install', 'Install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('62', 'file', '4', 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('63', 'file', '4', 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('66', 'file', '124', 'user', '会员管理', 'fa fa-list', '', '', '1', '1516374729', '1534927466', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('67', 'file', '66', 'user/user', 'User', 'fa fa-user', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('68', 'file', '67', 'user/user/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('69', 'file', '67', 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('70', 'file', '67', 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('71', 'file', '67', 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('72', 'file', '67', 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('73', 'file', '66', 'user/group', 'User group', 'fa fa-users', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('74', 'file', '73', 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('75', 'file', '73', 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('76', 'file', '73', 'user/group/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('77', 'file', '73', 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('78', 'file', '73', 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('79', 'file', '66', 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '0', '1516374729', '1534927045', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('80', 'file', '79', 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('81', 'file', '79', 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('82', 'file', '79', 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('83', 'file', '79', 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('84', 'file', '79', 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('85', 'file', '129', 'wechat', '微信管理', 'fa fa-wechat', '', '', '1', '1534899639', '1535503393', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('86', 'file', '85', 'wechat/autoreply', '自动回复管理', 'fa fa-reply-all', '', '', '1', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('87', 'file', '86', 'wechat/autoreply/index', '查看', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('88', 'file', '86', 'wechat/autoreply/add', '添加', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('89', 'file', '86', 'wechat/autoreply/edit', '修改', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('90', 'file', '86', 'wechat/autoreply/del', '删除', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('91', 'file', '86', 'wechat/autoreply/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('92', 'file', '85', 'wechat/config', '配置管理', 'fa fa-cog', '', '', '1', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('93', 'file', '92', 'wechat/config/index', '查看', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('94', 'file', '92', 'wechat/config/add', '添加', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('95', 'file', '92', 'wechat/config/edit', '修改', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('96', 'file', '92', 'wechat/config/del', '删除', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('97', 'file', '92', 'wechat/config/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('98', 'file', '85', 'wechat/menu', '菜单管理', 'fa fa-list', '', '', '1', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('99', 'file', '98', 'wechat/menu/index', '查看', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('100', 'file', '98', 'wechat/menu/add', '添加', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('101', 'file', '98', 'wechat/menu/edit', '修改', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('102', 'file', '98', 'wechat/menu/del', '删除', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('103', 'file', '98', 'wechat/menu/sync', '同步', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('104', 'file', '98', 'wechat/menu/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('105', 'file', '85', 'wechat/response', '资源管理', 'fa fa-list-alt', '', '', '1', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('106', 'file', '105', 'wechat/response/index', '查看', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('107', 'file', '105', 'wechat/response/add', '添加', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('108', 'file', '105', 'wechat/response/edit', '修改', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('109', 'file', '105', 'wechat/response/del', '删除', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('110', 'file', '105', 'wechat/response/select', '选择', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('111', 'file', '105', 'wechat/response/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1534899639', '1534899639', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('112', 'file', '2', 'general/crontab', '定时任务', 'fa fa-tasks', '', '类似于Linux的Crontab定时任务,可以按照设定的时间进行任务的执行,目前仅支持三种任务:请求URL、执行SQL、执行Shell', '1', '1534900128', '1534900128', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('113', 'file', '112', 'general/crontab/index', '查看', 'fa fa-circle-o', '', '', '0', '1534900128', '1534900128', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('114', 'file', '112', 'general/crontab/add', '添加', 'fa fa-circle-o', '', '', '0', '1534900128', '1534900128', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('115', 'file', '112', 'general/crontab/edit', '编辑 ', 'fa fa-circle-o', '', '', '0', '1534900128', '1534900128', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('116', 'file', '112', 'general/crontab/del', '删除', 'fa fa-circle-o', '', '', '0', '1534900128', '1534900128', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('117', 'file', '112', 'general/crontab/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1534900128', '1534900128', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('118', 'file', '2', 'general/database', '数据库管理', 'fa fa-database', '', '可在线进行一些简单的数据库表优化或修复,查看表结构和数据。也可以进行SQL语句的操作', '1', '1534900141', '1534900141', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('119', 'file', '118', 'general/database/index', '查看', 'fa fa-circle-o', '', '', '0', '1534900141', '1534900141', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('120', 'file', '118', 'general/database/query', '查询', 'fa fa-circle-o', '', '', '0', '1534900141', '1534900141', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('121', 'file', '118', 'general/database/backup', '备份', 'fa fa-circle-o', '', '', '0', '1534900141', '1534900141', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('122', 'file', '118', 'general/database/restore', '恢复', 'fa fa-circle-o', '', '', '0', '1534900141', '1534900141', '0', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('123', 'file', '0', 'system', '系统', 'fa fa-desktop', 'system', '系统设置', '1', '1534926372', '1534926396', '300', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('124', 'file', '0', 'alluser', '会员', 'fa fa-group', 'alluser', '会员管理', '1', '1534927115', '1534927409', '100', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('125', 'file', '0', 'yunwei', '运维', 'fa fa-list', 'yunwei', 'yunwei', '1', '1534927515', '1534927558', '150', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('126', 'file', '0', 'would', '风控', 'fa fa-list', 'would', 'would', '1', '1535502484', '1535502587', '80', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('127', 'file', '0', 'finance', '财务', 'fa fa-list', 'finance', 'finance', '1', '1535502726', '1535502726', '50', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('128', 'file', '0', 'exten', '推广', 'fa fa-list', 'exten', 'exten', '1', '1535503187', '1535503187', '50', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('129', 'file', '0', 'wechatmenu', '微信', 'fa fa-list', 'wechatmenu', 'wechatmenu', '1', '1535503288', '1535503288', '30', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('130', 'file', '125', 'basicset', '基础设置', 'fa fa-cog', 'basicset', '', '1', '1535937974', '1535937974', '10', 'normal');
INSERT INTO `zc_auth_rule` VALUES ('131', 'file', '130', 'basicset/city', '城市设置', 'fa fa-list', 'basicset/city', '系统城市字典', '1', '1535938095', '1535962073', '20', 'normal');

-- ----------------------------
-- Table structure for `zc_category`
-- ----------------------------
DROP TABLE IF EXISTS `zc_category`;
CREATE TABLE `zc_category` (
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
-- Records of zc_category
-- ----------------------------
INSERT INTO `zc_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `zc_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `zc_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `zc_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `zc_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `zc_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `zc_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `zc_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `zc_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `zc_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `zc_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `zc_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `zc_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');

-- ----------------------------
-- Table structure for `zc_city`
-- ----------------------------
DROP TABLE IF EXISTS `zc_city`;
CREATE TABLE `zc_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(16) DEFAULT NULL,
  `city_code` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_city
-- ----------------------------
INSERT INTO `zc_city` VALUES ('8', '北京', 'B');
INSERT INTO `zc_city` VALUES ('11', '青岛', 'Q');
INSERT INTO `zc_city` VALUES ('10', '大连', 'D');
INSERT INTO `zc_city` VALUES ('12', '长春', 'C');

-- ----------------------------
-- Table structure for `zc_config`
-- ----------------------------
DROP TABLE IF EXISTS `zc_config`;
CREATE TABLE `zc_config` (
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of zc_config
-- ----------------------------
INSERT INTO `zc_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '华瑞众筹', '', 'required', '');
INSERT INTO `zc_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `zc_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `zc_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `zc_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `zc_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `zc_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `zc_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `zc_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `zc_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `zc_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `zc_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `zc_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `zc_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `zc_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `zc_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `zc_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for `zc_crontab`
-- ----------------------------
DROP TABLE IF EXISTS `zc_crontab`;
CREATE TABLE `zc_crontab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '事件类型',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '事件标题',
  `content` text NOT NULL COMMENT '事件内容',
  `schedule` varchar(100) NOT NULL DEFAULT '' COMMENT 'Crontab格式',
  `sleep` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '延迟秒数执行',
  `maximums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大执行次数 0为不限',
  `executes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已经执行的次数',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `begintime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `executetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后执行时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('completed','expired','hidden','normal') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务表';

-- ----------------------------
-- Records of zc_crontab
-- ----------------------------
INSERT INTO `zc_crontab` VALUES ('1', 'url', '请求FastAdmin', 'http://www.fastadmin.net', '* * * * *', '0', '0', '13548', '1497070825', '1501253101', '1483200000', '1546272000', '1501253101', '1', 'normal');
INSERT INTO `zc_crontab` VALUES ('2', 'sql', '查询一条SQL', 'SELECT 1;', '* * * * *', '0', '0', '13548', '1497071095', '1534901079', '1483200000', '1527782400', '1501253101', '2', 'normal');

-- ----------------------------
-- Table structure for `zc_ems`
-- ----------------------------
DROP TABLE IF EXISTS `zc_ems`;
CREATE TABLE `zc_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of zc_ems
-- ----------------------------

-- ----------------------------
-- Table structure for `zc_sms`
-- ----------------------------
DROP TABLE IF EXISTS `zc_sms`;
CREATE TABLE `zc_sms` (
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
-- Records of zc_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `zc_test`
-- ----------------------------
DROP TABLE IF EXISTS `zc_test`;
CREATE TABLE `zc_test` (
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
-- Records of zc_test
-- ----------------------------
INSERT INTO `zc_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for `zc_user`
-- ----------------------------
DROP TABLE IF EXISTS `zc_user`;
CREATE TABLE `zc_user` (
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
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';

-- ----------------------------
-- Records of zc_user
-- ----------------------------
INSERT INTO `zc_user` VALUES ('1', '1', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '/assets/img/avatar.png', '0', '0', '2017-04-15', '', '0', '1', '1', '1516170492', '1516171614', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1516171614', '', 'normal', '');

-- ----------------------------
-- Table structure for `zc_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `zc_user_group`;
CREATE TABLE `zc_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员组表';

-- ----------------------------
-- Records of zc_user_group
-- ----------------------------
INSERT INTO `zc_user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for `zc_user_rule`
-- ----------------------------
DROP TABLE IF EXISTS `zc_user_rule`;
CREATE TABLE `zc_user_rule` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员规则表';

-- ----------------------------
-- Records of zc_user_rule
-- ----------------------------
INSERT INTO `zc_user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `zc_user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `zc_user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `zc_user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `zc_user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `zc_user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `zc_user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `zc_user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `zc_user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `zc_user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `zc_user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `zc_user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for `zc_user_score_log`
-- ----------------------------
DROP TABLE IF EXISTS `zc_user_score_log`;
CREATE TABLE `zc_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员积分变动表';

-- ----------------------------
-- Records of zc_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for `zc_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `zc_user_token`;
CREATE TABLE `zc_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员Token表';

-- ----------------------------
-- Records of zc_user_token
-- ----------------------------

-- ----------------------------
-- Table structure for `zc_version`
-- ----------------------------
DROP TABLE IF EXISTS `zc_version`;
CREATE TABLE `zc_version` (
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
-- Records of zc_version
-- ----------------------------
INSERT INTO `zc_version` VALUES ('1', '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', '1', '1520425318', '0', '0', 'normal');

-- ----------------------------
-- Table structure for `zc_wechat_autoreply`
-- ----------------------------
DROP TABLE IF EXISTS `zc_wechat_autoreply`;
CREATE TABLE `zc_wechat_autoreply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `text` varchar(100) NOT NULL DEFAULT '' COMMENT '触发文本',
  `eventkey` varchar(50) NOT NULL DEFAULT '' COMMENT '响应事件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信自动回复表';

-- ----------------------------
-- Records of zc_wechat_autoreply
-- ----------------------------
INSERT INTO `zc_wechat_autoreply` VALUES ('1', '输入hello', 'hello', '58c7d908c4570', '123', '1493366855', '1493366855', 'normal');
INSERT INTO `zc_wechat_autoreply` VALUES ('2', '输入你好', '你好', '58fdfaa9e1965', 'sad', '1493704976', '1493704976', 'normal');

-- ----------------------------
-- Table structure for `zc_wechat_config`
-- ----------------------------
DROP TABLE IF EXISTS `zc_wechat_config`;
CREATE TABLE `zc_wechat_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '配置名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置标题',
  `value` text NOT NULL COMMENT '配置值',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信配置表';

-- ----------------------------
-- Records of zc_wechat_config
-- ----------------------------
INSERT INTO `zc_wechat_config` VALUES ('1', 'menu', '微信菜单', '[{\"name\":\"FastAdmin\",\"sub_button\":[{\"name\":\"官网\",\"type\":\"view\",\"url\":\"http:\\/\\/www.fastadmin.net\"},{\"name\":\"在线演示\",\"type\":\"click\",\"key\":\"\"},{\"name\":\"文档\",\"type\":\"view\",\"url\":\"http:\\/\\/doc.fastadmin.net\"}]},{\"name\":\"在线客服\",\"type\":\"click\",\"key\":\"58cb852984970\"},{\"name\":\"关于我们\",\"type\":\"click\",\"key\":\"58bf944aa0777\"}]', '1497398820', '1500538185');
INSERT INTO `zc_wechat_config` VALUES ('2', 'service', '客服配置', '{\"onlinetime\":\"09:00-18:00\",\"offlinemsg\":\"请在工作时间联系客服！\",\"nosessionmsg\":\"当前没有客服在线！请稍后重试！\",\"waitformsg\":\"请问有什么可以帮到您？\"}', '1497429674', '1497429674');
INSERT INTO `zc_wechat_config` VALUES ('3', 'signin', '连续登录配置', '{\"s1\":\"100\",\"s2\":\"200\",\"s3\":\"300\",\"sn\":\"500\"}', '1497429711', '1497429711');

-- ----------------------------
-- Table structure for `zc_wechat_context`
-- ----------------------------
DROP TABLE IF EXISTS `zc_wechat_context`;
CREATE TABLE `zc_wechat_context` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `eventkey` varchar(64) NOT NULL DEFAULT '',
  `command` varchar(64) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后刷新时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信上下文表';

-- ----------------------------
-- Records of zc_wechat_context
-- ----------------------------

-- ----------------------------
-- Table structure for `zc_wechat_response`
-- ----------------------------
DROP TABLE IF EXISTS `zc_wechat_response`;
CREATE TABLE `zc_wechat_response` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '资源名',
  `eventkey` varchar(128) NOT NULL DEFAULT '' COMMENT '事件',
  `type` enum('text','image','news','voice','video','music','link','app') NOT NULL DEFAULT 'text' COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `event` (`eventkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信资源表';

-- ----------------------------
-- Records of zc_wechat_response
-- ----------------------------
INSERT INTO `zc_wechat_response` VALUES ('1', '签到送积分', '58adaf7876aab', 'app', '{\"app\":\"signin\"}', '', '1487777656', '1487777656', 'normal');
INSERT INTO `zc_wechat_response` VALUES ('2', '关于我们', '58bf944aa0777', 'app', '{\"app\":\"page\",\"id\":\"1\"}', '', '1488950346', '1488950346', 'normal');
INSERT INTO `zc_wechat_response` VALUES ('3', '自动回复1', '58c7d908c4570', 'text', '{\"content\":\"world\"}', '', '1489492232', '1489492232', 'normal');
INSERT INTO `zc_wechat_response` VALUES ('4', '联系客服', '58cb852984970', 'app', '{\"app\":\"service\"}', '', '1489732905', '1489732905', 'normal');
INSERT INTO `zc_wechat_response` VALUES ('5', '自动回复2', '58fdfaa9e1965', 'text', '{\"content\":\"我是FastAdmin!\"}', '', '1493039785', '1493039785', 'normal');
