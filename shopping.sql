/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2019-06-14 10:46:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryNo` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `imgId` varchar(255) NOT NULL,
  PRIMARY KEY (`categoryNo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO category VALUES ('1', 'IQOO', '这是IQOO系列的手机描述', '1');
INSERT INTO category VALUES ('2', 'NEX', '这是NEX系列的手机描述', '2');
INSERT INTO category VALUES ('3', 'X', '这是X系列的手机描述', '5');
INSERT INTO category VALUES ('4', 'S', '这是S系列的手机描述', '10');
INSERT INTO category VALUES ('5', 'Z', '这是Z系列的手机描述', '13');
INSERT INTO category VALUES ('6', 'Y', '这是Y系列的手机描述', '12');
INSERT INTO category VALUES ('7', 'U', '这是U系列的手机描述', '17');

-- ----------------------------
-- Table structure for `order1`
-- ----------------------------
DROP TABLE IF EXISTS `order1`;
CREATE TABLE `order1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `orderNo` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `good` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `dated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order1
-- ----------------------------
INSERT INTO order1 VALUES ('1', 'dd', '123343', '已揽件', '未评价', '2019-06-29 16:38:48', '2019-06-27 16:38:57');
INSERT INTO order1 VALUES ('2', 'zz', '234234', '已送达', '已评价', '2019-05-28 16:41:29', '2019-06-29 16:41:35');
INSERT INTO order1 VALUES ('3', 'cc', '234234', '已揽件', '未评价', '2019-06-14 16:41:39', '2019-06-14 16:41:43');
INSERT INTO order1 VALUES ('4', 'ff', '234234', '已揽件', '未评价', '2019-05-28 16:41:46', '2019-06-04 16:41:50');
INSERT INTO order1 VALUES ('5', 'gg', '234245', '已送达', '未评价', '2019-05-07 16:41:57', '2019-06-05 16:42:03');
INSERT INTO order1 VALUES ('6', 'gh', '245445', '已揽件', '未评价', '2019-04-29 16:42:07', '2019-05-27 16:42:14');
INSERT INTO order1 VALUES ('7', 'aa', '234564', '已送达', '已评价', '2019-06-07 16:42:20', '2019-06-03 16:42:22');
INSERT INTO order1 VALUES ('8', 'ss', '262623', '已送达', '已评价', '2019-05-31 16:42:25', '2019-06-13 16:42:29');
INSERT INTO order1 VALUES ('9', 'dq', '152624', '运送中', '未评价', '2019-03-27 16:42:31', '2019-06-06 16:42:35');
INSERT INTO order1 VALUES ('10', 'qq', '466444', '运送中', '未评价', '2019-05-27 16:42:38', '2019-06-12 16:42:40');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productNo` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `CPU` varchar(255) NOT NULL,
  `sum` varchar(255) NOT NULL,
  `putdate` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryNo` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryNo` (`categoryNo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO product VALUES ('2', 'IQOO2', 'IQOO  6GB RAM/全网通  ', '6GB+128GB', '晓龙875', '5', '2018.01', '2998', 'IQOO', '1');
INSERT INTO product VALUES ('3', 'IQOO3', 'IQOO  12GB RAM/全网通', '12GB+256GB', '麒麟973', '8', '2018.04', '4298', 'IQOO', '1');
INSERT INTO product VALUES ('4', 'IQOO4', 'IQOO  12GB/128GB/全网通', '6GB+256GB', '麒麟973', '8', '2018.04', '3698', 'IQOO', '1');
INSERT INTO product VALUES ('5', 'NEX1', 'NEX  6GB/128GB全网通P', '6GB+128GB', '高通456', '4', '2018.01', '3298', 'NEX', '2');
INSERT INTO product VALUES ('6', 'NEX2', 'NEX  8GB/128GB/星迹版', '8GB+128GB', '高通123', '4', '2017.01', '4298', 'NEX', '2');
INSERT INTO product VALUES ('7', 'NEX3', 'NEX  8GB/128GB/全网通', '8GB+128GB', '晓龙123', '4', '2017.09', '4298', 'NEX', '2');
INSERT INTO product VALUES ('8', 'NEX4', 'NEX  8GB/256GB+全网通', '8GB+256GB', '麒麟973', '8', '2017.12', '4998', 'NEX', '2');
INSERT INTO product VALUES ('9', 'X1', 'X27  8GB/256GB/全网通', '8GB+256GB', '麒麟966', '8', '2017.09', '3598', 'X', '3');
INSERT INTO product VALUES ('10', 'X2', 'X27  8GB/128GB/全网通', '8GB+128GB', '麒麟966', '8', '2017.09', '3198', 'X', '3');
INSERT INTO product VALUES ('11', 'X3', 'X27  精英版/128GB/全网通', '8GB+128GB', '高通123', '8', '2017.09', '3298', 'X', '3');
INSERT INTO product VALUES ('12', 'Z1', 'Z3  6GB/128GB/全网通', '6GB+128GB', '高通710', '8', '2019.01', '2298', 'Z', '5');
INSERT INTO product VALUES ('13', 'Z2', 'Z3  6GB/64GB/全网通', '6GB+64GB', '高通710', '8', '2019.01', '1898', 'Z', '5');
INSERT INTO product VALUES ('14', 'Z3', 'Z3  4GB/128GB全网通', '4GB+128GB', '高通710', '8', '2019.02', '1698', 'Z', '5');
INSERT INTO product VALUES ('15', 'S1', 'S1  8GB/128GB/全网通', '8GB+128GB', '高通675', '8', '2019.03', '2698', 'S', '4');
INSERT INTO product VALUES ('16', 'S2', 'S1  6GB/256GB/全网通', '6GB+256GB', '高通675', '8', '2019.03', '2698', 'S', '4');
INSERT INTO product VALUES ('17', 'S3', 'S1 Pro  6GB/256GB/全网通', '6GB+256GB', '高通675', '8', '2019.04', '2698', 'S', '4');
INSERT INTO product VALUES ('18', 'S4', 'S1 Pro  8GB/128GB/全网通', '8GB+128GB', '高通675', '8', '2019.04', '2698', 'S', '4');
INSERT INTO product VALUES ('19', 'Y1', 'Y91  3GB/32GB/全网通', '3GB+32GB', 'MTK', '8', '2018.09', '1000', 'Y', '6');
INSERT INTO product VALUES ('20', 'Y2', 'Y85  4GB/32GB/全网通', '4GB+32GB', '高通450', '8', '2018.12', '1398', 'Y', '6');
INSERT INTO product VALUES ('21', 'Y3', 'Y93S  4GB/128GB/全网通', '4GB+128GB', 'MTK', '8', '2019.01', '1500', 'Y', '6');
INSERT INTO product VALUES ('22', 'Y4', 'Y93  3GB/64GB/全网通', '3GB+64GB', 'SDM439', '8', '2018.11', '999', 'Y', '6');
INSERT INTO product VALUES ('23', 'U1', 'U1  3GB/32GB/全网通', '3GB+32GB', 'SDM439', '8', '2018.10', '799', 'U', '7');
INSERT INTO product VALUES ('24', 'U2', 'U1  3GB/64GB/全网通', '3GB+64GB', 'SDM439', '8', '2018.10', '999', 'U', '7');
INSERT INTO product VALUES ('25', 'U3', 'U1  4GB/64GB/全网通', '4GB+64GB', 'SDM439', '8', '2018.10', '1199', 'U', '7');

-- ----------------------------
-- Table structure for `shopcar`
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO shopcar VALUES ('12', 'NEX  6GB/128GB全网通P', '1', '3298', '2019-06-04 08:48:38', 'yt');
INSERT INTO shopcar VALUES ('18', 'IQOO  6GB RAM/全网通  ', '1', '2998', '2019-06-03 08:48:45', 'admin');
INSERT INTO shopcar VALUES ('21', 'IQOO  12GB RAM/全网通', '6', '25788', '2019-06-02 08:48:50', 'yt');
INSERT INTO shopcar VALUES ('22', 'NEX  6GB/128GB全网通P', '1', '3298', '2019-06-01 08:48:54', 'admin');
INSERT INTO shopcar VALUES ('23', 'IQOO  12GB/128GB/全网通', '1', '3698', '2019-05-04 08:49:05', 'yt');
INSERT INTO shopcar VALUES ('24', 'Z3  6GB/64GB/全网通', '1', '1898', '2019-05-30 08:49:13', 'yt');
INSERT INTO shopcar VALUES ('25', 'S1  8GB/128GB/全网通', '1', '2698', '2019-05-16 08:49:20', 'admin');
INSERT INTO shopcar VALUES ('26', 'U1  4GB/64GB/全网通', '1', '1199', '2019-05-08 08:49:26', 'admin');
INSERT INTO shopcar VALUES ('27', 'IQOO  6GB RAM/全网通  ', '1', '2998', '2019-06-04 08:51:44', 'admin');
INSERT INTO shopcar VALUES ('28', 'IQOO  12GB RAM/全网通', '1', '4298', '2019-06-04 09:05:52', 'admin');
INSERT INTO shopcar VALUES ('29', 'IQOO  12GB RAM/全网通', '1', '4298', '2019-06-11 09:05:57', 'admin');
INSERT INTO shopcar VALUES ('30', 'IQOO  12GB RAM/全网通', '3', '12894', '2019-06-11 09:06:01', 'admin');
INSERT INTO shopcar VALUES ('31', 'NEX  8GB/128GB/星迹版', '2', '8596', '2019-06-13 10:07:54', 'admin');
INSERT INTO shopcar VALUES ('32', 'IQOO  12GB RAM/全网通', '2', '8596', '2019-06-13 10:07:59', 'admin');
INSERT INTO shopcar VALUES ('33', 'IQOO  12GB/128GB/全网通', '1', '3698', '2019-06-14 10:08:03', 'CC');
INSERT INTO shopcar VALUES ('34', 'IQOO  12GB/128GB/全网通', '2', '7396', '2019-06-08 10:08:08', 'admin');
INSERT INTO shopcar VALUES ('35', 'IQOO  12GB RAM/全网通', '1', '4298', null, 'admin');
INSERT INTO shopcar VALUES ('36', 'IQOO  12GB RAM/全网通', '2', '8596', null, 'zz');
INSERT INTO shopcar VALUES ('37', 'IQOO  12GB/128GB/全网通', '1', '3698', null, 'MM');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `root` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('1', 'admin', '123', '1263721431@qq.com', '11111111111', '男', '21', '管理员');
INSERT INTO user VALUES ('10', 'yt', '123', '1263721431@qq.com', '12312312312', '女', '21', '管理员');
INSERT INTO user VALUES ('11', 'YT', '123', '12@12.cc', '12312312312', '女', '21', '用户');
INSERT INTO user VALUES ('12', 'uu', '123', '1263@qq1.cc', '12312312312', '女', '23', '用户');
INSERT INTO user VALUES ('13', 'yt', '123', '12@qq.com', '11111111111', '男', '212', '用户');
INSERT INTO user VALUES ('14', '123', '1', '12@12.123', '11111111111', '男', '22', '用户');
INSERT INTO user VALUES ('15', '1', '1', '1@cc.cc', '111111111', '男', '32', '用户');
INSERT INTO user VALUES ('16', 'CC', '123', '11@11.CC', '11111111111', '男', '21', '用户');
INSERT INTO user VALUES ('17', 'zz', '123', '11@11.cc', '11111111111', '男', '22', '用户');
INSERT INTO user VALUES ('18', 'MM', '123', '1122@qq.CC', '12312312312', '男', '21', '用户');
