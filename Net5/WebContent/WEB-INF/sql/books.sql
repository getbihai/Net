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

 Date: 23/04/2023 23:01:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `bookID` int(10) NOT NULL AUTO_INCREMENT COMMENT '书id',
  `bookName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `bookCounts` int(11) NOT NULL COMMENT '数量',
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  INDEX `bookID`(`bookID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Java', 12, '从入门到放');
INSERT INTO `books` VALUES (2, 'MySQL', 10, '从删库到跑路');
INSERT INTO `books` VALUES (3, 'Linux', 5, '从进门到进牢');
INSERT INTO `books` VALUES (4, '计算机专修', 10, '计算机图书');

SET FOREIGN_KEY_CHECKS = 1;
