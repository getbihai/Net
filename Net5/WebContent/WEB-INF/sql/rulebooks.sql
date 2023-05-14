/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost:3306
 Source Schema         : netbook

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : 65001

 Date: 23/04/2023 23:01:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rulebooks
-- ----------------------------
DROP TABLE IF EXISTS `rulebooks`;
CREATE TABLE `rulebooks`  (
  `rID` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `rName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则名称：1预约、2借书、3续借、4归还',
  `rOther` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rulebooks
-- ----------------------------
INSERT INTO `rulebooks` VALUES (1, '预约', NULL);
INSERT INTO `rulebooks` VALUES (2, '借书', NULL);
INSERT INTO `rulebooks` VALUES (3, '续借', NULL);
INSERT INTO `rulebooks` VALUES (4, '归还', NULL);

SET FOREIGN_KEY_CHECKS = 1;
