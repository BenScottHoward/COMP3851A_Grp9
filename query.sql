/*
Navicat MySQL Data Transfer

Source Server         : local host
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : db_select_course

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2018-04-01 19:13:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CNo` int(11) NOT NULL AUTO_INCREMENT,
  `Cname` varchar(30) NOT NULL,
  `Ccredit` float(5,1) DEFAULT '0.0',
  PRIMARY KEY (`CNo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Discrete Mathematics', '5.5');
INSERT INTO `course` VALUES ('2', 'Physics', '4.0');
INSERT INTO `course` VALUES ('3', 'Complier Design', '5.0');
INSERT INTO `course` VALUES ('4', 'Interactive Network', '2.5');
INSERT INTO `course` VALUES ('5', 'Data Structure', '3.0');
INSERT INTO `course` VALUES ('6', 'English', '3.5');
INSERT INTO `course` VALUES ('7', 'HC Interaction', '3.0');
INSERT INTO `course` VALUES ('8', 'Web Design', '2.0');
INSERT INTO `course` VALUES ('9', 'Chinese', '2.5');
INSERT INTO `course` VALUES ('10', 'Biopharmaceutical', '2.0');

-- ----------------------------
-- Table structure for `sc`
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `SNo` int(11) NOT NULL,
  `CNo` int(11) NOT NULL,
  `classroom` varchar(11) DEFAULT '0.0',
  PRIMARY KEY (`SNo`,`CNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('1', '2', '0.0');
INSERT INTO `sc` VALUES ('1', '3', '0.0');
INSERT INTO `sc` VALUES ('1', '6', '0');
INSERT INTO `sc` VALUES ('1', '7', '0');
INSERT INTO `sc` VALUES ('1', '14', '0');
INSERT INTO `sc` VALUES ('1514010918', '1', '0.0');
INSERT INTO `sc` VALUES ('1514010918', '7', '0.0');
INSERT INTO `sc` VALUES ('1514010919', '6', '11505H');
INSERT INTO `sc` VALUES ('1514010924', '1', '0.0');
INSERT INTO `sc` VALUES ('1514010924', '6', '0.0');
INSERT INTO `sc` VALUES ('1514010924', '7', '0.0');
INSERT INTO `sc` VALUES ('1514010924', '11', '0.0');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `SNo` int(11) NOT NULL AUTO_INCREMENT,
  `Sname` varchar(30) NOT NULL,
  `Spassword` varchar(30) NOT NULL,
  `Sclass` varchar(30) DEFAULT '',
  `Ssex` varchar(10) DEFAULT '',
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1514010927 DEFAULT CHARSET=utf8;

INSERT INTO `student` VALUES ('1', 'Yiming Yan', '0', '1', '1');


