/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2017-10-04 17:03:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for competiongood
-- ----------------------------
DROP TABLE IF EXISTS `competiongood`;
CREATE TABLE `competiongood` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `good_id` int(100) DEFAULT NULL,
  `watch_time` int(100) unsigned zerofill DEFAULT NULL COMMENT '围观次数',
  `now_time` int(100) DEFAULT NULL COMMENT '当前竞拍次数',
  `now_price` varchar(100) DEFAULT NULL COMMENT '当前竞拍价格',
  `now_user` varchar(100) DEFAULT NULL COMMENT '当前竞拍的人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competiongood
-- ----------------------------

-- ----------------------------
-- Table structure for comuser
-- ----------------------------
DROP TABLE IF EXISTS `comuser`;
CREATE TABLE `comuser` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `comId` int(100) DEFAULT NULL COMMENT '竞拍的商品id',
  `userName` varchar(100) DEFAULT NULL COMMENT '竞拍人记录',
  `comTime` varchar(100) DEFAULT NULL COMMENT '竞拍的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comuser
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `good_name` varchar(100) DEFAULT NULL,
  `good_essay` varchar(100) DEFAULT NULL COMMENT '拍品描述',
  `good_price` double(50,0) DEFAULT NULL COMMENT '拍品起拍价格',
  `url` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `upload_time` varchar(100) DEFAULT NULL COMMENT '上传时间',
  `begin_time` varchar(100) DEFAULT NULL COMMENT '开始拍卖的时间',
  `less_money` varchar(100) DEFAULT NULL COMMENT '起拍金',
  `one_time_money` varchar(100) DEFAULT NULL COMMENT '加价幅度',
  `url1` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `url2` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `url3` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `yikoujia` varchar(100) DEFAULT NULL COMMENT '直接设置一口价',
  `num` int(100) DEFAULT NULL COMMENT '数量',
  `state` int(100) DEFAULT NULL COMMENT '1.竞拍未开始，可以围观 2.竞拍中 3.购买完成',
  `end_time` varchar(100) DEFAULT NULL COMMENT '竞拍结束时间',
  `kind` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'ANTIQUE HUANGHUALI OPEN SHELF DOUBLE DOOR CABINET', '', '1000', 'http://localhost:8080/project1/static/picture/1ff1f083a7eb40f1ad0466bacee9b6a3.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('2', 'PAIR OF CARVED HUANGHUALI ROSE CHAIRS, MEIGUI YI', '', '1000', 'http://localhost:8080/project1/static/picture/2f9c8e70a13d40579e47e7ae3c4d06fc.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('3', 'QING CHINESE SILK EKAVIRA VAJRABHAIRAVA TANGKA', '', '1000', 'http://localhost:8080/project1/static/picture/b14e23d7e70b41569953060516dde19f.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `money` double(50,0) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '小明', '123', '100');
INSERT INTO `user` VALUES ('2', '小伙子', '123456', '0');

-- ----------------------------
-- Table structure for watchrel
-- ----------------------------
DROP TABLE IF EXISTS `watchrel`;
CREATE TABLE `watchrel` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) DEFAULT NULL,
  `watch_id` int(100) DEFAULT NULL,
  `state` int(100) DEFAULT NULL COMMENT '1.围观中 2.围观结束',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of watchrel
-- ----------------------------
