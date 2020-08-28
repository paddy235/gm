/*
 Navicat Premium Data Transfer

 Source Server         : yy
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : gtmd

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 27/08/2020 23:21:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fultbpurchasingcancel
-- ----------------------------
DROP TABLE IF EXISTS `fultbpurchasingcancel`;
CREATE TABLE `fultbpurchasingcancel`  (
  `cancleapplyid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchapplyid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `autoid` decimal(8, 0) NULL DEFAULT NULL,
  `operuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createuserid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancelname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `canceldate` datetime(0) NULL DEFAULT NULL,
  `cancelstate` decimal(8, 0) NULL DEFAULT NULL,
  `executeid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cancelreason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cancleapplyid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '燃料采购计划作废' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_attachment
-- ----------------------------
DROP TABLE IF EXISTS `pt_attachment`;
CREATE TABLE `pt_attachment`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attachment_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime(0) NULL DEFAULT NULL,
  `upload_ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attachment_size` decimal(8, 0) NULL DEFAULT NULL,
  `attachment_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attachment_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `belongid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_data_access
-- ----------------------------
DROP TABLE IF EXISTS `pt_data_access`;
CREATE TABLE `pt_data_access`  (
  `da_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `da_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_condition` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`da_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据过滤条件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_department
-- ----------------------------
DROP TABLE IF EXISTS `pt_department`;
CREATE TABLE `pt_department`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `organ_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agency_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `branch_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `belong_center` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bewrite` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estate` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifierid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modtime` datetime(0) NULL DEFAULT NULL,
  `commiterid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '国电部门' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `pt_dictionary`;
CREATE TABLE `pt_dictionary`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `dicgroup` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组名称',
  `dicname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示名称',
  `diccode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `dicsort` decimal(8, 0) NULL DEFAULT NULL COMMENT '排序号',
  `dicisno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可用'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_dictionary
-- ----------------------------
INSERT INTO `pt_dictionary` VALUES ('1', 'suppliertype', '临时供应商', '1', NULL, NULL);
INSERT INTO `pt_dictionary` VALUES ('2', 'suppliertype', '一般供应商', '2', NULL, NULL);
INSERT INTO `pt_dictionary` VALUES ('3', 'suppliertype', '内部供应商', '3', NULL, NULL);
INSERT INTO `pt_dictionary` VALUES ('4', 'suppliertype', '重点供应商', '4', NULL, NULL);
INSERT INTO `pt_dictionary` VALUES ('5', 'suppliertype', '黑名单供应商', '5', NULL, NULL);
INSERT INTO `pt_dictionary` VALUES ('', 'yunshutype', '船舶', '1', NULL, NULL);
INSERT INTO `pt_dictionary` VALUES ('7', 'jiesuantype', '现金', '1', NULL, NULL);
INSERT INTO `pt_dictionary` VALUES ('8', 'yanshoutype', '现场', '1', NULL, NULL);

-- ----------------------------
-- Table structure for pt_dictionary_sql
-- ----------------------------
DROP TABLE IF EXISTS `pt_dictionary_sql`;
CREATE TABLE `pt_dictionary_sql`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_sql` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '动态数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_mail
-- ----------------------------
DROP TABLE IF EXISTS `pt_mail`;
CREATE TABLE `pt_mail`  (
  `maill_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `smtp_host` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smtp_port` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `auth` decimal(1, 0) NULL DEFAULT NULL,
  `email_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maill_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮箱地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_menu
-- ----------------------------
DROP TABLE IF EXISTS `pt_menu`;
CREATE TABLE `pt_menu`  (
  `menu_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_use` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_order` decimal(10, 0) NULL DEFAULT NULL,
  `parent_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_target` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单目录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_menu_directory
-- ----------------------------
DROP TABLE IF EXISTS `pt_menu_directory`;
CREATE TABLE `pt_menu_directory`  (
  `menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单目录id（树型结构层级编码）',
  `dir_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单目录编号',
  `dir_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单目录名称',
  `dir_level_number` int(2) NULL DEFAULT NULL COMMENT '菜单目录级数',
  `dir_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单目录类型：0，业务；1，系统；2，实施；4，集成；5，Demo',
  `resource_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单资源id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父目录id',
  `isitem` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '明细否：0 非明细；1 明细',
  `dir_order` int(9) NULL DEFAULT NULL COMMENT '菜单目录顺序号',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否删除：0 是；1 否',
  `flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '启/停状态：0 停用；1 启用',
  `menu_group_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单类别id',
  `locale` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zh_CN' COMMENT '当前国际化标志',
  `res_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'id',
  `istransfer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单目录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_menu_directory
-- ----------------------------
INSERT INTO `pt_menu_directory` VALUES ('1', '101', '事务中心', 1, NULL, NULL, 'root', '0', 1, '1', '1', NULL, 'zh_CN', '1', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('10', '110', '保证金账户台账', 2, NULL, NULL, '9', '1', 1, '1', '1', NULL, 'zh_CN', '10', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('11', '111', '保证金使用明细', 2, NULL, NULL, '9', '1', 2, '1', '1', NULL, 'zh_CN', '11', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('12', '112', '汇款凭证录入', 2, NULL, NULL, '9', '1', 3, '1', '1', NULL, 'zh_CN', '12', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('14', '114', '履约保证金台账', 2, NULL, NULL, '9', '1', 5, '1', '1', NULL, 'zh_CN', '14', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('15', '115', '供应资格管理', 1, NULL, NULL, 'root', '0', 5, '1', '1', NULL, 'zh_CN', '15', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('16', '116', '注册对象管理', 2, NULL, NULL, '15', '1', 1, '1', '1', NULL, 'zh_CN', '16', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('17', '117', '采购申请管理', 1, NULL, NULL, 'root', '0', 6, '1', '1', NULL, 'zh_CN', '17', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('18', '118', '采购需求创建', 2, NULL, NULL, '17', '1', 1, '1', '1', NULL, 'zh_CN', '18', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('19', '119', '采购审核', 2, NULL, NULL, '17', '1', 2, '1', '1', NULL, 'zh_CN', '19', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('2', '102', '待办事项', 2, NULL, NULL, '1', '1', 1, '1', '1', NULL, 'zh_CN', '2', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('20', '120', '采购申请查询', 2, NULL, NULL, '17', '1', 3, '1', '1', NULL, 'zh_CN', '20', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('21', '121', '采购执行报批', 1, NULL, NULL, 'root', '0', 7, '1', '1', NULL, 'zh_CN', '21', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('22', '122', '采购执行查询', 2, NULL, NULL, '21', '1', 1, '1', '1', NULL, 'zh_CN', '22', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('23', '123', '长协交易', 1, NULL, NULL, 'root', '0', 8, '1', '1', NULL, 'zh_CN', '23', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('24', '124', '长协交易查看', 2, NULL, NULL, '23', '1', 1, '1', '1', NULL, 'zh_CN', '24', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('25', '125', '长协交易创建', 2, NULL, NULL, '23', '1', 2, '1', '1', NULL, 'zh_CN', '25', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('26', '126', '报价保证金明细', 2, NULL, NULL, '9', '1', 6, '1', '1', NULL, 'zh_CN', '26', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('27', '127', '履约保证金明细', 2, NULL, NULL, '9', '1', 7, '1', '1', NULL, 'zh_CN', '27', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('28', '128', '保证金解冻审批', 2, NULL, NULL, '9', '1', 8, '1', '1', NULL, 'zh_CN', '28', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('29', '129', '供应商管理', 1, NULL, NULL, 'root', '0', 9, '1', '1', NULL, 'zh_CN', '29', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('3', '113', '采购信息', 1, NULL, NULL, 'root', '0', 2, '1', '1', NULL, 'zh_CN', '3', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('30', '130', '查看合作供应商', 2, NULL, NULL, '29', '1', 1, '1', '1', NULL, 'zh_CN', '30', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('31', '131', '供应商申请待审核', 2, NULL, NULL, '29', '1', 2, '1', '1', NULL, 'zh_CN', '31', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('32', '132', '电厂申请审核', 2, '', NULL, '29', '1', 3, '1', '1', NULL, 'zh_CN', '32', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('33', '133', '年度评价', 2, NULL, NULL, '29', '1', 4, '1', '1', NULL, 'zh_CN', '33', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('34', '134', '采购审批', 2, NULL, NULL, '17', '1', 4, '1', '1', NULL, 'zh_CN', '34', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('35', '135', '中标下达', 2, NULL, NULL, '21', '1', 2, '1', '1', NULL, 'zh_CN', '35', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('36', '136', '中标审核', 2, NULL, NULL, '21', '1', 3, '1', '1', NULL, 'zh_CN', '36', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('37', '137', '查看供应商', 2, NULL, NULL, '29', '1', 5, '1', '1', NULL, 'zh_CN', '37', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('38', '138', '供应商审核', 2, NULL, NULL, '29', '1', 6, '1', '1', NULL, 'zh_CN', '38', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('39', '139', '电厂申请审核', 2, NULL, NULL, '29', '1', 7, '1', '1', NULL, 'zh_CN', '39', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('4', '114', '采购申请查看', 2, NULL, NULL, '3', '1', 1, '1', '1', NULL, 'zh_CN', '4', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('40', '140', '月度评分', 2, NULL, NULL, '29', '1', 8, '1', '1', NULL, 'zh_CN', '40', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('41', '141', '供应关系查看', 2, NULL, NULL, '29', '1', 9, '1', '1', NULL, 'zh_CN', '41', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('42', '142', '平台用户管理', 2, NULL, NULL, '29', '1', 10, '1', '1', NULL, 'zh_CN', '42', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('43', '143', '黑名单管理', 2, NULL, NULL, '29', '1', 11, '1', '1', NULL, 'zh_CN', '43', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('44', '144', '年度评价', 2, NULL, NULL, '29', '1', 12, '1', '1', NULL, 'zh_CN', '44', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('45', '145', '供应商账户查询', 2, NULL, NULL, '9', '1', 9, '1', '1', NULL, 'zh_CN', '45', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('46', '146', '保证金台账', 2, NULL, NULL, '9', '1', 10, '1', '1', NULL, 'zh_CN', '46', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('47', '147', '保证金收退款', 2, NULL, NULL, '9', '1', 11, '1', '1', NULL, 'zh_CN', '47', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('5', '115', '采购执行查看', 2, NULL, NULL, '3', '1', 2, '1', '1', NULL, 'zh_CN', '5', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('6', '116', '报价管理', 1, NULL, NULL, 'root', '0', 3, '1', '1', NULL, 'zh_CN', '6', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('7', '117', '参与报价', 2, NULL, NULL, '6', '1', 1, '1', '1', NULL, 'zh_CN', '7', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('8', '118', '报价结果', 2, NULL, NULL, '6', '1', 2, '1', '1', NULL, 'zh_CN', '8', NULL, NULL, NULL);
INSERT INTO `pt_menu_directory` VALUES ('9', '119', '保证金管理', 1, NULL, NULL, 'root', '0', 4, '1', '1', NULL, 'zh_CN', '9', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pt_organ
-- ----------------------------
DROP TABLE IF EXISTS `pt_organ`;
CREATE TABLE `pt_organ`  (
  `organ_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `organ_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organ_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organ_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_use` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否删除',
  `modifierid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `modtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `description` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `account_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资金账户code',
  `shortname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`organ_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_organ
-- ----------------------------
INSERT INTO `pt_organ` VALUES ('42554f47c8614d7f8da370d8c7803f41', '55555', '酒泉公司', '2', 'Y', '-1', 'N', NULL, '2018-03-01 10:22:08', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('42554f47c8614d7f8da370d8c7803f49', '233333', '湖北公司', '2', 'Y', '-1', 'N', NULL, '2018-03-01 10:23:00', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('42554f47c8614d7f8da370d8c7803f4a', '111', '襄阳电厂', '3', 'Y', '42554f47c8614d7f8da370d8c7803f4c', 'N', NULL, '2018-03-21 13:53:14', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('42554f47c8614d7f8da370d8c7803f4b', 'dddf', '宣威子电厂', '3', 'Y', '42554f47c8614d7f8da370d8c7803f49', 'N', NULL, '2018-03-21 20:32:52', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('42554f47c8614d7f8da370d8c7803f4c', '12334444', '新疆公司', '2', 'Y', '-1', 'N', NULL, '2018-02-28 16:18:46', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('42554f47c8614d7f8da370d8c7803f4d', 'sddsdsd', '山东公司', '2', 'Y', '-1', 'N', NULL, '2018-03-01 09:57:07', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('42554f47c8614d7f8da370d8c7803f4e', 'xx', '宣威子电厂2', '3', 'Y', '42554f47c8614d7f8da370d8c7803f49', 'N', NULL, '2018-03-21 20:32:55', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('42554f47c8614d7f8da370d8c7803f4k', '55555', '武汉电厂', '3', 'Y', '42554f47c8614d7f8da370d8c7803f4c', 'N', NULL, '2018-03-01 20:40:34', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('728e8114ff504bf8af6e9efc693b0a69', 'dwxia', 'isoftone', NULL, NULL, 'outerroot', 'N', NULL, '2018-03-23 22:24:28', NULL, NULL, 'isoft');
INSERT INTO `pt_organ` VALUES ('897742be37e64cbe87eb1e13bdae9811', '897742be37e64cbe87eb1e13bdae9811', '普通供应商', NULL, NULL, 'outerroot', 'N', NULL, '2019-08-03 17:06:54', NULL, NULL, '普商');
INSERT INTO `pt_organ` VALUES ('9aa37116e63f48bf944749fc21424167', 'qwe3', 'xxxxdsdsd', NULL, NULL, 'outerroot', 'N', NULL, '2019-06-03 16:27:09', NULL, NULL, 'asdasdasdsad');
INSERT INTO `pt_organ` VALUES ('cb58fab9422c477781f5e642e9176b3e', 'qwe1', ' asd', NULL, NULL, 'outerroot', 'N', NULL, '2019-06-03 10:48:16', NULL, NULL, 'a');
INSERT INTO `pt_organ` VALUES ('mmmmmmm', '123445', '雪豹电厂', '3', 'Y', '42554f47c8614d7f8da370d8c7803f4c', 'N', NULL, '2019-06-03 12:00:15', NULL, NULL, NULL);
INSERT INTO `pt_organ` VALUES ('xxxxx', 'qqq2', 'sdsdw', NULL, NULL, 'outerroot', 'N', NULL, '2019-05-31 17:59:26', NULL, NULL, 'ww');

-- ----------------------------
-- Table structure for pt_organ_post
-- ----------------------------
DROP TABLE IF EXISTS `pt_organ_post`;
CREATE TABLE `pt_organ_post`  (
  `post_uuid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `post_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位编码',
  `organ_uuid` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人员编码'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职位岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_r_role_organ
-- ----------------------------
DROP TABLE IF EXISTS `pt_r_role_organ`;
CREATE TABLE `pt_r_role_organ`  (
  `dutyid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `organ_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织ID',
  `role_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`dutyid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位表（角色和单位的挂接）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_r_role_organ
-- ----------------------------
INSERT INTO `pt_r_role_organ` VALUES ('041fe2a829e74e53842cc1eb2922f615', '普通用户会员中心', '728e8114ff504bf8af6e9efc693b0a6c', '402881f3509db32801509db390890000');
INSERT INTO `pt_r_role_organ` VALUES ('82af7a0655cc4d249df960822c89963d', '阳光用户会员中心', 'xxxxx', '402881f3509dd9ad01509df7c624000d');
INSERT INTO `pt_r_role_organ` VALUES ('837cfb4c11814d3581bb828260b380a8', '阳光用户会员中心', 'cb58fab9422c477781f5e642e9176b3e', '402881f3509dd9ad01509df7c624000d');
INSERT INTO `pt_r_role_organ` VALUES ('9e988e0c82974756826a9124c4681dca', '阳光用户会员中心', '728e8114ff504bf8af6e9efc693b0a69', '402881f3509dd9ad01509df7c624000d');
INSERT INTO `pt_r_role_organ` VALUES ('c36b529445b74b4aad515c8c4b5dd36f', '普通用户会员中心', '728e8114ff504bf8af6e9efc693b0a6c', '402881f3509db32801509db390890000');
INSERT INTO `pt_r_role_organ` VALUES ('d1', '集团管理员', '42554f47c8614d7f8da370d8c7803f4c', 'fgs');
INSERT INTO `pt_r_role_organ` VALUES ('d2', '集团管理员', '42554f47c8614d7f8da370d8c7803f4a', '26167920769892352');
INSERT INTO `pt_r_role_organ` VALUES ('d3', 'xxx', '42554f47c8614d7f8da370d8c7803f4a', 'jt');
INSERT INTO `pt_r_role_organ` VALUES ('d4', NULL, NULL, 'a4');
INSERT INTO `pt_r_role_organ` VALUES ('d5', NULL, NULL, 'a5');
INSERT INTO `pt_r_role_organ` VALUES ('e4b5b3485bc44a65b05d4aca43287a6e', '阳光用户会员中心', '9aa37116e63f48bf944749fc21424167', '402881f3509dd9ad01509df7c624000d');

-- ----------------------------
-- Table structure for pt_r_user_duty_org
-- ----------------------------
DROP TABLE IF EXISTS `pt_r_user_duty_org`;
CREATE TABLE `pt_r_user_duty_org`  (
  `user_dutyid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `dutyid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_dutyid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户、岗位对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_r_user_duty_org
-- ----------------------------
INSERT INTO `pt_r_user_duty_org` VALUES ('26167920769892359', '26167920769892358', 'd2');
INSERT INTO `pt_r_user_duty_org` VALUES ('842aaa9e87bb42ce9c1019d6302a3338', '8ce9b56c745740918fdceef91069870b', 'c36b529445b74b4aad515c8c4b5dd36f');
INSERT INTO `pt_r_user_duty_org` VALUES ('8fa12ac0573b499eb523848491023f4d', '728e8114ff504bf8af6e9efc693b0a69', '9e988e0c82974756826a9124c4681dca');
INSERT INTO `pt_r_user_duty_org` VALUES ('cd7c52420b3844268181042260c39550', '622f23ef47d944e2ac326a5345d3481e', '82af7a0655cc4d249df960822c89963d');
INSERT INTO `pt_r_user_duty_org` VALUES ('d614f0fa50b445d793dd306bae07a8c2', '8ce9b56c745740918fdceef91069870b', '041fe2a829e74e53842cc1eb2922f615');
INSERT INTO `pt_r_user_duty_org` VALUES ('e814002526944fabbc2c0114bf15b98e', '29fc566e9bdc4612bccb511d2e5dd6fc', '837cfb4c11814d3581bb828260b380a8');
INSERT INTO `pt_r_user_duty_org` VALUES ('f432f2fc53da426890ffc5b194350b63', '0edc495f39b7491e808d4b08e5df2b4a', 'e4b5b3485bc44a65b05d4aca43287a6e');
INSERT INTO `pt_r_user_duty_org` VALUES ('u1', 'a82205053d6449bb8ef7e71ae5bdf4c6', 'd1');
INSERT INTO `pt_r_user_duty_org` VALUES ('u2', '34', 'd2');
INSERT INTO `pt_r_user_duty_org` VALUES ('u3', 'a82205053d6449bb8ef7e71ae5bdf4c6', 'd3');
INSERT INTO `pt_r_user_duty_org` VALUES ('u4', 'a82205053d6449bb8ef7e71ae5bdf4c6', 'd4');
INSERT INTO `pt_r_user_duty_org` VALUES ('u5', 'a82205053d6449bb8ef7e71ae5bdf4c6t', 'd5');

-- ----------------------------
-- Table structure for pt_res
-- ----------------------------
DROP TABLE IF EXISTS `pt_res`;
CREATE TABLE `pt_res`  (
  `res_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单类别id',
  `res_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `res_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `res_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `res_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`res_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_res
-- ----------------------------
INSERT INTO `pt_res` VALUES ('1', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('10', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('11', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('12', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('13', NULL, NULL, NULL, 'u', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('14', NULL, NULL, NULL, 'u', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('15', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('16', NULL, NULL, NULL, '/registerobjectmanage.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('17', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('18', NULL, NULL, NULL, '/createFultbpurchInfo.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('19', NULL, NULL, NULL, '/fultbpurchCheckList.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('2', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('20', NULL, NULL, NULL, '/fultbpurchCheckList.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('29', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('3', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('30', NULL, NULL, NULL, '/supplylist_fen.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('31', NULL, NULL, NULL, '/supplypendingapprovallist_fen.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('32', NULL, NULL, NULL, '/dianchangapplylist_fen.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('33', NULL, NULL, NULL, 'e', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('37', NULL, NULL, NULL, '/supplylist.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('38', NULL, NULL, NULL, '/supplypendingapprovallist.jspx', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('4', NULL, NULL, NULL, 't', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('40', NULL, NULL, NULL, 'k', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('44', NULL, NULL, NULL, 'm', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('5', NULL, NULL, NULL, 'e', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('6', NULL, NULL, NULL, 'a', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('7', NULL, NULL, NULL, 'b', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('8', NULL, NULL, NULL, 'd', NULL, NULL, NULL);
INSERT INTO `pt_res` VALUES ('9', NULL, NULL, NULL, 'e', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pt_role
-- ----------------------------
DROP TABLE IF EXISTS `pt_role`;
CREATE TABLE `pt_role`  (
  `role_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_uuid`) USING BTREE,
  INDEX `ak_key_2`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_role
-- ----------------------------
INSERT INTO `pt_role` VALUES ('26167920769892352', 'xxx', '电厂审核供应商管理员');
INSERT INTO `pt_role` VALUES ('402881f3509dd9ad01509df7c624000d', '123', '阳光用户会员中心');

-- ----------------------------
-- Table structure for pt_role_res
-- ----------------------------
DROP TABLE IF EXISTS `pt_role_res`;
CREATE TABLE `pt_role_res`  (
  `role_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `res_uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单目录id（树型结构层级编码）'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色资源配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_role_res
-- ----------------------------
INSERT INTO `pt_role_res` VALUES ('fgs', '30');
INSERT INTO `pt_role_res` VALUES ('fgs', '31');
INSERT INTO `pt_role_res` VALUES ('fgs', '32');
INSERT INTO `pt_role_res` VALUES ('fgs', '33');
INSERT INTO `pt_role_res` VALUES ('dc', '37');
INSERT INTO `pt_role_res` VALUES ('dc', '40');
INSERT INTO `pt_role_res` VALUES ('dc', '44');
INSERT INTO `pt_role_res` VALUES ('dc', '17');
INSERT INTO `pt_role_res` VALUES ('dc', '18');
INSERT INTO `pt_role_res` VALUES ('dc', '19');
INSERT INTO `pt_role_res` VALUES ('dc', '20');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '1');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '2');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '6');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '7');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '8');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '9');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '10');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '11');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '12');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '14');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '15');
INSERT INTO `pt_role_res` VALUES ('402881f3509dd9ad01509df7c624000d', '16');
INSERT INTO `pt_role_res` VALUES ('26167920769892352', '29');
INSERT INTO `pt_role_res` VALUES ('26167920769892352', '32');

-- ----------------------------
-- Table structure for pt_role_user
-- ----------------------------
DROP TABLE IF EXISTS `pt_role_user`;
CREATE TABLE `pt_role_user`  (
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_uuid`, `user_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `pt_sys_config`;
CREATE TABLE `pt_sys_config`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pt_user
-- ----------------------------
DROP TABLE IF EXISTS `pt_user`;
CREATE TABLE `pt_user`  (
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` decimal(1, 0) NULL DEFAULT NULL,
  `account_non_expired` decimal(1, 0) NULL DEFAULT NULL,
  `credentials_non_expired` decimal(1, 0) NULL DEFAULT NULL,
  `account_non_locked` decimal(1, 0) NULL DEFAULT NULL,
  `organ_uuid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构ID',
  `nice_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `is_admin` decimal(1, 0) NULL DEFAULT NULL,
  `maximumsessions` decimal(1, 0) NULL DEFAULT 1 COMMENT '1',
  `registerdate` datetime(0) NULL DEFAULT NULL COMMENT '注册日期',
  `lastlogintime` datetime(0) NULL DEFAULT NULL COMMENT '最近登陆时间',
  `pwdque` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密保问题',
  `pwdans` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密保答案',
  `remark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `depid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门ID',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否删除',
  `modtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '操作时间',
  `modifierid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人ID',
  `is_sum` decimal(1, 0) NULL DEFAULT NULL COMMENT '是否阳光用户（0否1是）',
  PRIMARY KEY (`user_uuid`) USING BTREE,
  INDEX `ak_key_2`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pt_user
-- ----------------------------
INSERT INTO `pt_user` VALUES ('0edc495f39b7491e808d4b08e5df2b4a', NULL, 'qwe3', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '9aa37116e63f48bf944749fc21424167', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-06-11 15:16:00', NULL, 1);
INSERT INTO `pt_user` VALUES ('1', NULL, 'platform', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, 'gd', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-03-29 22:49:21', NULL, NULL);
INSERT INTO `pt_user` VALUES ('124cf52906e140a58ed745001af9fbb6', NULL, 'qqq1234', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 10:46:24', NULL, NULL);
INSERT INTO `pt_user` VALUES ('1509be3792114dfd9fded194ed35f9e7', NULL, 'mmm3', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '897742be37e64cbe87eb1e13bdae9811', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-06-11 17:12:40', NULL, NULL);
INSERT INTO `pt_user` VALUES ('1a917a2fc0894f788e121d2d559337e5', NULL, 'qqq12345', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 10:50:39', NULL, NULL);
INSERT INTO `pt_user` VALUES ('1cedc425b6764341b476f6b3b1c5d40a', NULL, 'mmm', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 10:59:20', NULL, NULL);
INSERT INTO `pt_user` VALUES ('1e4da44293994c1a897921f0132127cd', NULL, 'qqq123', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 09:28:07', NULL, NULL);
INSERT INTO `pt_user` VALUES ('24b37a4b02834a6194dba49baf9cb5ac', NULL, 'qqqq', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 11:06:33', NULL, NULL);
INSERT INTO `pt_user` VALUES ('26167920769892358', NULL, 'zhouzuo', '1147f6f8b1355ff1a190c53869cc5f78', '111', '', NULL, NULL, NULL, NULL, '42554f47c8614d7f8da370d8c7803f4a', '', NULL, 1, NULL, NULL, '', '', '', NULL, '0', '2019-06-12 17:00:42', NULL, NULL);
INSERT INTO `pt_user` VALUES ('29fc566e9bdc4612bccb511d2e5dd6fc', NULL, 'qwe1', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, 'cb58fab9422c477781f5e642e9176b3e', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-06-03 09:30:14', NULL, NULL);
INSERT INTO `pt_user` VALUES ('32a108aca9be495187db950971c19a47', NULL, 'dw1', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 12:18:05', NULL, NULL);
INSERT INTO `pt_user` VALUES ('34', NULL, 'dianchang', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '42554f47c8614d7f8da370d8c7803f4a', '夏德旺', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', '2019-05-28 16:49:28', NULL, NULL);
INSERT INTO `pt_user` VALUES ('36860a4a673d43818e70b69dedbe92f8', NULL, 'www12', 'd9913f981575323cd096aac9d6e3d568', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-31 16:03:15', NULL, NULL);
INSERT INTO `pt_user` VALUES ('3c3ba97c8d284d09a94876c5f73ec20b', NULL, 'sumtest2', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-03-31 20:55:11', NULL, NULL);
INSERT INTO `pt_user` VALUES ('41b62da1b3af4ad6adf65d9ce6511847', NULL, 'xxxx123', '05e5e749ab748161f76184a70911f825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-22 15:43:05', NULL, NULL);
INSERT INTO `pt_user` VALUES ('439caf4813244e23a9d5814d678921c6', NULL, 'qq12', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 12:25:36', NULL, NULL);
INSERT INTO `pt_user` VALUES ('49d467611df74e6ab82a1f925e01df8c', NULL, 'qwe12345', 'baf97d60a4080e131ef673941d59d996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-27 15:07:54', NULL, NULL);
INSERT INTO `pt_user` VALUES ('4d1b7c0bfb8f4617af20dab0d1ee68fe', NULL, 'abcd123', '05e5e749ab748161f76184a70911f825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-22 15:51:22', NULL, NULL);
INSERT INTO `pt_user` VALUES ('5a47531497174db887bc6d9f00f4cec8', NULL, 'sumtest1', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-03-30 10:24:06', NULL, 1);
INSERT INTO `pt_user` VALUES ('5c553702d3984f00ac960a3ed2cba0a5', NULL, 'dwdw', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 13:11:42', NULL, NULL);
INSERT INTO `pt_user` VALUES ('5e37a8dda6bd4c9e890fdbbbd027d762', NULL, 'mm2', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '7e97f8a47065450dac36709c513f271e', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-31 18:07:10', NULL, NULL);
INSERT INTO `pt_user` VALUES ('60d91b6aaa064262837c9e177875b176', NULL, 'qwer1234', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-28 09:58:21', NULL, NULL);
INSERT INTO `pt_user` VALUES ('622f23ef47d944e2ac326a5345d3481e', NULL, 'qqq2', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxx', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-31 17:58:30', NULL, NULL);
INSERT INTO `pt_user` VALUES ('6828054f11f6468e933d30191e175652', NULL, 'mmm1', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, 'ee63bc2d62a54942bde351360c1e55b6', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-06-11 15:09:03', NULL, NULL);
INSERT INTO `pt_user` VALUES ('6a8d0991d3da43b9acb51ec89e1dfd7f', NULL, 'sd12', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 12:14:11', NULL, NULL);
INSERT INTO `pt_user` VALUES ('728e8114ff504bf8af6e9efc693b0a69', NULL, 'gys', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '728e8114ff504bf8af6e9efc693b0a69', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-05-03 20:21:52', NULL, NULL);
INSERT INTO `pt_user` VALUES ('85db9f2c005c4e59b482ff2992098152', NULL, 'qqq1', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 12:06:07', NULL, NULL);
INSERT INTO `pt_user` VALUES ('8ce9b56c745740918fdceef91069870b', NULL, 'ptgys', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '728e8114ff504bf8af6e9efc693b0a6c', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-05-03 20:21:54', NULL, NULL);
INSERT INTO `pt_user` VALUES ('8e52a313d1bb4dcaa7d28800f98e4d3f', NULL, 'asds', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 15:28:12', NULL, NULL);
INSERT INTO `pt_user` VALUES ('9605b5e28da24e9a9607dfd65f5f8bb7', NULL, 'wwww', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 11:17:38', NULL, NULL);
INSERT INTO `pt_user` VALUES ('9a1f2aaa426b4bb9b005bf536a937198', NULL, 'qwer1', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-31 13:47:21', NULL, NULL);
INSERT INTO `pt_user` VALUES ('9fd0b0e0e64349a5b6eca33da65c8a00', NULL, 'mmm2', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, 'e65522a14ed64552b1083e602f7365b6', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-06-11 15:10:14', NULL, NULL);
INSERT INTO `pt_user` VALUES ('a2b6bc55bc0a4a3c9e50c18790ea3845', NULL, 'www123', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 11:13:52', NULL, NULL);
INSERT INTO `pt_user` VALUES ('a82205053d6449bb8ef7e71ae5bdf4c6', NULL, 'fgs', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '42554f47c8614d7f8da370d8c7803f4c', '张三', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', '2019-05-31 17:26:28', NULL, NULL);
INSERT INTO `pt_user` VALUES ('ab8483a852544551aef1663bcaf54ff8', NULL, 'dwa', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 12:59:37', NULL, NULL);
INSERT INTO `pt_user` VALUES ('b3b146e945734c36a0f01638d1e6a00e', NULL, 'Qwer1235555', 'baf97d60a4080e131ef673941d59d996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-27 15:14:54', NULL, NULL);
INSERT INTO `pt_user` VALUES ('c534bafb90cd4e95947c91bc36493d12', NULL, 'sumtest02', 'baf97d60a4080e131ef673941d59d996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-28 16:47:05', NULL, NULL);
INSERT INTO `pt_user` VALUES ('e3e440a92c564e30b19cff13be009e4c', NULL, 'asdasdasd', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '74fc6c1133ca49a290fb27203039d10c', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-08-03 15:45:03', NULL, NULL);
INSERT INTO `pt_user` VALUES ('e62b3c4e9d3b48b2997ad7df4a6ef5e7', NULL, 'qwe', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 11:37:42', NULL, NULL);
INSERT INTO `pt_user` VALUES ('eac49f1af0d149398abeb0f76350c354', NULL, 'qwe2', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '6fcca1bd0d5147d491b3f21509d0a5c9', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-06-03 14:16:42', NULL, NULL);
INSERT INTO `pt_user` VALUES ('ee56442c8e0d431381a811c40fccd9f8', NULL, 'qq123', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-30 12:09:36', NULL, NULL);
INSERT INTO `pt_user` VALUES ('f2d133dfb3a04503920330b6a9332265', NULL, 'sumtest3', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-03-31 22:27:15', NULL, NULL);
INSERT INTO `pt_user` VALUES ('fa3a37993c9849fbab3e974132eb2a80', NULL, 'ddd', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, '5f7fcfc9a19a436c974fbfdc8ef03ce5', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-31 18:15:26', NULL, NULL);
INSERT INTO `pt_user` VALUES ('facda6f5aff646c0913a8e59aa7e6815', NULL, 'tt123', '1147f6f8b1355ff1a190c53869cc5f78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2019-05-28 17:43:03', NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_group`;
CREATE TABLE `sys_menu_group`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单类别id',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单类别编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单类别名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_account
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account`  (
  `account_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户ID',
  `account_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '虚拟账户编号',
  `total_account` decimal(8, 0) NULL DEFAULT NULL COMMENT '总金额',
  `balance_account` decimal(8, 0) NULL DEFAULT NULL COMMENT '可用余额',
  `freeze_account` decimal(8, 0) NULL DEFAULT NULL COMMENT '冻结金额',
  `wait_account` decimal(8, 0) NULL DEFAULT NULL COMMENT '带入账金额',
  `organ_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构编码',
  `supplier_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商ID',
  `lastquerytime` date NULL DEFAULT NULL COMMENT '最后查询平安时间',
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保证金账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('xxxx', NULL, 110000, 180000, 3000, 2000, '897742be37e64cbe87eb1e13bdae9811', '5e2df135f5d14139a0132f4281c6bf42', NULL);

-- ----------------------------
-- Table structure for t_bank_cpm
-- ----------------------------
DROP TABLE IF EXISTS `t_bank_cpm`;
CREATE TABLE `t_bank_cpm`  (
  `bank_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bank_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bank_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bank_cpm
-- ----------------------------
INSERT INTO `t_bank_cpm` VALUES ('1', 'BKCHCNBJ110', '1', '100', '中国银行北京市分行', NULL);
INSERT INTO `t_bank_cpm` VALUES ('2', 'BKCHCNBJ', '-1', 'BJ', '中国银行', NULL);
INSERT INTO `t_bank_cpm` VALUES ('3', 'BKCHCNBJ200', '1', '200', '中国银行天津市分行', NULL);

-- ----------------------------
-- Table structure for t_fulblacklist
-- ----------------------------
DROP TABLE IF EXISTS `t_fulblacklist`;
CREATE TABLE `t_fulblacklist`  (
  `blackid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organ_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请注册的组织机构代码',
  `supplierid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商ID',
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '申请日期',
  `blackreason` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列入黑名单原因',
  `flowstate` decimal(8, 0) NULL DEFAULT NULL COMMENT '审核状态(0,电厂申请，1分公司审核通过，2集团审核通过，3分公司驳回，4集团驳回）',
  `remark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`blackid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商黑名单审核信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_fulblacklist_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_fulblacklist_attachment`;
CREATE TABLE `t_fulblacklist_attachment`  (
  `attachment_id` decimal(11, 0) NOT NULL,
  `blackid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attachment_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '附件路径',
  `attachment_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '附件名称',
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `download_count` decimal(11, 0) NOT NULL DEFAULT 0 COMMENT '下载次数',
  `uploaddate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '上传日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '黑名单附件表;' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_fultbbelongelectric
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbbelongelectric`;
CREATE TABLE `t_fultbbelongelectric`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplierid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商ID',
  `organizationcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商组织机构代码',
  `organ_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请注册的组织机构代码',
  `operdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `operuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '申请日期',
  `createuserid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dcorgan_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人所在单位编码',
  `dcverifyman` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `dcverifytime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '审核时间',
  `dcverifystate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核结果',
  `gsorgan_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司单位编码',
  `verifyman` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司审核人',
  `verifytime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '分公司审核时间',
  `verifystate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分公司审核结果',
  `blackliststate` decimal(8, 0) NULL DEFAULT NULL COMMENT '黑名单状态(1表示黑名单）',
  `blackreason` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列入黑名单原因',
  `remark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `flowstate` decimal(8, 0) NULL DEFAULT NULL COMMENT '审核状态(0,申请，1电厂审核通过，2分公司通过，3分公司驳回）',
  `suppliertype` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商类型（1临时供应商，2一般供应商，3内部供应商，4重点供应商）',
  `companyid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gsorganid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gsverifyman` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gsverifytime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `dcorganid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被注册的分公司id或电厂id',
  `organid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请注册的分公司id',
  `attachmentname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attachmentpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商注册审核信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fultbbelongelectric
-- ----------------------------
INSERT INTO `t_fultbbelongelectric` VALUES ('1b3b53abf21d4a949842d71257768622', 'a453f9c337514f0c99911d44b5af9076', 'qwe3', NULL, '2019-06-11 14:44:36', NULL, 'qwe3', '2019-06-03 16:16:33', NULL, NULL, NULL, NULL, '张三', '2019-06-11 14:28:22', '2', NULL, '张三', '2019-06-11 14:28:22', '', NULL, NULL, NULL, 0, '一般供应商', NULL, NULL, NULL, '2020-08-27 23:19:06', '42554f47c8614d7f8da370d8c7803f4a', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);
INSERT INTO `t_fultbbelongelectric` VALUES ('36408dbed62d4355961177b3809329eb', '9089e77f3eb54d38b01e836925165e76', '13232323', NULL, '2019-06-11 15:10:48', NULL, 'mmm2', '2019-06-11 15:10:48', NULL, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', '42554f47c8614d7f8da370d8c7803f4a', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);
INSERT INTO `t_fultbbelongelectric` VALUES ('369fa3690eec440f8fea8cdcecf46122', '5e2df135f5d14139a0132f4281c6bf42', NULL, NULL, '2019-06-11 17:13:17', NULL, 'mmm3', '2019-06-11 17:13:17', NULL, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', '42554f47c8614d7f8da370d8c7803f4a', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);
INSERT INTO `t_fultbbelongelectric` VALUES ('3e8939bc56504f8782fa6f8b6b6cb88a', 'a453f9c337514f0c99911d44b5af9076', 'qwe3', NULL, '2019-06-11 14:44:38', NULL, 'qwe3', '2019-06-03 16:16:33', NULL, NULL, NULL, NULL, '张三', '2019-06-11 14:28:22', '2', NULL, '张三', '2019-06-11 14:28:22', '', NULL, NULL, NULL, 0, '一般供应商', NULL, NULL, NULL, '2020-08-27 23:19:06', '42554f47c8614d7f8da370d8c7803f4c', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);
INSERT INTO `t_fultbbelongelectric` VALUES ('8db1b49827b942ff94db8b4a477ca926', '9089e77f3eb54d38b01e836925165e76', '13232323', NULL, '2019-06-11 15:10:48', NULL, 'mmm2', '2019-06-11 15:10:48', NULL, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', '42554f47c8614d7f8da370d8c7803f4k', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);
INSERT INTO `t_fultbbelongelectric` VALUES ('bba4fd29fa1140748ee50d2bfc74dedd', 'a453f9c337514f0c99911d44b5af9076', 'qwe3', NULL, '2019-06-11 15:14:33', NULL, 'qwe3', '2019-06-03 16:16:33', NULL, NULL, NULL, NULL, '张三', '2019-06-03 17:14:12', '2', NULL, '张三', '2019-06-03 17:14:12', '', NULL, NULL, NULL, 0, '一般供应商', NULL, NULL, NULL, '2020-08-27 23:19:06', '42554f47c8614d7f8da370d8c7803f4k', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);
INSERT INTO `t_fultbbelongelectric` VALUES ('bf9800941db24ebba472ada450c79a89', '5e2df135f5d14139a0132f4281c6bf42', NULL, NULL, '2019-06-11 17:13:17', NULL, 'mmm3', '2019-06-11 17:13:17', NULL, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', '42554f47c8614d7f8da370d8c7803f4c', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);
INSERT INTO `t_fultbbelongelectric` VALUES ('c75bf98abd0e4212a652c3d274e5b875', '9089e77f3eb54d38b01e836925165e76', '13232323', NULL, '2019-06-11 15:10:48', NULL, 'mmm2', '2019-06-11 15:10:48', NULL, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, '2020-08-27 23:19:06', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2020-08-27 23:19:06', '42554f47c8614d7f8da370d8c7803f4c', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);
INSERT INTO `t_fultbbelongelectric` VALUES ('f74085899a7e446ab7a2116f815106f8', 'a453f9c337514f0c99911d44b5af9076', 'qwe3', NULL, '2019-06-11 15:14:34', NULL, 'qwe3', '2019-06-03 17:15:03', NULL, NULL, NULL, NULL, '张三', '2019-06-03 17:15:03', '2', NULL, '张三', '2019-06-03 17:15:03', '', NULL, NULL, NULL, 0, '一般供应商', NULL, NULL, NULL, '2020-08-27 23:19:06', 'mmmmmmm', '42554f47c8614d7f8da370d8c7803f4c', NULL, NULL);

-- ----------------------------
-- Table structure for t_fultbpurchasing_operate
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbpurchasing_operate`;
CREATE TABLE `t_fultbpurchasing_operate`  (
  `opid` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `purchapplyid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '采购单id',
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userorgan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户单位',
  `user_dutyid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户岗位ID',
  `user_dutyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户岗位',
  `user_action` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作流程动作',
  `approval` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核意见: 通过或者驳回',
  `approval_reject_memo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审批驳回时的审核意见',
  `optime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '操作时间',
  `opstage` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作阶段：1：审批；2：报价（暂留）；3：中标',
  PRIMARY KEY (`opid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购单操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fultbpurchasing_operate
-- ----------------------------
INSERT INTO `t_fultbpurchasing_operate` VALUES (18, '65226e59092d41359c6ff084b79bcede', '1', '张三', '京能热电', NULL, '燃烧员', '电厂创建', NULL, NULL, '2019-07-24 15:23:44', '1');
INSERT INTO `t_fultbpurchasing_operate` VALUES (19, '5dc2c9d5238d4b4092785298923ad84a', '1', '张三', '京能热电', NULL, '燃烧员', '电厂创建', NULL, NULL, '2019-07-25 16:57:57', '1');
INSERT INTO `t_fultbpurchasing_operate` VALUES (20, 'd0e04b4a12d3418a9020254785d08915', '1', '张三', '京能热电', NULL, '燃烧员', '电厂创建', NULL, NULL, '2019-07-27 16:26:48', '1');
INSERT INTO `t_fultbpurchasing_operate` VALUES (21, '5dc2c9d5238d4b4092785298923ad84a', '1', '湖北分公司总裁', NULL, '0', NULL, '分公司驳回', NULL, 'xxxxxxxxxxxx', '2019-07-27 16:46:34', '1');
INSERT INTO `t_fultbpurchasing_operate` VALUES (22, 'd0e04b4a12d3418a9020254785d08915', '1', '湖北分公司总裁', NULL, '0', NULL, '分公司审批', NULL, '行行行', '2019-08-03 16:12:56', '1');
INSERT INTO `t_fultbpurchasing_operate` VALUES (23, 'd0e04b4a12d3418a9020254785d08915', '1', '电厂厂长', '京能热电', NULL, NULL, '电厂已选择意向供应商', NULL, NULL, '2019-08-06 17:39:46', '3');
INSERT INTO `t_fultbpurchasing_operate` VALUES (24, 'd0e04b4a12d3418a9020254785d08915', '1', '邹波', '国家电网武汉分公司', NULL, NULL, '分公司已确认中标供应商', NULL, NULL, '2019-08-06 17:42:12', '3');

-- ----------------------------
-- Table structure for t_fultbpurchasingapply
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbpurchasingapply`;
CREATE TABLE `t_fultbpurchasingapply`  (
  `purchapplyid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `baojia_endtime` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '报价截止时间',
  `apply_organ` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请单位',
  `billnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据编号',
  `applyuser` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `signoutuser` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '签发人',
  `applydate` timestamp(0) NULL DEFAULT NULL,
  `applynum` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购数量',
  `jhtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '开始交货时间',
  `jhtime_end` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '结束交货时间',
  `coaltype` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '煤种',
  `coalclass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '煤种二级分类',
  `qty` double(19, 5) NULL DEFAULT NULL COMMENT '最高限价',
  `qty_end` double(19, 5) NULL DEFAULT NULL COMMENT '最低限价',
  `yunshu_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运输方式',
  `jiaohuoplace` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交货地点',
  `yanshou_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验收方式',
  `jiesuan_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结算方式',
  `qty_desp` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '限价说明',
  `jiesuan_mode_desp` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bybaozhengmoney` int(64) NULL DEFAULT NULL COMMENT '报价保证金要求，元/吨',
  `applystate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请状态',
  `applystatenum` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请开始为0,正在审批1,结束为2',
  `beachmark_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收到基低位发热量',
  `beachmark_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收到基全硫',
  `beachmark_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全水分',
  `beachmark_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收到基灰分',
  `beachmark_5f` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收到基挥发分，以“,”存储范围，比如5%,10%',
  `beachmark_5t` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beachmark_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基水分',
  `beachmark_7` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基全硫',
  `beachmark_8f` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基挥发分',
  `beachmark_8t` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beachmark_9` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '干基高位发热量',
  `beachmark_10` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '干基全硫',
  `beachmark_11f` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '干燥无灰基挥发分',
  `beachmark_11t` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jkg_1` double(64, 0) NULL DEFAULT NULL COMMENT '粒度',
  `jkg_2` double(64, 0) NULL DEFAULT NULL COMMENT '灰熔点',
  `jkg_3` double(64, 0) NULL DEFAULT NULL COMMENT '哈市可魔系数',
  `markmemo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '煤质要求备注',
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改者',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `zbselect_memo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `zbconfirm_memo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`purchapplyid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '燃料采购计划申请单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fultbpurchasingapply
-- ----------------------------
INSERT INTO `t_fultbpurchasingapply` VALUES ('5dc2c9d5238d4b4092785298923ad84a', '34', '2019-08-03 16:35:05', '京能热电', '京能热电-2019-07-002', 'xxx', 'xxx', '2019-07-25 00:00:00', '5', '2019-07-25 00:00:00', '2019-08-10 00:00:00', '烟煤', '原煤', 5.00000, 1.00000, '1', 'mmm', '1', '1', 'sss', 'sssss', 5, '创建', '0', '5', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, 'dianchang', '2019-07-27 16:46:34', NULL, NULL);
INSERT INTO `t_fultbpurchasingapply` VALUES ('65226e59092d41359c6ff084b79bcede', '', '2019-08-03 16:35:20', '京能热电', '京能热电-2019-07-001', 'xx', 'yy', '2019-07-24 00:00:00', '1', '2019-07-24 00:00:00', '2019-08-10 00:00:00', '烟煤', '原煤', 1.00000, 1.00000, '1', 'mm', '1', '1', 'www', '', 1, '创建', '0', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, '2019-07-24 15:23:44', NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbpurchasingapply` VALUES ('d0e04b4a12d3418a9020254785d08915', '34', '2019-08-03 16:35:25', '襄阳电厂', '襄阳电厂-2019-07-003', 'xxx', 'yy', '2019-07-27 00:00:00', '1', '2019-07-27 00:00:00', '2019-08-10 00:00:00', '烟煤', '原煤', 5.00000, 1.00000, '1', 'mm', '1', '1', 'ssss', 'xxxxx', 5, '已中标', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', 'dianchang', '2019-07-27 16:26:47', 'dianchang', '2019-08-03 16:12:56', 'sdsdsdsd', '');

-- ----------------------------
-- Table structure for t_fultbpurchasingapply2
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbpurchasingapply2`;
CREATE TABLE `t_fultbpurchasingapply2`  (
  `purchapplyid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `templateid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `autoid` decimal(10, 0) NULL DEFAULT NULL,
  `operuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createuserid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permitstatus` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `billnumber` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datafrom` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datafromname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writername` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writeraccount` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writerdepartid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writerdepartname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writedate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `jhtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `jhtime_end` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `coaltype` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qty` decimal(19, 5) NULL DEFAULT NULL,
  `qty_end` decimal(19, 5) NULL DEFAULT NULL,
  `yunshu_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiaohuo_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yanshou_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiesuan_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_7` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_8` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `signname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signaccount` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhtime2` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `type_32` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createbyah` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_fb` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applystate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请状态',
  `executestate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报批状态',
  `executeid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applystatenum` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请开始为0,正在审批1,结束为2',
  `executestatenum` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报批开始为0,正在审批1,结束为2',
  `executecase` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行情况',
  `isouter` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否是外部数据',
  `type` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公开0，邀请1',
  `maxlimitprice` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最高限价',
  `paymode` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type_323` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_333` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxremark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_11` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '干基基准高位发热量',
  `type_12` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '干基基准全水分',
  `type_14` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '干基基准全硫',
  `type_16` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '干基基准灰分',
  `coalclass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kgj_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基水分',
  `kgj_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基全硫',
  `kgj_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基挥发分(小)',
  `kgj_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基挥发分(大)',
  PRIMARY KEY (`purchapplyid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '燃料采购计划申请单2' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_fultbpurchasingapplydetail
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbpurchasingapplydetail`;
CREATE TABLE `t_fultbpurchasingapplydetail`  (
  `applydetailid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchapplyid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplierid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createuserid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qty` double(19, 5) NULL DEFAULT NULL,
  `qcalmin` double(19, 5) NULL DEFAULT NULL,
  `is_valid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_zb` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `localplace` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_bj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ischeckedbyfgs` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被分公司选中',
  `ischeckedbydc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被电厂选中',
  `zbprice` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastbjdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '最后一次报价时间',
  `sendport` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sendportp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lf` double(19, 5) NULL DEFAULT NULL,
  `pricemin` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fare` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hff` double NULL DEFAULT NULL,
  `hff_end` double NULL DEFAULT NULL,
  `ash` double NULL DEFAULT NULL,
  `qsf` double NULL DEFAULT NULL,
  `pricesupply` double NULL DEFAULT NULL,
  `pricecontact` double NULL DEFAULT NULL,
  `signnumber` double NULL DEFAULT NULL,
  `signprice` double NULL DEFAULT NULL,
  PRIMARY KEY (`applydetailid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '燃料采购计划供应商报价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fultbpurchasingapplydetail
-- ----------------------------
INSERT INTO `t_fultbpurchasingapplydetail` VALUES ('0e01589bdfb347368672a43e2aa055851565082598327', 'd0e04b4a12d3418a9020254785d08915', '5e2df135f5d14139a0132f4281c6bf42', 'mmm3', '2019-08-06 17:09:58', '1509be3792114dfd9fded194ed35f9e7', 1.00000, 2.00000, '1', '2', '大同', '1', '1', '1', NULL, '2019-08-06 17:09:58', '大连港', '北方港口', 2.00000, '61364E1D962FDC20', '1', 1, 3, 5, 5, 5, 5, 1, 1);

-- ----------------------------
-- Table structure for t_fultbsupplier
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbsupplier`;
CREATE TABLE `t_fultbsupplier`  (
  `supplierid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `membertypeid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型ID',
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人\r\n            创建日期\r\n            修改人\r\n            修改日期\r\n            供应商名称\r\n            供应商编号\r\n            供应商简称\r\n            法人代表\r\n            注册资金\r\n            备用字段\r\n            经营执照编号\r\n            经营许可证编号\r\n            创建人',
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `operuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `operdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改日期',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商编号',
  `shortname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `corporation` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表',
  `financing` decimal(19, 5) NULL DEFAULT NULL COMMENT '注册资金',
  `licence` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营执照编号',
  `coallicence` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营许可证编号',
  `taxcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '税务登记证代码',
  `linkman` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `linktel` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `faxcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真号码',
  `address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `postalcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `isstop` int(10) NULL DEFAULT NULL COMMENT '是否停用',
  `creditlevel` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信誉等级',
  `norder` int(10) NULL DEFAULT NULL COMMENT '顺序号',
  `organizationcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构代码',
  `conemail` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人Email',
  `mexplain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '特别说明',
  `registerplace` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司注册地',
  `corporationidentity` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表身份证',
  `openbank` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户银行',
  `bankaccount` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行账号',
  `coalsource` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '煤源存放地点、数量、质量',
  `transportmode` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '运输方式及保障能力',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商介绍',
  `achievement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商业绩',
  `times` int(8) NULL DEFAULT NULL COMMENT '次数',
  `clicklogintime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `nclicklogintime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `autoid` int(10) NULL DEFAULT NULL,
  `supplierkind` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `lastlogintime` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近登陆时间',
  `stepnumber` int(10) NULL DEFAULT NULL COMMENT '注册到第几步',
  `createuserid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minespecialcost` decimal(19, 5) NULL DEFAULT NULL,
  `railcarriage` decimal(19, 5) NULL DEFAULT NULL,
  `datafrom` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_fb` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pt_audit` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否通过(平台审核：0否，1是，默认为0)',
  `is_caauth` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否通过CA认证（0否，1是，默认为0）',
  `fixedphones` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `is_sum` int(1) NULL DEFAULT NULL COMMENT '0普通，1阳光，2货主，3船东，4代理',
  `mergetype` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件类型:是否三证合一(0否，1是)',
  `mergecode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码(即是注册用户名)',
  `comsubmit` int(1) NULL DEFAULT NULL COMMENT '普通用户提交审核状态(0提交未审核，1审核通过)',
  `sumsubmit` int(1) NULL DEFAULT NULL COMMENT '阳光用户提交审核状态(0提交未审核，1审核通过)',
  `blacklisttype` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '黑名单类型(默认为空，1集团黑名单)',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电厂名称',
  `is_vip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isbing` int(11) NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`supplierid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fultbsupplier
-- ----------------------------
INSERT INTO `t_fultbsupplier` VALUES ('1d6cc7c6b1034f32931081a0bb972a40', NULL, '29fc566e9bdc4612bccb511d2e5dd6fc', NULL, '2019-06-03 09:44:06', NULL, '2019-06-03 09:44:45', ' asd', NULL, 'a', 'xdw', 123.00000, NULL, NULL, NULL, '', '13437124333', '', NULL, '', NULL, NULL, NULL, 'qwe1', '', NULL, '北京市,北京市,东城区,', '420115198704201615', NULL, NULL, 'w', 's', 'a', 's', NULL, '2019-06-03 09:44:45', '2019-06-03 09:44:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '', 1, '1', '777888', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier` VALUES ('459574a3f0504791aceeef2ff841aae3', NULL, '9a1f2aaa426b4bb9b005bf536a937198', NULL, '2019-05-31 13:47:57', NULL, '2019-05-31 16:44:58', 'wnm', NULL, 'w', 'sadsadasd', 123.00000, '', NULL, '', '', '13437124333', '', NULL, '', NULL, NULL, NULL, 'wqqwrr', '', NULL, '北京市,北京市,东城区,', '420115198704201615', '123', '123', 'q', 'w', 'e', 'r', NULL, '2020-08-27 23:19:07', '2020-08-27 23:19:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier` VALUES ('5e2df135f5d14139a0132f4281c6bf42', NULL, '1509be3792114dfd9fded194ed35f9e7', NULL, '2019-07-28 18:08:34', NULL, '2019-06-11 17:13:17', 'dddddddddddddd', NULL, 'dda', 'sddd', 123.00000, NULL, NULL, NULL, '', '13437124333', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '北京市,北京市,东城区,', NULL, '北京上地支行', '7777777', 'w', 'q', 'r', 't', NULL, '2020-08-27 23:19:07', '2020-08-27 23:19:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier` VALUES ('64fa19340d8d4b53bc7593321436d4ae', NULL, '622f23ef47d944e2ac326a5345d3481e', NULL, '2019-05-31 17:22:57', NULL, '2019-05-31 17:23:49', 'sdsdw', NULL, 'ww', 'xdw', 123.00000, NULL, NULL, NULL, '', '13437124333', '', NULL, '', NULL, NULL, NULL, 'qqq2', '', NULL, '北京市,北京市,东城区,', 'ssss', NULL, NULL, 'w', 'q', 'a', 's', NULL, '2019-05-31 17:23:49', '2019-05-31 17:23:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '1', 'sss', NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier` VALUES ('9089e77f3eb54d38b01e836925165e76', NULL, '9fd0b0e0e64349a5b6eca33da65c8a00', NULL, '2019-06-11 15:19:35', NULL, '2019-06-11 15:13:10', 'sdwww', NULL, 'ww', 'asdasd', 100.00000, '', NULL, '', '', '13437124333', '', NULL, '', NULL, NULL, NULL, '13232323', '', NULL, '北京市,北京市,东城区,', '420115198704201615', '1111111111', '1111111111', 'q', 'w', 'e', 'w', NULL, '2020-08-27 23:19:07', '2020-08-27 23:19:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '1', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier` VALUES ('97cb07d5dcd348b288f6991c75d39d00', NULL, 'eac49f1af0d149398abeb0f76350c354', NULL, '2019-06-03 14:21:12', NULL, '2019-06-03 14:21:12', 'tm', NULL, 'tm', 'xdw', 123.00000, NULL, NULL, NULL, '', '13437124333', '', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '北京市,北京市,东城区,', NULL, NULL, NULL, 'w', 'q', 's', 'd', NULL, '2020-08-27 23:19:07', '2020-08-27 23:19:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier` VALUES ('a453f9c337514f0c99911d44b5af9076', NULL, '0edc495f39b7491e808d4b08e5df2b4a', NULL, '2019-06-03 16:16:33', NULL, '2019-06-03 16:17:00', 'xxxxdsdsd', NULL, 'asdasdasdsad', 'xczxcxdgdg', 123.00000, NULL, NULL, NULL, '', '13437124333', '', NULL, '', NULL, NULL, NULL, 'qwe3', '', NULL, '北京市,北京市,东城区,', '420115198704201615', NULL, NULL, 'w', 'a', 's', 'd', NULL, '2019-06-03 16:17:00', '2019-06-03 16:17:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '', 1, '1', 'sdsdsd', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier` VALUES ('bffa3ddc41f547a0841a80118c144124', NULL, '36860a4a673d43818e70b69dedbe92f8', NULL, '2019-05-31 12:44:19', NULL, '2019-05-31 16:26:17', 'mmm', NULL, 'm', 'dsds', 123.00000, '', NULL, '', '', '13437124333', '', NULL, '', NULL, NULL, NULL, 'tttt', '', NULL, '北京市,北京市,东城区,', '420115198704201615', 'www', '6214', 'w', 'q', 's', 'd', NULL, '2020-08-27 23:19:07', '2020-08-27 23:19:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_fultbsupplier2
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbsupplier2`;
CREATE TABLE `t_fultbsupplier2`  (
  `supplierid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `membertypeid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型ID',
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人\r\n            创建日期\r\n            修改人\r\n            修改日期\r\n            供应商名称\r\n            供应商编号\r\n            供应商简称\r\n            法人代表\r\n            注册资金\r\n            备用字段\r\n            经营执照编号\r\n            经营许可证编号\r\n            创建人',
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `operuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `operdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改日期',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商编号',
  `shortname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `corporation` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表',
  `financing` decimal(19, 5) NULL DEFAULT NULL COMMENT '注册资金',
  `licence` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营执照编号',
  `coallicence` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营许可证编号',
  `taxcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '税务登记证代码',
  `linkman` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `linktel` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `faxcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真号码',
  `address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `postalcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `isstop` decimal(10, 0) NULL DEFAULT NULL COMMENT '是否停用',
  `creditlevel` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信誉等级',
  `norder` decimal(10, 0) NULL DEFAULT NULL COMMENT '顺序号',
  `organizationcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构代码',
  `conemail` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人Email',
  `mexplain` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '特别说明',
  `registerplace` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司注册地',
  `corporationidentity` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表身份证',
  `openbank` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户银行',
  `bankaccount` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行账号',
  `coalsource` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '煤源存放地点、数量、质量',
  `transportmode` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '运输方式及保障能力',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '供应商介绍',
  `achievement` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '供应商业绩',
  `times` decimal(8, 0) NULL DEFAULT NULL COMMENT '次数',
  `clicklogintime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `nclicklogintime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `autoid` decimal(10, 0) NULL DEFAULT NULL,
  `supplierkind` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `lastlogintime` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最近登陆时间',
  `stepnumber` decimal(10, 0) NULL DEFAULT NULL COMMENT '注册到第几步',
  `pwdque` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密保问题',
  `pwdans` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密保答案',
  `createuserid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minespecialcost` decimal(19, 5) NULL DEFAULT NULL,
  `railcarriage` decimal(19, 5) NULL DEFAULT NULL,
  `datafrom` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_fb` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`supplierid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购商基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_fultbsupplier_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbsupplier_attachment`;
CREATE TABLE `t_fultbsupplier_attachment`  (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商ID',
  `attachment_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '附件路径',
  `attachment_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '附件名称( 对应的证件编号，比如身份证号)',
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 证件类型(mergecode统一社会信用代码,licence营业执照号,taxcode税务登记号,organizationcode组织机构代码证号,bankaccount开户行账号,corporationidentity法人代表身份证号,blacklist黑名单附件)',
  `download_count` decimal(11, 0) NOT NULL DEFAULT 0 COMMENT '下载次数',
  `attachment_active_date` timestamp(0) NULL DEFAULT NULL COMMENT '证件有效期',
  `att_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `organid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拉黑电厂id',
  `createdate` timestamp(0) NULL DEFAULT NULL COMMENT '拉黑时间',
  PRIMARY KEY (`attachment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商附件表;' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fultbsupplier_attachment
-- ----------------------------
INSERT INTO `t_fultbsupplier_attachment` VALUES (26, 'faac8850383c4f7db781b468ad7e2538', '/u/cms/gd/member/b7845f44db7d488d9ced81988de45784.PNG', '8797', 'mergecode', 0, '2018-03-21 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (27, 'faac8850383c4f7db781b468ad7e2538', '/u/cms/gd/member/0385f116c963407d87b1ff4f0db23f12.PNG', 'ssss', 'corporationidentity', 0, '2018-03-21 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (28, 'bc1357c8abc7462e925ec3ef5b57624c', '/u/cms/gd/member/e99c7415601f4dd4b2801c53470575bc.PNG', 'tm', 'mergecode', 0, '2018-03-29 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (29, 'bc1357c8abc7462e925ec3ef5b57624c', '/u/cms/gd/member/3ea04f5d761a4ef89749c56d4bf5e756.PNG', '5566', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (30, 'bc1357c8abc7462e925ec3ef5b57624c', '/u/cms/gd/member/495549295f5d4a4e98961c98907efbef.PNG', '420115198704201615', 'corporationidentity', 0, '2018-03-29 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (31, '8ea035d878bd4d9ab8daae1550ff903a', '', 'sumtest1', 'organizationcode', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (32, '7e7f0b5975044ea58169e9b4a0e685e1', '', 'sumtest1', 'organizationcode', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (33, '70642671d63c464897343f9a172061ac', '', 'sumtest1', 'organizationcode', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (34, 'ef143c1c82704362a4353de3ebad763b', '', 'sumtest1', 'organizationcode', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (35, '186d262ff31e4b748e9db9f8a47b87a7', '%2Fu%2Fcms%2Fgd%2Fmember%2F1ad99fc103ae42ba8c722588fcfeb352.PNG', 'sdsd', 'mergecode', 0, '2018-03-30 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (36, 'a114a04083814fd991deada2c32d2ebb', '%2Fu%2Fcms%2Fgd%2Fmember%2F59480bf16e27414b8db6530bbace3887.PNG', '456', 'mergecode', 0, '2018-03-30 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (37, '54c91e819c4142d2aaf76526a03a0b08', '%2Fu%2Fcms%2Fgd%2Fmember%2F4db47b5e7a6043848e194f1d42d48935.PNG', '66', 'mergecode', 0, '2018-03-30 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (38, 'efd37adaf0ea4f32a2680e040c96547b', '%2Fu%2Fcms%2Fgd%2Fmember%2Fef02d3d6f62942f593236ed18f15047d.PNG', 'sa', 'mergecode', 0, '2018-02-27 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (39, 'f556f4e3fb8242238865e6675c710115', '%2Fu%2Fcms%2Fgd%2Fmember%2F295d16b21ec84c09ac6316657ab2c298.PNG', '1', 'mergecode', 0, '2018-03-30 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (40, 'f556f4e3fb8242238865e6675c710115', '%2Fu%2Fcms%2Fgd%2Fmember%2Feb951ac5acf14830bb6ccc53e63b88ab.PNG', '3', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (41, 'f556f4e3fb8242238865e6675c710115', '%2Fu%2Fcms%2Fgd%2Fmember%2F998ae08e9c2e44d6b158aa39ba7c39a8.PNG', '420115198704201615', 'corporationidentity', 0, '2018-03-13 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (42, '684004edae1345b688a072df8a82e187', '%252Fu%252Fcms%252Fgd%252Fmember%252Ff53d5f440d8a4e949036f162f5b367ee.PNG', 'tongyi', 'mergecode', 0, '2018-03-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (43, '684004edae1345b688a072df8a82e187', '%2Fu%2Fcms%2Fgd%2Fmember%2F6aa5a1127992450ca09ab8882a57d2e0.PNG', '111', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (44, '684004edae1345b688a072df8a82e187', '%252Fu%252Fcms%252Fgd%252Fmember%252F52833b7adc584bc48178a9fde6f86a0c.PNG', '420115198704201615', 'corporationidentity', 0, '2018-03-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (45, '3969d6586a174366b29889d4470c9b0e', '/u/cms/gd/member/973d8254c7d84ca883e4cdb75c2fc295.PNG', 'w', 'mergecode', 0, '2018-03-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (46, '3969d6586a174366b29889d4470c9b0e', '/u/cms/gd/member/3fe2deb1391648ad945157c73cfeb81f.PNG', '420115198704201615', 'corporationidentity', 0, '2018-03-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (47, '3969d6586a174366b29889d4470c9b0e', '/u/cms/gd/member/fa8b430442bf400691fd07c8ec0abab2.PNG', '3333', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (48, 'ab4dadca76cb48cca94b2f43895554df', '/u/cms/gd/member/56fab50ff4174d9bb22b7864672a8a4c.PNG', 'ssss', 'mergecode', 0, '2019-05-22 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (49, 'ab4dadca76cb48cca94b2f43895554df', '/u/cms/gd/member/ab63bdadc17b4069a12bbcb27e6fa2e8.PNG', '2123323123', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (50, 'ab4dadca76cb48cca94b2f43895554df', '/u/cms/gd/member/dea6948a59f649a2be95e4ff6a23672c.PNG', '420115198704201615', 'corporationidentity', 0, '2019-05-22 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (51, 'f99bede701f74cc38f4d76e3efae59cc', '/u/cms/gd/member/4a73bab392df4140b45b1913bbaf0c0f.PNG', 'xxxx', 'mergecode', 0, '2019-05-22 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (52, 'f99bede701f74cc38f4d76e3efae59cc', '/u/cms/gd/member/2a462b4ef380425fa6b9d14885a72fe4.PNG', '2123232', 'corporationidentity', 0, '2019-05-23 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (53, 'f7b434785f6048be80ce475c278d66bc', '/u/cms/gd/member/29846f3038bd47b590678ce9838c9e69.PNG', 'asdsd', 'mergecode', 0, '2019-05-30 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (54, 'f7b434785f6048be80ce475c278d66bc', '/u/cms/gd/member/5ff57be8208b46378615f77d111f5257.PNG', '420115198705261245', 'corporationidentity', 0, '2019-05-30 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (55, '82d41bd6e123491db21460e3c1c741b3', '/u/cms/gd/member/d188d3c90b2c42f99b3b48965cead310.PNG', 'sss', 'mergecode', 0, '2019-05-30 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (56, '82d41bd6e123491db21460e3c1c741b3', '/u/cms/gd/member/8da0cec8372e44b89dc3cbf608b454fb.PNG', '11111111111111111', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (57, '82d41bd6e123491db21460e3c1c741b3', '/u/cms/gd/member/52f95a6ffd6b465ebb64dbc048a4f3d2.PNG', '420115198704201615', 'corporationidentity', 0, '2019-05-30 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (58, 'bffa3ddc41f547a0841a80118c144124', '/u/cms/gd/member/74e750d36478487cbcdff6434ad73e81.PNG', '6214', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (59, 'bffa3ddc41f547a0841a80118c144124', '/u/cms/gd/member/55b3f177bdcd44deb12fb0ae48d082d4.PNG', '420115198704201615', 'corporationidentity', 0, '2019-05-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (60, '459574a3f0504791aceeef2ff841aae3', '/u/cms/gd/member/fb2ac68346284ba5a38e6adc0afffcf0.PNG', '123', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (61, '459574a3f0504791aceeef2ff841aae3', '/u/cms/gd/member/957b15205e674367b5188d1c4ddf8796.PNG', '420115198704201615', 'corporationidentity', 0, '2019-05-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (62, '64fa19340d8d4b53bc7593321436d4ae', '/u/cms/gd/member/1f5a6adb5e6b4df096ad1b7bef91317a.PNG', 'sss', 'mergecode', 0, '2019-05-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (63, '64fa19340d8d4b53bc7593321436d4ae', '/u/cms/gd/member/3eb64164fcbb41e788dfcc09953dba97.PNG', 'ssss', 'corporationidentity', 0, '2019-05-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (64, '1d6cc7c6b1034f32931081a0bb972a40', '/u/cms/gd/member/562325b28f2d4aecb97543631ef0aaed.PNG', '777888', 'mergecode', 0, '2019-06-03 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (65, '1d6cc7c6b1034f32931081a0bb972a40', '/u/cms/gd/member/512761b128984e1d846317132b5533af.PNG', '420115198704201615', 'corporationidentity', 0, '2019-06-03 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (66, 'a453f9c337514f0c99911d44b5af9076', '/u/cms/gd/member/cec549bbfe744470a109c9262944cd5a.PNG', 'sdsdsd', 'mergecode', 0, '2019-06-03 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (67, 'a453f9c337514f0c99911d44b5af9076', '/u/cms/gd/member/f45a57b21bae4029ae2f04a04e5fa589.PNG', '420115198704201615', 'corporationidentity', 0, '2019-06-03 00:00:00', NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (68, '9089e77f3eb54d38b01e836925165e76', '/u/cms/gd/member/6020f0ff112240fe85a9c6c1913da3a4.PNG', '1111111111', 'bankaccount', 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_fultbsupplier_attachment` VALUES (69, '9089e77f3eb54d38b01e836925165e76', '/u/cms/gd/member/7dea8c58bf8d46c5b3e34b21d9aed8aa.PNG', '420115198704201615', 'corporationidentity', 0, '2019-06-05 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_fultbsupplier_member
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbsupplier_member`;
CREATE TABLE `t_fultbsupplier_member`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplierId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payStandard` int(10) NULL DEFAULT NULL,
  `createDate` timestamp(0) NULL DEFAULT NULL,
  `expiryDate` timestamp(0) NULL DEFAULT NULL,
  `oldStandard` int(11) NULL DEFAULT NULL,
  `operDate` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `noPrompt` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_fultbsupplier_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbsupplier_relation`;
CREATE TABLE `t_fultbsupplier_relation`  (
  `relationid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relationdeptcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplierid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approvedeptcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approveuser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approvedate` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `approveinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suppliertype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`relationid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_fultbsupplier_relation
-- ----------------------------
INSERT INTO `t_fultbsupplier_relation` VALUES ('044f7c0aa0e648259a3d0d18566beed2', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('05ae3576e83e43fa96f21d0423c9db62', '42554f47c8614d7f8da370d8c7803f4c', '64fa19340d8d4b53bc7593321436d4ae', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('0b8d958c92ab4f0b80f28012e0321b98', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('127b24192253482eaecafdffa215ce8d', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('16815bdee3ca48c89fc33e8bca763a10', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('1a1e347a212c4553ba0718d4444b911b', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('1b4527a077ca4a37a4ca7881b206466b', '42554f47c8614d7f8da370d8c7803f4c', '64fa19340d8d4b53bc7593321436d4ae', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('1f515bde4ecb43b9a5b468582c01ad80', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('23c1d1415b1045ed8bfad5ffe79dff54', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('296a73484dee4cf38bf302bbc20f7941', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('2c295835d55b4a619551b7dd18442f06', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('2d06a3ba80b54a389c1a2eee698acbe4', '42554f47c8614d7f8da370d8c7803f4k', 'faac8850383c4f7db781b468ad7e2538', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('3065eb1fa41a412ab8840655ab0c9a57', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('314f1cfdf0d745ac8f1723ee3fa530ad', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('34e9075df0c74388bce1c42c8cb8d47c', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('3852d876ff7b487b87fa89df523336e2', 'mmmmmmm', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('3bb468b8c88e4e1a95a29d37d74606e5', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('3ca4dfc48ad4460aafbc505f3087c707', '42554f47c8614d7f8da370d8c7803f4c', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 14:28:22', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('3cab7cebe9ba4757af8c2932572373d3', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('3defa5140a594d218173ec8584baae3c', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('3f406aa4207b4a89b12070da09b0956a', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('4613e18d683543529c2e820fadbebae3', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('4de67d885cb348a6a0d4d0e10cb438be', '42554f47c8614d7f8da370d8c7803f4a', 'faac8850383c4f7db781b468ad7e2538', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('5241e81c6a46496daad8974965a527c5', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('53f857f4ea024608b856f076f7e9f244', '42554f47c8614d7f8da370d8c7803f4a', '64fa19340d8d4b53bc7593321436d4ae', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('5608267b3d8b46adac857acf06c4d707', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('58c28375778c4442b9f05e2bffedfc8c', '42554f47c8614d7f8da370d8c7803f4k', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('5c958024578f4550964534ff2bdad48a', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('5dfb5b47d2b74543a3868ab867d199e4', '42554f47c8614d7f8da370d8c7803f4c', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('6074ea651128413482fb8932b902f9c8', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('60a602e8a94545a6a2c43544c39fe9e0', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('643fda28113444578713631d3ebb6667', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('6535c79728a24da89825a4983ae0e766', '42554f47c8614d7f8da370d8c7803f4k', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('66e29ff31084468e8ac9efb48a1de887', '42554f47c8614d7f8da370d8c7803f4c', 'faac8850383c4f7db781b468ad7e2538', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('6bf5565051a747feaea7d3b5cb465cdc', '42554f47c8614d7f8da370d8c7803f4c', 'f99bede701f74cc38f4d76e3efae59cc', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('6cded08d6b5949a4ab46524d9d7cde46', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('73b3b3c2e5444907b0022305ef318050', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('7bbf8140d44b45a3bffa46e84ca92d61', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('7ce64508e140437d88df019fbb9e24ae', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('7cf1d0d027064a1786ad489fa526c1e0', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('8121140f9a5247a989ee3b2e6f2b6bf9', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('8249d8f825f346dbb3d36ffec499992f', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('8934ba572d8a495fb44564ca50de435e', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('8a48769f3a2c4c58b787de7f112d5253', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('8e01fd3a9a86428a81c9929dbcd632f4', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('8f4c036e95404c209e2f5175ccc5761f', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('9177e66627334f08a278d8e78ee4a0b4', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('92d59fb143ea421bbdc23bf5de6ff6dc', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('94007e8fb87a4a99961a1d667de75937', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('991e1d14b5bd49f0b9bcca851e294826', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('9bbddfd8530f4072a331258e75056bc9', '42554f47c8614d7f8da370d8c7803f4k', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('9ebed2812bb749a690b1c20f0afbaf2b', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('9f73ad01fb74459a8710c4dfb2d5578a', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('a0ea85007e134e33b855706c0ce02ac2', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('a4d0a584870348c78e1b217116393516', '42554f47c8614d7f8da370d8c7803f4c', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('a5de317f64bb4916a92b54c12808b600', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('ae38f25bdaaf4c42a4e060d10c6413c4', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('aee5c1a9a91847dbba4c0414acc9dabb', 'mmmmmmm', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('b148b5fc0ec4404ba637d7a831c46459', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('b289c5888de44906b84f944cf7db5b29', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('b5c4cf0459824c379d4440c5a6b0733d', '42554f47c8614d7f8da370d8c7803f4a', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 14:28:22', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('b6318fffb25d479c8895eac3ea631e2e', '42554f47c8614d7f8da370d8c7803f4c', '64fa19340d8d4b53bc7593321436d4ae', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('b6ce83531cbc4cf197d94a19b5eb3d15', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('b7a2aff08e9041d6869058c5a644c514', '42554f47c8614d7f8da370d8c7803f4c', '64fa19340d8d4b53bc7593321436d4ae', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('b7e7b4ed602143639d769c5b8f81b512', 'mmmmmmm', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('bc8f24f7bfa44540b0ababc89c1fd7b8', '42554f47c8614d7f8da370d8c7803f4c', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('bca03aa3baf84669a49e9cfea3be0e3d', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('c0ebe99d849a4c7c87a641552f5936de', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('c3043d01b6704d9ba1d56617ce476e8d', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('cc8879e0896541308b8819329752b815', '42554f47c8614d7f8da370d8c7803f4c', 'f99bede701f74cc38f4d76e3efae59cc', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('d3ae2ce1206148f4b79429d1302e5685', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('d53c26fdf4724051a428362d4c5d5582', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('da8922f292c9435abbb82592e2068d8c', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('db6a0d4ecdf64efda60a1baec0927d3f', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('dcbf89d2001446bf873abd06280889a0', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('e053b2eec95b4bb1970f7b83c95d0997', '42554f47c8614d7f8da370d8c7803f4c', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('e056fbf59526472bbea3ccad2996c747', '42554f47c8614d7f8da370d8c7803f4k', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('e0f66da4e6164705909a1e9cda4c4fa5', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('e42f0aac0c284f05ab143b295ba16792', 'mmmmmmm', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('ea8d67c29b9a42518a847487c8fb280f', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('ed8efd389d2948c398cb0536bc8ba0ea', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('efa3e0ea4b4a444bb6aa9711a33d4e2b', '42554f47c8614d7f8da370d8c7803f4c', '64fa19340d8d4b53bc7593321436d4ae', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('f24e2668987e421f9ed6fde7edea0018', '42554f47c8614d7f8da370d8c7803f4c', '64fa19340d8d4b53bc7593321436d4ae', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('f4fcd16623bb40178321def66ccd0c98', '42554f47c8614d7f8da370d8c7803f4k', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('f61406c706e74edcaf82695bafc9be17', '42554f47c8614d7f8da370d8c7803f4c', '1d6cc7c6b1034f32931081a0bb972a40', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');
INSERT INTO `t_fultbsupplier_relation` VALUES ('f9e8d704dfe742f29fa31ac680e7da03', '42554f47c8614d7f8da370d8c7803f4c', 'a453f9c337514f0c99911d44b5af9076', '42554f47c8614d7f8da370d8c7803f4c', '张三', '2019-06-11 10:53:40', '', '2', '1');

-- ----------------------------
-- Table structure for t_fultbtemplate
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbtemplate`;
CREATE TABLE `t_fultbtemplate`  (
  `templateid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `autoid` decimal(10, 0) NULL DEFAULT NULL,
  `operuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createuserid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permitstatus` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `billnumber` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datafrom` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datafromname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writername` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writeraccount` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writerdepartid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writerdepartname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writedate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `jhtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `jhtime_end` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `coaltype` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qty` decimal(19, 5) NULL DEFAULT NULL,
  `qty_end` decimal(19, 5) NULL DEFAULT NULL,
  `yunshu_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiaohuo_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yanshou_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiesuan_mode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_5` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_6` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_7` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_8` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signaccount` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhtime2` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `type_32` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createbyah` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_fb` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_323` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_333` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxremark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_11` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_12` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_14` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_16` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coalclass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kgj_1` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基水分',
  `kgj_2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基全硫',
  `kgj_3` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基挥发分(小)',
  `kgj_4` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空干基挥发分(大)',
  PRIMARY KEY (`templateid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '燃料采购申请单模版' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_fultbwinbidding
-- ----------------------------
DROP TABLE IF EXISTS `t_fultbwinbidding`;
CREATE TABLE `t_fultbwinbidding`  (
  `bidid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applydetailid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商报价ID',
  `purchapplyid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '采购单ID',
  `supplierid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商ID',
  `user_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `operdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `autoid` decimal(10, 0) NULL DEFAULT NULL,
  `operuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `createuserid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserdeptcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zbqty` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中标数量（默认为最后一次报价数量）',
  `zbprice` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中标价格（默认为最后一次报价价格）',
  `is_bid` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否中标（0否，1是，默认为0）',
  PRIMARY KEY (`bidid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中标信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_infopublish
-- ----------------------------
DROP TABLE IF EXISTS `t_infopublish`;
CREATE TABLE `t_infopublish`  (
  `publish_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prices` double(255, 0) NULL DEFAULT NULL,
  `prices_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_time` timestamp(0) NULL DEFAULT NULL,
  `coal_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coal_number` double NULL DEFAULT NULL,
  `coal_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delivery_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visible_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ar_lhv` double NULL DEFAULT NULL,
  `ar_tm` double NULL DEFAULT NULL,
  `ar_vad_start` double NULL DEFAULT NULL,
  `ar_vad_end` double NULL DEFAULT NULL,
  `ar_aad` double NULL DEFAULT NULL,
  `ar_ts` double NULL DEFAULT NULL,
  `db_hhv` double NULL DEFAULT NULL,
  `db_vad_start` double NULL DEFAULT NULL,
  `db_vad_end` double NULL DEFAULT NULL,
  `db_aad` double NULL DEFAULT NULL,
  `db_sgq` double NULL DEFAULT NULL,
  `db_mm` double(255, 0) NULL DEFAULT NULL,
  `db_st` double NULL DEFAULT NULL,
  `db_hgi` double NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_operate_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `publish_end_time` timestamp(0) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approve_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_start_time` timestamp(0) NULL DEFAULT NULL,
  `linkman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `linktel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`publish_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_inter_bank
-- ----------------------------
DROP TABLE IF EXISTS `t_inter_bank`;
CREATE TABLE `t_inter_bank`  (
  `inter_bank_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inter_bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inter_bank_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_inter_bank
-- ----------------------------
INSERT INTO `t_inter_bank` VALUES ('1', '网商银行');

-- ----------------------------
-- Table structure for t_membertype
-- ----------------------------
DROP TABLE IF EXISTS `t_membertype`;
CREATE TABLE `t_membertype`  (
  `membertypeid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型ID',
  `membertypename` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员类型名称（采购商、供应商、贸易商等）',
  `remark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`membertypeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员类型表，用户存储会员类型信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_supgradeitem_data
-- ----------------------------
DROP TABLE IF EXISTS `t_supgradeitem_data`;
CREATE TABLE `t_supgradeitem_data`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标识',
  `supplierid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_type_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型:日,周,月,季,年',
  `item_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time_id` decimal(19, 0) NULL DEFAULT NULL,
  `item_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本编码可以从标准指标编码选择，也可自己添加，只代表指标编码，不冠前缀',
  `sys_res_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
  `buyercode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购商编码',
  `item_value_fact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实际值',
  `item_value_report` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上报值',
  `item_value_approve` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批值',
  `state_id` decimal(2, 0) NULL DEFAULT NULL COMMENT '1：草稿状态 (保存)\r\n            2：初始状态 (提交)\r\n            3:  前期修改状态 (提交后到上报时间点前的修改状态)\r\n            4:  后期修改状态 (上报时间点后的修改状态)',
  `version_id` decimal(4, 0) NULL DEFAULT NULL,
  `fill_in_person` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_id` datetime(0) NULL DEFAULT NULL COMMENT '日期标识',
  `end_update_date` datetime(0) NULL DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `auditing_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核标志',
  `report_set` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上报类型:1-不上报，2-上报集团，3-上报分公司，4-上报集团和分公司',
  `is_gs_check` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否公司审核：1：是，分公司审核；0：否，分公司不审核',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商评级数据明细表（每月评一次）\r\n\r\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_suppliergrade
-- ----------------------------
DROP TABLE IF EXISTS `t_suppliergrade`;
CREATE TABLE `t_suppliergrade`  (
  `gradeid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `grade_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储供应商等级分类数据（重要供应商、一般供应商、临时供应商等）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_suppliergrade5
-- ----------------------------
DROP TABLE IF EXISTS `t_suppliergrade5`;
CREATE TABLE `t_suppliergrade5`  (
  `supplierid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gradeid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `grade_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储供应商等级分类数据（重要供应商、一般供应商、临时供应商等）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_suppliergradeitem
-- ----------------------------
DROP TABLE IF EXISTS `t_suppliergradeitem`;
CREATE TABLE `t_suppliergradeitem`  (
  `item_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '指标标识',
  `item_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '指标代码',
  `item_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标名称',
  `mprecision` decimal(8, 0) NULL DEFAULT NULL COMMENT '精度',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序',
  `weight` decimal(6, 2) NULL DEFAULT NULL COMMENT '权重',
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储供应商评级相关权重指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_water_account
-- ----------------------------
DROP TABLE IF EXISTS `t_water_account`;
CREATE TABLE `t_water_account`  (
  `water_account_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流水账ID',
  `account_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户ID',
  `water_account_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水账code(冻结F,解冻U,存款D,退款R)',
  `opt_organ_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人操作人组织编号',
  `opt_member` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人操作人ID',
  `opt_time` datetime(0) NULL DEFAULT NULL COMMENT '创建人操作时间',
  `opt_member_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人操作人名称',
  `remittance_member` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批人操作人名称',
  `remittance_organ_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人操作人组织编号',
  `remittance_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '汇款方式(1为已审批)',
  `remittance_time` datetime(0) NULL DEFAULT NULL COMMENT '汇款时间',
  `opt_remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人备注',
  `amount` decimal(8, 0) NULL DEFAULT NULL COMMENT '金额',
  `purchapply_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单ID',
  `bill_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购单业务单号',
  `type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缴纳类型(1入账2出账)',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批人备注',
  `status` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态位(0待平台确认,1平台已确认,2平台已拒绝)',
  `balance_account` double NULL DEFAULT NULL COMMENT '可用余额',
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购单创建人所属单位名称',
  `application_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0未提交;1处理中;2成功;3失败(驳回)',
  `attachment_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '凭证路径',
  `attachment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '凭证名称',
  PRIMARY KEY (`water_account_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '账户流水帐(现金缴纳和退还)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_water_account
-- ----------------------------
INSERT INTO `t_water_account` VALUES ('fab2c949ef5746ea8a0328bcba18b710', 'xxxx', 'mmm32019-08-06-001D', '897742be37e64cbe87eb1e13bdae9811', '1509be3792114dfd9fded194ed35f9e7', '2019-08-06 17:08:33', NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'd0e04b4a12d3418a9020254785d08915', '襄阳电厂-2019-07-003', '1', NULL, '0', 180000, 'dddddddddddddd', '1', NULL, NULL);

-- ----------------------------
-- Table structure for t_watrr_account
-- ----------------------------
DROP TABLE IF EXISTS `t_watrr_account`;
CREATE TABLE `t_watrr_account`  (
  `watera_account_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流水账ID',
  `account_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户ID',
  `watera_account_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水账code',
  `organ_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位_code',
  `opt_member` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `opt_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `account` decimal(8, 0) NULL DEFAULT NULL COMMENT '金额',
  `type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缴纳类型(1入账2出账)',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `remittance_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '汇款方式',
  `remittance_time` datetime(0) NULL DEFAULT NULL COMMENT '汇款时间',
  PRIMARY KEY (`watera_account_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '账户流水帐(现金缴纳和退还)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_watrr_earnest_account
-- ----------------------------
DROP TABLE IF EXISTS `t_watrr_earnest_account`;
CREATE TABLE `t_watrr_earnest_account`  (
  `t_watrr_earnest_account` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流水账ID',
  `account_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户ID',
  `purchapplyid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_watrr_earnest_account_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水账code',
  `organ_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作单位',
  `opt_member` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `opt_time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `account` datetime(0) NULL DEFAULT NULL COMMENT '金额',
  `type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作种类（1.冻结，2解冻）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `option_remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作说明',
  PRIMARY KEY (`t_watrr_earnest_account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '账户流水帐(平台保证金虚拟账户冻结和解冻)' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
