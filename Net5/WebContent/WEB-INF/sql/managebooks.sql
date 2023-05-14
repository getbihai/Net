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

 Date: 23/04/2023 23:01:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for managebooks
-- ----------------------------
DROP TABLE IF EXISTS `managebooks`;
CREATE TABLE `managebooks`  (
  `mbID` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `bookID` int(10) NULL DEFAULT NULL COMMENT '书id',
  `ismb` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否预约',
  `mbCounts` int(11) NULL DEFAULT NULL COMMENT '预约数量',
  `mbStartDay` timestamp(4) NULL DEFAULT NULL COMMENT '预约开始日期',
  `mbEndDay` timestamp(4) NULL DEFAULT NULL COMMENT '预约结束日期',
  `isjs` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否借书',
  `jsCounts` int(11) NULL DEFAULT NULL COMMENT '借书数量',
  `jsStartDay` timestamp(4) NULL DEFAULT NULL COMMENT '借书开始日期',
  `jsEndDay` timestamp(4) NULL DEFAULT NULL COMMENT '借书结束日期',
  `isxj` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否续借',
  `xjCounts` int(11) NULL DEFAULT NULL COMMENT '续借数量',
  `xjcs` int(11) NULL DEFAULT NULL COMMENT '续借次数',
  `xjStartDay` timestamp(4) NULL DEFAULT NULL COMMENT '续借开始日期',
  `xjEndDay` timestamp(4) NULL DEFAULT NULL COMMENT '续借结束日期',
  `mbOther` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`mbID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

insert into managebooks(mbID,uid,bookID,ismb,mbCounts,mbStartDay,mbEndDay) values(1,2,1,"是",1,"2023-04-26","2023-05-17");
SET FOREIGN_KEY_CHECKS = 1;
