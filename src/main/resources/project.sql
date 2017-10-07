/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2017-10-07 16:59:32
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'ANTIQUE HUANGHUALI OPEN SHELF DOUBLE DOOR CABINET', '', '1000', 'http://localhost:8080/project1/static/picture/1ff1f083a7eb40f1ad0466bacee9b6a3.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('2', 'PAIR OF CARVED HUANGHUALI ROSE CHAIRS, MEIGUI YI', '', '1000', 'http://localhost:8080/project1/static/picture/2f9c8e70a13d40579e47e7ae3c4d06fc.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('3', 'QING CHINESE SILK EKAVIRA VAJRABHAIRAVA TANGKA', '', '1000', 'http://localhost:8080/project1/static/picture/b14e23d7e70b41569953060516dde19f.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('4', 'ANTIQUE LACQUERED TALL CHEST IN DRAGON MOTIF', '', '1000', 'http://localhost:8080/project1/static/picture/bccf2472233446e3a03b6bde60f7c833.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('5', 'FAMILLE ROSE FLORAL MOTIF PORCELAIN TEAPOT', '', '1000', 'http://localhost:8080/project1/static/picture/6704e17f0f3a49379fb92a4a93eb22cc.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('6', 'FRAMED 19TH C. CHINESE EMBROIDERY DRAGON SILK PANEL', '', '1000', 'http://localhost:8080/project1/static/picture/0d445add3a7a4d26a06b3ee3062ec2ee.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('7', 'PAIR ZITAN DOUBLE DOOR DRAWERS CABINETS', '', '1000', 'http://localhost:8080/project1/static/picture/93748450e7f9414eb6e467f77fdb09ae.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('8', 'A Mongolian silver casket.', '', '1000', 'http://localhost:8080/project1/static/picture/b143d0c9a7db4ec2b528663d20e2b7da.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '0');
INSERT INTO `goods` VALUES ('9', 'Silver Auction', '', '1000', 'http://localhost:8080/project1/static/picture/734ede60894a4805bb5b13bd9715064c.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '1');
INSERT INTO `goods` VALUES ('10', 'AFRICAN-AMERICAN FINE ART', '', '1000', 'http://localhost:8080/project1/static/picture/199ae51155b742549323af0bdb8d0be9.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '1');
INSERT INTO `goods` VALUES ('11', 'American Art', '', '1000', 'http://localhost:8080/project1/static/picture/ab3381c715b24711881b17ce07683845.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '1');
INSERT INTO `goods` VALUES ('12', 'RIOPELLE,ZUNIGA,ALFEIRI,TOBEY,PICASSO,MURANO,JEWELRY,COINS', '', '1000', 'http://localhost:8080/project1/static/picture/6716c23e72f04bb595c18aefb032b52b.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '1');
INSERT INTO `goods` VALUES ('13', 'Russian, American & European paintings XIX-XX', '', '1000', 'http://localhost:8080/project1/static/picture/ff690977ad6f43528b9a3af9248f73c6.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '1');
INSERT INTO `goods` VALUES ('14', '5-piece Cabinet vases, Qianlong', '', '1000', 'http://localhost:8080/project1/static/picture/23cab9c78cf1451e8a9f048bd248d3c5.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '2');
INSERT INTO `goods` VALUES ('15', 'Chinese Beijing Carpet', '', '1000', 'http://localhost:8080/project1/static/picture/8e76ea57b8c34e1eb0f5d3fe7d62bf3c.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '2');
INSERT INTO `goods` VALUES ('16', 'Chinese Beijing Carpet', '', '1000', 'http://localhost:8080/project1/static/picture/ae7c4d2031314c328f65c78c6b137f31.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '2');
INSERT INTO `goods` VALUES ('17', 'pair of 19th c. Chinese rose medallion porcelain vases', '', '1000', 'http://localhost:8080/project1/static/picture/dc3b8b8b639c4b77979f7e67e9430a22.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '2');
INSERT INTO `goods` VALUES ('18', 'ELEVEN PIECES OF BLUE AND WHITE CANTON PORCELAIN', '', '1000', 'http://localhost:8080/project1/static/picture/799649552276418a9562091f612f7486.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '2');
INSERT INTO `goods` VALUES ('19', 'plate Kang Xi', '', '1000', 'http://localhost:8080/project1/static/picture/508226f0ee1f49a78b1b9d4e79c9144a.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '2');
INSERT INTO `goods` VALUES ('20', 'Rolex 18K Yellow Gold Day-Date Quick Set Men\'s Ref. 18038 Serial 7098xxx', '', '1000', 'http://localhost:8080/project1/static/picture/cc6022aa6c6e44bda2e5455d438e1cd6.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '3');
INSERT INTO `goods` VALUES ('21', 'Rolex Stainless Steel Black Submariner Men\'s Reference 16800 Case Serial 9317xxx', '', '1000', 'http://localhost:8080/project1/static/picture/739957694d724a8b87f4c4e5d12a0e03.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '3');
INSERT INTO `goods` VALUES ('22', 'Bvlgari 18k Rose Gold Strap Watch Ladies Reference L1556 Case Number AA 39 G', '', '1000', 'http://localhost:8080/project1/static/picture/f53340845fb44e15bd14cbcab620b292.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '3');
INSERT INTO `goods` VALUES ('23', 'Rolex Men\'s 18K Yellow President, QuickSet, Diamond Dial Diamond Bezel - REF-1232N7F', '', '1000', 'http://localhost:8080/project1/static/picture/bb4d825ca41347d392bfc226411d7506.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '3');
INSERT INTO `goods` VALUES ('24', 'Rolex Ladies Two Tone 14K Gold/SS, Diam Dial Diam/Emerald Bezel, Saph Crystal - REF-368A7N', '', '1000', 'http://localhost:8080/project1/static/picture/95e4aaaec2864a0b962009b92a28ee27.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '3');
INSERT INTO `goods` VALUES ('25', 'Rolex Ladies Stainless Steel, Diamond Dial Diamond Bezel, Saph Crystal - REF-355K6R', '', '1000', 'http://localhost:8080/project1/static/picture/b8a057eea32d47188f3ecdae3133e1f0.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '3');
INSERT INTO `goods` VALUES ('26', 'Rosette ring white gold, approx. 0.7 ct. Diamond and emerald - 14 kt', '', '1000', 'http://localhost:8080/project1/static/picture/d9f54603ccd84483b3aa0aedf66bf4da.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '4');
INSERT INTO `goods` VALUES ('27', 'Entourage ring yellow gold, 2.20 ct. Diamond - 18 kt', '', '1000', 'http://localhost:8080/project1/static/picture/36f3efc097ab4b4294a906f61ca3d7d7.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '4');
INSERT INTO `goods` VALUES ('28', 'Antique ring bicolor gold, diamond - 14 kt', '', '1000', 'http://localhost:8080/project1/static/picture/b455122773c5488cb2129bf7230800c9.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '4');
INSERT INTO `goods` VALUES ('29', '18K White Gold Round Brilliant &amp; Sapphire Diamond Uni-Sex Ring', '', '1000', 'http://localhost:8080/project1/static/picture/3cfe1079174f41e496b34c11c835a691.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '4');
INSERT INTO `goods` VALUES ('30', 'Beautiful Colombian Emerald &amp; Diamond Ring', '', '1000', 'http://localhost:8080/project1/static/picture/bd220849bff64878bdc1d51717316539.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '4');
INSERT INTO `goods` VALUES ('31', 'A Rare Unusual Change of Color Chameleon Diamond.', '', '1000', 'http://localhost:8080/project1/static/picture/6de92f2eb23e44ef86bce0a5bf4b0cbe.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '4');
INSERT INTO `goods` VALUES ('32', 'Alison (David, 1882-1955). Still life of summer flowers', '', '1000', 'http://localhost:8080/project1/static/picture/b2507f55bd214e3797cf4e0876c9b4db.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '5');
INSERT INTO `goods` VALUES ('33', 'English school. Portrait of a young girl, circa 1830', '', '1000', 'http://localhost:8080/project1/static/picture/70a1be8f8f5448e78bc519fb22bbeb20.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '5');
INSERT INTO `goods` VALUES ('34', 'Gillchrest (Joan, 1918-2008). View of Land\'s End with Poppies', '', '1000', 'http://localhost:8080/project1/static/picture/1b48890e9f244d77bddca857aad92ad5.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '5');
INSERT INTO `goods` VALUES ('35', 'St glich, Wasser/Himmel, 1999', '', '1000', 'http://localhost:8080/project1/static/picture/d980229914dd48409b97ddf6ba4befa2.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '5');
INSERT INTO `goods` VALUES ('36', 'Heinz Schaffner, N 55. N&deg; 56, 2004', '', '1000', 'http://localhost:8080/project1/static/picture/0e8dcf293f174599a370738608a9652d.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '5');
INSERT INTO `goods` VALUES ('37', 'Martina Sauter, Durchblick II, 2004', '', '1000', 'http://localhost:8080/project1/static/picture/e40df0f4738248039acd1d9bb081664a.gif', '2017/05/14', '2017/05/14', '1000', '100', '', '', '', '5000', '1', '1', '2017/05/14', '5');

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
