/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : jl

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 27/11/2023 20:22:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery`  (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `TrackingNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '快递单号',
  `CardNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT ' 标签卡号',
  `Addressee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '楠汐' COMMENT '收件人',
  `ContainerCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '5-2-1' COMMENT '取件码',
  `InTime` datetime NULL DEFAULT NULL COMMENT '入库时间',
  `OutTime` datetime NULL DEFAULT NULL COMMENT '出库时间',
  `State` tinyint NULL DEFAULT 0 COMMENT '0未入库，1入库，2出库，3异常件，4拒收',
  `Worker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '潘家乐' COMMENT '入库人',
  `AddresseePhone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '15572323391' COMMENT '收件人电话',
  `Piker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '取件人',
  `FromPlace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '浙江省',
  `FromAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '杭州市',
  `ToPlace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '浙江省',
  `ToAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '台州市',
  `AddrInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '温岭市',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物品名称',
  `courier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `courier_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 554 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of delivery
-- ----------------------------
INSERT INTO `delivery` VALUES (0000000001, '0450B01A647381', '3001-E2806995000040031C38C1BE', '楠汐', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:27', 1, '2', '15572323391', '', '浙江省', '丽水市', '浙江省', '台州市', '温岭市', NULL, '衣服', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000002, '0446B01A647381', '3001-E2806995000050031C38A5BE', '季子青', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:30', 1, '1', '15572323391', '', '浙江省', '杭州市', '山西省', '大同市', '', NULL, '雨伞', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000003, '044BB01A647381', '3001-E2806995000040031C38CDBE', '张三', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:20', 1, '1', '15572323391', '', '浙江省', '杭州市', '山西省', '大同市', '', NULL, '衣服', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000004, '0444B01A647381', '3001-E2806995000050031C38C5BE', '陈弘毅', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:00', 1, '2', '15572323391', '', '浙江省', '台州市', '山西省', '大同市', '', NULL, '裤子', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000005, '044FB01A647381', '3001-E2806995000040031C38B5BE', '陈俊贤', '52-89', '2023-05-26 13:18:04', '2023-05-24 13:19:30', 1, '2', '15572323391', '', '浙江省', '台州市', '浙江省', '台州市', '', NULL, '充电线', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000006, '044AB01A647381', '3001-E2806995000050031C38A9BE', '李四', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:08', 1, '1', '15572323391', '', '浙江省', '台州市', '浙江省', '台州市', '', NULL, '飞机模型', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000547, '0450B01A647380', '3000-E2806995000040031C38C1BE', '楠汐', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:27', 1, '2', '15572323391', '', '浙江省', '丽水市', '浙江省', '台州市', '温岭市', NULL, '衣服', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000548, '0446B01A647380', '3000-E2806995000050031C38A5BE', '季子青', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:30', 1, '1', '15572323391', '', '浙江省', '杭州市', '山西省', '大同市', '', NULL, '雨伞', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000549, '044BB01A647380', '3000-E2806995000040031C38CDBE', '王五', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:20', 1, '1', '15572323391', '', '浙江省', '杭州市', '山西省', '大同市', '', NULL, '衣服', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000550, '0444B01A647380', '3000-E2806995000050031C38C5BE', '陈弘毅', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:00', 1, '2', '15572323391', '', '浙江省', '台州市', '山西省', '大同市', '', NULL, '裤子', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000551, '044FB01A647380', '3000-E2806995000040031C38B5BE', '陈俊贤', '52-89', '2023-05-26 13:18:04', '2023-05-24 13:19:30', 1, '2', '15572323391', '', '浙江省', '台州市', '浙江省', '台州市', '', NULL, '充电线', NULL, NULL);
INSERT INTO `delivery` VALUES (0000000552, '044AB01A647380', '3000-E2806995000050031C38A9BE', '李四', '52-89', '2023-05-26 13:18:04', '2023-05-24 11:29:08', 1, '1', '15572323391', '', '浙江省', '台州市', '浙江省', '台州市', '', NULL, '飞机模型', NULL, NULL);

-- ----------------------------
-- Table structure for delivery1
-- ----------------------------
DROP TABLE IF EXISTS `delivery1`;
CREATE TABLE `delivery1`  (
  `Id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `TrackingNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '快递单号',
  `Addressee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收件人',
  `InTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库时间',
  `AddresseePhone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人电话',
  `State` tinyint NOT NULL COMMENT '-1修改过信息，0未入库，1入库，2出库，3异常件，4拒收',
  `OutTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库时间',
  `Worker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库人',
  `Piker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '取件人',
  `FromPlace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '-1',
  `FromAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ToPlace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '-1',
  `ToAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AddrInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址-1',
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物品名称',
  `ContainerCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货柜号',
  `CardNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标签卡号-1',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of delivery1
-- ----------------------------
INSERT INTO `delivery1` VALUES (13, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '1');
INSERT INTO `delivery1` VALUES (14, '', '', NULL, '', 0, NULL, '', '', '', '', '', '', '', '', '', '1');
INSERT INTO `delivery1` VALUES (15, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3400-0000000000000000000000');
INSERT INTO `delivery1` VALUES (16, '', '', NULL, '', -1, NULL, '', '', '', '', '', '', '', '', '', '3400-0000000000000000000000');
INSERT INTO `delivery1` VALUES (17, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C3891');
INSERT INTO `delivery1` VALUES (18, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C388D');
INSERT INTO `delivery1` VALUES (19, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38B5');
INSERT INTO `delivery1` VALUES (20, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38C1');
INSERT INTO `delivery1` VALUES (21, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38AD');
INSERT INTO `delivery1` VALUES (22, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38D9');
INSERT INTO `delivery1` VALUES (23, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C3895');
INSERT INTO `delivery1` VALUES (24, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38DD');
INSERT INTO `delivery1` VALUES (25, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38D5');
INSERT INTO `delivery1` VALUES (26, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38BD');
INSERT INTO `delivery1` VALUES (27, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38CD');
INSERT INTO `delivery1` VALUES (28, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38A1');
INSERT INTO `delivery1` VALUES (29, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38D1');
INSERT INTO `delivery1` VALUES (30, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38C5');
INSERT INTO `delivery1` VALUES (31, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C3899');
INSERT INTO `delivery1` VALUES (32, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C389D');
INSERT INTO `delivery1` VALUES (33, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38C9');
INSERT INTO `delivery1` VALUES (34, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38B9');
INSERT INTO `delivery1` VALUES (35, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C3891BE');
INSERT INTO `delivery1` VALUES (36, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C3899BE');
INSERT INTO `delivery1` VALUES (37, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C3895BE');
INSERT INTO `delivery1` VALUES (38, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38D5BE');
INSERT INTO `delivery1` VALUES (39, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38C1BE');
INSERT INTO `delivery1` VALUES (40, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C389DBE');
INSERT INTO `delivery1` VALUES (41, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38BDBE');
INSERT INTO `delivery1` VALUES (42, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38DDBE');
INSERT INTO `delivery1` VALUES (43, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38B5BE');
INSERT INTO `delivery1` VALUES (44, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38ADBE');
INSERT INTO `delivery1` VALUES (45, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38CDBE');
INSERT INTO `delivery1` VALUES (46, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38A9BE');
INSERT INTO `delivery1` VALUES (47, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38C9BE');
INSERT INTO `delivery1` VALUES (48, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38A1BE');
INSERT INTO `delivery1` VALUES (49, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38B9BE');
INSERT INTO `delivery1` VALUES (50, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38D1BE');
INSERT INTO `delivery1` VALUES (51, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38A5BE');
INSERT INTO `delivery1` VALUES (52, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38C5BE');
INSERT INTO `delivery1` VALUES (53, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38D9BE');
INSERT INTO `delivery1` VALUES (54, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '7-p', '3000-E2806995000050031C3895BE');
INSERT INTO `delivery1` VALUES (55, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '7-p', '3000-E2806995000050031C3899BE');
INSERT INTO `delivery1` VALUES (56, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '7-p', '3000-E2806995000040031C3891BE');
INSERT INTO `delivery1` VALUES (57, '', '共同研发v规划', NULL, '今年今年', -1, NULL, '', '', '', '', '', '', '', '', '7-8556', '3000-E2806995000040031C3891BE');
INSERT INTO `delivery1` VALUES (58, '', '', '2023-03-31 11:59:14', '', 0, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38D1');
INSERT INTO `delivery1` VALUES (59, 'YT1289187912721892371', '李华', NULL, '18888888888', 0, NULL, '', '', '浙江省', '绍兴市', '浙江省', '杭州市', '西湖区', '电子设备', '', '3000-E2806995000040031C38A1');
INSERT INTO `delivery1` VALUES (60, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38B5');
INSERT INTO `delivery1` VALUES (61, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C3895');
INSERT INTO `delivery1` VALUES (62, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38A9');
INSERT INTO `delivery1` VALUES (63, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38B9');
INSERT INTO `delivery1` VALUES (64, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38BD');
INSERT INTO `delivery1` VALUES (65, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38AD');
INSERT INTO `delivery1` VALUES (66, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C3899');
INSERT INTO `delivery1` VALUES (67, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38C9');
INSERT INTO `delivery1` VALUES (68, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38C5');
INSERT INTO `delivery1` VALUES (69, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38CD');
INSERT INTO `delivery1` VALUES (70, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38C1');
INSERT INTO `delivery1` VALUES (71, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38DD');
INSERT INTO `delivery1` VALUES (72, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C389D');
INSERT INTO `delivery1` VALUES (73, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38D1');
INSERT INTO `delivery1` VALUES (74, '', '', '2023-03-31 21:17:26', '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000040031C38A1');
INSERT INTO `delivery1` VALUES (75, 'SF7819274914192478197412', '张三', NULL, '13809094251', 0, NULL, '', '王五', '北京市', '北京市', '广东省', '广州市', '1号', '衣服', '', '3000-E2806995000050031C38D1');
INSERT INTO `delivery1` VALUES (76, '', '', NULL, '', 1, NULL, '', '', '', '', '', '', '', '', '', '3000-E2806995000050031C38D1');
INSERT INTO `delivery1` VALUES (77, 'ST2410417481927412', '小花', '2023-04-14 21:13:44', '17984037493', 1, NULL, '小红', 'mike', '上海市', '上海市南京路', '浙江省', '杭州市', '拱墅区', '鞋子', 'GH-8090', '3000-E2806995000040031C38D9');
INSERT INTO `delivery1` VALUES (78, '', '', '2023-03-31 22:16:20', '', 1, NULL, '王五', '', '', '', '', '', '', '', 'PGHT-901', '3000-E2806995000040031C38D9');
INSERT INTO `delivery1` VALUES (79, '测试快递单号', '', '2023-04-13 23:40:55', '', 1, NULL, '小王', '', '', '', '', '', '', '', '货柜号001', '3000-E200001D35150176207092');
INSERT INTO `delivery1` VALUES (80, 'SF09898080809', '收件人', '2023-04-14 21:13:44', '19888888888', 1, NULL, '小红', '取件人', '湖南省', '衡阳市', '江西省', '景德镇市', '景德镇', '电子', 'GH-8090', '3000-E2806995000040031C38D9');
INSERT INTO `delivery1` VALUES (81, '', '', NULL, '', 0, NULL, '', '', '', '', '', '', '', '', '', 'm');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `empid` int NOT NULL AUTO_INCREMENT,
  `empname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL COMMENT '0离职，1在职',
  PRIMARY KEY (`empid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '陈弘毅', '123123@qq.com', '18258843019', 1);
INSERT INTO `employee` VALUES (2, '楠汐', '123321@qq.com', '18258420079', 1);

-- ----------------------------
-- Table structure for operate
-- ----------------------------
DROP TABLE IF EXISTS `operate`;
CREATE TABLE `operate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  `Operate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作',
  `date` datetime NULL DEFAULT NULL COMMENT '时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 349 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of operate
-- ----------------------------
INSERT INTO `operate` VALUES (1, '127.0.0.1', NULL, '登入', '2022-11-17 11:37:02', '18258843019,admin');
INSERT INTO `operate` VALUES (2, '127.0.0.1', NULL, '登入', '2022-11-17 11:37:02', '18258843019,admin');
INSERT INTO `operate` VALUES (3, '127.0.0.1', NULL, '添加用户', '2022-11-17 11:38:17', NULL);
INSERT INTO `operate` VALUES (4, '127.0.0.1', NULL, '登入', '2022-11-27 18:12:42', '18258843019,admin');
INSERT INTO `operate` VALUES (5, '127.0.0.1', NULL, '登入', '2022-11-27 18:14:28', 'test,123');
INSERT INTO `operate` VALUES (6, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-01-18 13:33:09', '18258843019,admin');
INSERT INTO `operate` VALUES (7, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-01-18 13:33:28', '18767687511,chenguanyu');
INSERT INTO `operate` VALUES (8, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 20:15:06', '18258843019,admin');
INSERT INTO `operate` VALUES (9, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 20:16:08', 'test,123');
INSERT INTO `operate` VALUES (10, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 20:58:10', 'test,123');
INSERT INTO `operate` VALUES (11, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 21:01:45', 'test,123');
INSERT INTO `operate` VALUES (12, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 21:01:45', 'test,123');
INSERT INTO `operate` VALUES (13, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 21:02:57', 'test,123');
INSERT INTO `operate` VALUES (14, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 21:02:57', 'test,123');
INSERT INTO `operate` VALUES (15, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 21:04:44', 'test,123');
INSERT INTO `operate` VALUES (16, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 21:32:20', 'test,123');
INSERT INTO `operate` VALUES (17, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-01 21:32:20', 'test,123');
INSERT INTO `operate` VALUES (18, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:38:21', 'test,123');
INSERT INTO `operate` VALUES (19, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:38:21', 'test,123');
INSERT INTO `operate` VALUES (20, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:39:31', 'test,123');
INSERT INTO `operate` VALUES (21, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:46:14', 'test,123');
INSERT INTO `operate` VALUES (22, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:48:44', 'test,123');
INSERT INTO `operate` VALUES (23, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:50:40', 'test,123');
INSERT INTO `operate` VALUES (24, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:53:48', 'test,123');
INSERT INTO `operate` VALUES (25, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:56:23', 'test,123');
INSERT INTO `operate` VALUES (26, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:58:09', 'test,123');
INSERT INTO `operate` VALUES (27, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 17:58:16', 'test,123');
INSERT INTO `operate` VALUES (28, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 18:01:32', 'test,123');
INSERT INTO `operate` VALUES (29, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 18:03:59', 'test,123');
INSERT INTO `operate` VALUES (30, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-04 18:12:37', 'test,123');
INSERT INTO `operate` VALUES (31, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-06 21:27:15', 'test,123');
INSERT INTO `operate` VALUES (32, '127.0.0.1', NULL, '登入', '2023-03-09 15:14:47', '18258843019,admin');
INSERT INTO `operate` VALUES (33, '127.0.0.1', NULL, '登入', '2023-03-09 15:17:10', '18258843019,admin');
INSERT INTO `operate` VALUES (34, '127.0.0.1', NULL, '登入', '2023-03-09 15:17:56', '18258420079,123456');
INSERT INTO `operate` VALUES (35, '127.0.0.1', NULL, '添加用户', '2023-03-10 08:36:02', NULL);
INSERT INTO `operate` VALUES (36, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:09:04', NULL);
INSERT INTO `operate` VALUES (37, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:10:58', NULL);
INSERT INTO `operate` VALUES (38, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:12:26', NULL);
INSERT INTO `operate` VALUES (39, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:20:49', NULL);
INSERT INTO `operate` VALUES (40, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:23:39', NULL);
INSERT INTO `operate` VALUES (41, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:24:45', NULL);
INSERT INTO `operate` VALUES (42, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:28:28', NULL);
INSERT INTO `operate` VALUES (43, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:30:06', NULL);
INSERT INTO `operate` VALUES (44, '127.0.0.1', NULL, '添加用户', '2023-03-10 09:31:35', NULL);
INSERT INTO `operate` VALUES (45, '127.0.0.1', NULL, '登入', '2023-03-12 16:21:22', '18258843019,admin');
INSERT INTO `operate` VALUES (46, '127.0.0.1', NULL, '登入', '2023-03-12 16:21:22', '18258843019,admin');
INSERT INTO `operate` VALUES (47, '127.0.0.1', NULL, '登入', '2023-03-12 23:51:21', '18258843019,admin');
INSERT INTO `operate` VALUES (48, '127.0.0.1', NULL, '登入', '2023-03-12 23:54:23', '18258843019,admin');
INSERT INTO `operate` VALUES (49, '127.0.0.1', NULL, '登入', '2023-03-12 23:56:33', '18258843019,admin');
INSERT INTO `operate` VALUES (50, '127.0.0.1', NULL, '登入', '2023-03-12 23:58:12', '18258843019,admin');
INSERT INTO `operate` VALUES (51, '127.0.0.1', NULL, '登入', '2023-03-12 23:58:46', '18258843019,admin');
INSERT INTO `operate` VALUES (52, '127.0.0.1', NULL, '登入', '2023-03-12 23:59:21', '18258843019,admin');
INSERT INTO `operate` VALUES (53, '127.0.0.1', NULL, '登入', '2023-03-13 00:12:25', '18258843019,chen250018');
INSERT INTO `operate` VALUES (54, '127.0.0.1', NULL, '登入', '2023-03-13 00:12:33', '18258843019,admin');
INSERT INTO `operate` VALUES (55, '127.0.0.1', NULL, '登入', '2023-03-13 00:14:07', '18258843019,admin');
INSERT INTO `operate` VALUES (56, '127.0.0.1', NULL, '登入', '2023-03-13 00:15:23', '18258843019,chen250018');
INSERT INTO `operate` VALUES (57, '127.0.0.1', NULL, '登入', '2023-03-13 00:15:31', '18258843019,admin');
INSERT INTO `operate` VALUES (58, '127.0.0.1', NULL, '登入', '2023-03-13 00:15:34', '18258843019,admin');
INSERT INTO `operate` VALUES (59, '127.0.0.1', NULL, '登入', '2023-03-13 00:17:53', '18258843019,admin');
INSERT INTO `operate` VALUES (60, '127.0.0.1', NULL, '登入', '2023-03-13 00:22:12', '18258843019,admin');
INSERT INTO `operate` VALUES (61, '127.0.0.1', NULL, '登入', '2023-03-13 00:22:27', '18258843019,chen');
INSERT INTO `operate` VALUES (62, '127.0.0.1', NULL, '登入', '2023-03-13 00:22:41', '18258843019,admin');
INSERT INTO `operate` VALUES (63, '127.0.0.1', NULL, '登入', '2023-03-13 09:04:52', '18258843019,admin');
INSERT INTO `operate` VALUES (64, '127.0.0.1', NULL, '登入', '2023-03-13 09:06:36', '18258843019,chen');
INSERT INTO `operate` VALUES (65, '127.0.0.1', NULL, '登入', '2023-03-13 09:06:40', '18258843019,admin');
INSERT INTO `operate` VALUES (66, '127.0.0.1', NULL, '登入', '2023-03-13 09:10:06', '18258843019,admin');
INSERT INTO `operate` VALUES (67, '127.0.0.1', NULL, '登入', '2023-03-13 09:17:56', '18258843019,admin');
INSERT INTO `operate` VALUES (68, '127.0.0.1', NULL, '登入', '2023-03-13 09:20:19', '18258843019,chen');
INSERT INTO `operate` VALUES (69, '127.0.0.1', NULL, '登入', '2023-03-13 09:20:24', '18258843019,admin');
INSERT INTO `operate` VALUES (70, '127.0.0.1', NULL, '登入', '2023-03-13 09:27:57', '18258843019,admin');
INSERT INTO `operate` VALUES (71, '127.0.0.1', NULL, '登入', '2023-03-13 09:43:25', '18258843019,admin');
INSERT INTO `operate` VALUES (72, '127.0.0.1', NULL, '登入', '2023-03-13 09:48:04', '18258843019,admin');
INSERT INTO `operate` VALUES (73, '127.0.0.1', NULL, '登入', '2023-03-13 09:49:10', '18258843019,admin');
INSERT INTO `operate` VALUES (74, '127.0.0.1', NULL, '添加用户', '2023-03-13 09:50:10', NULL);
INSERT INTO `operate` VALUES (75, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-26 09:07:50', '18258843019,admin');
INSERT INTO `operate` VALUES (76, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-03-26 09:13:24', '18258843019,admin');
INSERT INTO `operate` VALUES (77, '127.0.0.1', NULL, '登入', '2023-03-27 15:51:23', '18258843019,admiin');
INSERT INTO `operate` VALUES (78, '127.0.0.1', NULL, '登入', '2023-03-27 15:51:35', '18258843019,admin');
INSERT INTO `operate` VALUES (79, '127.0.0.1', NULL, '登入', '2023-03-27 15:52:01', 'test,123');
INSERT INTO `operate` VALUES (80, '127.0.0.1', NULL, '登入', '2023-03-27 15:52:12', '18258420079,jzq');
INSERT INTO `operate` VALUES (81, '127.0.0.1', NULL, '登入', '2023-03-27 15:53:08', 'admin,admin');
INSERT INTO `operate` VALUES (82, '127.0.0.1', NULL, '登入', '2023-03-28 20:55:19', '18258843019,admin');
INSERT INTO `operate` VALUES (83, '127.0.0.1', NULL, '登入', '2023-03-28 20:56:41', 'admin,admin');
INSERT INTO `operate` VALUES (84, '127.0.0.1', NULL, '登入', '2023-03-28 20:59:20', 'admin,admin');
INSERT INTO `operate` VALUES (85, '127.0.0.1', NULL, '登入', '2023-03-28 21:00:00', '18258843019,admin');
INSERT INTO `operate` VALUES (86, '127.0.0.1', NULL, '登入', '2023-03-28 21:04:00', 'admin,admin');
INSERT INTO `operate` VALUES (87, '127.0.0.1', NULL, '登入', '2023-03-28 21:05:38', '18258843019,admin');
INSERT INTO `operate` VALUES (88, '127.0.0.1', NULL, '登入', '2023-03-28 21:08:15', '18258843019,admimn');
INSERT INTO `operate` VALUES (89, '127.0.0.1', NULL, '登入', '2023-03-28 21:08:20', '18258843019,admin');
INSERT INTO `operate` VALUES (90, '127.0.0.1', NULL, '添加用户', '2023-03-28 21:09:56', NULL);
INSERT INTO `operate` VALUES (91, '127.0.0.1', NULL, '添加用户', '2023-03-28 21:15:36', NULL);
INSERT INTO `operate` VALUES (92, '127.0.0.1', NULL, '登入', '2023-03-28 23:01:49', '18258843019,admin');
INSERT INTO `operate` VALUES (93, '127.0.0.1', NULL, '登入', '2023-03-28 23:01:50', '18258843019,admin');
INSERT INTO `operate` VALUES (94, '127.0.0.1', NULL, '登入', '2023-03-28 23:04:19', 'admin,admin');
INSERT INTO `operate` VALUES (95, '127.0.0.1', NULL, '登入', '2023-04-05 17:17:21', 'admin,admin');
INSERT INTO `operate` VALUES (96, '127.0.0.1', NULL, '登入', '2023-04-06 08:45:00', 'admin,admin');
INSERT INTO `operate` VALUES (97, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-09 17:19:29', 'admin,admin');
INSERT INTO `operate` VALUES (98, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:48:47', '18258843019,admin');
INSERT INTO `operate` VALUES (99, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:49:01', 'amdin,admin');
INSERT INTO `operate` VALUES (100, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:49:06', '18258843019admin,admin');
INSERT INTO `operate` VALUES (101, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:49:14', 'admin,admin');
INSERT INTO `operate` VALUES (102, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:54:24', 'admin,admin');
INSERT INTO `operate` VALUES (103, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:54:32', 'admin,admin');
INSERT INTO `operate` VALUES (104, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:54:43', '18258843019,admin');
INSERT INTO `operate` VALUES (105, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:57:43', 'admin,admin');
INSERT INTO `operate` VALUES (106, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 01:57:55', '18258843019,admin');
INSERT INTO `operate` VALUES (107, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:02:46', '18258843019,admin');
INSERT INTO `operate` VALUES (108, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:04:17', '18258843019,admin');
INSERT INTO `operate` VALUES (109, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:05:38', '18258843019,admin');
INSERT INTO `operate` VALUES (110, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:07:26', '18258843019,admin');
INSERT INTO `operate` VALUES (111, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:07:55', 'admin,admin');
INSERT INTO `operate` VALUES (112, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:08:05', '18258843019,admin');
INSERT INTO `operate` VALUES (113, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:08:15', '18767687511,chenguanyu');
INSERT INTO `operate` VALUES (114, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:09:10', '18767687511,chenguanyu');
INSERT INTO `operate` VALUES (115, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:09:17', '18258843019,admin');
INSERT INTO `operate` VALUES (116, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:10:12', '18258420079,123456');
INSERT INTO `operate` VALUES (117, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:19:31', '18258420079,123456');
INSERT INTO `operate` VALUES (118, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:19:58', '18258420079,123456');
INSERT INTO `operate` VALUES (119, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-10 02:20:58', '18258420079,123456');
INSERT INTO `operate` VALUES (120, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-11 13:08:53', '18258420079,123456');
INSERT INTO `operate` VALUES (121, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-11 13:12:09', '18258420079,123456');
INSERT INTO `operate` VALUES (122, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-11 13:12:20', 'admin,admin');
INSERT INTO `operate` VALUES (123, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-11 13:14:48', 'admin,admin');
INSERT INTO `operate` VALUES (124, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-11 13:14:59', '18258420079,123456');
INSERT INTO `operate` VALUES (125, '127.0.0.1', NULL, '登入', '2023-04-12 23:47:55', '19858876930,liamrubicon6930');
INSERT INTO `operate` VALUES (126, '127.0.0.1', NULL, '登入', '2023-04-12 23:47:57', ',');
INSERT INTO `operate` VALUES (127, '127.0.0.1', NULL, '登入', '2023-04-12 23:47:58', ',');
INSERT INTO `operate` VALUES (128, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:02:43', 'admin,admin');
INSERT INTO `operate` VALUES (129, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:10:55', '18258420079,123456');
INSERT INTO `operate` VALUES (130, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:13:42', '118258843019,admin');
INSERT INTO `operate` VALUES (131, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:13:48', '18258420079,123456');
INSERT INTO `operate` VALUES (132, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:19:04', '18258843019,123456');
INSERT INTO `operate` VALUES (133, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:19:13', '18258420079,admin');
INSERT INTO `operate` VALUES (134, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:19:24', '18258843019,admin');
INSERT INTO `operate` VALUES (135, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-04-13 00:23:00', NULL);
INSERT INTO `operate` VALUES (136, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:38:44', '18258843019,admin');
INSERT INTO `operate` VALUES (137, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-04-13 00:39:11', NULL);
INSERT INTO `operate` VALUES (138, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-04-13 00:43:24', NULL);
INSERT INTO `operate` VALUES (139, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-04-13 00:44:20', NULL);
INSERT INTO `operate` VALUES (140, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-13 00:44:35', '18258843019,admin');
INSERT INTO `operate` VALUES (141, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 08:26:48', '18258420079,123456');
INSERT INTO `operate` VALUES (142, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 08:52:34', '18258420079,123456');
INSERT INTO `operate` VALUES (143, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 08:52:41', '18258420079,123456');
INSERT INTO `operate` VALUES (144, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 08:55:12', '18258420079,123456');
INSERT INTO `operate` VALUES (145, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:05:44', '18258420079,123456');
INSERT INTO `operate` VALUES (146, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:11:45', '18258420079,123456');
INSERT INTO `operate` VALUES (147, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:13:14', '18258420079,123456');
INSERT INTO `operate` VALUES (148, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:16:19', '18258420079,123456');
INSERT INTO `operate` VALUES (149, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:19:29', '18258420079,123456');
INSERT INTO `operate` VALUES (150, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:21:03', '18258420079,123456');
INSERT INTO `operate` VALUES (151, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:24:12', '18258420079,123456');
INSERT INTO `operate` VALUES (152, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:25:57', '18258420079,123456');
INSERT INTO `operate` VALUES (153, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:28:23', '18258420079,123456');
INSERT INTO `operate` VALUES (154, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:30:37', '18258420079,123456');
INSERT INTO `operate` VALUES (155, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:30:55', '18767687511,chenguanyu');
INSERT INTO `operate` VALUES (156, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:31:03', '18258420079,123456');
INSERT INTO `operate` VALUES (157, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:31:22', '18258843019,admin');
INSERT INTO `operate` VALUES (158, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:54:11', '18258843019,admin');
INSERT INTO `operate` VALUES (159, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 09:54:25', '18258843019,admin');
INSERT INTO `operate` VALUES (160, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 12:19:48', '18258843019,admin');
INSERT INTO `operate` VALUES (161, '127.0.0.1', NULL, '登入', '2023-04-16 12:28:19', '18258843019,admin');
INSERT INTO `operate` VALUES (162, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 12:30:04', '18258843019,admin');
INSERT INTO `operate` VALUES (163, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-16 13:48:15', '18258843019,admin');
INSERT INTO `operate` VALUES (164, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-20 21:37:01', '18258843019,admin');
INSERT INTO `operate` VALUES (165, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-20 21:37:01', '18258843019,admin');
INSERT INTO `operate` VALUES (166, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-20 21:37:03', '18258843019,admin');
INSERT INTO `operate` VALUES (167, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-20 21:37:03', '18258843019,admin');
INSERT INTO `operate` VALUES (168, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-24 13:00:30', '18258843019,admin');
INSERT INTO `operate` VALUES (169, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-24 13:01:33', '18258843019,admin');
INSERT INTO `operate` VALUES (170, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-04-25 16:52:55', '18258843019,admin');
INSERT INTO `operate` VALUES (171, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-05-20 01:06:33', 'admin,admin');
INSERT INTO `operate` VALUES (172, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-05-20 01:07:05', '18258843019,admin');
INSERT INTO `operate` VALUES (173, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 10:01:42', 'admin,admin');
INSERT INTO `operate` VALUES (174, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 10:06:59', 'test,123');
INSERT INTO `operate` VALUES (175, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 10:07:02', 'admin,admin');
INSERT INTO `operate` VALUES (176, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 10:14:12', 'test,123');
INSERT INTO `operate` VALUES (177, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 10:14:29', 'admin,amdin');
INSERT INTO `operate` VALUES (178, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 10:14:37', 'admin,admin');
INSERT INTO `operate` VALUES (179, '115.194.213.38', NULL, '登入', '2023-08-17 12:54:29', 'admin,admin');
INSERT INTO `operate` VALUES (180, '115.194.213.38', NULL, '登入', '2023-08-17 12:55:00', 'test,123');
INSERT INTO `operate` VALUES (181, '115.194.213.38', NULL, '登入', '2023-08-17 12:55:42', '123,123');
INSERT INTO `operate` VALUES (182, '115.194.213.38', NULL, '登入', '2023-08-17 12:56:46', 'admin,admin');
INSERT INTO `operate` VALUES (183, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 12:57:41', 'admin,admin');
INSERT INTO `operate` VALUES (184, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 12:57:50', 'test,123');
INSERT INTO `operate` VALUES (185, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 12:58:54', '182588843019,admin');
INSERT INTO `operate` VALUES (186, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-08-17 12:59:34', '18258420079,123456');
INSERT INTO `operate` VALUES (187, '115.194.213.38', NULL, '登入', '2023-08-17 13:07:02', '18258420079,jzqjzq520');
INSERT INTO `operate` VALUES (188, '115.194.213.38', NULL, '登入', '2023-08-17 13:09:30', '18258843019,admin');
INSERT INTO `operate` VALUES (189, '115.194.213.38', NULL, '登入', '2023-08-17 13:11:42', '18258420079,jzqjz520');
INSERT INTO `operate` VALUES (190, '115.194.213.38', NULL, '登入', '2023-08-17 13:11:53', '18258420079,jzqjzq520');
INSERT INTO `operate` VALUES (191, '115.194.213.38', NULL, '登入', '2023-08-17 22:37:05', '18258420079,jzqjzq520');
INSERT INTO `operate` VALUES (192, '124.160.40.78', NULL, '登入', '2023-09-11 18:13:51', 'admin,admin');
INSERT INTO `operate` VALUES (193, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:16:18', 'admin,admin');
INSERT INTO `operate` VALUES (194, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:33:39', '18258843019,admin');
INSERT INTO `operate` VALUES (195, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:34:07', '18258420079,jzqjzq520');
INSERT INTO `operate` VALUES (196, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:34:52', '123,123');
INSERT INTO `operate` VALUES (197, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:34:56', '123,123');
INSERT INTO `operate` VALUES (198, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:34:58', '123,123');
INSERT INTO `operate` VALUES (199, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:35:04', '123,123');
INSERT INTO `operate` VALUES (200, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:37:00', 'admin,admin');
INSERT INTO `operate` VALUES (201, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:37:27', 'admin,admin');
INSERT INTO `operate` VALUES (202, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-10-16 12:38:02', 'admin,admin');
INSERT INTO `operate` VALUES (203, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-06 10:44:29', 'null,null');
INSERT INTO `operate` VALUES (204, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-06 10:47:04', '18258843019,admin');
INSERT INTO `operate` VALUES (205, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-06 10:53:02', '18258843019,admin');
INSERT INTO `operate` VALUES (206, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-06 10:54:17', '18258843019,admin');
INSERT INTO `operate` VALUES (207, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-06 10:55:25', '18258843019,admin');
INSERT INTO `operate` VALUES (208, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-06 10:55:57', '18258843019,admin');
INSERT INTO `operate` VALUES (209, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-06 10:56:56', '18258843019,admin');
INSERT INTO `operate` VALUES (210, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 10:49:48', '123,123');
INSERT INTO `operate` VALUES (211, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 11:52:54', '123,123');
INSERT INTO `operate` VALUES (212, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 11:52:58', '123,123');
INSERT INTO `operate` VALUES (213, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 11:53:10', '123,123');
INSERT INTO `operate` VALUES (214, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 11:53:25', 'admin,admin');
INSERT INTO `operate` VALUES (215, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:15:50', 'admin,admin');
INSERT INTO `operate` VALUES (216, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:25:39', '123,123');
INSERT INTO `operate` VALUES (217, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:25:50', '1234,123');
INSERT INTO `operate` VALUES (218, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:31:43', 'test,123');
INSERT INTO `operate` VALUES (219, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:35:11', 'admin,admin');
INSERT INTO `operate` VALUES (220, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:36:58', 'admin,admin');
INSERT INTO `operate` VALUES (221, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:38:04', 'admin,admin');
INSERT INTO `operate` VALUES (222, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:38:41', 'admin,');
INSERT INTO `operate` VALUES (223, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:38:45', 'admin,admin');
INSERT INTO `operate` VALUES (224, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:40:14', 'admin,admin');
INSERT INTO `operate` VALUES (225, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:56:09', '18258843019,admin');
INSERT INTO `operate` VALUES (226, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-20 16:57:26', '18258843019,admin');
INSERT INTO `operate` VALUES (227, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:38:09', '18258843019,admin');
INSERT INTO `operate` VALUES (228, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:38:29', '18258843019,admin');
INSERT INTO `operate` VALUES (229, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:40:03', '18258843019,admin');
INSERT INTO `operate` VALUES (230, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:40:13', 'admin,admin');
INSERT INTO `operate` VALUES (231, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:42:41', '123,123');
INSERT INTO `operate` VALUES (232, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:43:00', 'admin,admin');
INSERT INTO `operate` VALUES (233, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:45:00', 'admin,admin');
INSERT INTO `operate` VALUES (234, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:45:23', '18258843019,admin');
INSERT INTO `operate` VALUES (235, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:48:26', '18258843019,admni');
INSERT INTO `operate` VALUES (236, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 14:48:35', '18258843019,admin');
INSERT INTO `operate` VALUES (237, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:00:00', '18258843019,admin');
INSERT INTO `operate` VALUES (238, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:02:43', '18258843019,admin');
INSERT INTO `operate` VALUES (239, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:07:54', '18258843019,admin');
INSERT INTO `operate` VALUES (240, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:09:08', '18258843019,admin');
INSERT INTO `operate` VALUES (241, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:11:11', '18258843019,admin');
INSERT INTO `operate` VALUES (242, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:20:32', '18258843019,admin');
INSERT INTO `operate` VALUES (243, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:22:26', '18258843019,admin');
INSERT INTO `operate` VALUES (244, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:25:34', '18258843019,admin');
INSERT INTO `operate` VALUES (245, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:28:00', '18258843019,admin');
INSERT INTO `operate` VALUES (246, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:38:18', '18258843019,admin');
INSERT INTO `operate` VALUES (247, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:40:21', '18258843019,admin');
INSERT INTO `operate` VALUES (248, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:43:52', '18258843019,admin');
INSERT INTO `operate` VALUES (249, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:46:17', '18258843019,admin');
INSERT INTO `operate` VALUES (250, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:47:52', '18258843019,admin');
INSERT INTO `operate` VALUES (251, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:53:16', '18258843019,admin');
INSERT INTO `operate` VALUES (252, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 15:58:37', '18258843019,admin');
INSERT INTO `operate` VALUES (253, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:01:16', '18258843019,admin');
INSERT INTO `operate` VALUES (254, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:02:30', '18258843019,admin');
INSERT INTO `operate` VALUES (255, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:06:00', '18258843019,admin');
INSERT INTO `operate` VALUES (256, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:09:08', '18258843019,admin');
INSERT INTO `operate` VALUES (257, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:10:20', '18258843019,admin');
INSERT INTO `operate` VALUES (258, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:14:00', '18258843019,admin');
INSERT INTO `operate` VALUES (259, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:17:07', '18258843019,admin');
INSERT INTO `operate` VALUES (260, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:33:25', '18258843019,admin');
INSERT INTO `operate` VALUES (261, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:38:06', '18258843019,admin');
INSERT INTO `operate` VALUES (262, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 16:50:56', '18258843019,admin');
INSERT INTO `operate` VALUES (263, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:03:04', '18258843019,admin');
INSERT INTO `operate` VALUES (264, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:09:26', 'admin,admin');
INSERT INTO `operate` VALUES (265, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:11:11', '18258843019,admin');
INSERT INTO `operate` VALUES (266, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-22 17:11:56', NULL);
INSERT INTO `operate` VALUES (267, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:32:39', '18258843019,admin');
INSERT INTO `operate` VALUES (268, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-22 17:32:55', NULL);
INSERT INTO `operate` VALUES (269, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:37:27', '18258843019,admin');
INSERT INTO `operate` VALUES (270, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:41:08', '18258843019,admin');
INSERT INTO `operate` VALUES (271, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-22 17:41:32', NULL);
INSERT INTO `operate` VALUES (272, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:48:19', '18258843019,admin');
INSERT INTO `operate` VALUES (273, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:48:55', '18258843019,admin');
INSERT INTO `operate` VALUES (274, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:50:55', '18258420079,jzqjzq520');
INSERT INTO `operate` VALUES (275, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:51:19', '18258420079,admin');
INSERT INTO `operate` VALUES (276, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:51:41', '18258843019,admin');
INSERT INTO `operate` VALUES (277, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 17:57:15', '18258843019,admin');
INSERT INTO `operate` VALUES (278, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 18:10:43', '18258843019,admin');
INSERT INTO `operate` VALUES (279, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 18:12:22', '18258843019,admin');
INSERT INTO `operate` VALUES (280, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 18:13:20', '18258843019,admin');
INSERT INTO `operate` VALUES (281, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 18:15:31', '18258843019,admin');
INSERT INTO `operate` VALUES (282, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 18:16:32', '18258843019,admin');
INSERT INTO `operate` VALUES (283, '127.0.0.1', NULL, '登入', '2023-11-22 18:19:24', '18258843019,admin');
INSERT INTO `operate` VALUES (284, '127.0.0.1', NULL, '登入', '2023-11-22 18:20:53', '18258843019,admin');
INSERT INTO `operate` VALUES (285, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 18:44:18', '18258843019,admin');
INSERT INTO `operate` VALUES (286, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 19:01:06', '18258843019,admin');
INSERT INTO `operate` VALUES (287, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 19:14:02', '18258843019,admin');
INSERT INTO `operate` VALUES (288, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-22 19:22:45', NULL);
INSERT INTO `operate` VALUES (289, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 19:22:53', '18258843019,admin');
INSERT INTO `operate` VALUES (290, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 19:22:58', '18258843019,admin');
INSERT INTO `operate` VALUES (291, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-22 19:23:19', NULL);
INSERT INTO `operate` VALUES (292, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 19:24:08', '18258843019,admin');
INSERT INTO `operate` VALUES (293, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-22 19:24:26', NULL);
INSERT INTO `operate` VALUES (294, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 19:49:05', '18258843019,admin');
INSERT INTO `operate` VALUES (295, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-22 20:23:32', '18258843019,admin');
INSERT INTO `operate` VALUES (296, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 11:06:44', '18258843019,admin');
INSERT INTO `operate` VALUES (297, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 11:51:30', '18258843019,admin');
INSERT INTO `operate` VALUES (298, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 12:00:36', '18258843019,admin');
INSERT INTO `operate` VALUES (299, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 12:14:07', '18258843019,admin');
INSERT INTO `operate` VALUES (300, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 12:16:09', '18258843019,admin');
INSERT INTO `operate` VALUES (301, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 12:17:50', '18258843019,admin');
INSERT INTO `operate` VALUES (302, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 12:22:46', '18258843019,admin');
INSERT INTO `operate` VALUES (303, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 12:30:23', '18258843019,admin');
INSERT INTO `operate` VALUES (304, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 12:38:11', '18258843019,admin');
INSERT INTO `operate` VALUES (305, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 12:42:26', '18258843019,admin');
INSERT INTO `operate` VALUES (306, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 18:08:23', '18258843019,admin');
INSERT INTO `operate` VALUES (307, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 18:10:02', '18258843019,admin');
INSERT INTO `operate` VALUES (308, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 18:26:51', '18258843019,admin');
INSERT INTO `operate` VALUES (309, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 18:31:16', NULL);
INSERT INTO `operate` VALUES (310, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 18:31:57', NULL);
INSERT INTO `operate` VALUES (311, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 18:33:26', '18258843019,admin');
INSERT INTO `operate` VALUES (312, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 18:33:46', NULL);
INSERT INTO `operate` VALUES (313, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 18:57:19', '18258843019,admin');
INSERT INTO `operate` VALUES (314, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:03:27', NULL);
INSERT INTO `operate` VALUES (315, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:04:07', '18258843019,admin');
INSERT INTO `operate` VALUES (316, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:04:32', NULL);
INSERT INTO `operate` VALUES (317, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:04:57', NULL);
INSERT INTO `operate` VALUES (318, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:05:12', NULL);
INSERT INTO `operate` VALUES (319, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:06:06', NULL);
INSERT INTO `operate` VALUES (320, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:12:53', '18258843019,admin');
INSERT INTO `operate` VALUES (321, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:13:16', NULL);
INSERT INTO `operate` VALUES (322, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:13:58', NULL);
INSERT INTO `operate` VALUES (323, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:14:25', NULL);
INSERT INTO `operate` VALUES (324, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:14:37', '18258843019,admin');
INSERT INTO `operate` VALUES (325, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:14:59', NULL);
INSERT INTO `operate` VALUES (326, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:16:36', NULL);
INSERT INTO `operate` VALUES (327, '127.0.0.1', NULL, '登入', '2023-11-27 19:18:08', '18258843019,admin');
INSERT INTO `operate` VALUES (328, '127.0.0.1', NULL, '添加用户', '2023-11-27 19:18:27', NULL);
INSERT INTO `operate` VALUES (329, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:19:49', '18258843019,admin');
INSERT INTO `operate` VALUES (330, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:20:07', NULL);
INSERT INTO `operate` VALUES (331, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:21:43', '18258843019,admin');
INSERT INTO `operate` VALUES (332, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:21:55', NULL);
INSERT INTO `operate` VALUES (333, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:27:55', '18258843019,admin');
INSERT INTO `operate` VALUES (334, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:28:07', NULL);
INSERT INTO `operate` VALUES (335, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:33:15', '18258843019,admin');
INSERT INTO `operate` VALUES (336, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:33:28', NULL);
INSERT INTO `operate` VALUES (337, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:35:09', '18258843019,admin');
INSERT INTO `operate` VALUES (338, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:35:21', NULL);
INSERT INTO `operate` VALUES (339, '0:0:0:0:0:0:0:1', NULL, '添加用户', '2023-11-27 19:39:35', NULL);
INSERT INTO `operate` VALUES (340, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 19:45:29', '18258843019,admin');
INSERT INTO `operate` VALUES (341, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 20:01:21', '18258843019,admin');
INSERT INTO `operate` VALUES (342, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 20:03:42', '18258843019,admin');
INSERT INTO `operate` VALUES (343, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 20:06:56', '18258843019,admin');
INSERT INTO `operate` VALUES (344, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 20:11:04', '18258843019,admin');
INSERT INTO `operate` VALUES (345, '127.0.0.1', NULL, '登入', '2023-11-27 20:12:29', '18258843019,admin');
INSERT INTO `operate` VALUES (346, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 20:15:11', '18258843019,admin');
INSERT INTO `operate` VALUES (347, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 20:16:36', '18258843019,admin');
INSERT INTO `operate` VALUES (348, '0:0:0:0:0:0:0:1', NULL, '登入', '2023-11-27 20:18:33', '18258843019,admin');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rid` int NULL DEFAULT NULL,
  `mid` int NULL DEFAULT NULL,
  `flag` int NULL DEFAULT NULL COMMENT '0有效，1无效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (1, 1, 1, 0);
INSERT INTO `role_menu` VALUES (2, 2, 2, 0);
INSERT INTO `role_menu` VALUES (3, 2, 1, 0);
INSERT INTO `role_menu` VALUES (4, 3, 2, 0);
INSERT INTO `role_menu` VALUES (5, 1, 3, 0);
INSERT INTO `role_menu` VALUES (7, 1, 2, 0);
INSERT INTO `role_menu` VALUES (8, 9, 1, 1);

-- ----------------------------
-- Table structure for t_address_city
-- ----------------------------
DROP TABLE IF EXISTS `t_address_city`;
CREATE TABLE `t_address_city`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市编码',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市名称',
  `provinceCode` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属省份编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 346 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '城市信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_address_city
-- ----------------------------
INSERT INTO `t_address_city` VALUES (1, '110100', '北京市', '110000');
INSERT INTO `t_address_city` VALUES (2, '1102xx', '北京下属县', '1100xx');
INSERT INTO `t_address_city` VALUES (3, '120100', '天津市', '120000');
INSERT INTO `t_address_city` VALUES (4, '1202xx', '天津下属县', '1200xx');
INSERT INTO `t_address_city` VALUES (5, '130100', '石家庄市', '130000');
INSERT INTO `t_address_city` VALUES (6, '130200', '唐山市', '130000');
INSERT INTO `t_address_city` VALUES (7, '130300', '秦皇岛市', '130000');
INSERT INTO `t_address_city` VALUES (8, '130400', '邯郸市', '130000');
INSERT INTO `t_address_city` VALUES (9, '130500', '邢台市', '130000');
INSERT INTO `t_address_city` VALUES (10, '130600', '保定市', '130000');
INSERT INTO `t_address_city` VALUES (11, '130700', '张家口市', '130000');
INSERT INTO `t_address_city` VALUES (12, '130800', '承德市', '130000');
INSERT INTO `t_address_city` VALUES (13, '130900', '沧州市', '130000');
INSERT INTO `t_address_city` VALUES (14, '131000', '廊坊市', '130000');
INSERT INTO `t_address_city` VALUES (15, '131100', '衡水市', '130000');
INSERT INTO `t_address_city` VALUES (16, '140100', '太原市', '140000');
INSERT INTO `t_address_city` VALUES (17, '140200', '大同市', '140000');
INSERT INTO `t_address_city` VALUES (18, '140300', '阳泉市', '140000');
INSERT INTO `t_address_city` VALUES (19, '140400', '长治市', '140000');
INSERT INTO `t_address_city` VALUES (20, '140500', '晋城市', '140000');
INSERT INTO `t_address_city` VALUES (21, '140600', '朔州市', '140000');
INSERT INTO `t_address_city` VALUES (22, '140700', '晋中市', '140000');
INSERT INTO `t_address_city` VALUES (23, '140800', '运城市', '140000');
INSERT INTO `t_address_city` VALUES (24, '140900', '忻州市', '140000');
INSERT INTO `t_address_city` VALUES (25, '141000', '临汾市', '140000');
INSERT INTO `t_address_city` VALUES (26, '141100', '吕梁市', '140000');
INSERT INTO `t_address_city` VALUES (27, '150100', '呼和浩特市', '150000');
INSERT INTO `t_address_city` VALUES (28, '150200', '包头市', '150000');
INSERT INTO `t_address_city` VALUES (29, '150300', '乌海市', '150000');
INSERT INTO `t_address_city` VALUES (30, '150400', '赤峰市', '150000');
INSERT INTO `t_address_city` VALUES (31, '150500', '通辽市', '150000');
INSERT INTO `t_address_city` VALUES (32, '150600', '鄂尔多斯市', '150000');
INSERT INTO `t_address_city` VALUES (33, '150700', '呼伦贝尔市', '150000');
INSERT INTO `t_address_city` VALUES (34, '150800', '巴彦淖尔市', '150000');
INSERT INTO `t_address_city` VALUES (35, '150900', '乌兰察布市', '150000');
INSERT INTO `t_address_city` VALUES (36, '152200', '兴安盟', '150000');
INSERT INTO `t_address_city` VALUES (37, '152500', '锡林郭勒盟', '150000');
INSERT INTO `t_address_city` VALUES (38, '152900', '阿拉善盟', '150000');
INSERT INTO `t_address_city` VALUES (39, '210100', '沈阳市', '210000');
INSERT INTO `t_address_city` VALUES (40, '210200', '大连市', '210000');
INSERT INTO `t_address_city` VALUES (41, '210300', '鞍山市', '210000');
INSERT INTO `t_address_city` VALUES (42, '210400', '抚顺市', '210000');
INSERT INTO `t_address_city` VALUES (43, '210500', '本溪市', '210000');
INSERT INTO `t_address_city` VALUES (44, '210600', '丹东市', '210000');
INSERT INTO `t_address_city` VALUES (45, '210700', '锦州市', '210000');
INSERT INTO `t_address_city` VALUES (46, '210800', '营口市', '210000');
INSERT INTO `t_address_city` VALUES (47, '210900', '阜新市', '210000');
INSERT INTO `t_address_city` VALUES (48, '211000', '辽阳市', '210000');
INSERT INTO `t_address_city` VALUES (49, '211100', '盘锦市', '210000');
INSERT INTO `t_address_city` VALUES (50, '211200', '铁岭市', '210000');
INSERT INTO `t_address_city` VALUES (51, '211300', '朝阳市', '210000');
INSERT INTO `t_address_city` VALUES (52, '211400', '葫芦岛市', '210000');
INSERT INTO `t_address_city` VALUES (53, '220100', '长春市', '220000');
INSERT INTO `t_address_city` VALUES (54, '220200', '吉林市', '220000');
INSERT INTO `t_address_city` VALUES (55, '220300', '四平市', '220000');
INSERT INTO `t_address_city` VALUES (56, '220400', '辽源市', '220000');
INSERT INTO `t_address_city` VALUES (57, '220500', '通化市', '220000');
INSERT INTO `t_address_city` VALUES (58, '220600', '白山市', '220000');
INSERT INTO `t_address_city` VALUES (59, '220700', '松原市', '220000');
INSERT INTO `t_address_city` VALUES (60, '220800', '白城市', '220000');
INSERT INTO `t_address_city` VALUES (61, '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `t_address_city` VALUES (62, '230100', '哈尔滨市', '230000');
INSERT INTO `t_address_city` VALUES (63, '230200', '齐齐哈尔市', '230000');
INSERT INTO `t_address_city` VALUES (64, '230300', '鸡西市', '230000');
INSERT INTO `t_address_city` VALUES (65, '230400', '鹤岗市', '230000');
INSERT INTO `t_address_city` VALUES (66, '230500', '双鸭山市', '230000');
INSERT INTO `t_address_city` VALUES (67, '230600', '大庆市', '230000');
INSERT INTO `t_address_city` VALUES (68, '230700', '伊春市', '230000');
INSERT INTO `t_address_city` VALUES (69, '230800', '佳木斯市', '230000');
INSERT INTO `t_address_city` VALUES (70, '230900', '七台河市', '230000');
INSERT INTO `t_address_city` VALUES (71, '231000', '牡丹江市', '230000');
INSERT INTO `t_address_city` VALUES (72, '231100', '黑河市', '230000');
INSERT INTO `t_address_city` VALUES (73, '231200', '绥化市', '230000');
INSERT INTO `t_address_city` VALUES (74, '232700', '大兴安岭地区', '230000');
INSERT INTO `t_address_city` VALUES (75, '310100', '上海市', '310000');
INSERT INTO `t_address_city` VALUES (76, '3102xx', '上海下属县', '3100xx');
INSERT INTO `t_address_city` VALUES (77, '320100', '南京市', '320000');
INSERT INTO `t_address_city` VALUES (78, '320200', '无锡市', '320000');
INSERT INTO `t_address_city` VALUES (79, '320300', '徐州市', '320000');
INSERT INTO `t_address_city` VALUES (80, '320400', '常州市', '320000');
INSERT INTO `t_address_city` VALUES (81, '320500', '苏州市', '320000');
INSERT INTO `t_address_city` VALUES (82, '320600', '南通市', '320000');
INSERT INTO `t_address_city` VALUES (83, '320700', '连云港市', '320000');
INSERT INTO `t_address_city` VALUES (84, '320800', '淮安市', '320000');
INSERT INTO `t_address_city` VALUES (85, '320900', '盐城市', '320000');
INSERT INTO `t_address_city` VALUES (86, '321000', '扬州市', '320000');
INSERT INTO `t_address_city` VALUES (87, '321100', '镇江市', '320000');
INSERT INTO `t_address_city` VALUES (88, '321200', '泰州市', '320000');
INSERT INTO `t_address_city` VALUES (89, '321300', '宿迁市', '320000');
INSERT INTO `t_address_city` VALUES (90, '330100', '杭州市', '330000');
INSERT INTO `t_address_city` VALUES (91, '330200', '宁波市', '330000');
INSERT INTO `t_address_city` VALUES (92, '330300', '温州市', '330000');
INSERT INTO `t_address_city` VALUES (93, '330400', '嘉兴市', '330000');
INSERT INTO `t_address_city` VALUES (94, '330500', '湖州市', '330000');
INSERT INTO `t_address_city` VALUES (95, '330600', '绍兴市', '330000');
INSERT INTO `t_address_city` VALUES (96, '330700', '金华市', '330000');
INSERT INTO `t_address_city` VALUES (97, '330800', '衢州市', '330000');
INSERT INTO `t_address_city` VALUES (98, '330900', '舟山市', '330000');
INSERT INTO `t_address_city` VALUES (99, '331000', '台州市', '330000');
INSERT INTO `t_address_city` VALUES (100, '331100', '丽水市', '330000');
INSERT INTO `t_address_city` VALUES (101, '340100', '合肥市', '340000');
INSERT INTO `t_address_city` VALUES (102, '340200', '芜湖市', '340000');
INSERT INTO `t_address_city` VALUES (103, '340300', '蚌埠市', '340000');
INSERT INTO `t_address_city` VALUES (104, '340400', '淮南市', '340000');
INSERT INTO `t_address_city` VALUES (105, '340500', '马鞍山市', '340000');
INSERT INTO `t_address_city` VALUES (106, '340600', '淮北市', '340000');
INSERT INTO `t_address_city` VALUES (107, '340700', '铜陵市', '340000');
INSERT INTO `t_address_city` VALUES (108, '340800', '安庆市', '340000');
INSERT INTO `t_address_city` VALUES (109, '341000', '黄山市', '340000');
INSERT INTO `t_address_city` VALUES (110, '341100', '滁州市', '340000');
INSERT INTO `t_address_city` VALUES (111, '341200', '阜阳市', '340000');
INSERT INTO `t_address_city` VALUES (112, '341300', '宿州市', '340000');
INSERT INTO `t_address_city` VALUES (113, '341400', '巢湖市', '340000');
INSERT INTO `t_address_city` VALUES (114, '341500', '六安市', '340000');
INSERT INTO `t_address_city` VALUES (115, '341600', '亳州市', '340000');
INSERT INTO `t_address_city` VALUES (116, '341700', '池州市', '340000');
INSERT INTO `t_address_city` VALUES (117, '341800', '宣城市', '340000');
INSERT INTO `t_address_city` VALUES (118, '350100', '福州市', '350000');
INSERT INTO `t_address_city` VALUES (119, '350200', '厦门市', '350000');
INSERT INTO `t_address_city` VALUES (120, '350300', '莆田市', '350000');
INSERT INTO `t_address_city` VALUES (121, '350400', '三明市', '350000');
INSERT INTO `t_address_city` VALUES (122, '350500', '泉州市', '350000');
INSERT INTO `t_address_city` VALUES (123, '350600', '漳州市', '350000');
INSERT INTO `t_address_city` VALUES (124, '350700', '南平市', '350000');
INSERT INTO `t_address_city` VALUES (125, '350800', '龙岩市', '350000');
INSERT INTO `t_address_city` VALUES (126, '350900', '宁德市', '350000');
INSERT INTO `t_address_city` VALUES (127, '360100', '南昌市', '360000');
INSERT INTO `t_address_city` VALUES (128, '360200', '景德镇市', '360000');
INSERT INTO `t_address_city` VALUES (129, '360300', '萍乡市', '360000');
INSERT INTO `t_address_city` VALUES (130, '360400', '九江市', '360000');
INSERT INTO `t_address_city` VALUES (131, '360500', '新余市', '360000');
INSERT INTO `t_address_city` VALUES (132, '360600', '鹰潭市', '360000');
INSERT INTO `t_address_city` VALUES (133, '360700', '赣州市', '360000');
INSERT INTO `t_address_city` VALUES (134, '360800', '吉安市', '360000');
INSERT INTO `t_address_city` VALUES (135, '360900', '宜春市', '360000');
INSERT INTO `t_address_city` VALUES (136, '361000', '抚州市', '360000');
INSERT INTO `t_address_city` VALUES (137, '361100', '上饶市', '360000');
INSERT INTO `t_address_city` VALUES (138, '370100', '济南市', '370000');
INSERT INTO `t_address_city` VALUES (139, '370200', '青岛市', '370000');
INSERT INTO `t_address_city` VALUES (140, '370300', '淄博市', '370000');
INSERT INTO `t_address_city` VALUES (141, '370400', '枣庄市', '370000');
INSERT INTO `t_address_city` VALUES (142, '370500', '东营市', '370000');
INSERT INTO `t_address_city` VALUES (143, '370600', '烟台市', '370000');
INSERT INTO `t_address_city` VALUES (144, '370700', '潍坊市', '370000');
INSERT INTO `t_address_city` VALUES (145, '370800', '济宁市', '370000');
INSERT INTO `t_address_city` VALUES (146, '370900', '泰安市', '370000');
INSERT INTO `t_address_city` VALUES (147, '371000', '威海市', '370000');
INSERT INTO `t_address_city` VALUES (148, '371100', '日照市', '370000');
INSERT INTO `t_address_city` VALUES (149, '371200', '莱芜市', '370000');
INSERT INTO `t_address_city` VALUES (150, '371300', '临沂市', '370000');
INSERT INTO `t_address_city` VALUES (151, '371400', '德州市', '370000');
INSERT INTO `t_address_city` VALUES (152, '371500', '聊城市', '370000');
INSERT INTO `t_address_city` VALUES (153, '371600', '滨州市', '370000');
INSERT INTO `t_address_city` VALUES (154, '371700', '荷泽市', '370000');
INSERT INTO `t_address_city` VALUES (155, '410100', '郑州市', '410000');
INSERT INTO `t_address_city` VALUES (156, '410200', '开封市', '410000');
INSERT INTO `t_address_city` VALUES (157, '410300', '洛阳市', '410000');
INSERT INTO `t_address_city` VALUES (158, '410400', '平顶山市', '410000');
INSERT INTO `t_address_city` VALUES (159, '410500', '安阳市', '410000');
INSERT INTO `t_address_city` VALUES (160, '410600', '鹤壁市', '410000');
INSERT INTO `t_address_city` VALUES (161, '410700', '新乡市', '410000');
INSERT INTO `t_address_city` VALUES (162, '410800', '焦作市', '410000');
INSERT INTO `t_address_city` VALUES (163, '410900', '濮阳市', '410000');
INSERT INTO `t_address_city` VALUES (164, '411000', '许昌市', '410000');
INSERT INTO `t_address_city` VALUES (165, '411100', '漯河市', '410000');
INSERT INTO `t_address_city` VALUES (166, '411200', '三门峡市', '410000');
INSERT INTO `t_address_city` VALUES (167, '411300', '南阳市', '410000');
INSERT INTO `t_address_city` VALUES (168, '411400', '商丘市', '410000');
INSERT INTO `t_address_city` VALUES (169, '411500', '信阳市', '410000');
INSERT INTO `t_address_city` VALUES (170, '411600', '周口市', '410000');
INSERT INTO `t_address_city` VALUES (171, '411700', '驻马店市', '410000');
INSERT INTO `t_address_city` VALUES (172, '420100', '武汉市', '420000');
INSERT INTO `t_address_city` VALUES (173, '420200', '黄石市', '420000');
INSERT INTO `t_address_city` VALUES (174, '420300', '十堰市', '420000');
INSERT INTO `t_address_city` VALUES (175, '420500', '宜昌市', '420000');
INSERT INTO `t_address_city` VALUES (176, '420600', '襄樊市', '420000');
INSERT INTO `t_address_city` VALUES (177, '420700', '鄂州市', '420000');
INSERT INTO `t_address_city` VALUES (178, '420800', '荆门市', '420000');
INSERT INTO `t_address_city` VALUES (179, '420900', '孝感市', '420000');
INSERT INTO `t_address_city` VALUES (180, '421000', '荆州市', '420000');
INSERT INTO `t_address_city` VALUES (181, '421100', '黄冈市', '420000');
INSERT INTO `t_address_city` VALUES (182, '421200', '咸宁市', '420000');
INSERT INTO `t_address_city` VALUES (183, '421300', '随州市', '420000');
INSERT INTO `t_address_city` VALUES (184, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `t_address_city` VALUES (185, '429000', '省直辖行政单位', '420000');
INSERT INTO `t_address_city` VALUES (186, '430100', '长沙市', '430000');
INSERT INTO `t_address_city` VALUES (187, '430200', '株洲市', '430000');
INSERT INTO `t_address_city` VALUES (188, '430300', '湘潭市', '430000');
INSERT INTO `t_address_city` VALUES (189, '430400', '衡阳市', '430000');
INSERT INTO `t_address_city` VALUES (190, '430500', '邵阳市', '430000');
INSERT INTO `t_address_city` VALUES (191, '430600', '岳阳市', '430000');
INSERT INTO `t_address_city` VALUES (192, '430700', '常德市', '430000');
INSERT INTO `t_address_city` VALUES (193, '430800', '张家界市', '430000');
INSERT INTO `t_address_city` VALUES (194, '430900', '益阳市', '430000');
INSERT INTO `t_address_city` VALUES (195, '431000', '郴州市', '430000');
INSERT INTO `t_address_city` VALUES (196, '431100', '永州市', '430000');
INSERT INTO `t_address_city` VALUES (197, '431200', '怀化市', '430000');
INSERT INTO `t_address_city` VALUES (198, '431300', '娄底市', '430000');
INSERT INTO `t_address_city` VALUES (199, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `t_address_city` VALUES (200, '440100', '广州市', '440000');
INSERT INTO `t_address_city` VALUES (201, '440200', '韶关市', '440000');
INSERT INTO `t_address_city` VALUES (202, '440300', '深圳市', '440000');
INSERT INTO `t_address_city` VALUES (203, '440400', '珠海市', '440000');
INSERT INTO `t_address_city` VALUES (204, '440500', '汕头市', '440000');
INSERT INTO `t_address_city` VALUES (205, '440600', '佛山市', '440000');
INSERT INTO `t_address_city` VALUES (206, '440700', '江门市', '440000');
INSERT INTO `t_address_city` VALUES (207, '440800', '湛江市', '440000');
INSERT INTO `t_address_city` VALUES (208, '440900', '茂名市', '440000');
INSERT INTO `t_address_city` VALUES (209, '441200', '肇庆市', '440000');
INSERT INTO `t_address_city` VALUES (210, '441300', '惠州市', '440000');
INSERT INTO `t_address_city` VALUES (211, '441400', '梅州市', '440000');
INSERT INTO `t_address_city` VALUES (212, '441500', '汕尾市', '440000');
INSERT INTO `t_address_city` VALUES (213, '441600', '河源市', '440000');
INSERT INTO `t_address_city` VALUES (214, '441700', '阳江市', '440000');
INSERT INTO `t_address_city` VALUES (215, '441800', '清远市', '440000');
INSERT INTO `t_address_city` VALUES (216, '441900', '东莞市', '440000');
INSERT INTO `t_address_city` VALUES (217, '442000', '中山市', '440000');
INSERT INTO `t_address_city` VALUES (218, '445100', '潮州市', '440000');
INSERT INTO `t_address_city` VALUES (219, '445200', '揭阳市', '440000');
INSERT INTO `t_address_city` VALUES (220, '445300', '云浮市', '440000');
INSERT INTO `t_address_city` VALUES (221, '450100', '南宁市', '450000');
INSERT INTO `t_address_city` VALUES (222, '450200', '柳州市', '450000');
INSERT INTO `t_address_city` VALUES (223, '450300', '桂林市', '450000');
INSERT INTO `t_address_city` VALUES (224, '450400', '梧州市', '450000');
INSERT INTO `t_address_city` VALUES (225, '450500', '北海市', '450000');
INSERT INTO `t_address_city` VALUES (226, '450600', '防城港市', '450000');
INSERT INTO `t_address_city` VALUES (227, '450700', '钦州市', '450000');
INSERT INTO `t_address_city` VALUES (228, '450800', '贵港市', '450000');
INSERT INTO `t_address_city` VALUES (229, '450900', '玉林市', '450000');
INSERT INTO `t_address_city` VALUES (230, '451000', '百色市', '450000');
INSERT INTO `t_address_city` VALUES (231, '451100', '贺州市', '450000');
INSERT INTO `t_address_city` VALUES (232, '451200', '河池市', '450000');
INSERT INTO `t_address_city` VALUES (233, '451300', '来宾市', '450000');
INSERT INTO `t_address_city` VALUES (234, '451400', '崇左市', '450000');
INSERT INTO `t_address_city` VALUES (235, '460100', '海口市', '460000');
INSERT INTO `t_address_city` VALUES (236, '460200', '三亚市', '460000');
INSERT INTO `t_address_city` VALUES (237, '469000', '省直辖县级行政单位', '460000');
INSERT INTO `t_address_city` VALUES (238, '500100', '重庆市', '500000');
INSERT INTO `t_address_city` VALUES (239, '5002xx', '重庆下属县', '5000xx');
INSERT INTO `t_address_city` VALUES (240, '5003xx', '重庆下属市', '5000xx');
INSERT INTO `t_address_city` VALUES (241, '510100', '成都市', '510000');
INSERT INTO `t_address_city` VALUES (242, '510300', '自贡市', '510000');
INSERT INTO `t_address_city` VALUES (243, '510400', '攀枝花市', '510000');
INSERT INTO `t_address_city` VALUES (244, '510500', '泸州市', '510000');
INSERT INTO `t_address_city` VALUES (245, '510600', '德阳市', '510000');
INSERT INTO `t_address_city` VALUES (246, '510700', '绵阳市', '510000');
INSERT INTO `t_address_city` VALUES (247, '510800', '广元市', '510000');
INSERT INTO `t_address_city` VALUES (248, '510900', '遂宁市', '510000');
INSERT INTO `t_address_city` VALUES (249, '511000', '内江市', '510000');
INSERT INTO `t_address_city` VALUES (250, '511100', '乐山市', '510000');
INSERT INTO `t_address_city` VALUES (251, '511300', '南充市', '510000');
INSERT INTO `t_address_city` VALUES (252, '511400', '眉山市', '510000');
INSERT INTO `t_address_city` VALUES (253, '511500', '宜宾市', '510000');
INSERT INTO `t_address_city` VALUES (254, '511600', '广安市', '510000');
INSERT INTO `t_address_city` VALUES (255, '511700', '达州市', '510000');
INSERT INTO `t_address_city` VALUES (256, '511800', '雅安市', '510000');
INSERT INTO `t_address_city` VALUES (257, '511900', '巴中市', '510000');
INSERT INTO `t_address_city` VALUES (258, '512000', '资阳市', '510000');
INSERT INTO `t_address_city` VALUES (259, '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `t_address_city` VALUES (260, '513300', '甘孜藏族自治州', '510000');
INSERT INTO `t_address_city` VALUES (261, '513400', '凉山彝族自治州', '510000');
INSERT INTO `t_address_city` VALUES (262, '520100', '贵阳市', '520000');
INSERT INTO `t_address_city` VALUES (263, '520200', '六盘水市', '520000');
INSERT INTO `t_address_city` VALUES (264, '520300', '遵义市', '520000');
INSERT INTO `t_address_city` VALUES (265, '520400', '安顺市', '520000');
INSERT INTO `t_address_city` VALUES (266, '522200', '铜仁地区', '520000');
INSERT INTO `t_address_city` VALUES (267, '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `t_address_city` VALUES (268, '522400', '毕节地区', '520000');
INSERT INTO `t_address_city` VALUES (269, '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `t_address_city` VALUES (270, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `t_address_city` VALUES (271, '530100', '昆明市', '530000');
INSERT INTO `t_address_city` VALUES (272, '530300', '曲靖市', '530000');
INSERT INTO `t_address_city` VALUES (273, '530400', '玉溪市', '530000');
INSERT INTO `t_address_city` VALUES (274, '530500', '保山市', '530000');
INSERT INTO `t_address_city` VALUES (275, '530600', '昭通市', '530000');
INSERT INTO `t_address_city` VALUES (276, '530700', '丽江市', '530000');
INSERT INTO `t_address_city` VALUES (277, '530800', '思茅市', '530000');
INSERT INTO `t_address_city` VALUES (278, '530900', '临沧市', '530000');
INSERT INTO `t_address_city` VALUES (279, '532300', '楚雄彝族自治州', '530000');
INSERT INTO `t_address_city` VALUES (280, '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `t_address_city` VALUES (281, '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `t_address_city` VALUES (282, '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `t_address_city` VALUES (283, '532900', '大理白族自治州', '530000');
INSERT INTO `t_address_city` VALUES (284, '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `t_address_city` VALUES (285, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `t_address_city` VALUES (286, '533400', '迪庆藏族自治州', '530000');
INSERT INTO `t_address_city` VALUES (287, '540100', '拉萨市', '540000');
INSERT INTO `t_address_city` VALUES (288, '542100', '昌都地区', '540000');
INSERT INTO `t_address_city` VALUES (289, '542200', '山南地区', '540000');
INSERT INTO `t_address_city` VALUES (290, '542300', '日喀则地区', '540000');
INSERT INTO `t_address_city` VALUES (291, '542400', '那曲地区', '540000');
INSERT INTO `t_address_city` VALUES (292, '542500', '阿里地区', '540000');
INSERT INTO `t_address_city` VALUES (293, '542600', '林芝地区', '540000');
INSERT INTO `t_address_city` VALUES (294, '610100', '西安市', '610000');
INSERT INTO `t_address_city` VALUES (295, '610200', '铜川市', '610000');
INSERT INTO `t_address_city` VALUES (296, '610300', '宝鸡市', '610000');
INSERT INTO `t_address_city` VALUES (297, '610400', '咸阳市', '610000');
INSERT INTO `t_address_city` VALUES (298, '610500', '渭南市', '610000');
INSERT INTO `t_address_city` VALUES (299, '610600', '延安市', '610000');
INSERT INTO `t_address_city` VALUES (300, '610700', '汉中市', '610000');
INSERT INTO `t_address_city` VALUES (301, '610800', '榆林市', '610000');
INSERT INTO `t_address_city` VALUES (302, '610900', '安康市', '610000');
INSERT INTO `t_address_city` VALUES (303, '611000', '商洛市', '610000');
INSERT INTO `t_address_city` VALUES (304, '620100', '兰州市', '620000');
INSERT INTO `t_address_city` VALUES (305, '620200', '嘉峪关市', '620000');
INSERT INTO `t_address_city` VALUES (306, '620300', '金昌市', '620000');
INSERT INTO `t_address_city` VALUES (307, '620400', '白银市', '620000');
INSERT INTO `t_address_city` VALUES (308, '620500', '天水市', '620000');
INSERT INTO `t_address_city` VALUES (309, '620600', '武威市', '620000');
INSERT INTO `t_address_city` VALUES (310, '620700', '张掖市', '620000');
INSERT INTO `t_address_city` VALUES (311, '620800', '平凉市', '620000');
INSERT INTO `t_address_city` VALUES (312, '620900', '酒泉市', '620000');
INSERT INTO `t_address_city` VALUES (313, '621000', '庆阳市', '620000');
INSERT INTO `t_address_city` VALUES (314, '621100', '定西市', '620000');
INSERT INTO `t_address_city` VALUES (315, '621200', '陇南市', '620000');
INSERT INTO `t_address_city` VALUES (316, '622900', '临夏回族自治州', '620000');
INSERT INTO `t_address_city` VALUES (317, '623000', '甘南藏族自治州', '620000');
INSERT INTO `t_address_city` VALUES (318, '630100', '西宁市', '630000');
INSERT INTO `t_address_city` VALUES (319, '632100', '海东地区', '630000');
INSERT INTO `t_address_city` VALUES (320, '632200', '海北藏族自治州', '630000');
INSERT INTO `t_address_city` VALUES (321, '632300', '黄南藏族自治州', '630000');
INSERT INTO `t_address_city` VALUES (322, '632500', '海南藏族自治州', '630000');
INSERT INTO `t_address_city` VALUES (323, '632600', '果洛藏族自治州', '630000');
INSERT INTO `t_address_city` VALUES (324, '632700', '玉树藏族自治州', '630000');
INSERT INTO `t_address_city` VALUES (325, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `t_address_city` VALUES (326, '640100', '银川市', '640000');
INSERT INTO `t_address_city` VALUES (327, '640200', '石嘴山市', '640000');
INSERT INTO `t_address_city` VALUES (328, '640300', '吴忠市', '640000');
INSERT INTO `t_address_city` VALUES (329, '640400', '固原市', '640000');
INSERT INTO `t_address_city` VALUES (330, '640500', '中卫市', '640000');
INSERT INTO `t_address_city` VALUES (331, '650100', '乌鲁木齐市', '650000');
INSERT INTO `t_address_city` VALUES (332, '650200', '克拉玛依市', '650000');
INSERT INTO `t_address_city` VALUES (333, '652100', '吐鲁番地区', '650000');
INSERT INTO `t_address_city` VALUES (334, '652200', '哈密地区', '650000');
INSERT INTO `t_address_city` VALUES (335, '652300', '昌吉回族自治州', '650000');
INSERT INTO `t_address_city` VALUES (336, '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `t_address_city` VALUES (337, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `t_address_city` VALUES (338, '652900', '阿克苏地区', '650000');
INSERT INTO `t_address_city` VALUES (339, '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `t_address_city` VALUES (340, '653100', '喀什地区', '650000');
INSERT INTO `t_address_city` VALUES (341, '653200', '和田地区', '650000');
INSERT INTO `t_address_city` VALUES (342, '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `t_address_city` VALUES (343, '654200', '塔城地区', '650000');
INSERT INTO `t_address_city` VALUES (344, '654300', '阿勒泰地区', '650000');
INSERT INTO `t_address_city` VALUES (345, '659000', '省直辖行政单位', '650000');

-- ----------------------------
-- Table structure for t_address_province
-- ----------------------------
DROP TABLE IF EXISTS `t_address_province`;
CREATE TABLE `t_address_province`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份编码',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省份信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_address_province
-- ----------------------------
INSERT INTO `t_address_province` VALUES (1, '110000', '北京市');
INSERT INTO `t_address_province` VALUES (2, '120000', '天津市');
INSERT INTO `t_address_province` VALUES (3, '130000', '河北省');
INSERT INTO `t_address_province` VALUES (4, '140000', '山西省');
INSERT INTO `t_address_province` VALUES (5, '150000', '内蒙古自治区');
INSERT INTO `t_address_province` VALUES (6, '210000', '辽宁省');
INSERT INTO `t_address_province` VALUES (7, '220000', '吉林省');
INSERT INTO `t_address_province` VALUES (8, '230000', '黑龙江省');
INSERT INTO `t_address_province` VALUES (9, '310000', '上海市');
INSERT INTO `t_address_province` VALUES (10, '320000', '江苏省');
INSERT INTO `t_address_province` VALUES (11, '330000', '浙江省');
INSERT INTO `t_address_province` VALUES (12, '340000', '安徽省');
INSERT INTO `t_address_province` VALUES (13, '350000', '福建省');
INSERT INTO `t_address_province` VALUES (14, '360000', '江西省');
INSERT INTO `t_address_province` VALUES (15, '370000', '山东省');
INSERT INTO `t_address_province` VALUES (16, '410000', '河南省');
INSERT INTO `t_address_province` VALUES (17, '420000', '湖北省');
INSERT INTO `t_address_province` VALUES (18, '430000', '湖南省');
INSERT INTO `t_address_province` VALUES (19, '440000', '广东省');
INSERT INTO `t_address_province` VALUES (20, '450000', '广西壮族自治区');
INSERT INTO `t_address_province` VALUES (21, '460000', '海南省');
INSERT INTO `t_address_province` VALUES (22, '500000', '重庆市');
INSERT INTO `t_address_province` VALUES (23, '510000', '四川省');
INSERT INTO `t_address_province` VALUES (24, '520000', '贵州省');
INSERT INTO `t_address_province` VALUES (25, '530000', '云南省');
INSERT INTO `t_address_province` VALUES (26, '540000', '西藏自治区');
INSERT INTO `t_address_province` VALUES (27, '610000', '陕西省');
INSERT INTO `t_address_province` VALUES (28, '620000', '甘肃省');
INSERT INTO `t_address_province` VALUES (29, '630000', '青海省');
INSERT INTO `t_address_province` VALUES (30, '640000', '宁夏回族自治区');
INSERT INTO `t_address_province` VALUES (31, '650000', '新疆维吾尔自治区');
INSERT INTO `t_address_province` VALUES (32, '710000', '台湾省');
INSERT INTO `t_address_province` VALUES (33, '810000', '香港特别行政区');
INSERT INTO `t_address_province` VALUES (34, '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for t_address_town
-- ----------------------------
DROP TABLE IF EXISTS `t_address_town`;
CREATE TABLE `t_address_town`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区县编码',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区县名称',
  `cityCode` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属城市编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 801 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区县信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_address_town
-- ----------------------------
INSERT INTO `t_address_town` VALUES (1, '110101', '东城区', '110100');
INSERT INTO `t_address_town` VALUES (2, '110102', '西城区', '110100');
INSERT INTO `t_address_town` VALUES (3, '110103', '崇文区', '110100');
INSERT INTO `t_address_town` VALUES (4, '110104', '宣武区', '110100');
INSERT INTO `t_address_town` VALUES (5, '110105', '朝阳区', '110100');
INSERT INTO `t_address_town` VALUES (6, '110106', '丰台区', '110100');
INSERT INTO `t_address_town` VALUES (7, '110107', '石景山区', '110100');
INSERT INTO `t_address_town` VALUES (8, '110108', '海淀区', '110100');
INSERT INTO `t_address_town` VALUES (9, '110109', '门头沟区', '110100');
INSERT INTO `t_address_town` VALUES (10, '110111', '房山区', '110100');
INSERT INTO `t_address_town` VALUES (11, '110112', '通州区', '110100');
INSERT INTO `t_address_town` VALUES (12, '110113', '顺义区', '110100');
INSERT INTO `t_address_town` VALUES (13, '110114', '昌平区', '110100');
INSERT INTO `t_address_town` VALUES (14, '110115', '大兴区', '110100');
INSERT INTO `t_address_town` VALUES (15, '110116', '怀柔区', '110100');
INSERT INTO `t_address_town` VALUES (16, '110117', '平谷区', '110100');
INSERT INTO `t_address_town` VALUES (17, '110228', '密云县', '110100');
INSERT INTO `t_address_town` VALUES (18, '110229', '延庆县', '110100');
INSERT INTO `t_address_town` VALUES (19, '120101', '和平区', '120100');
INSERT INTO `t_address_town` VALUES (20, '120102', '河东区', '120100');
INSERT INTO `t_address_town` VALUES (21, '120103', '河西区', '120100');
INSERT INTO `t_address_town` VALUES (22, '120104', '南开区', '120100');
INSERT INTO `t_address_town` VALUES (23, '120105', '河北区', '120100');
INSERT INTO `t_address_town` VALUES (24, '120106', '红桥区', '120100');
INSERT INTO `t_address_town` VALUES (25, '120107', '塘沽区', '120100');
INSERT INTO `t_address_town` VALUES (26, '120108', '汉沽区', '120100');
INSERT INTO `t_address_town` VALUES (27, '120109', '大港区', '120100');
INSERT INTO `t_address_town` VALUES (28, '120110', '东丽区', '120100');
INSERT INTO `t_address_town` VALUES (29, '120111', '西青区', '120100');
INSERT INTO `t_address_town` VALUES (30, '120112', '津南区', '120100');
INSERT INTO `t_address_town` VALUES (31, '120113', '北辰区', '120100');
INSERT INTO `t_address_town` VALUES (32, '120114', '武清区', '120100');
INSERT INTO `t_address_town` VALUES (33, '120115', '宝坻区', '120100');
INSERT INTO `t_address_town` VALUES (34, '120221', '宁河县', '120100');
INSERT INTO `t_address_town` VALUES (35, '120223', '静海县', '120100');
INSERT INTO `t_address_town` VALUES (36, '120225', '蓟　县', '120100');
INSERT INTO `t_address_town` VALUES (37, '130101', '市辖区', '130100');
INSERT INTO `t_address_town` VALUES (38, '130102', '长安区', '130100');
INSERT INTO `t_address_town` VALUES (39, '130103', '桥东区', '130100');
INSERT INTO `t_address_town` VALUES (40, '130104', '桥西区', '130100');
INSERT INTO `t_address_town` VALUES (41, '130105', '新华区', '130100');
INSERT INTO `t_address_town` VALUES (42, '130107', '井陉矿区', '130100');
INSERT INTO `t_address_town` VALUES (43, '130108', '裕华区', '130100');
INSERT INTO `t_address_town` VALUES (44, '130121', '井陉县', '130100');
INSERT INTO `t_address_town` VALUES (45, '130123', '正定县', '130100');
INSERT INTO `t_address_town` VALUES (46, '130124', '栾城县', '130100');
INSERT INTO `t_address_town` VALUES (47, '130125', '行唐县', '130100');
INSERT INTO `t_address_town` VALUES (48, '130126', '灵寿县', '130100');
INSERT INTO `t_address_town` VALUES (49, '130127', '高邑县', '130100');
INSERT INTO `t_address_town` VALUES (50, '130128', '深泽县', '130100');
INSERT INTO `t_address_town` VALUES (51, '130129', '赞皇县', '130100');
INSERT INTO `t_address_town` VALUES (52, '130130', '无极县', '130100');
INSERT INTO `t_address_town` VALUES (53, '130131', '平山县', '130100');
INSERT INTO `t_address_town` VALUES (54, '130132', '元氏县', '130100');
INSERT INTO `t_address_town` VALUES (55, '130133', '赵　县', '130100');
INSERT INTO `t_address_town` VALUES (56, '130181', '辛集市', '130100');
INSERT INTO `t_address_town` VALUES (57, '130182', '藁城市', '130100');
INSERT INTO `t_address_town` VALUES (58, '130183', '晋州市', '130100');
INSERT INTO `t_address_town` VALUES (59, '130184', '新乐市', '130100');
INSERT INTO `t_address_town` VALUES (60, '130185', '鹿泉市', '130100');
INSERT INTO `t_address_town` VALUES (61, '130201', '市辖区', '130200');
INSERT INTO `t_address_town` VALUES (62, '130202', '路南区', '130200');
INSERT INTO `t_address_town` VALUES (63, '130203', '路北区', '130200');
INSERT INTO `t_address_town` VALUES (64, '130204', '古冶区', '130200');
INSERT INTO `t_address_town` VALUES (65, '130205', '开平区', '130200');
INSERT INTO `t_address_town` VALUES (66, '130207', '丰南区', '130200');
INSERT INTO `t_address_town` VALUES (67, '130208', '丰润区', '130200');
INSERT INTO `t_address_town` VALUES (68, '130223', '滦　县', '130200');
INSERT INTO `t_address_town` VALUES (69, '130224', '滦南县', '130200');
INSERT INTO `t_address_town` VALUES (70, '130225', '乐亭县', '130200');
INSERT INTO `t_address_town` VALUES (71, '130227', '迁西县', '130200');
INSERT INTO `t_address_town` VALUES (72, '130229', '玉田县', '130200');
INSERT INTO `t_address_town` VALUES (73, '130230', '唐海县', '130200');
INSERT INTO `t_address_town` VALUES (74, '130281', '遵化市', '130200');
INSERT INTO `t_address_town` VALUES (75, '130283', '迁安市', '130200');
INSERT INTO `t_address_town` VALUES (76, '130301', '市辖区', '130300');
INSERT INTO `t_address_town` VALUES (77, '130302', '海港区', '130300');
INSERT INTO `t_address_town` VALUES (78, '130303', '山海关区', '130300');
INSERT INTO `t_address_town` VALUES (79, '130304', '北戴河区', '130300');
INSERT INTO `t_address_town` VALUES (80, '130321', '青龙满族自治县', '130300');
INSERT INTO `t_address_town` VALUES (81, '130322', '昌黎县', '130300');
INSERT INTO `t_address_town` VALUES (82, '130323', '抚宁县', '130300');
INSERT INTO `t_address_town` VALUES (83, '130324', '卢龙县', '130300');
INSERT INTO `t_address_town` VALUES (84, '130401', '市辖区', '130400');
INSERT INTO `t_address_town` VALUES (85, '130402', '邯山区', '130400');
INSERT INTO `t_address_town` VALUES (86, '130403', '丛台区', '130400');
INSERT INTO `t_address_town` VALUES (87, '130404', '复兴区', '130400');
INSERT INTO `t_address_town` VALUES (88, '130406', '峰峰矿区', '130400');
INSERT INTO `t_address_town` VALUES (89, '130421', '邯郸县', '130400');
INSERT INTO `t_address_town` VALUES (90, '130423', '临漳县', '130400');
INSERT INTO `t_address_town` VALUES (91, '130424', '成安县', '130400');
INSERT INTO `t_address_town` VALUES (92, '130425', '大名县', '130400');
INSERT INTO `t_address_town` VALUES (93, '130426', '涉　县', '130400');
INSERT INTO `t_address_town` VALUES (94, '130427', '磁　县', '130400');
INSERT INTO `t_address_town` VALUES (95, '130428', '肥乡县', '130400');
INSERT INTO `t_address_town` VALUES (96, '130429', '永年县', '130400');
INSERT INTO `t_address_town` VALUES (97, '130430', '邱　县', '130400');
INSERT INTO `t_address_town` VALUES (98, '130431', '鸡泽县', '130400');
INSERT INTO `t_address_town` VALUES (99, '130432', '广平县', '130400');
INSERT INTO `t_address_town` VALUES (100, '130433', '馆陶县', '130400');
INSERT INTO `t_address_town` VALUES (101, '130434', '魏　县', '130400');
INSERT INTO `t_address_town` VALUES (102, '130435', '曲周县', '130400');
INSERT INTO `t_address_town` VALUES (103, '130481', '武安市', '130400');
INSERT INTO `t_address_town` VALUES (104, '130501', '市辖区', '130500');
INSERT INTO `t_address_town` VALUES (105, '130502', '桥东区', '130500');
INSERT INTO `t_address_town` VALUES (106, '130503', '桥西区', '130500');
INSERT INTO `t_address_town` VALUES (107, '130521', '邢台县', '130500');
INSERT INTO `t_address_town` VALUES (108, '130522', '临城县', '130500');
INSERT INTO `t_address_town` VALUES (109, '130523', '内丘县', '130500');
INSERT INTO `t_address_town` VALUES (110, '130524', '柏乡县', '130500');
INSERT INTO `t_address_town` VALUES (111, '130525', '隆尧县', '130500');
INSERT INTO `t_address_town` VALUES (112, '130526', '任　县', '130500');
INSERT INTO `t_address_town` VALUES (113, '130527', '南和县', '130500');
INSERT INTO `t_address_town` VALUES (114, '130528', '宁晋县', '130500');
INSERT INTO `t_address_town` VALUES (115, '130529', '巨鹿县', '130500');
INSERT INTO `t_address_town` VALUES (116, '130530', '新河县', '130500');
INSERT INTO `t_address_town` VALUES (117, '130531', '广宗县', '130500');
INSERT INTO `t_address_town` VALUES (118, '130532', '平乡县', '130500');
INSERT INTO `t_address_town` VALUES (119, '130533', '威　县', '130500');
INSERT INTO `t_address_town` VALUES (120, '130534', '清河县', '130500');
INSERT INTO `t_address_town` VALUES (121, '130535', '临西县', '130500');
INSERT INTO `t_address_town` VALUES (122, '130581', '南宫市', '130500');
INSERT INTO `t_address_town` VALUES (123, '130582', '沙河市', '130500');
INSERT INTO `t_address_town` VALUES (124, '130601', '市辖区', '130600');
INSERT INTO `t_address_town` VALUES (125, '130602', '新市区', '130600');
INSERT INTO `t_address_town` VALUES (126, '130603', '北市区', '130600');
INSERT INTO `t_address_town` VALUES (127, '130604', '南市区', '130600');
INSERT INTO `t_address_town` VALUES (128, '130621', '满城县', '130600');
INSERT INTO `t_address_town` VALUES (129, '130622', '清苑县', '130600');
INSERT INTO `t_address_town` VALUES (130, '130623', '涞水县', '130600');
INSERT INTO `t_address_town` VALUES (131, '130624', '阜平县', '130600');
INSERT INTO `t_address_town` VALUES (132, '130625', '徐水县', '130600');
INSERT INTO `t_address_town` VALUES (133, '130626', '定兴县', '130600');
INSERT INTO `t_address_town` VALUES (134, '130627', '唐　县', '130600');
INSERT INTO `t_address_town` VALUES (135, '130628', '高阳县', '130600');
INSERT INTO `t_address_town` VALUES (136, '130629', '容城县', '130600');
INSERT INTO `t_address_town` VALUES (137, '130630', '涞源县', '130600');
INSERT INTO `t_address_town` VALUES (138, '130631', '望都县', '130600');
INSERT INTO `t_address_town` VALUES (139, '130632', '安新县', '130600');
INSERT INTO `t_address_town` VALUES (140, '130633', '易　县', '130600');
INSERT INTO `t_address_town` VALUES (141, '130634', '曲阳县', '130600');
INSERT INTO `t_address_town` VALUES (142, '130635', '蠡　县', '130600');
INSERT INTO `t_address_town` VALUES (143, '130636', '顺平县', '130600');
INSERT INTO `t_address_town` VALUES (144, '130637', '博野县', '130600');
INSERT INTO `t_address_town` VALUES (145, '130638', '雄　县', '130600');
INSERT INTO `t_address_town` VALUES (146, '130681', '涿州市', '130600');
INSERT INTO `t_address_town` VALUES (147, '130682', '定州市', '130600');
INSERT INTO `t_address_town` VALUES (148, '130683', '安国市', '130600');
INSERT INTO `t_address_town` VALUES (149, '130684', '高碑店市', '130600');
INSERT INTO `t_address_town` VALUES (150, '130701', '市辖区', '130700');
INSERT INTO `t_address_town` VALUES (151, '130702', '桥东区', '130700');
INSERT INTO `t_address_town` VALUES (152, '130703', '桥西区', '130700');
INSERT INTO `t_address_town` VALUES (153, '130705', '宣化区', '130700');
INSERT INTO `t_address_town` VALUES (154, '130706', '下花园区', '130700');
INSERT INTO `t_address_town` VALUES (155, '130721', '宣化县', '130700');
INSERT INTO `t_address_town` VALUES (156, '130722', '张北县', '130700');
INSERT INTO `t_address_town` VALUES (157, '130723', '康保县', '130700');
INSERT INTO `t_address_town` VALUES (158, '130724', '沽源县', '130700');
INSERT INTO `t_address_town` VALUES (159, '130725', '尚义县', '130700');
INSERT INTO `t_address_town` VALUES (160, '130726', '蔚　县', '130700');
INSERT INTO `t_address_town` VALUES (161, '130727', '阳原县', '130700');
INSERT INTO `t_address_town` VALUES (162, '130728', '怀安县', '130700');
INSERT INTO `t_address_town` VALUES (163, '130729', '万全县', '130700');
INSERT INTO `t_address_town` VALUES (164, '130730', '怀来县', '130700');
INSERT INTO `t_address_town` VALUES (165, '130731', '涿鹿县', '130700');
INSERT INTO `t_address_town` VALUES (166, '130732', '赤城县', '130700');
INSERT INTO `t_address_town` VALUES (167, '130733', '崇礼县', '130700');
INSERT INTO `t_address_town` VALUES (168, '130801', '市辖区', '130800');
INSERT INTO `t_address_town` VALUES (169, '130802', '双桥区', '130800');
INSERT INTO `t_address_town` VALUES (170, '130803', '双滦区', '130800');
INSERT INTO `t_address_town` VALUES (171, '130804', '鹰手营子矿区', '130800');
INSERT INTO `t_address_town` VALUES (172, '130821', '承德县', '130800');
INSERT INTO `t_address_town` VALUES (173, '130822', '兴隆县', '130800');
INSERT INTO `t_address_town` VALUES (174, '130823', '平泉县', '130800');
INSERT INTO `t_address_town` VALUES (175, '130824', '滦平县', '130800');
INSERT INTO `t_address_town` VALUES (176, '130825', '隆化县', '130800');
INSERT INTO `t_address_town` VALUES (177, '130826', '丰宁满族自治县', '130800');
INSERT INTO `t_address_town` VALUES (178, '130827', '宽城满族自治县', '130800');
INSERT INTO `t_address_town` VALUES (179, '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `t_address_town` VALUES (180, '130901', '市辖区', '130900');
INSERT INTO `t_address_town` VALUES (181, '130902', '新华区', '130900');
INSERT INTO `t_address_town` VALUES (182, '130903', '运河区', '130900');
INSERT INTO `t_address_town` VALUES (183, '130921', '沧　县', '130900');
INSERT INTO `t_address_town` VALUES (184, '130922', '青　县', '130900');
INSERT INTO `t_address_town` VALUES (185, '130923', '东光县', '130900');
INSERT INTO `t_address_town` VALUES (186, '130924', '海兴县', '130900');
INSERT INTO `t_address_town` VALUES (187, '130925', '盐山县', '130900');
INSERT INTO `t_address_town` VALUES (188, '130926', '肃宁县', '130900');
INSERT INTO `t_address_town` VALUES (189, '130927', '南皮县', '130900');
INSERT INTO `t_address_town` VALUES (190, '130928', '吴桥县', '130900');
INSERT INTO `t_address_town` VALUES (191, '130929', '献　县', '130900');
INSERT INTO `t_address_town` VALUES (192, '130930', '孟村回族自治县', '130900');
INSERT INTO `t_address_town` VALUES (193, '130981', '泊头市', '130900');
INSERT INTO `t_address_town` VALUES (194, '130982', '任丘市', '130900');
INSERT INTO `t_address_town` VALUES (195, '130983', '黄骅市', '130900');
INSERT INTO `t_address_town` VALUES (196, '130984', '河间市', '130900');
INSERT INTO `t_address_town` VALUES (197, '131001', '市辖区', '131000');
INSERT INTO `t_address_town` VALUES (198, '131002', '安次区', '131000');
INSERT INTO `t_address_town` VALUES (199, '131003', '广阳区', '131000');
INSERT INTO `t_address_town` VALUES (200, '131022', '固安县', '131000');
INSERT INTO `t_address_town` VALUES (201, '131023', '永清县', '131000');
INSERT INTO `t_address_town` VALUES (202, '131024', '香河县', '131000');
INSERT INTO `t_address_town` VALUES (203, '131025', '大城县', '131000');
INSERT INTO `t_address_town` VALUES (204, '131026', '文安县', '131000');
INSERT INTO `t_address_town` VALUES (205, '131028', '大厂回族自治县', '131000');
INSERT INTO `t_address_town` VALUES (206, '131081', '霸州市', '131000');
INSERT INTO `t_address_town` VALUES (207, '131082', '三河市', '131000');
INSERT INTO `t_address_town` VALUES (208, '131101', '市辖区', '131100');
INSERT INTO `t_address_town` VALUES (209, '131102', '桃城区', '131100');
INSERT INTO `t_address_town` VALUES (210, '131121', '枣强县', '131100');
INSERT INTO `t_address_town` VALUES (211, '131122', '武邑县', '131100');
INSERT INTO `t_address_town` VALUES (212, '131123', '武强县', '131100');
INSERT INTO `t_address_town` VALUES (213, '131124', '饶阳县', '131100');
INSERT INTO `t_address_town` VALUES (214, '131125', '安平县', '131100');
INSERT INTO `t_address_town` VALUES (215, '131126', '故城县', '131100');
INSERT INTO `t_address_town` VALUES (216, '131127', '景　县', '131100');
INSERT INTO `t_address_town` VALUES (217, '131128', '阜城县', '131100');
INSERT INTO `t_address_town` VALUES (218, '131181', '冀州市', '131100');
INSERT INTO `t_address_town` VALUES (219, '131182', '深州市', '131100');
INSERT INTO `t_address_town` VALUES (220, '140101', '市辖区', '140100');
INSERT INTO `t_address_town` VALUES (221, '140105', '小店区', '140100');
INSERT INTO `t_address_town` VALUES (222, '140106', '迎泽区', '140100');
INSERT INTO `t_address_town` VALUES (223, '140107', '杏花岭区', '140100');
INSERT INTO `t_address_town` VALUES (224, '140108', '尖草坪区', '140100');
INSERT INTO `t_address_town` VALUES (225, '140109', '万柏林区', '140100');
INSERT INTO `t_address_town` VALUES (226, '140110', '晋源区', '140100');
INSERT INTO `t_address_town` VALUES (227, '140121', '清徐县', '140100');
INSERT INTO `t_address_town` VALUES (228, '140122', '阳曲县', '140100');
INSERT INTO `t_address_town` VALUES (229, '140123', '娄烦县', '140100');
INSERT INTO `t_address_town` VALUES (230, '140181', '古交市', '140100');
INSERT INTO `t_address_town` VALUES (231, '140201', '市辖区', '140200');
INSERT INTO `t_address_town` VALUES (232, '140202', '城　区', '140200');
INSERT INTO `t_address_town` VALUES (233, '140203', '矿　区', '140200');
INSERT INTO `t_address_town` VALUES (234, '140211', '南郊区', '140200');
INSERT INTO `t_address_town` VALUES (235, '140212', '新荣区', '140200');
INSERT INTO `t_address_town` VALUES (236, '140221', '阳高县', '140200');
INSERT INTO `t_address_town` VALUES (237, '140222', '天镇县', '140200');
INSERT INTO `t_address_town` VALUES (238, '140223', '广灵县', '140200');
INSERT INTO `t_address_town` VALUES (239, '140224', '灵丘县', '140200');
INSERT INTO `t_address_town` VALUES (240, '140225', '浑源县', '140200');
INSERT INTO `t_address_town` VALUES (241, '140226', '左云县', '140200');
INSERT INTO `t_address_town` VALUES (242, '140227', '大同县', '140200');
INSERT INTO `t_address_town` VALUES (243, '140301', '市辖区', '140300');
INSERT INTO `t_address_town` VALUES (244, '140302', '城　区', '140300');
INSERT INTO `t_address_town` VALUES (245, '140303', '矿　区', '140300');
INSERT INTO `t_address_town` VALUES (246, '140311', '郊　区', '140300');
INSERT INTO `t_address_town` VALUES (247, '140321', '平定县', '140300');
INSERT INTO `t_address_town` VALUES (248, '140322', '盂　县', '140300');
INSERT INTO `t_address_town` VALUES (249, '140401', '市辖区', '140400');
INSERT INTO `t_address_town` VALUES (250, '140402', '城　区', '140400');
INSERT INTO `t_address_town` VALUES (251, '140411', '郊　区', '140400');
INSERT INTO `t_address_town` VALUES (252, '140421', '长治县', '140400');
INSERT INTO `t_address_town` VALUES (253, '140423', '襄垣县', '140400');
INSERT INTO `t_address_town` VALUES (254, '140424', '屯留县', '140400');
INSERT INTO `t_address_town` VALUES (255, '140425', '平顺县', '140400');
INSERT INTO `t_address_town` VALUES (256, '140426', '黎城县', '140400');
INSERT INTO `t_address_town` VALUES (257, '140427', '壶关县', '140400');
INSERT INTO `t_address_town` VALUES (258, '140428', '长子县', '140400');
INSERT INTO `t_address_town` VALUES (259, '140429', '武乡县', '140400');
INSERT INTO `t_address_town` VALUES (260, '140430', '沁　县', '140400');
INSERT INTO `t_address_town` VALUES (261, '140431', '沁源县', '140400');
INSERT INTO `t_address_town` VALUES (262, '140481', '潞城市', '140400');
INSERT INTO `t_address_town` VALUES (263, '140501', '市辖区', '140500');
INSERT INTO `t_address_town` VALUES (264, '140502', '城　区', '140500');
INSERT INTO `t_address_town` VALUES (265, '140521', '沁水县', '140500');
INSERT INTO `t_address_town` VALUES (266, '140522', '阳城县', '140500');
INSERT INTO `t_address_town` VALUES (267, '140524', '陵川县', '140500');
INSERT INTO `t_address_town` VALUES (268, '140525', '泽州县', '140500');
INSERT INTO `t_address_town` VALUES (269, '140581', '高平市', '140500');
INSERT INTO `t_address_town` VALUES (270, '140601', '市辖区', '140600');
INSERT INTO `t_address_town` VALUES (271, '140602', '朔城区', '140600');
INSERT INTO `t_address_town` VALUES (272, '140603', '平鲁区', '140600');
INSERT INTO `t_address_town` VALUES (273, '140621', '山阴县', '140600');
INSERT INTO `t_address_town` VALUES (274, '140622', '应　县', '140600');
INSERT INTO `t_address_town` VALUES (275, '140623', '右玉县', '140600');
INSERT INTO `t_address_town` VALUES (276, '140624', '怀仁县', '140600');
INSERT INTO `t_address_town` VALUES (277, '140701', '市辖区', '140700');
INSERT INTO `t_address_town` VALUES (278, '140702', '榆次区', '140700');
INSERT INTO `t_address_town` VALUES (279, '140721', '榆社县', '140700');
INSERT INTO `t_address_town` VALUES (280, '140722', '左权县', '140700');
INSERT INTO `t_address_town` VALUES (281, '140723', '和顺县', '140700');
INSERT INTO `t_address_town` VALUES (282, '140724', '昔阳县', '140700');
INSERT INTO `t_address_town` VALUES (283, '140725', '寿阳县', '140700');
INSERT INTO `t_address_town` VALUES (284, '140726', '太谷县', '140700');
INSERT INTO `t_address_town` VALUES (285, '140727', '祁　县', '140700');
INSERT INTO `t_address_town` VALUES (286, '140728', '平遥县', '140700');
INSERT INTO `t_address_town` VALUES (287, '140729', '灵石县', '140700');
INSERT INTO `t_address_town` VALUES (288, '140781', '介休市', '140700');
INSERT INTO `t_address_town` VALUES (289, '140801', '市辖区', '140800');
INSERT INTO `t_address_town` VALUES (290, '140802', '盐湖区', '140800');
INSERT INTO `t_address_town` VALUES (291, '140821', '临猗县', '140800');
INSERT INTO `t_address_town` VALUES (292, '140822', '万荣县', '140800');
INSERT INTO `t_address_town` VALUES (293, '140823', '闻喜县', '140800');
INSERT INTO `t_address_town` VALUES (294, '140824', '稷山县', '140800');
INSERT INTO `t_address_town` VALUES (295, '140825', '新绛县', '140800');
INSERT INTO `t_address_town` VALUES (296, '140826', '绛　县', '140800');
INSERT INTO `t_address_town` VALUES (297, '140827', '垣曲县', '140800');
INSERT INTO `t_address_town` VALUES (298, '140828', '夏　县', '140800');
INSERT INTO `t_address_town` VALUES (299, '140829', '平陆县', '140800');
INSERT INTO `t_address_town` VALUES (300, '140830', '芮城县', '140800');
INSERT INTO `t_address_town` VALUES (301, '140881', '永济市', '140800');
INSERT INTO `t_address_town` VALUES (302, '140882', '河津市', '140800');
INSERT INTO `t_address_town` VALUES (303, '140901', '市辖区', '140900');
INSERT INTO `t_address_town` VALUES (304, '140902', '忻府区', '140900');
INSERT INTO `t_address_town` VALUES (305, '140921', '定襄县', '140900');
INSERT INTO `t_address_town` VALUES (306, '140922', '五台县', '140900');
INSERT INTO `t_address_town` VALUES (307, '140923', '代　县', '140900');
INSERT INTO `t_address_town` VALUES (308, '140924', '繁峙县', '140900');
INSERT INTO `t_address_town` VALUES (309, '140925', '宁武县', '140900');
INSERT INTO `t_address_town` VALUES (310, '140926', '静乐县', '140900');
INSERT INTO `t_address_town` VALUES (311, '140927', '神池县', '140900');
INSERT INTO `t_address_town` VALUES (312, '140928', '五寨县', '140900');
INSERT INTO `t_address_town` VALUES (313, '140929', '岢岚县', '140900');
INSERT INTO `t_address_town` VALUES (314, '140930', '河曲县', '140900');
INSERT INTO `t_address_town` VALUES (315, '140931', '保德县', '140900');
INSERT INTO `t_address_town` VALUES (316, '140932', '偏关县', '140900');
INSERT INTO `t_address_town` VALUES (317, '140981', '原平市', '140900');
INSERT INTO `t_address_town` VALUES (318, '141001', '市辖区', '141000');
INSERT INTO `t_address_town` VALUES (319, '141002', '尧都区', '141000');
INSERT INTO `t_address_town` VALUES (320, '141021', '曲沃县', '141000');
INSERT INTO `t_address_town` VALUES (321, '141022', '翼城县', '141000');
INSERT INTO `t_address_town` VALUES (322, '141023', '襄汾县', '141000');
INSERT INTO `t_address_town` VALUES (323, '141024', '洪洞县', '141000');
INSERT INTO `t_address_town` VALUES (324, '141025', '古　县', '141000');
INSERT INTO `t_address_town` VALUES (325, '141026', '安泽县', '141000');
INSERT INTO `t_address_town` VALUES (326, '141027', '浮山县', '141000');
INSERT INTO `t_address_town` VALUES (327, '141028', '吉　县', '141000');
INSERT INTO `t_address_town` VALUES (328, '141029', '乡宁县', '141000');
INSERT INTO `t_address_town` VALUES (329, '141030', '大宁县', '141000');
INSERT INTO `t_address_town` VALUES (330, '141031', '隰　县', '141000');
INSERT INTO `t_address_town` VALUES (331, '141032', '永和县', '141000');
INSERT INTO `t_address_town` VALUES (332, '141033', '蒲　县', '141000');
INSERT INTO `t_address_town` VALUES (333, '141034', '汾西县', '141000');
INSERT INTO `t_address_town` VALUES (334, '141081', '侯马市', '141000');
INSERT INTO `t_address_town` VALUES (335, '141082', '霍州市', '141000');
INSERT INTO `t_address_town` VALUES (336, '141101', '市辖区', '141100');
INSERT INTO `t_address_town` VALUES (337, '141102', '离石区', '141100');
INSERT INTO `t_address_town` VALUES (338, '141121', '文水县', '141100');
INSERT INTO `t_address_town` VALUES (339, '141122', '交城县', '141100');
INSERT INTO `t_address_town` VALUES (340, '141123', '兴　县', '141100');
INSERT INTO `t_address_town` VALUES (341, '141124', '临　县', '141100');
INSERT INTO `t_address_town` VALUES (342, '141125', '柳林县', '141100');
INSERT INTO `t_address_town` VALUES (343, '141126', '石楼县', '141100');
INSERT INTO `t_address_town` VALUES (344, '141127', '岚　县', '141100');
INSERT INTO `t_address_town` VALUES (345, '141128', '方山县', '141100');
INSERT INTO `t_address_town` VALUES (346, '141129', '中阳县', '141100');
INSERT INTO `t_address_town` VALUES (347, '141130', '交口县', '141100');
INSERT INTO `t_address_town` VALUES (348, '141181', '孝义市', '141100');
INSERT INTO `t_address_town` VALUES (349, '141182', '汾阳市', '141100');
INSERT INTO `t_address_town` VALUES (350, '150101', '市辖区', '150100');
INSERT INTO `t_address_town` VALUES (351, '150102', '新城区', '150100');
INSERT INTO `t_address_town` VALUES (352, '150103', '回民区', '150100');
INSERT INTO `t_address_town` VALUES (353, '150104', '玉泉区', '150100');
INSERT INTO `t_address_town` VALUES (354, '150105', '赛罕区', '150100');
INSERT INTO `t_address_town` VALUES (355, '150121', '土默特左旗', '150100');
INSERT INTO `t_address_town` VALUES (356, '150122', '托克托县', '150100');
INSERT INTO `t_address_town` VALUES (357, '150123', '和林格尔县', '150100');
INSERT INTO `t_address_town` VALUES (358, '150124', '清水河县', '150100');
INSERT INTO `t_address_town` VALUES (359, '150125', '武川县', '150100');
INSERT INTO `t_address_town` VALUES (360, '150201', '市辖区', '150200');
INSERT INTO `t_address_town` VALUES (361, '150202', '东河区', '150200');
INSERT INTO `t_address_town` VALUES (362, '150203', '昆都仑区', '150200');
INSERT INTO `t_address_town` VALUES (363, '150204', '青山区', '150200');
INSERT INTO `t_address_town` VALUES (364, '150205', '石拐区', '150200');
INSERT INTO `t_address_town` VALUES (365, '150206', '白云矿区', '150200');
INSERT INTO `t_address_town` VALUES (366, '150207', '九原区', '150200');
INSERT INTO `t_address_town` VALUES (367, '150221', '土默特右旗', '150200');
INSERT INTO `t_address_town` VALUES (368, '150222', '固阳县', '150200');
INSERT INTO `t_address_town` VALUES (369, '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `t_address_town` VALUES (370, '150301', '市辖区', '150300');
INSERT INTO `t_address_town` VALUES (371, '150302', '海勃湾区', '150300');
INSERT INTO `t_address_town` VALUES (372, '150303', '海南区', '150300');
INSERT INTO `t_address_town` VALUES (373, '150304', '乌达区', '150300');
INSERT INTO `t_address_town` VALUES (374, '150401', '市辖区', '150400');
INSERT INTO `t_address_town` VALUES (375, '150402', '红山区', '150400');
INSERT INTO `t_address_town` VALUES (376, '150403', '元宝山区', '150400');
INSERT INTO `t_address_town` VALUES (377, '150404', '松山区', '150400');
INSERT INTO `t_address_town` VALUES (378, '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `t_address_town` VALUES (379, '150422', '巴林左旗', '150400');
INSERT INTO `t_address_town` VALUES (380, '150423', '巴林右旗', '150400');
INSERT INTO `t_address_town` VALUES (381, '150424', '林西县', '150400');
INSERT INTO `t_address_town` VALUES (382, '150425', '克什克腾旗', '150400');
INSERT INTO `t_address_town` VALUES (383, '150426', '翁牛特旗', '150400');
INSERT INTO `t_address_town` VALUES (384, '150428', '喀喇沁旗', '150400');
INSERT INTO `t_address_town` VALUES (385, '150429', '宁城县', '150400');
INSERT INTO `t_address_town` VALUES (386, '150430', '敖汉旗', '150400');
INSERT INTO `t_address_town` VALUES (387, '150501', '市辖区', '150500');
INSERT INTO `t_address_town` VALUES (388, '150502', '科尔沁区', '150500');
INSERT INTO `t_address_town` VALUES (389, '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `t_address_town` VALUES (390, '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `t_address_town` VALUES (391, '150523', '开鲁县', '150500');
INSERT INTO `t_address_town` VALUES (392, '150524', '库伦旗', '150500');
INSERT INTO `t_address_town` VALUES (393, '150525', '奈曼旗', '150500');
INSERT INTO `t_address_town` VALUES (394, '150526', '扎鲁特旗', '150500');
INSERT INTO `t_address_town` VALUES (395, '150581', '霍林郭勒市', '150500');
INSERT INTO `t_address_town` VALUES (396, '150602', '东胜区', '150600');
INSERT INTO `t_address_town` VALUES (397, '150621', '达拉特旗', '150600');
INSERT INTO `t_address_town` VALUES (398, '150622', '准格尔旗', '150600');
INSERT INTO `t_address_town` VALUES (399, '150623', '鄂托克前旗', '150600');
INSERT INTO `t_address_town` VALUES (400, '150624', '鄂托克旗', '150600');
INSERT INTO `t_address_town` VALUES (401, '150625', '杭锦旗', '150600');
INSERT INTO `t_address_town` VALUES (402, '150626', '乌审旗', '150600');
INSERT INTO `t_address_town` VALUES (403, '150627', '伊金霍洛旗', '150600');
INSERT INTO `t_address_town` VALUES (404, '150701', '市辖区', '150700');
INSERT INTO `t_address_town` VALUES (405, '150702', '海拉尔区', '150700');
INSERT INTO `t_address_town` VALUES (406, '150721', '阿荣旗', '150700');
INSERT INTO `t_address_town` VALUES (407, '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `t_address_town` VALUES (408, '150723', '鄂伦春自治旗', '150700');
INSERT INTO `t_address_town` VALUES (409, '150724', '鄂温克族自治旗', '150700');
INSERT INTO `t_address_town` VALUES (410, '150725', '陈巴尔虎旗', '150700');
INSERT INTO `t_address_town` VALUES (411, '150726', '新巴尔虎左旗', '150700');
INSERT INTO `t_address_town` VALUES (412, '150727', '新巴尔虎右旗', '150700');
INSERT INTO `t_address_town` VALUES (413, '150781', '满洲里市', '150700');
INSERT INTO `t_address_town` VALUES (414, '150782', '牙克石市', '150700');
INSERT INTO `t_address_town` VALUES (415, '150783', '扎兰屯市', '150700');
INSERT INTO `t_address_town` VALUES (416, '150784', '额尔古纳市', '150700');
INSERT INTO `t_address_town` VALUES (417, '150785', '根河市', '150700');
INSERT INTO `t_address_town` VALUES (418, '150801', '市辖区', '150800');
INSERT INTO `t_address_town` VALUES (419, '150802', '临河区', '150800');
INSERT INTO `t_address_town` VALUES (420, '150821', '五原县', '150800');
INSERT INTO `t_address_town` VALUES (421, '150822', '磴口县', '150800');
INSERT INTO `t_address_town` VALUES (422, '150823', '乌拉特前旗', '150800');
INSERT INTO `t_address_town` VALUES (423, '150824', '乌拉特中旗', '150800');
INSERT INTO `t_address_town` VALUES (424, '150825', '乌拉特后旗', '150800');
INSERT INTO `t_address_town` VALUES (425, '150826', '杭锦后旗', '150800');
INSERT INTO `t_address_town` VALUES (426, '150901', '市辖区', '150900');
INSERT INTO `t_address_town` VALUES (427, '150902', '集宁区', '150900');
INSERT INTO `t_address_town` VALUES (428, '150921', '卓资县', '150900');
INSERT INTO `t_address_town` VALUES (429, '150922', '化德县', '150900');
INSERT INTO `t_address_town` VALUES (430, '150923', '商都县', '150900');
INSERT INTO `t_address_town` VALUES (431, '150924', '兴和县', '150900');
INSERT INTO `t_address_town` VALUES (432, '150925', '凉城县', '150900');
INSERT INTO `t_address_town` VALUES (433, '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `t_address_town` VALUES (434, '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `t_address_town` VALUES (435, '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `t_address_town` VALUES (436, '150929', '四子王旗', '150900');
INSERT INTO `t_address_town` VALUES (437, '150981', '丰镇市', '150900');
INSERT INTO `t_address_town` VALUES (438, '152201', '乌兰浩特市', '152200');
INSERT INTO `t_address_town` VALUES (439, '152202', '阿尔山市', '152200');
INSERT INTO `t_address_town` VALUES (440, '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `t_address_town` VALUES (441, '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `t_address_town` VALUES (442, '152223', '扎赉特旗', '152200');
INSERT INTO `t_address_town` VALUES (443, '152224', '突泉县', '152200');
INSERT INTO `t_address_town` VALUES (444, '152501', '二连浩特市', '152500');
INSERT INTO `t_address_town` VALUES (445, '152502', '锡林浩特市', '152500');
INSERT INTO `t_address_town` VALUES (446, '152522', '阿巴嘎旗', '152500');
INSERT INTO `t_address_town` VALUES (447, '152523', '苏尼特左旗', '152500');
INSERT INTO `t_address_town` VALUES (448, '152524', '苏尼特右旗', '152500');
INSERT INTO `t_address_town` VALUES (449, '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `t_address_town` VALUES (450, '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `t_address_town` VALUES (451, '152527', '太仆寺旗', '152500');
INSERT INTO `t_address_town` VALUES (452, '152528', '镶黄旗', '152500');
INSERT INTO `t_address_town` VALUES (453, '152529', '正镶白旗', '152500');
INSERT INTO `t_address_town` VALUES (454, '152530', '正蓝旗', '152500');
INSERT INTO `t_address_town` VALUES (455, '152531', '多伦县', '152500');
INSERT INTO `t_address_town` VALUES (456, '152921', '阿拉善左旗', '152900');
INSERT INTO `t_address_town` VALUES (457, '152922', '阿拉善右旗', '152900');
INSERT INTO `t_address_town` VALUES (458, '152923', '额济纳旗', '152900');
INSERT INTO `t_address_town` VALUES (459, '210101', '市辖区', '210100');
INSERT INTO `t_address_town` VALUES (460, '210102', '和平区', '210100');
INSERT INTO `t_address_town` VALUES (461, '210103', '沈河区', '210100');
INSERT INTO `t_address_town` VALUES (462, '210104', '大东区', '210100');
INSERT INTO `t_address_town` VALUES (463, '210105', '皇姑区', '210100');
INSERT INTO `t_address_town` VALUES (464, '210106', '铁西区', '210100');
INSERT INTO `t_address_town` VALUES (465, '210111', '苏家屯区', '210100');
INSERT INTO `t_address_town` VALUES (466, '210112', '东陵区', '210100');
INSERT INTO `t_address_town` VALUES (467, '210113', '新城子区', '210100');
INSERT INTO `t_address_town` VALUES (468, '210114', '于洪区', '210100');
INSERT INTO `t_address_town` VALUES (469, '210122', '辽中县', '210100');
INSERT INTO `t_address_town` VALUES (470, '210123', '康平县', '210100');
INSERT INTO `t_address_town` VALUES (471, '210124', '法库县', '210100');
INSERT INTO `t_address_town` VALUES (472, '210181', '新民市', '210100');
INSERT INTO `t_address_town` VALUES (473, '210201', '市辖区', '210200');
INSERT INTO `t_address_town` VALUES (474, '210202', '中山区', '210200');
INSERT INTO `t_address_town` VALUES (475, '210203', '西岗区', '210200');
INSERT INTO `t_address_town` VALUES (476, '210204', '沙河口区', '210200');
INSERT INTO `t_address_town` VALUES (477, '210211', '甘井子区', '210200');
INSERT INTO `t_address_town` VALUES (478, '210212', '旅顺口区', '210200');
INSERT INTO `t_address_town` VALUES (479, '210213', '金州区', '210200');
INSERT INTO `t_address_town` VALUES (480, '210224', '长海县', '210200');
INSERT INTO `t_address_town` VALUES (481, '210281', '瓦房店市', '210200');
INSERT INTO `t_address_town` VALUES (482, '210282', '普兰店市', '210200');
INSERT INTO `t_address_town` VALUES (483, '210283', '庄河市', '210200');
INSERT INTO `t_address_town` VALUES (484, '210301', '市辖区', '210300');
INSERT INTO `t_address_town` VALUES (485, '210302', '铁东区', '210300');
INSERT INTO `t_address_town` VALUES (486, '210303', '铁西区', '210300');
INSERT INTO `t_address_town` VALUES (487, '210304', '立山区', '210300');
INSERT INTO `t_address_town` VALUES (488, '210311', '千山区', '210300');
INSERT INTO `t_address_town` VALUES (489, '210321', '台安县', '210300');
INSERT INTO `t_address_town` VALUES (490, '210323', '岫岩满族自治县', '210300');
INSERT INTO `t_address_town` VALUES (491, '210381', '海城市', '210300');
INSERT INTO `t_address_town` VALUES (492, '210401', '市辖区', '210400');
INSERT INTO `t_address_town` VALUES (493, '210402', '新抚区', '210400');
INSERT INTO `t_address_town` VALUES (494, '210403', '东洲区', '210400');
INSERT INTO `t_address_town` VALUES (495, '210404', '望花区', '210400');
INSERT INTO `t_address_town` VALUES (496, '210411', '顺城区', '210400');
INSERT INTO `t_address_town` VALUES (497, '210421', '抚顺县', '210400');
INSERT INTO `t_address_town` VALUES (498, '210422', '新宾满族自治县', '210400');
INSERT INTO `t_address_town` VALUES (499, '210423', '清原满族自治县', '210400');
INSERT INTO `t_address_town` VALUES (500, '210501', '市辖区', '210500');
INSERT INTO `t_address_town` VALUES (501, '210502', '平山区', '210500');
INSERT INTO `t_address_town` VALUES (502, '210503', '溪湖区', '210500');
INSERT INTO `t_address_town` VALUES (503, '210504', '明山区', '210500');
INSERT INTO `t_address_town` VALUES (504, '210505', '南芬区', '210500');
INSERT INTO `t_address_town` VALUES (505, '210521', '本溪满族自治县', '210500');
INSERT INTO `t_address_town` VALUES (506, '210522', '桓仁满族自治县', '210500');
INSERT INTO `t_address_town` VALUES (507, '210601', '市辖区', '210600');
INSERT INTO `t_address_town` VALUES (508, '210602', '元宝区', '210600');
INSERT INTO `t_address_town` VALUES (509, '210603', '振兴区', '210600');
INSERT INTO `t_address_town` VALUES (510, '210604', '振安区', '210600');
INSERT INTO `t_address_town` VALUES (511, '210624', '宽甸满族自治县', '210600');
INSERT INTO `t_address_town` VALUES (512, '210681', '东港市', '210600');
INSERT INTO `t_address_town` VALUES (513, '210682', '凤城市', '210600');
INSERT INTO `t_address_town` VALUES (514, '210701', '市辖区', '210700');
INSERT INTO `t_address_town` VALUES (515, '210702', '古塔区', '210700');
INSERT INTO `t_address_town` VALUES (516, '210703', '凌河区', '210700');
INSERT INTO `t_address_town` VALUES (517, '210711', '太和区', '210700');
INSERT INTO `t_address_town` VALUES (518, '210726', '黑山县', '210700');
INSERT INTO `t_address_town` VALUES (519, '210727', '义　县', '210700');
INSERT INTO `t_address_town` VALUES (520, '210781', '凌海市', '210700');
INSERT INTO `t_address_town` VALUES (521, '210782', '北宁市', '210700');
INSERT INTO `t_address_town` VALUES (522, '210801', '市辖区', '210800');
INSERT INTO `t_address_town` VALUES (523, '210802', '站前区', '210800');
INSERT INTO `t_address_town` VALUES (524, '210803', '西市区', '210800');
INSERT INTO `t_address_town` VALUES (525, '210804', '鲅鱼圈区', '210800');
INSERT INTO `t_address_town` VALUES (526, '210811', '老边区', '210800');
INSERT INTO `t_address_town` VALUES (527, '210881', '盖州市', '210800');
INSERT INTO `t_address_town` VALUES (528, '210882', '大石桥市', '210800');
INSERT INTO `t_address_town` VALUES (529, '210901', '市辖区', '210900');
INSERT INTO `t_address_town` VALUES (530, '210902', '海州区', '210900');
INSERT INTO `t_address_town` VALUES (531, '210903', '新邱区', '210900');
INSERT INTO `t_address_town` VALUES (532, '210904', '太平区', '210900');
INSERT INTO `t_address_town` VALUES (533, '210905', '清河门区', '210900');
INSERT INTO `t_address_town` VALUES (534, '210911', '细河区', '210900');
INSERT INTO `t_address_town` VALUES (535, '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `t_address_town` VALUES (536, '210922', '彰武县', '210900');
INSERT INTO `t_address_town` VALUES (537, '211001', '市辖区', '211000');
INSERT INTO `t_address_town` VALUES (538, '211002', '白塔区', '211000');
INSERT INTO `t_address_town` VALUES (539, '211003', '文圣区', '211000');
INSERT INTO `t_address_town` VALUES (540, '211004', '宏伟区', '211000');
INSERT INTO `t_address_town` VALUES (541, '211005', '弓长岭区', '211000');
INSERT INTO `t_address_town` VALUES (542, '211011', '太子河区', '211000');
INSERT INTO `t_address_town` VALUES (543, '211021', '辽阳县', '211000');
INSERT INTO `t_address_town` VALUES (544, '211081', '灯塔市', '211000');
INSERT INTO `t_address_town` VALUES (545, '211101', '市辖区', '211100');
INSERT INTO `t_address_town` VALUES (546, '211102', '双台子区', '211100');
INSERT INTO `t_address_town` VALUES (547, '211103', '兴隆台区', '211100');
INSERT INTO `t_address_town` VALUES (548, '211121', '大洼县', '211100');
INSERT INTO `t_address_town` VALUES (549, '211122', '盘山县', '211100');
INSERT INTO `t_address_town` VALUES (550, '211201', '市辖区', '211200');
INSERT INTO `t_address_town` VALUES (551, '211202', '银州区', '211200');
INSERT INTO `t_address_town` VALUES (552, '211204', '清河区', '211200');
INSERT INTO `t_address_town` VALUES (553, '211221', '铁岭县', '211200');
INSERT INTO `t_address_town` VALUES (554, '211223', '西丰县', '211200');
INSERT INTO `t_address_town` VALUES (555, '211224', '昌图县', '211200');
INSERT INTO `t_address_town` VALUES (556, '211281', '调兵山市', '211200');
INSERT INTO `t_address_town` VALUES (557, '211282', '开原市', '211200');
INSERT INTO `t_address_town` VALUES (558, '211301', '市辖区', '211300');
INSERT INTO `t_address_town` VALUES (559, '211302', '双塔区', '211300');
INSERT INTO `t_address_town` VALUES (560, '211303', '龙城区', '211300');
INSERT INTO `t_address_town` VALUES (561, '211321', '朝阳县', '211300');
INSERT INTO `t_address_town` VALUES (562, '211322', '建平县', '211300');
INSERT INTO `t_address_town` VALUES (563, '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `t_address_town` VALUES (564, '211381', '北票市', '211300');
INSERT INTO `t_address_town` VALUES (565, '211382', '凌源市', '211300');
INSERT INTO `t_address_town` VALUES (566, '211401', '市辖区', '211400');
INSERT INTO `t_address_town` VALUES (567, '211402', '连山区', '211400');
INSERT INTO `t_address_town` VALUES (568, '211403', '龙港区', '211400');
INSERT INTO `t_address_town` VALUES (569, '211404', '南票区', '211400');
INSERT INTO `t_address_town` VALUES (570, '211421', '绥中县', '211400');
INSERT INTO `t_address_town` VALUES (571, '211422', '建昌县', '211400');
INSERT INTO `t_address_town` VALUES (572, '211481', '兴城市', '211400');
INSERT INTO `t_address_town` VALUES (573, '220101', '市辖区', '220100');
INSERT INTO `t_address_town` VALUES (574, '220102', '南关区', '220100');
INSERT INTO `t_address_town` VALUES (575, '220103', '宽城区', '220100');
INSERT INTO `t_address_town` VALUES (576, '220104', '朝阳区', '220100');
INSERT INTO `t_address_town` VALUES (577, '220105', '二道区', '220100');
INSERT INTO `t_address_town` VALUES (578, '220106', '绿园区', '220100');
INSERT INTO `t_address_town` VALUES (579, '220112', '双阳区', '220100');
INSERT INTO `t_address_town` VALUES (580, '220122', '农安县', '220100');
INSERT INTO `t_address_town` VALUES (581, '220181', '九台市', '220100');
INSERT INTO `t_address_town` VALUES (582, '220182', '榆树市', '220100');
INSERT INTO `t_address_town` VALUES (583, '220183', '德惠市', '220100');
INSERT INTO `t_address_town` VALUES (584, '220201', '市辖区', '220200');
INSERT INTO `t_address_town` VALUES (585, '220202', '昌邑区', '220200');
INSERT INTO `t_address_town` VALUES (586, '220203', '龙潭区', '220200');
INSERT INTO `t_address_town` VALUES (587, '220204', '船营区', '220200');
INSERT INTO `t_address_town` VALUES (588, '220211', '丰满区', '220200');
INSERT INTO `t_address_town` VALUES (589, '220221', '永吉县', '220200');
INSERT INTO `t_address_town` VALUES (590, '220281', '蛟河市', '220200');
INSERT INTO `t_address_town` VALUES (591, '220282', '桦甸市', '220200');
INSERT INTO `t_address_town` VALUES (592, '220283', '舒兰市', '220200');
INSERT INTO `t_address_town` VALUES (593, '220284', '磐石市', '220200');
INSERT INTO `t_address_town` VALUES (594, '220301', '市辖区', '220300');
INSERT INTO `t_address_town` VALUES (595, '220302', '铁西区', '220300');
INSERT INTO `t_address_town` VALUES (596, '220303', '铁东区', '220300');
INSERT INTO `t_address_town` VALUES (597, '220322', '梨树县', '220300');
INSERT INTO `t_address_town` VALUES (598, '220323', '伊通满族自治县', '220300');
INSERT INTO `t_address_town` VALUES (599, '220381', '公主岭市', '220300');
INSERT INTO `t_address_town` VALUES (600, '220382', '双辽市', '220300');
INSERT INTO `t_address_town` VALUES (601, '220401', '市辖区', '220400');
INSERT INTO `t_address_town` VALUES (602, '220402', '龙山区', '220400');
INSERT INTO `t_address_town` VALUES (603, '220403', '西安区', '220400');
INSERT INTO `t_address_town` VALUES (604, '220421', '东丰县', '220400');
INSERT INTO `t_address_town` VALUES (605, '220422', '东辽县', '220400');
INSERT INTO `t_address_town` VALUES (606, '220501', '市辖区', '220500');
INSERT INTO `t_address_town` VALUES (607, '220502', '东昌区', '220500');
INSERT INTO `t_address_town` VALUES (608, '220503', '二道江区', '220500');
INSERT INTO `t_address_town` VALUES (609, '220521', '通化县', '220500');
INSERT INTO `t_address_town` VALUES (610, '220523', '辉南县', '220500');
INSERT INTO `t_address_town` VALUES (611, '220524', '柳河县', '220500');
INSERT INTO `t_address_town` VALUES (612, '220581', '梅河口市', '220500');
INSERT INTO `t_address_town` VALUES (613, '220582', '集安市', '220500');
INSERT INTO `t_address_town` VALUES (614, '220601', '市辖区', '220600');
INSERT INTO `t_address_town` VALUES (615, '220602', '八道江区', '220600');
INSERT INTO `t_address_town` VALUES (616, '220621', '抚松县', '220600');
INSERT INTO `t_address_town` VALUES (617, '220622', '靖宇县', '220600');
INSERT INTO `t_address_town` VALUES (618, '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `t_address_town` VALUES (619, '220625', '江源县', '220600');
INSERT INTO `t_address_town` VALUES (620, '220681', '临江市', '220600');
INSERT INTO `t_address_town` VALUES (621, '220701', '市辖区', '220700');
INSERT INTO `t_address_town` VALUES (622, '220702', '宁江区', '220700');
INSERT INTO `t_address_town` VALUES (623, '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `t_address_town` VALUES (624, '220722', '长岭县', '220700');
INSERT INTO `t_address_town` VALUES (625, '220723', '乾安县', '220700');
INSERT INTO `t_address_town` VALUES (626, '220724', '扶余县', '220700');
INSERT INTO `t_address_town` VALUES (627, '220801', '市辖区', '220800');
INSERT INTO `t_address_town` VALUES (628, '220802', '洮北区', '220800');
INSERT INTO `t_address_town` VALUES (629, '220821', '镇赉县', '220800');
INSERT INTO `t_address_town` VALUES (630, '220822', '通榆县', '220800');
INSERT INTO `t_address_town` VALUES (631, '220881', '洮南市', '220800');
INSERT INTO `t_address_town` VALUES (632, '220882', '大安市', '220800');
INSERT INTO `t_address_town` VALUES (633, '222401', '延吉市', '222400');
INSERT INTO `t_address_town` VALUES (634, '222402', '图们市', '222400');
INSERT INTO `t_address_town` VALUES (635, '222403', '敦化市', '222400');
INSERT INTO `t_address_town` VALUES (636, '222404', '珲春市', '222400');
INSERT INTO `t_address_town` VALUES (637, '222405', '龙井市', '222400');
INSERT INTO `t_address_town` VALUES (638, '222406', '和龙市', '222400');
INSERT INTO `t_address_town` VALUES (639, '222424', '汪清县', '222400');
INSERT INTO `t_address_town` VALUES (640, '222426', '安图县', '222400');
INSERT INTO `t_address_town` VALUES (641, '230101', '市辖区', '230100');
INSERT INTO `t_address_town` VALUES (642, '230102', '道里区', '230100');
INSERT INTO `t_address_town` VALUES (643, '230103', '南岗区', '230100');
INSERT INTO `t_address_town` VALUES (644, '230104', '道外区', '230100');
INSERT INTO `t_address_town` VALUES (645, '230106', '香坊区', '230100');
INSERT INTO `t_address_town` VALUES (646, '230107', '动力区', '230100');
INSERT INTO `t_address_town` VALUES (647, '230108', '平房区', '230100');
INSERT INTO `t_address_town` VALUES (648, '230109', '松北区', '230100');
INSERT INTO `t_address_town` VALUES (649, '230111', '呼兰区', '230100');
INSERT INTO `t_address_town` VALUES (650, '230123', '依兰县', '230100');
INSERT INTO `t_address_town` VALUES (651, '230124', '方正县', '230100');
INSERT INTO `t_address_town` VALUES (652, '230125', '宾　县', '230100');
INSERT INTO `t_address_town` VALUES (653, '230126', '巴彦县', '230100');
INSERT INTO `t_address_town` VALUES (654, '230127', '木兰县', '230100');
INSERT INTO `t_address_town` VALUES (655, '230128', '通河县', '230100');
INSERT INTO `t_address_town` VALUES (656, '230129', '延寿县', '230100');
INSERT INTO `t_address_town` VALUES (657, '230181', '阿城市', '230100');
INSERT INTO `t_address_town` VALUES (658, '230182', '双城市', '230100');
INSERT INTO `t_address_town` VALUES (659, '230183', '尚志市', '230100');
INSERT INTO `t_address_town` VALUES (660, '230184', '五常市', '230100');
INSERT INTO `t_address_town` VALUES (661, '230201', '市辖区', '230200');
INSERT INTO `t_address_town` VALUES (662, '230202', '龙沙区', '230200');
INSERT INTO `t_address_town` VALUES (663, '230203', '建华区', '230200');
INSERT INTO `t_address_town` VALUES (664, '230204', '铁锋区', '230200');
INSERT INTO `t_address_town` VALUES (665, '230205', '昂昂溪区', '230200');
INSERT INTO `t_address_town` VALUES (666, '230206', '富拉尔基区', '230200');
INSERT INTO `t_address_town` VALUES (667, '230207', '碾子山区', '230200');
INSERT INTO `t_address_town` VALUES (668, '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `t_address_town` VALUES (669, '230221', '龙江县', '230200');
INSERT INTO `t_address_town` VALUES (670, '230223', '依安县', '230200');
INSERT INTO `t_address_town` VALUES (671, '230224', '泰来县', '230200');
INSERT INTO `t_address_town` VALUES (672, '230225', '甘南县', '230200');
INSERT INTO `t_address_town` VALUES (673, '230227', '富裕县', '230200');
INSERT INTO `t_address_town` VALUES (674, '230229', '克山县', '230200');
INSERT INTO `t_address_town` VALUES (675, '230230', '克东县', '230200');
INSERT INTO `t_address_town` VALUES (676, '230231', '拜泉县', '230200');
INSERT INTO `t_address_town` VALUES (677, '230281', '讷河市', '230200');
INSERT INTO `t_address_town` VALUES (678, '230301', '市辖区', '230300');
INSERT INTO `t_address_town` VALUES (679, '230302', '鸡冠区', '230300');
INSERT INTO `t_address_town` VALUES (680, '230303', '恒山区', '230300');
INSERT INTO `t_address_town` VALUES (681, '230304', '滴道区', '230300');
INSERT INTO `t_address_town` VALUES (682, '230305', '梨树区', '230300');
INSERT INTO `t_address_town` VALUES (683, '230306', '城子河区', '230300');
INSERT INTO `t_address_town` VALUES (684, '230307', '麻山区', '230300');
INSERT INTO `t_address_town` VALUES (685, '230321', '鸡东县', '230300');
INSERT INTO `t_address_town` VALUES (686, '230381', '虎林市', '230300');
INSERT INTO `t_address_town` VALUES (687, '230382', '密山市', '230300');
INSERT INTO `t_address_town` VALUES (688, '230401', '市辖区', '230400');
INSERT INTO `t_address_town` VALUES (689, '230402', '向阳区', '230400');
INSERT INTO `t_address_town` VALUES (690, '230403', '工农区', '230400');
INSERT INTO `t_address_town` VALUES (691, '230404', '南山区', '230400');
INSERT INTO `t_address_town` VALUES (692, '230405', '兴安区', '230400');
INSERT INTO `t_address_town` VALUES (693, '230406', '东山区', '230400');
INSERT INTO `t_address_town` VALUES (694, '230407', '兴山区', '230400');
INSERT INTO `t_address_town` VALUES (695, '230421', '萝北县', '230400');
INSERT INTO `t_address_town` VALUES (696, '230422', '绥滨县', '230400');
INSERT INTO `t_address_town` VALUES (697, '230501', '市辖区', '230500');
INSERT INTO `t_address_town` VALUES (698, '230502', '尖山区', '230500');
INSERT INTO `t_address_town` VALUES (699, '230503', '岭东区', '230500');
INSERT INTO `t_address_town` VALUES (700, '230505', '四方台区', '230500');
INSERT INTO `t_address_town` VALUES (701, '230506', '宝山区', '230500');
INSERT INTO `t_address_town` VALUES (702, '230521', '集贤县', '230500');
INSERT INTO `t_address_town` VALUES (703, '230522', '友谊县', '230500');
INSERT INTO `t_address_town` VALUES (704, '230523', '宝清县', '230500');
INSERT INTO `t_address_town` VALUES (705, '230524', '饶河县', '230500');
INSERT INTO `t_address_town` VALUES (706, '230601', '市辖区', '230600');
INSERT INTO `t_address_town` VALUES (707, '230602', '萨尔图区', '230600');
INSERT INTO `t_address_town` VALUES (708, '230603', '龙凤区', '230600');
INSERT INTO `t_address_town` VALUES (709, '230604', '让胡路区', '230600');
INSERT INTO `t_address_town` VALUES (710, '230605', '红岗区', '230600');
INSERT INTO `t_address_town` VALUES (711, '230606', '大同区', '230600');
INSERT INTO `t_address_town` VALUES (712, '230621', '肇州县', '230600');
INSERT INTO `t_address_town` VALUES (713, '230622', '肇源县', '230600');
INSERT INTO `t_address_town` VALUES (714, '230623', '林甸县', '230600');
INSERT INTO `t_address_town` VALUES (715, '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `t_address_town` VALUES (716, '230701', '市辖区', '230700');
INSERT INTO `t_address_town` VALUES (717, '230702', '伊春区', '230700');
INSERT INTO `t_address_town` VALUES (718, '230703', '南岔区', '230700');
INSERT INTO `t_address_town` VALUES (719, '230704', '友好区', '230700');
INSERT INTO `t_address_town` VALUES (720, '230705', '西林区', '230700');
INSERT INTO `t_address_town` VALUES (721, '230706', '翠峦区', '230700');
INSERT INTO `t_address_town` VALUES (722, '230707', '新青区', '230700');
INSERT INTO `t_address_town` VALUES (723, '230708', '美溪区', '230700');
INSERT INTO `t_address_town` VALUES (724, '230709', '金山屯区', '230700');
INSERT INTO `t_address_town` VALUES (725, '230710', '五营区', '230700');
INSERT INTO `t_address_town` VALUES (726, '230711', '乌马河区', '230700');
INSERT INTO `t_address_town` VALUES (727, '230712', '汤旺河区', '230700');
INSERT INTO `t_address_town` VALUES (728, '230713', '带岭区', '230700');
INSERT INTO `t_address_town` VALUES (729, '230714', '乌伊岭区', '230700');
INSERT INTO `t_address_town` VALUES (730, '230715', '红星区', '230700');
INSERT INTO `t_address_town` VALUES (731, '230716', '上甘岭区', '230700');
INSERT INTO `t_address_town` VALUES (732, '230722', '嘉荫县', '230700');
INSERT INTO `t_address_town` VALUES (733, '230781', '铁力市', '230700');
INSERT INTO `t_address_town` VALUES (734, '230801', '市辖区', '230800');
INSERT INTO `t_address_town` VALUES (735, '230802', '永红区', '230800');
INSERT INTO `t_address_town` VALUES (736, '230803', '向阳区', '230800');
INSERT INTO `t_address_town` VALUES (737, '230804', '前进区', '230800');
INSERT INTO `t_address_town` VALUES (738, '230805', '东风区', '230800');
INSERT INTO `t_address_town` VALUES (739, '230811', '郊　区', '230800');
INSERT INTO `t_address_town` VALUES (740, '230822', '桦南县', '230800');
INSERT INTO `t_address_town` VALUES (741, '230826', '桦川县', '230800');
INSERT INTO `t_address_town` VALUES (742, '230828', '汤原县', '230800');
INSERT INTO `t_address_town` VALUES (743, '230833', '抚远县', '230800');
INSERT INTO `t_address_town` VALUES (744, '230881', '同江市', '230800');
INSERT INTO `t_address_town` VALUES (745, '230882', '富锦市', '230800');
INSERT INTO `t_address_town` VALUES (746, '230901', '市辖区', '230900');
INSERT INTO `t_address_town` VALUES (747, '230902', '新兴区', '230900');
INSERT INTO `t_address_town` VALUES (748, '230903', '桃山区', '230900');
INSERT INTO `t_address_town` VALUES (749, '230904', '茄子河区', '230900');
INSERT INTO `t_address_town` VALUES (750, '230921', '勃利县', '230900');
INSERT INTO `t_address_town` VALUES (751, '231001', '市辖区', '231000');
INSERT INTO `t_address_town` VALUES (752, '231002', '东安区', '231000');
INSERT INTO `t_address_town` VALUES (753, '231003', '阳明区', '231000');
INSERT INTO `t_address_town` VALUES (754, '231004', '爱民区', '231000');
INSERT INTO `t_address_town` VALUES (755, '231005', '西安区', '231000');
INSERT INTO `t_address_town` VALUES (756, '231024', '东宁县', '231000');
INSERT INTO `t_address_town` VALUES (757, '231025', '林口县', '231000');
INSERT INTO `t_address_town` VALUES (758, '231081', '绥芬河市', '231000');
INSERT INTO `t_address_town` VALUES (759, '231083', '海林市', '231000');
INSERT INTO `t_address_town` VALUES (760, '231084', '宁安市', '231000');
INSERT INTO `t_address_town` VALUES (761, '231085', '穆棱市', '231000');
INSERT INTO `t_address_town` VALUES (762, '231101', '市辖区', '231100');
INSERT INTO `t_address_town` VALUES (763, '231102', '爱辉区', '231100');
INSERT INTO `t_address_town` VALUES (764, '231121', '嫩江县', '231100');
INSERT INTO `t_address_town` VALUES (765, '231123', '逊克县', '231100');
INSERT INTO `t_address_town` VALUES (766, '231124', '孙吴县', '231100');
INSERT INTO `t_address_town` VALUES (767, '231181', '北安市', '231100');
INSERT INTO `t_address_town` VALUES (768, '231182', '五大连池市', '231100');
INSERT INTO `t_address_town` VALUES (769, '231201', '市辖区', '231200');
INSERT INTO `t_address_town` VALUES (770, '231202', '北林区', '231200');
INSERT INTO `t_address_town` VALUES (771, '231221', '望奎县', '231200');
INSERT INTO `t_address_town` VALUES (772, '231222', '兰西县', '231200');
INSERT INTO `t_address_town` VALUES (773, '231223', '青冈县', '231200');
INSERT INTO `t_address_town` VALUES (774, '231224', '庆安县', '231200');
INSERT INTO `t_address_town` VALUES (775, '231225', '明水县', '231200');
INSERT INTO `t_address_town` VALUES (776, '231226', '绥棱县', '231200');
INSERT INTO `t_address_town` VALUES (777, '231281', '安达市', '231200');
INSERT INTO `t_address_town` VALUES (778, '231282', '肇东市', '231200');
INSERT INTO `t_address_town` VALUES (779, '231283', '海伦市', '231200');
INSERT INTO `t_address_town` VALUES (780, '232721', '呼玛县', '232700');
INSERT INTO `t_address_town` VALUES (781, '232722', '塔河县', '232700');
INSERT INTO `t_address_town` VALUES (782, '232723', '漠河县', '232700');
INSERT INTO `t_address_town` VALUES (783, '310101', '黄浦区', '310100');
INSERT INTO `t_address_town` VALUES (784, '310103', '卢湾区', '310100');
INSERT INTO `t_address_town` VALUES (785, '310104', '徐汇区', '310100');
INSERT INTO `t_address_town` VALUES (786, '310105', '长宁区', '310100');
INSERT INTO `t_address_town` VALUES (787, '310106', '静安区', '310100');
INSERT INTO `t_address_town` VALUES (788, '310107', '普陀区', '310100');
INSERT INTO `t_address_town` VALUES (789, '310108', '闸北区', '310100');
INSERT INTO `t_address_town` VALUES (790, '310109', '虹口区', '310100');
INSERT INTO `t_address_town` VALUES (791, '310110', '杨浦区', '310100');
INSERT INTO `t_address_town` VALUES (792, '310112', '闵行区', '310100');
INSERT INTO `t_address_town` VALUES (793, '310113', '宝山区', '310100');
INSERT INTO `t_address_town` VALUES (794, '310114', '嘉定区', '310100');
INSERT INTO `t_address_town` VALUES (795, '310115', '浦东新区', '310100');
INSERT INTO `t_address_town` VALUES (796, '310116', '金山区', '310100');
INSERT INTO `t_address_town` VALUES (797, '310117', '松江区', '310100');
INSERT INTO `t_address_town` VALUES (798, '310118', '青浦区', '310100');
INSERT INTO `t_address_town` VALUES (799, '310119', '南汇区', '310100');
INSERT INTO `t_address_town` VALUES (800, '310120', '奉贤区', '310100');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, '人员管理', '/show_user_manage');
INSERT INTO `t_menu` VALUES (2, '出入库数据', '/goodsRecords');
INSERT INTO `t_menu` VALUES (3, '权限管理', '/rightsmanagements');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `roletype` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '管理员', 1);
INSERT INTO `t_role` VALUES (2, '驿站商家', 2);
INSERT INTO `t_role` VALUES (3, '驿站员工', 3);
INSERT INTO `t_role` VALUES (4, '驿站商家助理', 9);
INSERT INTO `t_role` VALUES (5, '驿站助理', 10);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '0离职，1在职',
  `time` datetime NULL DEFAULT NULL COMMENT '上岗日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '18258843019', 'admin', '1064824169@qq.com', '陈弘毅', '1', '2023-02-28 00:00:00');
INSERT INTO `t_user` VALUES (2, '18258420079', 'jzqjzq520', '219050401@edu.hziee.cn', '楠汐', '1', '2023-03-02 00:00:00');
INSERT INTO `t_user` VALUES (3, 'test', '123', '189832443', '仓管员', '0', '2023-03-02 00:00:00');
INSERT INTO `t_user` VALUES (4, '15572323391', '123456', '23123', '采购员', '0', '2023-03-09 00:00:00');
INSERT INTO `t_user` VALUES (5, '1413', '123', '23123', '陈冠宇', '0', NULL);
INSERT INTO `t_user` VALUES (6, '14131', '123', '23123', '五月花', '0', NULL);
INSERT INTO `t_user` VALUES (7, '18258420079', 'handsomeboy', '219050211@edu.adwa.cn', '王奕昊', '1', '2023-03-04 00:00:00');
INSERT INTO `t_user` VALUES (8, '13736653984', 'tjh123', '219050308@hizee.edu.cn', '陈昊', '1', '2023-03-07 00:00:00');
INSERT INTO `t_user` VALUES (9, '18767687511', 'chenguanyu', '2792559743@qq.com', '陈飞扬', '1', '2023-03-09 00:00:00');
INSERT INTO `t_user` VALUES (10, '18258420079', 'xiaojiaoqi', 'xiaojiaoqi@.love', '程阳', '0', NULL);
INSERT INTO `t_user` VALUES (22, '15058172731', '15058172731', '2792559743@qq.com', '黄衣教主', '1', '2023-03-10 00:00:00');
INSERT INTO `t_user` VALUES (23, 'admin', 'admin', 'jzq@online', '季子青', '1', '2023-03-13 09:50:10');
INSERT INTO `t_user` VALUES (24, '18258420586', '18258420586', '219050308@hizee.edu.cn', '叶凡', '1', '2023-03-28 21:15:36');
INSERT INTO `t_user` VALUES (25, '20230412', '20230412', '1334873891@qq.com', '崔楠', '0', '2023-04-13 00:23:00');
INSERT INTO `t_user` VALUES (28, '20230412', '20230412', '1334873890@qq.com', '崔楠', '0', '2023-04-13 00:44:20');
INSERT INTO `t_user` VALUES (30, '123', '123', '1', 'zhangsan', '1', '2023-11-22 17:32:55');
INSERT INTO `t_user` VALUES (31, '1', '1', '1', 'zhangsan', '1', '2023-11-22 17:41:32');
INSERT INTO `t_user` VALUES (35, '111', '111', '111', '王五', '1', '2023-11-27 18:33:46');
INSERT INTO `t_user` VALUES (40, '1234567', '1234567', '1234567', 'wang', '1', '2023-11-27 19:06:06');
INSERT INTO `t_user` VALUES (52, '222222', '222222', '222222', 'wan', '1', '2023-11-27 19:39:35');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '123', '123', NULL, NULL);
INSERT INTO `user` VALUES (3, '15572323391', '123456', NULL, NULL);
INSERT INTO `user` VALUES (4, '1234', '123', NULL, NULL);
INSERT INTO `user` VALUES (5, '18258420079', '123456', NULL, NULL);
INSERT INTO `user` VALUES (6, '111', '111', NULL, NULL);
INSERT INTO `user` VALUES (7, '222', '222', NULL, NULL);

-- ----------------------------
-- Table structure for user_phone
-- ----------------------------
DROP TABLE IF EXISTS `user_phone`;
CREATE TABLE `user_phone`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1 COMMENT '1 非默认 0 默认',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_phone
-- ----------------------------
INSERT INTO `user_phone` VALUES (4, 2, 1, '123');
INSERT INTO `user_phone` VALUES (5, 2, 0, '1557234646');
INSERT INTO `user_phone` VALUES (6, 2, 1, '949464679');
INSERT INTO `user_phone` VALUES (7, 3, 0, '15572323391');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 7, 3);
INSERT INTO `user_role` VALUES (3, 8, 3);
INSERT INTO `user_role` VALUES (4, 9, 3);
INSERT INTO `user_role` VALUES (5, 2, 2);
INSERT INTO `user_role` VALUES (7, 22, 3);
INSERT INTO `user_role` VALUES (8, 23, 3);
INSERT INTO `user_role` VALUES (9, 24, 3);
INSERT INTO `user_role` VALUES (11, 25, 3);
INSERT INTO `user_role` VALUES (12, 28, 3);
INSERT INTO `user_role` VALUES (13, 29, 3);
INSERT INTO `user_role` VALUES (14, 30, 3);
INSERT INTO `user_role` VALUES (15, 31, 3);
INSERT INTO `user_role` VALUES (16, 35, 3);
INSERT INTO `user_role` VALUES (17, 40, 3);
INSERT INTO `user_role` VALUES (18, 52, 1);

SET FOREIGN_KEY_CHECKS = 1;
