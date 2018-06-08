/*
Navicat MySQL Data Transfer
Git test
Source Server         : mysql
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : bts

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-22 11:26:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bts_crossover`
-- ----------------------------
DROP TABLE IF EXISTS `bts_crossover`;
CREATE TABLE `bts_crossover` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `populasi` int(11) NOT NULL DEFAULT '0',
  `iterasi` int(11) NOT NULL DEFAULT '0',
  `kdlokasi` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `evaluasi` double(8,5) NOT NULL DEFAULT '0.00000',
  `r` double(8,5) NOT NULL DEFAULT '0.00000',
  `co` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_crossover
-- ----------------------------
INSERT INTO `bts_crossover` VALUES ('1', '1', '1', 'P001-006', '1.53900', '0.23160', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('2', '1', '2', 'P001-001', '2.84600', '0.84430', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('3', '1', '3', 'P001-152', '5.09200', '0.52670', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('4', '1', '4', 'P001-088', '2.76800', '0.10050', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('5', '1', '5', 'P001-006', '1.53900', '0.92260', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('6', '1', '6', 'P001-088', '2.76800', '0.31130', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('7', '1', '7', 'P001-005', '1.86100', '0.78870', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('8', '1', '8', 'P001-142', '3.80500', '0.00970', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('9', '1', '9', 'P001-006', '1.53900', '0.68250', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('10', '1', '10', 'P001-004', '2.10900', '0.38320', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('11', '1', '1', 'P002-118', '0.47300', '0.86860', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('12', '1', '2', 'P002-116', '1.13600', '0.19320', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('13', '1', '3', 'P002-101', '1.51500', '0.36030', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('14', '1', '4', 'P002-107', '0.97600', '0.22170', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('15', '1', '5', 'P002-118', '0.47300', '0.02780', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('16', '1', '6', 'P002-103', '1.38000', '0.47380', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('17', '1', '7', 'P002-107', '0.97600', '0.28550', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('18', '1', '8', 'P002-107', '0.97600', '0.00630', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('19', '1', '9', 'P002-105', '1.00800', '0.17480', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('20', '1', '10', 'P002-118', '0.47300', '0.85530', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('21', '1', '1', 'P003-144', '1.57100', '0.75210', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('22', '1', '2', 'P003-034', '2.89200', '0.19460', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('23', '1', '3', 'P003-050', '1.93700', '0.71690', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('24', '1', '4', 'P003-047', '1.92400', '0.00040', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('25', '1', '5', 'P003-148', '0.37200', '0.85140', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('26', '1', '6', 'P003-041', '2.57900', '0.25570', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('27', '1', '7', 'P003-047', '1.92400', '0.72450', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('28', '1', '8', 'P003-034', '2.89200', '0.85550', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('29', '1', '9', 'P003-148', '0.37200', '0.10370', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('30', '1', '10', 'P003-138', '1.22700', '0.95220', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('31', '1', '1', 'P004-076', '0.79800', '0.44970', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('32', '1', '2', 'P004-076', '0.79800', '0.39220', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('33', '1', '3', 'P004-071', '2.04300', '0.61170', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('34', '1', '4', 'P004-076', '0.79800', '0.88200', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('35', '1', '5', 'P004-071', '2.04300', '0.57480', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('36', '1', '6', 'P004-060', '3.34100', '0.22790', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('37', '1', '7', 'P004-079', '1.66000', '0.41520', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('38', '1', '8', 'P004-076', '0.79800', '0.39230', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('39', '1', '9', 'P004-079', '1.66000', '0.71570', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('40', '1', '10', 'P004-079', '1.66000', '0.40170', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('41', '1', '1', 'P005-017', '2.59700', '0.86160', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('42', '1', '2', 'P005-019', '1.46700', '0.10260', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('43', '1', '3', 'P005-025', '0.44200', '0.92830', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('44', '1', '4', 'P005-025', '0.44200', '0.33380', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('45', '1', '5', 'P005-022', '0.69200', '0.88420', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('46', '1', '6', 'P005-026', '1.24500', '0.41940', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('47', '1', '7', 'P005-019', '1.46700', '0.44460', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('48', '1', '8', 'P005-019', '1.46700', '0.96480', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('49', '1', '9', 'P005-023', '0.29100', '0.48990', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('50', '1', '10', 'P005-029', '1.34500', '0.55540', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('64', '2', '1', 'P001-006', '2.43200', '0.77770', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('65', '2', '2', 'P001-088', '3.24300', '0.81810', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('66', '2', '3', 'P001-006', '1.53900', '0.75760', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('67', '2', '4', 'P001-006', '1.53900', '0.33360', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('68', '2', '5', 'P001-088', '3.24300', '0.39540', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('69', '2', '6', 'P001-006', '1.53900', '0.97590', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('70', '2', '7', 'P001-004', '2.10900', '0.69330', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('71', '2', '8', 'P001-006', '1.53900', '0.53880', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('72', '2', '9', 'P001-006', '2.43200', '0.61410', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('73', '2', '10', 'P001-006', '1.53900', '0.45430', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('74', '2', '1', 'P002-116', '0.85900', '0.42890', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('75', '2', '2', 'P002-118', '0.93400', '0.78190', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('76', '2', '3', 'P002-118', '0.47300', '0.62280', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('77', '2', '4', 'P002-118', '0.47300', '0.76830', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('78', '2', '5', 'P002-118', '0.47300', '0.97300', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('79', '2', '6', 'P002-118', '0.47300', '0.56030', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('80', '2', '7', 'P002-118', '0.47300', '0.88260', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('81', '2', '8', 'P002-107', '1.22700', '0.73170', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('82', '2', '9', 'P002-107', '0.97600', '0.01100', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('83', '2', '10', 'P002-118', '0.47300', '0.85990', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('84', '2', '1', 'P003-148', '0.37200', '0.26640', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('85', '2', '2', 'P003-148', '0.37200', '0.75230', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('86', '2', '3', 'P003-050', '1.93700', '0.96210', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('87', '2', '4', 'P003-148', '0.37200', '0.55390', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('88', '2', '5', 'P003-050', '1.93700', '0.88300', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('89', '2', '6', 'P003-138', '1.22700', '0.75330', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('90', '2', '7', 'P003-144', '1.57100', '0.11750', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('91', '2', '8', 'P003-148', '0.37200', '0.32780', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('92', '2', '9', 'P003-148', '0.37200', '0.28650', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('93', '2', '10', 'P003-138', '1.22700', '0.44910', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('94', '2', '1', 'P004-071', '2.04300', '0.38600', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('95', '2', '2', 'P004-076', '0.79800', '0.58260', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('96', '2', '3', 'P004-076', '0.79800', '0.75510', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('97', '2', '4', 'P004-076', '0.79800', '0.02780', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('98', '2', '5', 'P004-076', '0.79800', '0.87380', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('99', '2', '6', 'P004-079', '1.66000', '0.28530', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('100', '2', '7', 'P004-076', '0.79800', '0.80530', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('101', '2', '8', 'P004-076', '0.79800', '0.17050', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('102', '2', '9', 'P004-076', '0.79800', '0.43650', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('103', '2', '10', 'P004-076', '0.79800', '0.67120', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('104', '2', '1', 'P005-019', '1.46700', '0.04660', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('105', '2', '2', 'P005-019', '1.46700', '0.21940', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('106', '2', '3', 'P005-022', '0.69200', '0.95690', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('107', '2', '4', 'P005-029', '1.34500', '0.12650', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('108', '2', '5', 'P005-026', '1.24500', '0.76180', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('109', '2', '6', 'P005-029', '1.34500', '0.42970', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('110', '2', '7', 'P005-025', '0.44200', '0.86280', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('111', '2', '8', 'P005-019', '1.46700', '0.02490', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('112', '2', '9', 'P005-026', '1.24500', '0.53630', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('113', '2', '10', 'P005-019', '1.46700', '0.60690', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('127', '3', '1', 'P001-088', '3.24300', '0.33910', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('128', '3', '2', 'P001-006', '1.53900', '0.41690', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('129', '3', '3', 'P001-006', '1.53900', '0.06690', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('130', '3', '4', 'P001-088', '3.24300', '0.08410', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('131', '3', '5', 'P001-006', '1.53900', '0.21990', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('132', '3', '6', 'P001-006', '1.53900', '0.84690', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('133', '3', '7', 'P001-006', '1.53900', '0.57480', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('134', '3', '8', 'P001-006', '1.53900', '0.33340', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('135', '3', '9', 'P001-006', '2.43200', '0.94270', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('136', '3', '10', 'P001-004', '2.10900', '0.71320', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('137', '3', '1', 'P002-118', '0.47300', '0.73800', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('138', '3', '2', 'P002-118', '0.47300', '0.55050', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('139', '3', '3', 'P002-118', '0.47300', '0.53830', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('140', '3', '4', 'P002-118', '0.47300', '0.04000', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('141', '3', '5', 'P002-118', '0.47300', '0.58520', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('142', '3', '6', 'P002-118', '0.47300', '0.80600', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('143', '3', '7', 'P002-107', '1.22700', '0.27450', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('144', '3', '8', 'P002-118', '0.47300', '0.95440', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('145', '3', '9', 'P002-118', '0.47300', '0.94830', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('146', '3', '10', 'P002-118', '0.47300', '0.87840', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('147', '3', '1', 'P003-138', '1.22700', '0.54720', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('148', '3', '2', 'P003-148', '0.37200', '0.10070', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('149', '3', '3', 'P003-148', '0.37200', '0.86210', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('150', '3', '4', 'P003-148', '0.37200', '0.00850', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('151', '3', '5', 'P003-148', '0.37200', '0.45600', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('152', '3', '6', 'P003-138', '1.22700', '0.25470', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('153', '3', '7', 'P003-050', '1.93700', '0.90550', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('154', '3', '8', 'P003-148', '0.37200', '0.76350', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('155', '3', '9', 'P003-148', '0.37200', '0.10080', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('156', '3', '10', 'P003-148', '0.37200', '0.21350', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('157', '3', '1', 'P004-076', '0.79800', '0.76510', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('158', '3', '2', 'P004-076', '0.79800', '0.18500', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('159', '3', '3', 'P004-076', '0.79800', '0.62960', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('160', '3', '4', 'P004-076', '0.79800', '0.59320', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('161', '3', '5', 'P004-076', '0.79800', '0.07720', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('162', '3', '6', 'P004-076', '0.79800', '0.60640', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('163', '3', '7', 'P004-076', '0.79800', '0.80040', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('164', '3', '8', 'P004-076', '0.79800', '0.18290', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('165', '3', '9', 'P004-076', '0.79800', '0.51330', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('166', '3', '10', 'P004-076', '0.79800', '0.01780', '1', null, null);
INSERT INTO `bts_crossover` VALUES ('167', '3', '1', 'P005-025', '0.44200', '0.54910', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('168', '3', '2', 'P005-026', '1.24500', '0.69220', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('169', '3', '3', 'P005-029', '1.34500', '0.81370', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('170', '3', '4', 'P005-019', '1.46700', '0.99200', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('171', '3', '5', 'P005-029', '1.27900', '0.51880', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('172', '3', '6', 'P005-025', '0.44200', '0.61820', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('173', '3', '7', 'P005-026', '1.24500', '0.53430', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('174', '3', '8', 'P005-022', '0.69200', '0.81680', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('175', '3', '9', 'P005-025', '0.44200', '0.48150', '0', null, null);
INSERT INTO `bts_crossover` VALUES ('176', '3', '10', 'P005-026', '1.24500', '0.95670', '0', null, null);

-- ----------------------------
-- Table structure for `bts_downtilt`
-- ----------------------------
DROP TABLE IF EXISTS `bts_downtilt`;
CREATE TABLE `bts_downtilt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `populasi` int(11) NOT NULL DEFAULT '0',
  `kdlokasi1` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `kdlokasi2` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `lat1` double(8,5) NOT NULL DEFAULT '0.00000',
  `long1` double(8,5) NOT NULL DEFAULT '0.00000',
  `lat2` double(8,5) NOT NULL DEFAULT '0.00000',
  `long2` double(8,5) NOT NULL DEFAULT '0.00000',
  `evaluasi` double(10,5) NOT NULL DEFAULT '0.00000',
  `d1` double(10,5) NOT NULL DEFAULT '0.00000',
  `d2` double(10,5) NOT NULL DEFAULT '0.00000',
  `dt` double(10,5) NOT NULL DEFAULT '0.00000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_downtilt
-- ----------------------------
INSERT INTO `bts_downtilt` VALUES ('1', '1', 'P001-006', 'P001-001', '-7.95766', '112.60586', '-7.92028', '112.59466', '18.01926', '1431.81300', '1431.81300', '-15155.63400', null, null);
INSERT INTO `bts_downtilt` VALUES ('2', '1', 'P001-006', 'P001-152', '-7.95766', '112.60586', '-7.94355', '112.65976', '29.03103', '1431.81300', '1431.81300', '-26167.40400', null, null);
INSERT INTO `bts_downtilt` VALUES ('3', '1', 'P001-006', 'P001-088', '-7.95766', '112.60586', '-7.95766', '112.63504', '19.02033', '1431.81300', '1431.81300', '-16156.70400', null, null);
INSERT INTO `bts_downtilt` VALUES ('4', '1', 'P001-006', 'P001-005', '-7.95766', '112.60586', '-7.92747', '112.60028', '17.46311', '1431.81300', '1431.81300', '-14599.48400', null, null);
INSERT INTO `bts_downtilt` VALUES ('5', '1', 'P001-006', 'P001-142', '-7.95766', '112.60586', '-7.92602', '112.64173', '28.91980', '1431.81300', '1431.81300', '-26056.17400', null, null);
INSERT INTO `bts_downtilt` VALUES ('6', '1', 'P001-006', 'P001-004', '-7.95766', '112.60586', '-7.92458', '112.59977', '18.24172', '1431.81300', '1431.81300', '-15378.09400', null, null);
INSERT INTO `bts_downtilt` VALUES ('7', '1', 'P001-001', 'P001-152', '-7.92028', '112.59466', '-7.94355', '112.65976', '22.80215', '1431.81300', '1431.81300', '-19938.52400', null, null);
INSERT INTO `bts_downtilt` VALUES ('8', '1', 'P001-001', 'P001-088', '-7.92028', '112.59466', '-7.95766', '112.63504', '6.11765', '1431.81300', '1431.81300', '-3254.02400', null, null);
INSERT INTO `bts_downtilt` VALUES ('9', '1', 'P001-001', 'P001-005', '-7.92028', '112.59466', '-7.92747', '112.60028', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('10', '1', 'P001-001', 'P001-142', '-7.92028', '112.59466', '-7.92602', '112.64173', '22.57969', '1431.81300', '1431.81300', '-19716.06400', null, null);
INSERT INTO `bts_downtilt` VALUES ('11', '1', 'P001-001', 'P001-004', '-7.92028', '112.59466', '-7.92458', '112.59977', '3.22567', '1431.81300', '1431.81300', '-362.04400', null, null);
INSERT INTO `bts_downtilt` VALUES ('12', '1', 'P001-152', 'P001-088', '-7.94355', '112.65976', '-7.95766', '112.63504', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('13', '1', 'P001-152', 'P001-005', '-7.94355', '112.65976', '-7.92747', '112.60028', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('14', '1', 'P001-152', 'P001-142', '-7.94355', '112.65976', '-7.92602', '112.64173', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('15', '1', 'P001-152', 'P001-004', '-7.94355', '112.65976', '-7.92458', '112.59977', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('16', '1', 'P001-088', 'P001-005', '-7.95766', '112.63504', '-7.92747', '112.60028', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('17', '1', 'P001-088', 'P001-142', '-7.95766', '112.63504', '-7.92602', '112.64173', '21.80108', '1431.81300', '1431.81300', '-18937.45400', null, null);
INSERT INTO `bts_downtilt` VALUES ('18', '1', 'P001-088', 'P001-004', '-7.95766', '112.63504', '-7.92458', '112.59977', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('19', '1', 'P001-005', 'P001-142', '-7.92747', '112.60028', '-7.92602', '112.64173', '23.02461', '1431.81300', '1431.81300', '-20160.98400', null, null);
INSERT INTO `bts_downtilt` VALUES ('20', '1', 'P001-005', 'P001-004', '-7.92747', '112.60028', '-7.92458', '112.59977', '5.45027', '1431.81300', '1431.81300', '-2586.64400', null, null);
INSERT INTO `bts_downtilt` VALUES ('21', '1', 'P001-142', 'P001-004', '-7.92602', '112.64173', '-7.92458', '112.59977', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('22', '1', 'P002-118', 'P002-116', '-7.98098', '112.62398', '-7.97911', '112.63342', '11.79038', '1431.81300', '1431.81300', '-8926.75400', null, null);
INSERT INTO `bts_downtilt` VALUES ('23', '1', 'P002-118', 'P002-101', '-7.98098', '112.62398', '-7.96364', '112.62415', '14.68236', '1431.81300', '1431.81300', '-11818.73400', null, null);
INSERT INTO `bts_downtilt` VALUES ('24', '1', 'P002-118', 'P002-107', '-7.98098', '112.62398', '-7.97257', '112.62690', '11.79038', '1431.81300', '1431.81300', '-8926.75400', null, null);
INSERT INTO `bts_downtilt` VALUES ('25', '1', 'P002-118', 'P002-103', '-7.98098', '112.62398', '-7.96781', '112.63411', '17.01819', '1431.81300', '1431.81300', '-14154.56400', null, null);
INSERT INTO `bts_downtilt` VALUES ('26', '1', 'P002-118', 'P002-105', '-7.98098', '112.62398', '-7.96815', '112.63342', '16.57327', '1431.81300', '1431.81300', '-13709.64400', null, null);
INSERT INTO `bts_downtilt` VALUES ('27', '1', 'P002-116', 'P002-101', '-7.97911', '112.63342', '-7.96364', '112.62415', '8.78717', '1431.81300', '1431.81300', '-5923.54400', null, null);
INSERT INTO `bts_downtilt` VALUES ('28', '1', 'P002-116', 'P002-107', '-7.97911', '112.63342', '-7.97257', '112.62690', '0.55615', '1431.81300', '1431.81300', '2307.47600', null, null);
INSERT INTO `bts_downtilt` VALUES ('29', '1', 'P002-116', 'P002-103', '-7.97911', '112.63342', '-7.96781', '112.63411', '12.23530', '1431.81300', '1431.81300', '-9371.67400', null, null);
INSERT INTO `bts_downtilt` VALUES ('30', '1', 'P002-116', 'P002-105', '-7.97911', '112.63342', '-7.96815', '112.63342', '11.67915', '1431.81300', '1431.81300', '-8815.52400', null, null);
INSERT INTO `bts_downtilt` VALUES ('31', '1', 'P002-101', 'P002-107', '-7.96364', '112.62415', '-7.97257', '112.62690', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('32', '1', 'P002-101', 'P002-103', '-7.96364', '112.62415', '-7.96781', '112.63411', '8.45348', '1431.81300', '1431.81300', '-5589.85400', null, null);
INSERT INTO `bts_downtilt` VALUES ('33', '1', 'P002-101', 'P002-105', '-7.96364', '112.62415', '-7.96815', '112.63342', '7.67487', '1431.81300', '1431.81300', '-4811.24400', null, null);
INSERT INTO `bts_downtilt` VALUES ('34', '1', 'P002-107', 'P002-103', '-7.97257', '112.62690', '-7.96781', '112.63411', '12.12407', '1431.81300', '1431.81300', '-9260.44400', null, null);
INSERT INTO `bts_downtilt` VALUES ('35', '1', 'P002-107', 'P002-105', '-7.97257', '112.62690', '-7.96815', '112.63342', '11.67915', '1431.81300', '1431.81300', '-8815.52400', null, null);
INSERT INTO `bts_downtilt` VALUES ('36', '1', 'P002-103', 'P002-105', '-7.96781', '112.63411', '-7.96815', '112.63342', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('37', '1', 'P003-144', 'P003-034', '-7.94406', '112.65856', '-7.93057', '112.64809', '6.11765', '1431.81300', '1431.81300', '-3254.02400', null, null);
INSERT INTO `bts_downtilt` VALUES ('38', '1', 'P003-144', 'P003-050', '-7.94406', '112.65856', '-7.93790', '112.64577', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('39', '1', 'P003-144', 'P003-047', '-7.94406', '112.65856', '-7.93863', '112.64028', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('40', '1', 'P003-144', 'P003-148', '-7.94406', '112.65856', '-7.95800', '112.64809', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('41', '1', 'P003-144', 'P003-041', '-7.94406', '112.65856', '-7.93208', '112.64552', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('42', '1', 'P003-144', 'P003-138', '-7.94406', '112.65856', '-7.96592', '112.65055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('43', '1', 'P003-034', 'P003-050', '-7.93057', '112.64809', '-7.93790', '112.64577', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('44', '1', 'P003-034', 'P003-047', '-7.93057', '112.64809', '-7.93863', '112.64028', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('45', '1', 'P003-034', 'P003-148', '-7.93057', '112.64809', '-7.95800', '112.64809', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('46', '1', 'P003-034', 'P003-041', '-7.93057', '112.64809', '-7.93208', '112.64552', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('47', '1', 'P003-034', 'P003-138', '-7.93057', '112.64809', '-7.96592', '112.65055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('48', '1', 'P003-050', 'P003-047', '-7.93790', '112.64577', '-7.93863', '112.64028', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('49', '1', 'P003-050', 'P003-148', '-7.93790', '112.64577', '-7.95800', '112.64809', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('50', '1', 'P003-050', 'P003-041', '-7.93790', '112.64577', '-7.93208', '112.64552', '8.34225', '1431.81300', '1431.81300', '-5478.62400', null, null);
INSERT INTO `bts_downtilt` VALUES ('51', '1', 'P003-050', 'P003-138', '-7.93790', '112.64577', '-7.96592', '112.65055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('52', '1', 'P003-047', 'P003-148', '-7.93863', '112.64028', '-7.95800', '112.64809', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('53', '1', 'P003-047', 'P003-041', '-7.93863', '112.64028', '-7.93208', '112.64552', '12.12407', '1431.81300', '1431.81300', '-9260.44400', null, null);
INSERT INTO `bts_downtilt` VALUES ('54', '1', 'P003-047', 'P003-138', '-7.93863', '112.64028', '-7.96592', '112.65055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('55', '1', 'P003-148', 'P003-041', '-7.95800', '112.64809', '-7.93208', '112.64552', '17.01819', '1431.81300', '1431.81300', '-14154.56400', null, null);
INSERT INTO `bts_downtilt` VALUES ('56', '1', 'P003-148', 'P003-138', '-7.95800', '112.64809', '-7.96592', '112.65055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('57', '1', 'P003-041', 'P003-138', '-7.93208', '112.64552', '-7.96592', '112.65055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('58', '1', 'P004-076', 'P004-071', '-8.00953', '112.64862', '-8.01501', '112.63751', '0.00000', '1526.49100', '1526.49100', '3052.98200', null, null);
INSERT INTO `bts_downtilt` VALUES ('59', '1', 'P004-076', 'P004-060', '-8.00953', '112.64862', '-7.98118', '112.65519', '20.80001', '1526.49100', '1526.49100', '-17747.02800', null, null);
INSERT INTO `bts_downtilt` VALUES ('60', '1', 'P004-076', 'P004-079', '-8.00953', '112.64862', '-8.02499', '112.64983', '0.00000', '1526.49100', '1526.49100', '3052.98200', null, null);
INSERT INTO `bts_downtilt` VALUES ('61', '1', 'P004-071', 'P004-060', '-8.01501', '112.63751', '-7.98118', '112.65519', '25.24921', '1526.49100', '1526.49100', '-22196.22800', null, null);
INSERT INTO `bts_downtilt` VALUES ('62', '1', 'P004-071', 'P004-079', '-8.01501', '112.63751', '-8.02499', '112.64983', '5.33904', '1526.49100', '1526.49100', '-2286.05800', null, null);
INSERT INTO `bts_downtilt` VALUES ('63', '1', 'P004-060', 'P004-079', '-7.98118', '112.65519', '-8.02499', '112.64983', '0.00000', '1526.49100', '1526.49100', '3052.98200', null, null);
INSERT INTO `bts_downtilt` VALUES ('64', '1', 'P005-017', 'P005-019', '-7.99039', '112.59239', '-7.98801', '112.60595', '14.01498', '1431.81300', '1431.81300', '-11151.35400', null, null);
INSERT INTO `bts_downtilt` VALUES ('65', '1', 'P005-017', 'P005-025', '-7.99039', '112.59239', '-8.00153', '112.61647', '12.68022', '1431.81300', '1431.81300', '-9816.59400', null, null);
INSERT INTO `bts_downtilt` VALUES ('66', '1', 'P005-017', 'P005-022', '-7.99039', '112.59239', '-7.99566', '112.60887', '11.79038', '1431.81300', '1431.81300', '-8926.75400', null, null);
INSERT INTO `bts_downtilt` VALUES ('67', '1', 'P005-017', 'P005-026', '-7.99039', '112.59239', '-8.00076', '112.62565', '16.79573', '1431.81300', '1431.81300', '-13932.10400', null, null);
INSERT INTO `bts_downtilt` VALUES ('68', '1', 'P005-017', 'P005-023', '-7.99039', '112.59239', '-7.99583', '112.61647', '15.23851', '1431.81300', '1431.81300', '-12374.88400', null, null);
INSERT INTO `bts_downtilt` VALUES ('69', '1', 'P005-017', 'P005-029', '-7.99039', '112.59239', '-8.00858', '112.62055', '11.12300', '1431.81300', '1431.81300', '-8259.37400', null, null);
INSERT INTO `bts_downtilt` VALUES ('70', '1', 'P005-019', 'P005-025', '-7.98801', '112.60595', '-8.00153', '112.61647', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('71', '1', 'P005-019', 'P005-022', '-7.98801', '112.60595', '-7.99566', '112.60887', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('72', '1', 'P005-019', 'P005-026', '-7.98801', '112.60595', '-8.00076', '112.62565', '9.23209', '1431.81300', '1431.81300', '-6368.46400', null, null);
INSERT INTO `bts_downtilt` VALUES ('73', '1', 'P005-019', 'P005-023', '-7.98801', '112.60595', '-7.99583', '112.61647', '5.78396', '1431.81300', '1431.81300', '-2920.33400', null, null);
INSERT INTO `bts_downtilt` VALUES ('74', '1', 'P005-019', 'P005-029', '-7.98801', '112.60595', '-8.00858', '112.62055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('75', '1', 'P005-025', 'P005-022', '-8.00153', '112.61647', '-7.99566', '112.60887', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('76', '1', 'P005-025', 'P005-026', '-8.00153', '112.61647', '-8.00076', '112.62565', '11.12300', '1431.81300', '1431.81300', '-8259.37400', null, null);
INSERT INTO `bts_downtilt` VALUES ('77', '1', 'P005-025', 'P005-023', '-8.00153', '112.61647', '-7.99583', '112.61647', '8.34225', '1431.81300', '1431.81300', '-5478.62400', null, null);
INSERT INTO `bts_downtilt` VALUES ('78', '1', 'P005-025', 'P005-029', '-8.00153', '112.61647', '-8.00858', '112.62055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('79', '1', 'P005-022', 'P005-026', '-7.99566', '112.60887', '-8.00076', '112.62565', '12.01284', '1431.81300', '1431.81300', '-9149.21400', null, null);
INSERT INTO `bts_downtilt` VALUES ('80', '1', 'P005-022', 'P005-023', '-7.99566', '112.60887', '-7.99583', '112.61647', '9.56578', '1431.81300', '1431.81300', '-6702.15400', null, null);
INSERT INTO `bts_downtilt` VALUES ('81', '1', 'P005-022', 'P005-029', '-7.99566', '112.60887', '-8.00858', '112.62055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('82', '1', 'P005-026', 'P005-023', '-8.00076', '112.62565', '-7.99583', '112.61647', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('83', '1', 'P005-026', 'P005-029', '-8.00076', '112.62565', '-8.00858', '112.62055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('84', '1', 'P005-023', 'P005-029', '-7.99583', '112.61647', '-8.00858', '112.62055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('85', '2', 'P001-006', 'P001-088', '-7.92602', '112.60586', '-7.95084', '112.63504', '7.34118', '1431.81300', '1431.81300', '-4477.55400', null, null);
INSERT INTO `bts_downtilt` VALUES ('86', '2', 'P001-006', 'P001-004', '-7.92602', '112.60586', '-7.92458', '112.59977', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('87', '2', 'P001-088', 'P001-004', '-7.95084', '112.63504', '-7.92458', '112.59977', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('88', '2', 'P002-116', 'P002-118', '-7.97911', '112.61574', '-7.98098', '112.62398', '8.89840', '1431.81300', '1431.81300', '-6034.77400', null, null);
INSERT INTO `bts_downtilt` VALUES ('89', '2', 'P002-116', 'P002-107', '-7.97911', '112.61574', '-7.97257', '112.63342', '17.35188', '1431.81300', '1431.81300', '-14488.25400', null, null);
INSERT INTO `bts_downtilt` VALUES ('90', '2', 'P002-118', 'P002-107', '-7.98098', '112.62398', '-7.97257', '112.63342', '14.90482', '1431.81300', '1431.81300', '-12041.19400', null, null);
INSERT INTO `bts_downtilt` VALUES ('91', '2', 'P003-148', 'P003-050', '-7.95800', '112.64809', '-7.93790', '112.64577', '14.79359', '1431.81300', '1431.81300', '-11929.96400', null, null);
INSERT INTO `bts_downtilt` VALUES ('92', '2', 'P003-148', 'P003-138', '-7.95800', '112.64809', '-7.96592', '112.65055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('93', '2', 'P003-148', 'P003-144', '-7.95800', '112.64809', '-7.94406', '112.65856', '17.35188', '1431.81300', '1431.81300', '-14488.25400', null, null);
INSERT INTO `bts_downtilt` VALUES ('94', '2', 'P003-050', 'P003-138', '-7.93790', '112.64577', '-7.96592', '112.65055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('95', '2', 'P003-050', 'P003-144', '-7.93790', '112.64577', '-7.94406', '112.65856', '9.00963', '1431.81300', '1431.81300', '-6146.00400', null, null);
INSERT INTO `bts_downtilt` VALUES ('96', '2', 'P003-138', 'P003-144', '-7.96592', '112.65055', '-7.94406', '112.65856', '19.24279', '1431.81300', '1431.81300', '-16379.16400', null, null);
INSERT INTO `bts_downtilt` VALUES ('97', '2', 'P004-071', 'P004-076', '-8.01501', '112.63751', '-8.00953', '112.64862', '14.34867', '1526.49100', '1526.49100', '-11295.68800', null, null);
INSERT INTO `bts_downtilt` VALUES ('98', '2', 'P004-071', 'P004-079', '-8.01501', '112.63751', '-8.02499', '112.64983', '5.33904', '1526.49100', '1526.49100', '-2286.05800', null, null);
INSERT INTO `bts_downtilt` VALUES ('99', '2', 'P004-076', 'P004-079', '-8.00953', '112.64862', '-8.02499', '112.64983', '0.00000', '1526.49100', '1526.49100', '3052.98200', null, null);
INSERT INTO `bts_downtilt` VALUES ('100', '2', 'P005-019', 'P005-022', '-8.00858', '112.60595', '-7.99566', '112.60887', '14.01498', '1431.81300', '1431.81300', '-11151.35400', null, null);
INSERT INTO `bts_downtilt` VALUES ('101', '2', 'P005-019', 'P005-029', '-8.00858', '112.60595', '-7.98801', '112.62055', '20.91124', '1431.81300', '1431.81300', '-18047.61400', null, null);
INSERT INTO `bts_downtilt` VALUES ('102', '2', 'P005-019', 'P005-026', '-8.00858', '112.60595', '-8.00076', '112.62565', '18.46418', '1431.81300', '1431.81300', '-15600.55400', null, null);
INSERT INTO `bts_downtilt` VALUES ('103', '2', 'P005-019', 'P005-025', '-8.00858', '112.60595', '-8.00153', '112.61647', '14.79359', '1431.81300', '1431.81300', '-11929.96400', null, null);
INSERT INTO `bts_downtilt` VALUES ('104', '2', 'P005-022', 'P005-029', '-7.99566', '112.60887', '-7.98801', '112.62055', '15.46097', '1431.81300', '1431.81300', '-12597.34400', null, null);
INSERT INTO `bts_downtilt` VALUES ('105', '2', 'P005-022', 'P005-026', '-7.99566', '112.60887', '-8.00076', '112.62565', '12.01284', '1431.81300', '1431.81300', '-9149.21400', null, null);
INSERT INTO `bts_downtilt` VALUES ('106', '2', 'P005-022', 'P005-025', '-7.99566', '112.60887', '-8.00153', '112.61647', '4.67166', '1431.81300', '1431.81300', '-1808.03400', null, null);
INSERT INTO `bts_downtilt` VALUES ('107', '2', 'P005-029', 'P005-026', '-7.98801', '112.62055', '-8.00076', '112.62565', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('108', '2', 'P005-029', 'P005-025', '-7.98801', '112.62055', '-8.00153', '112.61647', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('109', '2', 'P005-026', 'P005-025', '-8.00076', '112.62565', '-8.00153', '112.61647', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('110', '3', 'P001-088', 'P001-006', '-7.95084', '112.63504', '-7.92602', '112.60586', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('111', '3', 'P001-088', 'P001-004', '-7.95084', '112.63504', '-7.92458', '112.59977', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('112', '3', 'P001-006', 'P001-004', '-7.92602', '112.60586', '-7.92458', '112.59977', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('113', '3', 'P002-118', 'P002-107', '-7.98098', '112.62398', '-7.97257', '112.63342', '14.90482', '1431.81300', '1431.81300', '-12041.19400', null, null);
INSERT INTO `bts_downtilt` VALUES ('114', '3', 'P003-138', 'P003-148', '-7.96592', '112.65055', '-7.95800', '112.64809', '8.23102', '1431.81300', '1431.81300', '-5367.39400', null, null);
INSERT INTO `bts_downtilt` VALUES ('115', '3', 'P003-138', 'P003-050', '-7.96592', '112.65055', '-7.93790', '112.64577', '16.90696', '1431.81300', '1431.81300', '-14043.33400', null, null);
INSERT INTO `bts_downtilt` VALUES ('116', '3', 'P003-148', 'P003-050', '-7.95800', '112.64809', '-7.93790', '112.64577', '14.79359', '1431.81300', '1431.81300', '-11929.96400', null, null);
INSERT INTO `bts_downtilt` VALUES ('117', '3', 'P005-025', 'P005-026', '-8.00153', '112.61647', '-8.00076', '112.62565', '11.12300', '1431.81300', '1431.81300', '-8259.37400', null, null);
INSERT INTO `bts_downtilt` VALUES ('118', '3', 'P005-025', 'P005-029', '-8.00153', '112.61647', '-8.00858', '112.62055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('119', '3', 'P005-025', 'P005-019', '-8.00153', '112.61647', '-7.98801', '112.60595', '6.11765', '1431.81300', '1431.81300', '-3254.02400', null, null);
INSERT INTO `bts_downtilt` VALUES ('120', '3', 'P005-025', 'P005-022', '-8.00153', '112.61647', '-7.99566', '112.60887', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('121', '3', 'P005-026', 'P005-029', '-8.00076', '112.62565', '-8.00858', '112.62055', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('122', '3', 'P005-026', 'P005-019', '-8.00076', '112.62565', '-7.98801', '112.60595', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('123', '3', 'P005-026', 'P005-022', '-8.00076', '112.62565', '-7.99566', '112.60887', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);
INSERT INTO `bts_downtilt` VALUES ('124', '3', 'P005-029', 'P005-019', '-8.00858', '112.62055', '-7.98801', '112.60595', '8.56471', '1431.81300', '1431.81300', '-5701.08400', null, null);
INSERT INTO `bts_downtilt` VALUES ('125', '3', 'P005-029', 'P005-022', '-8.00858', '112.62055', '-7.99566', '112.60887', '3.89305', '1431.81300', '1431.81300', '-1029.42400', null, null);
INSERT INTO `bts_downtilt` VALUES ('126', '3', 'P005-019', 'P005-022', '-7.98801', '112.60595', '-7.99566', '112.60887', '0.00000', '1431.81300', '1431.81300', '2863.62600', null, null);

-- ----------------------------
-- Table structure for `bts_kapenodeb`
-- ----------------------------
DROP TABLE IF EXISTS `bts_kapenodeb`;
CREATE TABLE `bts_kapenodeb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bw` double(8,2) NOT NULL,
  `qpsk` double(8,2) NOT NULL,
  `qam16` double(8,2) NOT NULL,
  `qam64` double(8,2) NOT NULL,
  `konfig` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_kapenodeb
-- ----------------------------
INSERT INTO `bts_kapenodeb` VALUES ('1', 'Model-1', '1.40', '2.02', '4.03', '6.05', '0', '2016-09-12 04:25:32', '2016-10-24 05:46:32');
INSERT INTO `bts_kapenodeb` VALUES ('2', 'Model-2', '3.00', '5.04', '10.08', '15.12', '0', '2016-09-12 05:00:10', '2016-10-04 02:32:43');
INSERT INTO `bts_kapenodeb` VALUES ('3', 'Model-3', '5.00', '8.40', '16.80', '25.20', '0', '2016-09-12 05:00:45', '2016-11-17 03:48:58');
INSERT INTO `bts_kapenodeb` VALUES ('4', 'Model-4', '10.00', '16.80', '33.60', '50.40', '1', '2016-09-12 05:23:45', '2016-11-17 03:49:29');
INSERT INTO `bts_kapenodeb` VALUES ('5', 'Model-5', '15.00', '25.20', '50.40', '75.60', '0', '2016-09-12 06:58:02', '2016-11-17 03:49:29');
INSERT INTO `bts_kapenodeb` VALUES ('6', 'Model-6', '20.00', '33.60', '67.20', '100.80', '0', '2016-09-12 07:24:10', '2016-11-17 03:49:24');
INSERT INTO `bts_kapenodeb` VALUES ('7', 'Model-7', '23.00', '25.00', '76.90', '34.30', '0', '2016-09-12 07:24:38', '2016-11-17 03:49:07');

-- ----------------------------
-- Table structure for `bts_kategori`
-- ----------------------------
DROP TABLE IF EXISTS `bts_kategori`;
CREATE TABLE `bts_kategori` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kdkat` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `kategori` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_kategori
-- ----------------------------
INSERT INTO `bts_kategori` VALUES ('2', 'C01', 'Urban', '2016-08-02 04:10:41', '2016-08-02 04:10:41');
INSERT INTO `bts_kategori` VALUES ('3', 'C02', 'SubUrban', '2016-08-02 04:10:58', '2016-09-16 03:50:49');
INSERT INTO `bts_kategori` VALUES ('4', 'C03', 'Rural', '2016-08-02 04:11:04', '2016-08-02 04:11:04');

-- ----------------------------
-- Table structure for `bts_kecamatan`
-- ----------------------------
DROP TABLE IF EXISTS `bts_kecamatan`;
CREATE TABLE `bts_kecamatan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kdkec` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `kdkota` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `kdkat` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecamatan` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `luas` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_kecamatan
-- ----------------------------
INSERT INTO `bts_kecamatan` VALUES ('4', 'P001', 'K001', 'C01', 'Lowokwaru', '22.6', '2016-07-27 06:56:31', '2016-08-02 07:51:21');
INSERT INTO `bts_kecamatan` VALUES ('5', 'P002', 'K001', 'C01', 'Klojen', '8.83', '2016-07-27 07:01:06', '2016-08-02 07:51:43');
INSERT INTO `bts_kecamatan` VALUES ('6', 'P003', 'K001', 'C01', 'Blimbing', '17.77', '2016-07-27 07:01:14', '2016-08-02 07:52:21');
INSERT INTO `bts_kecamatan` VALUES ('7', 'P004', 'K001', 'C03', 'Kedung Kandang', '39.88', '2016-07-27 07:01:30', '2016-08-02 07:52:04');
INSERT INTO `bts_kecamatan` VALUES ('8', 'P005', 'K001', 'C02', 'Sukun', '20.95', '2016-07-27 07:01:38', '2016-08-02 07:52:52');
INSERT INTO `bts_kecamatan` VALUES ('9', 'P006', 'K003', 'C01', 'Batu', '0', '2016-07-27 07:02:34', '2016-07-27 07:02:34');
INSERT INTO `bts_kecamatan` VALUES ('10', 'P007', 'K003', 'C01', 'Bumiaji', '0', '2016-07-27 07:02:51', '2016-07-27 07:03:10');
INSERT INTO `bts_kecamatan` VALUES ('11', 'P008', 'K003', 'C01', 'Junrejo', '0', '2016-07-27 07:03:26', '2016-07-27 07:03:49');
INSERT INTO `bts_kecamatan` VALUES ('12', 'P009', 'K002', 'C01', 'Ampelgading', '0', '2016-07-27 07:05:02', '2016-07-27 07:05:02');
INSERT INTO `bts_kecamatan` VALUES ('13', 'P010', 'K002', 'C01', 'Bululawang', '0', '2016-07-27 07:05:20', '2016-07-27 07:05:20');
INSERT INTO `bts_kecamatan` VALUES ('14', 'P011', 'K002', 'C01', 'Bantur', '0', '2016-07-27 07:05:30', '2016-07-27 07:05:30');
INSERT INTO `bts_kecamatan` VALUES ('15', 'P012', 'K002', 'C01', 'Dampit', '0', '2016-07-27 07:06:06', '2016-07-27 07:06:06');
INSERT INTO `bts_kecamatan` VALUES ('16', 'P013', 'K002', 'C01', 'Dau', '0', '2016-07-27 07:06:14', '2016-07-27 07:06:14');
INSERT INTO `bts_kecamatan` VALUES ('17', 'P014', 'K002', 'C01', 'Donomulyo', '0', '2016-07-27 07:07:15', '2016-07-27 07:07:15');
INSERT INTO `bts_kecamatan` VALUES ('18', 'P015', 'K002', 'C01', 'Gedangan', '0', '2016-07-27 07:07:23', '2016-07-27 07:07:23');
INSERT INTO `bts_kecamatan` VALUES ('19', 'P016', 'K002', 'C01', 'Gondanglegi', '0', '2016-07-27 07:07:39', '2016-07-27 07:07:54');
INSERT INTO `bts_kecamatan` VALUES ('20', 'P017', 'K002', 'C01', 'Jabung', '0', '2016-07-27 07:08:04', '2016-07-27 07:08:04');
INSERT INTO `bts_kecamatan` VALUES ('21', 'P018', 'K002', 'C01', 'Kalipare', '0', '2016-07-27 07:08:15', '2016-07-27 07:08:15');
INSERT INTO `bts_kecamatan` VALUES ('22', 'P019', 'K002', 'C01', 'Karangploso', '0', '2016-07-27 07:09:03', '2016-07-27 07:09:03');
INSERT INTO `bts_kecamatan` VALUES ('23', 'P020', 'K002', 'C01', 'Kasembon', '0', '2016-07-27 07:09:13', '2016-07-27 07:09:13');
INSERT INTO `bts_kecamatan` VALUES ('24', 'P021', 'K002', 'C01', 'Kepanjen', '0', '2016-07-27 07:09:29', '2016-07-27 07:09:29');
INSERT INTO `bts_kecamatan` VALUES ('25', 'P022', 'K002', 'C01', 'Kromengan', '0', '2016-07-27 07:09:50', '2016-07-27 07:09:50');
INSERT INTO `bts_kecamatan` VALUES ('26', 'P023', 'K002', 'C01', 'Lawang', '0', '2016-07-27 07:10:19', '2016-07-27 07:10:19');
INSERT INTO `bts_kecamatan` VALUES ('27', 'P024', 'K002', 'C01', 'Ngajum', '0', '2016-07-27 07:10:26', '2016-07-27 07:10:26');
INSERT INTO `bts_kecamatan` VALUES ('28', 'P025', 'K002', null, 'Ngantang', '0', '2016-07-27 07:10:34', '2016-07-27 07:15:41');
INSERT INTO `bts_kecamatan` VALUES ('29', 'P026', 'K002', null, 'Pagak', '0', '2016-07-27 07:10:55', '2016-07-27 07:10:55');
INSERT INTO `bts_kecamatan` VALUES ('30', 'P027', 'K002', null, 'Pagelaran', '0', '2016-07-27 07:11:04', '2016-07-27 07:11:04');
INSERT INTO `bts_kecamatan` VALUES ('31', 'P028', 'K002', null, 'Pakis', '0', '2016-07-27 07:11:12', '2016-07-27 07:15:20');
INSERT INTO `bts_kecamatan` VALUES ('32', 'P029', 'K002', null, 'Pakisaji', '0', '2016-07-27 07:11:27', '2016-07-27 07:11:27');
INSERT INTO `bts_kecamatan` VALUES ('33', 'P030', 'K002', null, 'Poncokusumo', '0', '2016-07-27 07:11:39', '2016-07-27 07:11:39');
INSERT INTO `bts_kecamatan` VALUES ('34', 'P031', 'K002', null, 'Pujon', '0', '2016-07-27 07:12:08', '2016-07-27 07:12:08');
INSERT INTO `bts_kecamatan` VALUES ('35', 'P032', 'K002', null, 'Sumbermanjing Wetan', '0', '2016-07-27 07:12:24', '2016-07-27 07:12:24');
INSERT INTO `bts_kecamatan` VALUES ('36', 'P033', 'K002', null, 'Singosari', '0', '2016-07-27 07:12:40', '2016-07-27 07:13:31');
INSERT INTO `bts_kecamatan` VALUES ('37', 'P034', 'K002', null, 'Sumberpucung', '0', '2016-07-27 07:12:49', '2016-07-27 07:12:49');
INSERT INTO `bts_kecamatan` VALUES ('38', 'P035', 'K002', null, 'Tajinan', '0', '2016-07-27 07:13:05', '2016-07-27 07:13:05');
INSERT INTO `bts_kecamatan` VALUES ('39', 'P036', 'K002', null, 'Tirtoyudo', '0', '2016-07-27 07:13:14', '2016-07-27 07:13:14');
INSERT INTO `bts_kecamatan` VALUES ('40', 'P037', 'K002', null, 'Tumpang', '0', '2016-07-27 07:14:06', '2016-07-27 07:14:06');
INSERT INTO `bts_kecamatan` VALUES ('41', 'P038', 'K002', null, 'Turen', '0', '2016-07-27 07:14:15', '2016-07-27 07:14:15');
INSERT INTO `bts_kecamatan` VALUES ('42', 'P039', 'K002', null, 'Wagir', '0', '2016-07-27 07:14:21', '2016-07-27 07:14:21');
INSERT INTO `bts_kecamatan` VALUES ('43', 'P040', 'K002', null, 'Wajak', '0', '2016-07-27 07:14:35', '2016-07-27 07:14:35');
INSERT INTO `bts_kecamatan` VALUES ('45', 'P041', 'K002', null, 'Wonosari', '0', '2016-07-27 07:16:30', '2016-07-27 07:16:30');
INSERT INTO `bts_kecamatan` VALUES ('46', 'P042', 'K004', null, 'Asemrowo', '0', '2016-07-28 12:28:52', '2016-07-28 12:28:52');
INSERT INTO `bts_kecamatan` VALUES ('47', 'P043', 'K008', null, 'Kepanjen Kidul', '0', '2016-07-28 12:29:44', '2016-07-28 12:29:44');
INSERT INTO `bts_kecamatan` VALUES ('48', 'P044', 'K008', null, 'Sananwetan', '0', '2016-07-28 12:30:02', '2016-07-28 12:30:26');
INSERT INTO `bts_kecamatan` VALUES ('49', 'P045', 'K008', null, 'Sukorejo', '0', '2016-07-28 12:30:45', '2016-07-28 12:30:45');
INSERT INTO `bts_kecamatan` VALUES ('50', 'P046', 'K007', null, 'Bakung', '0', '2016-07-28 12:32:01', '2016-07-28 12:32:01');
INSERT INTO `bts_kecamatan` VALUES ('51', 'P047', 'K007', null, 'Binangun', '0', '2016-07-28 12:32:09', '2016-07-28 12:32:09');
INSERT INTO `bts_kecamatan` VALUES ('52', 'P048', 'K007', null, 'Doko', '0', '2016-07-28 12:32:24', '2016-07-28 12:32:24');
INSERT INTO `bts_kecamatan` VALUES ('53', 'P049', 'K007', null, 'Gandusari', '0', '2016-07-28 12:32:38', '2016-07-28 12:32:38');
INSERT INTO `bts_kecamatan` VALUES ('54', 'P050', 'K007', null, 'Garum', '0', '2016-07-28 12:32:46', '2016-07-28 12:32:46');
INSERT INTO `bts_kecamatan` VALUES ('55', 'P051', 'K007', null, 'Kademangan', '0', '2016-07-28 12:33:07', '2016-07-28 12:33:07');
INSERT INTO `bts_kecamatan` VALUES ('56', 'P052', 'K007', null, 'Kanigoro', '0', '2016-07-28 12:33:16', '2016-07-28 12:33:16');
INSERT INTO `bts_kecamatan` VALUES ('57', 'P053', 'K007', null, 'Kesamben', '0', '2016-07-28 12:33:32', '2016-07-28 12:33:32');
INSERT INTO `bts_kecamatan` VALUES ('58', 'P054', 'K007', null, 'Nglegok', '0', '2016-07-28 12:33:41', '2016-07-28 12:33:52');
INSERT INTO `bts_kecamatan` VALUES ('59', 'P055', 'K007', null, 'Panggungrejo', '0', '2016-07-28 12:34:16', '2016-07-28 12:34:16');
INSERT INTO `bts_kecamatan` VALUES ('60', 'P056', 'K007', null, 'Ponggok', '0', '2016-07-28 12:34:23', '2016-07-28 12:34:23');
INSERT INTO `bts_kecamatan` VALUES ('61', 'P057', 'K007', null, 'Sanankulon', '0', '2016-07-28 12:34:40', '2016-07-28 12:34:40');
INSERT INTO `bts_kecamatan` VALUES ('62', 'P058', 'K007', null, 'Selopuro', '0', '2016-07-28 12:34:55', '2016-07-28 12:34:55');
INSERT INTO `bts_kecamatan` VALUES ('63', 'P059', 'K007', null, 'Selorejo', '0', '2016-07-28 12:35:05', '2016-07-28 12:35:05');
INSERT INTO `bts_kecamatan` VALUES ('64', 'P060', 'K007', null, 'Srengat', '0', '2016-07-28 12:35:25', '2016-07-28 12:35:25');
INSERT INTO `bts_kecamatan` VALUES ('65', 'P061', 'K007', null, 'Sutojayan', '0', '2016-07-28 12:36:07', '2016-07-28 12:36:07');
INSERT INTO `bts_kecamatan` VALUES ('66', 'P062', 'K007', null, 'Talun', '0', '2016-07-28 12:36:20', '2016-07-28 12:36:20');
INSERT INTO `bts_kecamatan` VALUES ('67', 'P063', 'K007', null, 'Udanawu', '0', '2016-07-28 12:36:53', '2016-07-28 12:36:53');
INSERT INTO `bts_kecamatan` VALUES ('68', 'P064', 'K007', null, 'Wates', '0', '2016-07-28 12:37:04', '2016-07-28 12:37:04');
INSERT INTO `bts_kecamatan` VALUES ('69', 'P065', 'K007', null, 'Wlingi', '0', '2016-07-28 12:37:18', '2016-07-28 12:37:18');
INSERT INTO `bts_kecamatan` VALUES ('70', 'P066', 'K007', null, 'Wonodadi', '0', '2016-07-28 12:37:34', '2016-07-28 12:37:34');
INSERT INTO `bts_kecamatan` VALUES ('73', 'P067', 'K007', null, 'Wonotirto', '0', '2016-07-30 02:55:20', '2016-07-30 02:55:20');

-- ----------------------------
-- Table structure for `bts_klasifikasi`
-- ----------------------------
DROP TABLE IF EXISTS `bts_klasifikasi`;
CREATE TABLE `bts_klasifikasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `layanan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `voice` double(10,2) NOT NULL DEFAULT '0.00',
  `video` double(10,2) NOT NULL DEFAULT '0.00',
  `streaming` double(10,2) NOT NULL DEFAULT '0.00',
  `data` double(10,2) NOT NULL DEFAULT '0.00',
  `multimedia` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_klasifikasi
-- ----------------------------
INSERT INTO `bts_klasifikasi` VALUES ('52', 'bw', 'uplink', '25.00', '65.00', '33.00', '63.00', '70.00', '2016-09-06 09:46:52', '2016-09-06 09:46:52');
INSERT INTO `bts_klasifikasi` VALUES ('53', 'bw', 'downlink', '25.00', '65.00', '270.00', '270.00', '130.00', '2016-09-06 09:47:17', '2016-09-06 09:47:17');
INSERT INTO `bts_klasifikasi` VALUES ('54', 'p', 'urban', '100.00', '20.00', '15.00', '100.00', '50.00', '2016-09-06 09:47:58', '2016-09-06 09:47:58');
INSERT INTO `bts_klasifikasi` VALUES ('55', 'p', 'suburban', '100.00', '20.00', '15.00', '100.00', '50.00', '2016-09-06 09:48:24', '2016-09-06 13:49:39');
INSERT INTO `bts_klasifikasi` VALUES ('56', 'p', 'rural', '100.00', '20.00', '15.00', '100.00', '50.00', '2016-09-06 09:48:52', '2016-09-06 09:48:52');
INSERT INTO `bts_klasifikasi` VALUES ('57', 'bhca', 'urban', '1.40', '0.20', '0.20', '0.60', '0.70', '2016-09-06 09:49:38', '2016-09-06 09:49:38');
INSERT INTO `bts_klasifikasi` VALUES ('58', 'bhca', 'suburban', '1.40', '0.20', '0.20', '0.60', '0.70', '2016-09-06 09:52:05', '2016-09-06 09:52:05');
INSERT INTO `bts_klasifikasi` VALUES ('59', 'bhca', 'rural', '1.30', '0.16', '0.15', '0.40', '0.70', '2016-09-06 09:52:43', '2016-09-06 09:52:43');
INSERT INTO `bts_klasifikasi` VALUES ('61', 'd', 'suburban', '90.00', '80.00', '400.00', '200.00', '200.00', '2016-09-06 09:54:10', '2016-09-06 09:54:10');
INSERT INTO `bts_klasifikasi` VALUES ('62', 'd', 'rural', '90.00', '80.00', '400.00', '200.00', '200.00', '2016-09-06 09:54:31', '2016-09-06 09:54:31');
INSERT INTO `bts_klasifikasi` VALUES ('63', 'd', 'urban', '90.00', '80.00', '400.00', '200.00', '200.00', '2016-09-06 13:54:49', '2016-09-06 13:54:49');

-- ----------------------------
-- Table structure for `bts_konfigurasi`
-- ----------------------------
DROP TABLE IF EXISTS `bts_konfigurasi`;
CREATE TABLE `bts_konfigurasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NOT NULL,
  `kdkec` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `kepadatan` int(11) NOT NULL DEFAULT '0',
  `site` int(11) NOT NULL DEFAULT '0',
  `prakiraan` int(11) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_konfigurasi
-- ----------------------------
INSERT INTO `bts_konfigurasi` VALUES ('2', '2014', 'P002', '109424', '12392', '17', '23', '-7.977156', '112.62587', '2016-08-03 12:14:50', '2016-12-11 06:26:55');
INSERT INTO `bts_konfigurasi` VALUES ('3', '2014', 'P004', '180283', '4521', '19', '18', '-8.011225', '112.655663', '2016-08-03 12:15:53', '2016-12-11 06:28:06');
INSERT INTO `bts_konfigurasi` VALUES ('4', '2014', 'P003', '178079', '10021', '31', '21', '-7.954938', '112.649459', '2016-08-04 09:38:33', '2016-12-11 06:28:57');
INSERT INTO `bts_konfigurasi` VALUES ('5', '2014', 'P005', '187572', '8953', '32', '23', '-7.997957', '112.61471', '2016-08-04 09:39:17', '2016-12-11 06:29:43');
INSERT INTO `bts_konfigurasi` VALUES ('6', '2014', 'P001', '192234', '8506', '16', '15', '-7.93731', '112.613951', '2016-08-04 09:39:54', '2016-12-11 06:30:28');

-- ----------------------------
-- Table structure for `bts_kota`
-- ----------------------------
DROP TABLE IF EXISTS `bts_kota`;
CREATE TABLE `bts_kota` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kdkota` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `kota` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_kota
-- ----------------------------
INSERT INTO `bts_kota` VALUES ('1', 'K001', 'Kota Malang', null, null);
INSERT INTO `bts_kota` VALUES ('2', 'K002', 'Kabupaten Malang', null, null);
INSERT INTO `bts_kota` VALUES ('3', 'K003', 'Kota Batu', null, '2016-07-29 09:49:25');
INSERT INTO `bts_kota` VALUES ('4', 'K004', 'Kota Surabaya', '2016-07-27 01:36:35', '2016-07-27 02:10:28');
INSERT INTO `bts_kota` VALUES ('5', 'K005', 'Kota Pasuruan', '2016-07-27 01:36:51', '2016-07-27 02:12:51');
INSERT INTO `bts_kota` VALUES ('7', 'K007', 'Kabupaten Blitar', '2016-07-27 02:02:02', '2016-07-27 02:11:02');
INSERT INTO `bts_kota` VALUES ('8', 'K008', 'Kota Blitar', '2016-07-27 02:11:59', '2016-07-27 02:12:08');

-- ----------------------------
-- Table structure for `bts_lokasi`
-- ----------------------------
DROP TABLE IF EXISTS `bts_lokasi`;
CREATE TABLE `bts_lokasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kdlokasi` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `kdkota` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kdkec` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_lokasi
-- ----------------------------
INSERT INTO `bts_lokasi` VALUES ('5', 'P001-001', 'K001', 'P001', '-7.920283', '112.594658', '2016-07-28 14:27:13', '2016-08-01 09:11:44');
INSERT INTO `bts_lokasi` VALUES ('6', 'P001-002', 'K001', 'P001', '-7.918243', '112.592727', '2016-07-28 14:27:36', '2016-08-01 09:11:20');
INSERT INTO `bts_lokasi` VALUES ('7', 'P001-003', 'K001', 'P001', '-7.923046', '112.598048', '2016-07-28 14:48:00', '2016-08-01 09:12:07');
INSERT INTO `bts_lokasi` VALUES ('8', 'P001-004', 'K001', 'P001', '-7.924576', '112.599765', '2016-08-01 09:22:24', '2016-08-01 09:22:24');
INSERT INTO `bts_lokasi` VALUES ('9', 'P001-005', 'K001', 'P001', '-7.927466', '112.60028', '2016-08-01 09:22:51', '2016-08-01 09:22:51');
INSERT INTO `bts_lokasi` VALUES ('10', 'P001-006', 'K001', 'P001', '-7.926021', '112.605859', '2016-08-01 09:36:36', '2016-08-01 09:36:36');
INSERT INTO `bts_lokasi` VALUES ('11', 'P001-007', 'K001', 'P001', '-7.927976', '112.603627', '2016-08-01 09:36:54', '2016-08-01 09:36:54');
INSERT INTO `bts_lokasi` VALUES ('12', 'P001-008', 'K001', 'P001', '-7.91599', '112.627488', '2016-08-01 09:46:31', '2016-08-01 09:46:31');
INSERT INTO `bts_lokasi` VALUES ('13', 'P005-009', 'K001', 'P005', '-7.959962', '112.602007', '2016-08-02 07:29:44', '2016-08-02 07:29:44');
INSERT INTO `bts_lokasi` VALUES ('269', 'P005-011', 'K001', 'P005', '-7.968462', '112.606813', '2016-09-22 15:44:19', '2016-09-22 15:44:54');
INSERT INTO `bts_lokasi` VALUES ('270', 'P005-012', 'K001', 'P005', '-7.976112', '112.601321', '2016-09-22 15:45:57', '2016-09-22 15:45:57');
INSERT INTO `bts_lokasi` VALUES ('271', 'P005-013', 'K001', 'P005', '-7.979172', '112.608186', '2016-09-22 15:46:16', '2016-09-22 15:46:16');
INSERT INTO `bts_lokasi` VALUES ('272', 'P005-014', 'K001', 'P005', '-7.983592', '112.601148', '2016-09-22 15:46:35', '2016-09-22 15:46:35');
INSERT INTO `bts_lokasi` VALUES ('273', 'P005-015', 'K001', 'P005', '-7.981722', '112.609216', '2016-09-22 15:46:57', '2016-09-22 15:46:57');
INSERT INTO `bts_lokasi` VALUES ('274', 'P005-016', 'K001', 'P005', '-7.983932', '112.582952', '2016-09-22 15:47:13', '2016-09-22 15:47:13');
INSERT INTO `bts_lokasi` VALUES ('275', 'P005-017', 'K001', 'P005', '-7.990392', '112.592394', '2016-09-22 15:47:31', '2016-09-22 15:47:31');
INSERT INTO `bts_lokasi` VALUES ('276', 'P005-018', 'K001', 'P005', '-7.988182', '112.598917', '2016-09-22 15:47:48', '2016-09-22 15:47:48');
INSERT INTO `bts_lokasi` VALUES ('277', 'P005-019', 'K001', 'P005', '-7.988012', '112.605955', '2016-09-22 15:48:22', '2016-09-22 15:48:22');
INSERT INTO `bts_lokasi` VALUES ('278', 'P005-020', 'K001', 'P005', '-7.987672', '112.614881', '2016-09-22 15:48:36', '2016-09-22 15:48:36');
INSERT INTO `bts_lokasi` VALUES ('279', 'P005-021', 'K001', 'P005', '-7.996342', '112.602865', '2016-09-22 15:48:50', '2016-09-22 15:48:50');
INSERT INTO `bts_lokasi` VALUES ('280', 'P005-022', 'K001', 'P005', '-7.995662', '112.608873', '2016-09-22 15:49:07', '2016-09-22 15:49:07');
INSERT INTO `bts_lokasi` VALUES ('281', 'P005-023', 'K001', 'P005', '-7.995832', '112.613165', '2016-09-22 15:49:23', '2016-09-22 15:49:23');
INSERT INTO `bts_lokasi` VALUES ('282', 'P005-024', 'K001', 'P005', '-7.994982', '112.618572', '2016-09-22 15:49:40', '2016-09-22 15:49:40');
INSERT INTO `bts_lokasi` VALUES ('283', 'P005-025', 'K001', 'P005', '-8.001527', '112.616469', '2016-09-22 15:49:54', '2016-09-22 15:49:54');
INSERT INTO `bts_lokasi` VALUES ('284', 'P005-026', 'K001', 'P005', '-8.000762', '112.625653', '2016-09-22 15:50:09', '2016-09-22 15:50:09');
INSERT INTO `bts_lokasi` VALUES ('285', 'P005-027', 'K001', 'P005', '-8.006966', '112.606599', '2016-09-22 15:50:28', '2016-09-22 15:50:28');
INSERT INTO `bts_lokasi` VALUES ('286', 'P005-028', 'K001', 'P005', '-8.010366', '112.613079', '2016-09-22 15:50:41', '2016-09-22 15:50:41');
INSERT INTO `bts_lokasi` VALUES ('287', 'P005-029', 'K001', 'P005', '-8.008581', '112.620546', '2016-09-22 15:51:01', '2016-09-22 15:51:01');
INSERT INTO `bts_lokasi` VALUES ('288', 'P005-030', 'K001', 'P005', '-8.013086', '112.62634', '2016-09-22 15:51:24', '2016-09-22 15:51:24');
INSERT INTO `bts_lokasi` VALUES ('289', 'P005-031', 'K001', 'P005', '-8.020735', '112.62325', '2016-09-22 15:51:38', '2016-09-22 15:51:38');
INSERT INTO `bts_lokasi` VALUES ('290', 'P005-032', 'K001', 'P005', '-8.026174', '112.626769', '2016-09-22 15:51:57', '2016-09-22 15:51:57');
INSERT INTO `bts_lokasi` VALUES ('291', 'P003-033', 'K001', 'P003', '-7.929636', '112.639206', '2016-09-22 15:56:10', '2016-09-22 15:56:10');
INSERT INTO `bts_lokasi` VALUES ('292', 'P003-034', 'K001', 'P003', '-7.930571', '112.640279', '2016-09-22 15:56:27', '2016-09-22 15:56:27');
INSERT INTO `bts_lokasi` VALUES ('293', 'P003-035', 'K001', 'P003', '-7.93174', '112.642382', '2016-09-22 15:56:45', '2016-09-22 15:56:45');
INSERT INTO `bts_lokasi` VALUES ('294', 'P003-036', 'K001', 'P003', '-7.932632', '112.643112', '2016-09-22 15:57:00', '2016-09-22 15:57:00');
INSERT INTO `bts_lokasi` VALUES ('295', 'P003-037', 'K001', 'P003', '-7.93174', '112.644785', '2016-09-22 15:57:28', '2016-09-22 15:57:28');
INSERT INTO `bts_lokasi` VALUES ('296', 'P003-038', 'K001', 'P003', '-7.933737', '112.643498', '2016-09-22 15:57:59', '2016-09-22 15:57:59');
INSERT INTO `bts_lokasi` VALUES ('297', 'P003-039', 'K001', 'P003', '-7.93548', '112.643627', '2016-09-22 15:58:15', '2016-09-22 15:58:15');
INSERT INTO `bts_lokasi` VALUES ('298', 'P003-040', 'K001', 'P003', '-7.937053', '112.642897', '2016-09-22 15:58:32', '2016-09-22 15:58:32');
INSERT INTO `bts_lokasi` VALUES ('299', 'P003-041', 'K001', 'P003', '-7.93208', '112.645515', '2016-09-22 15:58:46', '2016-09-22 15:58:46');
INSERT INTO `bts_lokasi` VALUES ('300', 'P003-042', 'K001', 'P003', '-7.93412', '112.644442', '2016-09-22 15:58:59', '2016-09-22 15:58:59');
INSERT INTO `bts_lokasi` VALUES ('301', 'P003-043', 'K001', 'P003', '-7.932462', '112.646244', '2016-09-22 15:59:16', '2016-09-22 15:59:16');
INSERT INTO `bts_lokasi` VALUES ('302', 'P003-044', 'K001', 'P003', '-7.933822', '112.645386', '2016-09-22 15:59:33', '2016-09-22 15:59:33');
INSERT INTO `bts_lokasi` VALUES ('303', 'P003-045', 'K001', 'P003', '-7.935438', '112.644614', '2016-09-22 15:59:47', '2016-09-22 15:59:47');
INSERT INTO `bts_lokasi` VALUES ('304', 'P003-046', 'K001', 'P003', '-7.936798', '112.643927', '2016-09-22 16:00:09', '2016-09-22 16:00:09');
INSERT INTO `bts_lokasi` VALUES ('305', 'P003-047', 'K001', 'P003', '-7.938625', '112.643627', '2016-09-22 16:00:24', '2016-09-22 16:00:24');
INSERT INTO `bts_lokasi` VALUES ('306', 'P003-048', 'K001', 'P003', '-7.934333', '112.647489', '2016-09-22 16:01:22', '2016-09-22 16:01:22');
INSERT INTO `bts_lokasi` VALUES ('307', 'P003-049', 'K001', 'P003', '-7.936288', '112.646759', '2016-09-22 16:01:36', '2016-09-22 16:01:36');
INSERT INTO `bts_lokasi` VALUES ('308', 'P003-050', 'K001', 'P003', '-7.937903', '112.645772', '2016-09-22 16:01:52', '2016-09-22 16:01:52');
INSERT INTO `bts_lokasi` VALUES ('309', 'P003-051', 'K001', 'P003', '-7.939221', '112.645472', '2016-09-22 16:02:07', '2016-09-22 16:02:07');
INSERT INTO `bts_lokasi` VALUES ('310', 'P003-052', 'K001', 'P003', '-7.938243', '112.65281', '2016-09-22 16:02:28', '2016-09-22 16:02:28');
INSERT INTO `bts_lokasi` VALUES ('311', 'P003-053', 'K001', 'P003', '-7.939221', '112.654656', '2016-09-22 16:02:46', '2016-09-22 16:02:46');
INSERT INTO `bts_lokasi` VALUES ('312', 'P003-054', 'K001', 'P003', '-7.940198', '112.651566', '2016-09-22 16:03:21', '2016-09-22 16:03:21');
INSERT INTO `bts_lokasi` VALUES ('313', 'P003-055', 'K001', 'P003', '-7.941091', '112.655557', '2016-09-22 16:03:43', '2016-09-22 16:03:43');
INSERT INTO `bts_lokasi` VALUES ('314', 'P003-056', 'K001', 'P003', '-7.939348', '112.649592', '2016-09-22 16:03:58', '2016-09-22 16:03:58');
INSERT INTO `bts_lokasi` VALUES ('315', 'P004-057', 'K001', 'P004', '-7.972807', '112.659439', '2016-09-23 00:43:09', '2016-09-23 00:43:09');
INSERT INTO `bts_lokasi` VALUES ('316', 'P004-058', 'K001', 'P004', '-7.976079', '112.665662', '2016-09-23 03:51:48', '2016-09-23 03:51:48');
INSERT INTO `bts_lokasi` VALUES ('317', 'P004-059', 'K001', 'P004', '-7.975229', '112.653817', '2016-09-23 03:52:06', '2016-09-23 03:52:06');
INSERT INTO `bts_lokasi` VALUES ('318', 'P004-060', 'K001', 'P004', '-7.981179', '112.655191', '2016-09-23 03:53:31', '2016-09-23 03:53:31');
INSERT INTO `bts_lokasi` VALUES ('319', 'P004-061', 'K001', 'P004', '-7.985599', '112.654332', '2016-09-23 03:53:56', '2016-09-23 03:53:56');
INSERT INTO `bts_lokasi` VALUES ('320', 'P004-062', 'K001', 'P004', '-7.976929', '112.67373', '2016-09-23 03:54:12', '2016-09-23 03:54:12');
INSERT INTO `bts_lokasi` VALUES ('321', 'P004-063', 'K001', 'P004', '-7.981179', '112.677507', '2016-09-23 03:54:29', '2016-09-23 03:54:29');
INSERT INTO `bts_lokasi` VALUES ('322', 'P004-064', 'K001', 'P004', '-7.984069', '112.684717', '2016-09-23 03:54:43', '2016-09-23 03:54:43');
INSERT INTO `bts_lokasi` VALUES ('323', 'P004-065', 'K001', 'P004', '-7.984069', '112.684717', '2016-09-23 03:54:43', '2016-09-23 03:54:43');
INSERT INTO `bts_lokasi` VALUES ('324', 'P004-066', 'K001', 'P004', '-7.992909', '112.683515', '2016-09-23 03:55:00', '2016-09-23 03:55:00');
INSERT INTO `bts_lokasi` VALUES ('325', 'P004-067', 'K001', 'P004', '-7.995289', '112.681455', '2016-09-23 03:55:20', '2016-09-23 03:55:20');
INSERT INTO `bts_lokasi` VALUES ('326', 'P004-068', 'K001', 'P004', '-7.992909', '112.636651', '2016-09-23 03:56:29', '2016-09-23 03:56:29');
INSERT INTO `bts_lokasi` VALUES ('327', 'P004-069', 'K001', 'P004', '-8.001918', '112.634763', '2016-09-23 03:56:44', '2016-09-23 03:56:44');
INSERT INTO `bts_lokasi` VALUES ('328', 'P004-070', 'K001', 'P004', '-8.008208', '112.635965', '2016-09-23 03:56:58', '2016-09-23 03:56:58');
INSERT INTO `bts_lokasi` VALUES ('329', 'P004-071', 'K001', 'P004', '-8.015007', '112.63751', '2016-09-23 03:57:11', '2016-09-23 03:57:11');
INSERT INTO `bts_lokasi` VALUES ('330', 'P004-072', 'K001', 'P004', '-8.020277', '112.638368', '2016-09-23 03:57:23', '2016-09-23 03:57:23');
INSERT INTO `bts_lokasi` VALUES ('331', 'P004-073', 'K001', 'P004', '-8.024866', '112.638196', '2016-09-23 03:57:36', '2016-09-23 03:57:36');
INSERT INTO `bts_lokasi` VALUES ('332', 'P004-074', 'K001', 'P004', '-8.031666', '112.637853', '2016-09-23 03:57:54', '2016-09-23 03:57:54');
INSERT INTO `bts_lokasi` VALUES ('333', 'P004-075', 'K001', 'P004', '-8.039824', '112.637338', '2016-09-23 03:58:08', '2016-09-23 03:58:08');
INSERT INTO `bts_lokasi` VALUES ('334', 'P004-076', 'K001', 'P004', '-8.009525', '112.648625', '2016-09-23 03:58:24', '2016-09-23 03:58:24');
INSERT INTO `bts_lokasi` VALUES ('335', 'P004-077', 'K001', 'P004', '-7.998136', '112.677807', '2016-09-23 03:58:45', '2016-09-23 03:58:45');
INSERT INTO `bts_lokasi` VALUES ('336', 'P004-078', 'K001', 'P004', '-8.010545', '112.6512', '2016-09-23 03:59:00', '2016-09-23 03:59:00');
INSERT INTO `bts_lokasi` VALUES ('337', 'P004-079', 'K001', 'P004', '-8.024994', '112.649826', '2016-09-23 03:59:13', '2016-09-23 03:59:13');
INSERT INTO `bts_lokasi` VALUES ('338', 'P004-080', 'K001', 'P004', '-8.040632', '112.644162', '2016-09-23 03:59:26', '2016-09-23 03:59:26');
INSERT INTO `bts_lokasi` VALUES ('339', 'P004-081', 'K001', 'P004', '-8.028054', '112.63575', '2016-09-23 03:59:38', '2016-09-23 03:59:38');
INSERT INTO `bts_lokasi` VALUES ('340', 'P001-082', 'K001', 'P001', '-7.921856', '112.625428', '2016-09-23 04:01:19', '2016-09-23 04:01:19');
INSERT INTO `bts_lokasi` VALUES ('341', 'P001-083', 'K001', 'P001', '-7.924321', '112.632466', '2016-09-23 04:01:31', '2016-09-23 04:01:31');
INSERT INTO `bts_lokasi` VALUES ('342', 'P001-084', 'K001', 'P001', '-7.930612', '112.633926', '2016-09-23 04:01:52', '2016-09-23 04:01:52');
INSERT INTO `bts_lokasi` VALUES ('343', 'P001-085', 'K001', 'P001', '-7.937412', '112.628947', '2016-09-23 04:02:04', '2016-09-23 04:02:04');
INSERT INTO `bts_lokasi` VALUES ('344', 'P001-086', 'K001', 'P001', '-7.942853', '112.63178', '2016-09-23 04:02:16', '2016-09-23 04:02:16');
INSERT INTO `bts_lokasi` VALUES ('345', 'P001-087', 'K001', 'P001', '-7.946593', '112.63281', '2016-09-23 04:02:31', '2016-09-23 04:02:31');
INSERT INTO `bts_lokasi` VALUES ('346', 'P001-088', 'K001', 'P001', '-7.950844', '112.635041', '2016-09-23 04:02:43', '2016-09-23 04:02:43');
INSERT INTO `bts_lokasi` VALUES ('347', 'P001-089', 'K001', 'P001', '-7.956709', '112.633926', '2016-09-23 04:02:54', '2016-09-23 04:02:54');
INSERT INTO `bts_lokasi` VALUES ('348', 'P001-090', 'K001', 'P001', '-7.951099', '112.633411', '2016-09-23 04:03:07', '2016-09-23 04:03:07');
INSERT INTO `bts_lokasi` VALUES ('349', 'P001-091', 'K001', 'P001', '-7.940048', '112.602597', '2016-09-23 04:03:20', '2016-09-23 04:03:20');
INSERT INTO `bts_lokasi` VALUES ('350', 'P001-092', 'K001', 'P001', '-7.933757', '112.612897', '2016-09-23 04:03:37', '2016-09-23 04:03:37');
INSERT INTO `bts_lokasi` VALUES ('351', 'P001-093', 'K001', 'P001', '-7.930187', '112.620193', '2016-09-23 04:03:47', '2016-09-23 04:03:47');
INSERT INTO `bts_lokasi` VALUES ('352', 'P001-094', 'K001', 'P001', '-7.938603', '112.621308', '2016-09-23 04:03:59', '2016-09-23 04:03:59');
INSERT INTO `bts_lokasi` VALUES ('353', 'P001-095', 'K001', 'P001', '-7.944893', '112.60543', '2016-09-23 04:04:09', '2016-09-23 04:04:09');
INSERT INTO `bts_lokasi` VALUES ('354', 'P001-096', 'K001', 'P001', '-7.948718', '112.611695', '2016-09-23 04:04:19', '2016-09-23 04:04:19');
INSERT INTO `bts_lokasi` VALUES ('355', 'P001-097', 'K001', 'P001', '-7.948208', '112.620536', '2016-09-23 04:04:30', '2016-09-23 04:04:30');
INSERT INTO `bts_lokasi` VALUES ('356', 'P001-098', 'K001', 'P001', '-7.949313', '112.60749', '2016-09-23 04:04:43', '2016-09-23 04:04:43');
INSERT INTO `bts_lokasi` VALUES ('357', 'P002-099', 'K001', 'P002', '-7.954035', '112.618102', '2016-09-23 04:10:23', '2016-09-23 04:10:23');
INSERT INTO `bts_lokasi` VALUES ('358', 'P002-100', 'K001', 'P002', '-7.959067', '112.624915', '2016-09-23 04:10:38', '2016-09-23 04:10:38');
INSERT INTO `bts_lokasi` VALUES ('359', 'P002-101', 'K001', 'P002', '-7.963641', '112.624153', '2016-09-23 04:11:37', '2016-09-23 04:11:37');
INSERT INTO `bts_lokasi` VALUES ('360', 'P002-102', 'K001', 'P002', '-7.965596', '112.630934', '2016-09-23 04:11:50', '2016-09-23 04:11:50');
INSERT INTO `bts_lokasi` VALUES ('361', 'P002-103', 'K001', 'P002', '-7.967806', '112.63411', '2016-09-23 04:12:00', '2016-09-23 04:12:00');
INSERT INTO `bts_lokasi` VALUES ('362', 'P002-104', 'K001', 'P002', '-7.966786', '112.620463', '2016-09-23 04:12:11', '2016-09-23 04:12:11');
INSERT INTO `bts_lokasi` VALUES ('363', 'P002-105', 'K001', 'P002', '-7.968146', '112.6269', '2016-09-23 04:12:24', '2016-09-23 04:12:24');
INSERT INTO `bts_lokasi` VALUES ('364', 'P002-106', 'K001', 'P002', '-7.969846', '112.631706', '2016-09-23 04:12:40', '2016-09-23 04:12:40');
INSERT INTO `bts_lokasi` VALUES ('365', 'P002-107', 'K001', 'P002', '-7.972566', '112.633423', '2016-09-23 04:12:55', '2016-09-23 04:12:55');
INSERT INTO `bts_lokasi` VALUES ('366', 'P002-108', 'K001', 'P002', '-7.968996', '112.616772', '2016-09-23 04:13:12', '2016-09-23 04:13:12');
INSERT INTO `bts_lokasi` VALUES ('367', 'P002-109', 'K001', 'P002', '-7.970696', '112.62175', '2016-09-23 04:13:25', '2016-09-23 04:13:25');
INSERT INTO `bts_lokasi` VALUES ('368', 'P002-110', 'K001', 'P002', '-7.967721', '112.622179', '2016-09-23 04:13:36', '2016-09-23 04:13:36');
INSERT INTO `bts_lokasi` VALUES ('369', 'P002-111', 'K001', 'P002', '-7.974946', '112.634968', '2016-09-23 04:13:47', '2016-09-23 04:13:47');
INSERT INTO `bts_lokasi` VALUES ('370', 'P002-112', 'K001', 'P002', '-7.976816', '112.632307', '2016-09-23 04:14:00', '2016-09-23 04:14:00');
INSERT INTO `bts_lokasi` VALUES ('371', 'P002-113', 'K001', 'P002', '-7.979026', '112.63308', '2016-09-23 04:14:11', '2016-09-23 04:14:11');
INSERT INTO `bts_lokasi` VALUES ('372', 'P002-114', 'K001', 'P002', '-7.979451', '112.627329', '2016-09-23 04:14:29', '2016-09-23 04:14:29');
INSERT INTO `bts_lokasi` VALUES ('373', 'P002-115', 'K001', 'P002', '-7.976391', '112.620548', '2016-09-23 04:14:41', '2016-09-23 04:14:41');
INSERT INTO `bts_lokasi` VALUES ('374', 'P002-116', 'K001', 'P002', '-7.979111', '112.615742', '2016-09-23 04:14:51', '2016-09-23 04:14:51');
INSERT INTO `bts_lokasi` VALUES ('375', 'P002-117', 'K001', 'P002', '-7.980896', '112.619347', '2016-09-23 04:15:02', '2016-09-23 04:15:02');
INSERT INTO `bts_lokasi` VALUES ('376', 'P002-118', 'K001', 'P002', '-7.980981', '112.623982', '2016-09-23 04:15:17', '2016-09-23 04:15:17');
INSERT INTO `bts_lokasi` VALUES ('377', 'P002-119', 'K001', 'P002', '-7.981746', '112.628016', '2016-09-23 04:15:29', '2016-09-23 04:15:29');
INSERT INTO `bts_lokasi` VALUES ('378', 'P002-120', 'K001', 'P002', '-7.981661', '112.63368', '2016-09-23 04:15:41', '2016-09-23 04:15:41');
INSERT INTO `bts_lokasi` VALUES ('379', 'P002-121', 'K001', 'P002', '-7.984126', '112.631363', '2016-09-23 04:15:53', '2016-09-23 04:15:53');
INSERT INTO `bts_lokasi` VALUES ('380', 'P002-122', 'K001', 'P002', '-7.986846', '112.631878', '2016-09-23 04:16:07', '2016-09-23 04:16:07');
INSERT INTO `bts_lokasi` VALUES ('381', 'P002-123', 'K001', 'P002', '-7.985316', '112.627501', '2016-09-23 04:16:20', '2016-09-23 04:16:20');
INSERT INTO `bts_lokasi` VALUES ('382', 'P002-124', 'K001', 'P002', '-7.984806', '112.62381', '2016-09-23 04:16:32', '2016-09-23 04:16:32');
INSERT INTO `bts_lokasi` VALUES ('383', 'P002-125', 'K001', 'P002', '-7.986591', '112.626814', '2016-09-23 04:16:42', '2016-09-23 04:16:42');
INSERT INTO `bts_lokasi` VALUES ('384', 'P002-126', 'K001', 'P002', '-7.987526', '112.631449', '2016-09-23 04:16:57', '2016-09-23 04:16:57');
INSERT INTO `bts_lokasi` VALUES ('385', 'P002-127', 'K001', 'P002', '-7.989906', '112.626127', '2016-09-23 04:17:09', '2016-09-23 04:17:09');
INSERT INTO `bts_lokasi` VALUES ('386', 'P002-128', 'K001', 'P002', '-7.992881', '112.625012', '2016-09-23 04:17:19', '2016-09-23 04:17:19');
INSERT INTO `bts_lokasi` VALUES ('387', 'P002-129', 'K001', 'P002', '-7.994071', '112.625269', '2016-09-23 04:17:30', '2016-09-23 04:17:30');
INSERT INTO `bts_lokasi` VALUES ('388', 'P003-130', 'K001', 'P003', '-7.917295', '112.644674', null, null);
INSERT INTO `bts_lokasi` VALUES ('389', 'P003-131', 'K001', 'P003', '-7.920037', '112.643215', null, null);
INSERT INTO `bts_lokasi` VALUES ('390', 'P003-132', 'K001', 'P003', '-7.922566', '112.644052', null, null);
INSERT INTO `bts_lokasi` VALUES ('391', 'P003-133', 'K001', 'P003', '-7.9265859', '112.653', null, null);
INSERT INTO `bts_lokasi` VALUES ('392', 'P003-134', 'K001', 'P003', '-7.931195', '112.657549', null, null);
INSERT INTO `bts_lokasi` VALUES ('393', 'P003-135', 'K001', 'P003', '-7.929919', '112.642485', null, null);
INSERT INTO `bts_lokasi` VALUES ('394', 'P003-136', 'K001', 'P003', '-7.939823', '112.654845', null, null);
INSERT INTO `bts_lokasi` VALUES ('395', 'P003-137', 'K001', 'P003', '7.946964', '112.645232', null, null);
INSERT INTO `bts_lokasi` VALUES ('396', 'P003-138', 'K001', 'P003', '-7.96592', '112.650554', null, null);
INSERT INTO `bts_lokasi` VALUES ('397', 'P003-139', 'K001', 'P003', '-7.97136', '112.642314', null, null);
INSERT INTO `bts_lokasi` VALUES ('398', 'P003-140', 'K001', 'P003', '-7.982309', '112.646541', null, null);
INSERT INTO `bts_lokasi` VALUES ('399', 'P003-141', 'K001', 'P003', '-7.965309', '112.651519', null, null);
INSERT INTO `bts_lokasi` VALUES ('400', 'P001-142', 'K001', 'P001', '-7.957658', '112.641734', null, null);
INSERT INTO `bts_lokasi` VALUES ('401', 'P003-143', 'K001', 'P003', '-7.950858', '112.655811', null, null);
INSERT INTO `bts_lokasi` VALUES ('402', 'P003-144', 'K001', 'P003', '-7.944057', '112.658557', null, null);
INSERT INTO `bts_lokasi` VALUES ('403', 'P003-145', 'K001', 'P003', '-7.942357', '112.640533', null, null);
INSERT INTO `bts_lokasi` VALUES ('404', 'P003-146', 'K001', 'P003', '-7.951028', '112.655811', null, null);
INSERT INTO `bts_lokasi` VALUES ('405', 'P003-147', 'K001', 'P003', '-7.954258', '112.647914', null, null);
INSERT INTO `bts_lokasi` VALUES ('406', 'P003-148', 'K001', 'P003', '-7.957998', '112.648086', null, null);
INSERT INTO `bts_lokasi` VALUES ('407', 'P003-149', 'K001', 'P003', '-7.956978', '112.640704', null, null);
INSERT INTO `bts_lokasi` VALUES ('408', 'P003-150', 'K001', 'P003', '-7.971089', '112.648258', null, null);
INSERT INTO `bts_lokasi` VALUES ('409', 'P003-151', 'K001', 'P003', '-7.947118', '112.647914', null, null);
INSERT INTO `bts_lokasi` VALUES ('410', 'P001-152', 'K001', 'P001', '-7.943547', '112.659759', null, null);
INSERT INTO `bts_lokasi` VALUES ('411', 'P003-153', 'K001', 'P003', '-7.958678', '112.653064', null, null);

-- ----------------------------
-- Table structure for `bts_mutasi`
-- ----------------------------
DROP TABLE IF EXISTS `bts_mutasi`;
CREATE TABLE `bts_mutasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `populasi` int(11) NOT NULL DEFAULT '0',
  `iterasi` int(11) NOT NULL DEFAULT '0',
  `kdlokasi` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `evaluasi` double(8,5) NOT NULL DEFAULT '0.00000',
  `r1` double(8,5) NOT NULL DEFAULT '0.00000',
  `mt1` smallint(6) NOT NULL DEFAULT '0',
  `r2` double(8,5) NOT NULL DEFAULT '0.00000',
  `mt2` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_mutasi
-- ----------------------------
INSERT INTO `bts_mutasi` VALUES ('1', '1', '1', 'P001-006', '2.43200', '0.07730', '0', '0.34100', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('2', '1', '2', 'P001-001', '2.84600', '0.47310', '0', '0.34270', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('3', '1', '3', 'P001-152', '5.09200', '0.29400', '0', '0.44190', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('4', '1', '4', 'P001-088', '3.24300', '0.32750', '0', '0.31180', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('5', '1', '5', 'P001-006', '1.53900', '0.57640', '0', '0.94660', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('6', '1', '6', 'P001-088', '2.76800', '0.00400', '1', '0.18010', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('7', '1', '7', 'P001-005', '1.86100', '0.88840', '0', '0.90170', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('8', '1', '8', 'P001-142', '3.30700', '0.84330', '0', '0.51150', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('9', '1', '9', 'P001-006', '1.53900', '0.02750', '0', '0.60320', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('10', '1', '10', 'P001-004', '2.10900', '0.93330', '0', '0.85710', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('11', '1', '1', 'P002-118', '0.47300', '0.48550', '0', '0.85640', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('12', '1', '2', 'P002-116', '0.85900', '0.82540', '0', '0.55780', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('13', '1', '3', 'P002-101', '1.51500', '0.31260', '0', '0.88980', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('14', '1', '4', 'P002-107', '0.52300', '0.51120', '0', '0.88670', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('15', '1', '5', 'P002-118', '0.93400', '0.90000', '0', '0.83980', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('16', '1', '6', 'P002-103', '1.38000', '0.49900', '0', '0.97540', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('17', '1', '7', 'P002-107', '0.97600', '0.38030', '0', '0.97530', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('18', '1', '8', 'P002-107', '1.22700', '0.73540', '0', '0.75100', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('19', '1', '9', 'P002-105', '1.30200', '0.54890', '0', '0.49150', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('20', '1', '10', 'P002-118', '0.47300', '0.81080', '0', '0.57940', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('21', '1', '1', 'P003-144', '1.57100', '0.46460', '0', '0.58500', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('22', '1', '2', 'P003-034', '2.71400', '0.53090', '0', '0.89960', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('23', '1', '3', 'P003-050', '1.93700', '0.90520', '0', '0.82720', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('24', '1', '4', 'P003-047', '2.07700', '0.42030', '0', '0.61990', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('25', '1', '5', 'P003-148', '0.37200', '0.83870', '0', '0.33390', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('26', '1', '6', 'P003-041', '2.57900', '0.15330', '0', '0.76490', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('27', '1', '7', 'P003-047', '1.92400', '0.36440', '0', '0.52760', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('28', '1', '8', 'P003-034', '2.89200', '0.54460', '0', '0.14050', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('29', '1', '9', 'P003-148', '0.72700', '0.06830', '0', '0.92030', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('30', '1', '10', 'P003-138', '1.22700', '0.39630', '0', '0.22080', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('31', '1', '1', 'P004-076', '0.79800', '0.91520', '0', '0.91330', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('32', '1', '2', 'P004-076', '0.79800', '0.82120', '0', '0.36600', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('33', '1', '3', 'P004-071', '2.04300', '0.36640', '0', '0.73400', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('34', '1', '4', 'P004-076', '0.79800', '0.57090', '0', '0.65250', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('35', '1', '5', 'P004-071', '2.04300', '0.54970', '0', '0.79120', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('36', '1', '6', 'P004-060', '3.34100', '0.30700', '0', '0.16120', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('37', '1', '7', 'P004-079', '1.66000', '0.88500', '0', '0.94130', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('38', '1', '8', 'P004-076', '0.79800', '0.05170', '0', '0.43440', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('39', '1', '9', 'P004-079', '1.66000', '0.01720', '0', '0.78240', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('40', '1', '10', 'P004-079', '1.66000', '0.86080', '0', '0.95650', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('41', '1', '1', 'P005-017', '2.59700', '0.20030', '0', '0.13190', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('42', '1', '2', 'P005-019', '1.46700', '0.05850', '0', '0.89690', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('43', '1', '3', 'P005-025', '0.44200', '0.30910', '0', '0.85450', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('44', '1', '4', 'P005-025', '0.44200', '0.34550', '0', '0.16380', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('45', '1', '5', 'P005-022', '0.69200', '0.78280', '0', '0.42230', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('46', '1', '6', 'P005-026', '1.24500', '0.76330', '0', '0.54950', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('47', '1', '7', 'P005-019', '1.46700', '0.45750', '0', '0.63910', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('48', '1', '8', 'P005-019', '1.46700', '0.82300', '0', '0.19760', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('49', '1', '9', 'P005-023', '0.29100', '0.51890', '0', '0.00200', '1', null, null);
INSERT INTO `bts_mutasi` VALUES ('50', '1', '10', 'P005-029', '1.34500', '0.45300', '0', '0.25930', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('64', '2', '1', 'P001-006', '2.43200', '0.22580', '0', '0.49470', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('65', '2', '2', 'P001-088', '3.24300', '0.79610', '0', '0.49640', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('66', '2', '3', 'P001-006', '1.53900', '0.09370', '0', '0.97920', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('67', '2', '4', 'P001-006', '1.53900', '0.61480', '0', '0.13650', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('68', '2', '5', 'P001-088', '3.24300', '0.83820', '0', '0.78120', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('69', '2', '6', 'P001-006', '1.53900', '0.39170', '0', '0.61480', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('70', '2', '7', 'P001-004', '2.10900', '0.89880', '0', '0.64960', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('71', '2', '8', 'P001-006', '1.53900', '0.55180', '0', '0.81020', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('72', '2', '9', 'P001-006', '2.43200', '0.39560', '0', '0.54720', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('73', '2', '10', 'P001-006', '1.53900', '0.54930', '0', '0.10500', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('74', '2', '1', 'P002-116', '0.85900', '0.87700', '0', '0.07020', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('75', '2', '2', 'P002-118', '0.93400', '0.72000', '0', '0.38930', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('76', '2', '3', 'P002-118', '0.47300', '0.78650', '0', '0.76470', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('77', '2', '4', 'P002-118', '0.47300', '0.46400', '0', '0.02570', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('78', '2', '5', 'P002-118', '0.47300', '0.73660', '0', '0.60580', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('79', '2', '6', 'P002-118', '0.47300', '0.81950', '0', '0.27980', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('80', '2', '7', 'P002-118', '0.47300', '0.94060', '0', '0.86340', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('81', '2', '8', 'P002-107', '1.22700', '0.49540', '0', '0.88670', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('82', '2', '9', 'P002-107', '0.97600', '0.94750', '0', '0.07720', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('83', '2', '10', 'P002-118', '0.47300', '0.54370', '0', '0.48690', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('84', '2', '1', 'P003-148', '0.37200', '0.80350', '0', '0.55650', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('85', '2', '2', 'P003-148', '0.37200', '0.37220', '0', '0.19130', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('86', '2', '3', 'P003-050', '1.93700', '0.84010', '0', '0.62630', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('87', '2', '4', 'P003-148', '0.37200', '0.61160', '0', '0.17870', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('88', '2', '5', 'P003-050', '1.93700', '0.05900', '0', '0.75900', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('89', '2', '6', 'P003-138', '1.22700', '0.61780', '0', '0.81200', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('90', '2', '7', 'P003-144', '1.57100', '0.20670', '0', '0.59750', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('91', '2', '8', 'P003-148', '0.37200', '0.36730', '0', '0.04380', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('92', '2', '9', 'P003-148', '0.37200', '0.11740', '0', '0.45570', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('93', '2', '10', 'P003-138', '1.22700', '0.92620', '0', '0.26390', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('94', '2', '1', 'P004-071', '2.04300', '0.54100', '0', '0.91330', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('95', '2', '2', 'P004-076', '0.79800', '0.94330', '0', '0.97690', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('96', '2', '3', 'P004-076', '0.79800', '0.05450', '0', '0.34160', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('97', '2', '4', 'P004-076', '0.79800', '0.54440', '0', '0.69750', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('98', '2', '5', 'P004-076', '0.79800', '0.85430', '0', '0.17900', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('99', '2', '6', 'P004-079', '1.66000', '0.33190', '0', '0.12280', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('100', '2', '7', 'P004-076', '0.79800', '0.61820', '0', '0.72260', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('101', '2', '8', 'P004-076', '0.79800', '0.75830', '0', '0.62360', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('102', '2', '9', 'P004-076', '0.79800', '0.84330', '0', '0.34560', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('103', '2', '10', 'P004-076', '0.79800', '0.19810', '0', '0.95390', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('104', '2', '1', 'P005-019', '1.52500', '0.17510', '0', '0.01370', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('105', '2', '2', 'P005-019', '1.52500', '0.54330', '0', '0.67540', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('106', '2', '3', 'P005-022', '0.69200', '0.74730', '0', '0.71000', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('107', '2', '4', 'P005-029', '1.27900', '0.30830', '0', '0.41130', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('108', '2', '5', 'P005-026', '1.24500', '0.13170', '0', '0.42460', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('109', '2', '6', 'P005-029', '1.34500', '0.72770', '0', '0.36500', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('110', '2', '7', 'P005-025', '0.44200', '0.64190', '0', '0.11420', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('111', '2', '8', 'P005-019', '1.52500', '0.64550', '0', '0.88490', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('112', '2', '9', 'P005-026', '1.24500', '0.48810', '0', '0.78590', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('113', '2', '10', 'P005-019', '1.46700', '0.46500', '0', '0.96740', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('127', '3', '1', 'P001-088', '3.24300', '0.27220', '0', '0.33340', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('128', '3', '2', 'P001-006', '1.53900', '0.85040', '0', '0.25180', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('129', '3', '3', 'P001-006', '1.74900', '0.70800', '0', '0.78440', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('130', '3', '4', 'P001-088', '2.64000', '0.79830', '0', '0.63790', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('131', '3', '5', 'P001-006', '1.74900', '0.79480', '0', '0.06040', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('132', '3', '6', 'P001-006', '1.53900', '0.91770', '0', '0.40700', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('133', '3', '7', 'P001-006', '1.53900', '0.28210', '0', '0.18930', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('134', '3', '8', 'P001-006', '1.53900', '0.10020', '0', '0.93330', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('135', '3', '9', 'P001-006', '2.43200', '0.36570', '0', '0.02880', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('136', '3', '10', 'P001-004', '2.10900', '0.04680', '0', '0.14740', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('137', '3', '1', 'P002-118', '0.47300', '0.59690', '0', '0.54210', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('138', '3', '2', 'P002-118', '0.47300', '0.91980', '0', '0.97290', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('139', '3', '3', 'P002-118', '0.47300', '0.10500', '0', '0.60630', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('140', '3', '4', 'P002-118', '0.47300', '0.71670', '0', '0.76450', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('141', '3', '5', 'P002-118', '0.47300', '0.67230', '0', '0.06810', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('142', '3', '6', 'P002-118', '0.47300', '0.32340', '0', '0.41290', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('143', '3', '7', 'P002-107', '1.22700', '0.09440', '0', '0.23320', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('144', '3', '8', 'P002-118', '0.47300', '0.88290', '0', '0.71490', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('145', '3', '9', 'P002-118', '0.47300', '0.92560', '0', '0.48350', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('146', '3', '10', 'P002-118', '0.47300', '0.64070', '0', '0.75310', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('147', '3', '1', 'P003-138', '1.22700', '0.84350', '0', '0.95800', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('148', '3', '2', 'P003-148', '0.37200', '0.25960', '0', '0.42400', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('149', '3', '3', 'P003-148', '0.37200', '0.34100', '0', '0.43330', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('150', '3', '4', 'P003-148', '0.37200', '0.14320', '0', '0.41630', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('151', '3', '5', 'P003-148', '0.37200', '0.65180', '0', '0.01020', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('152', '3', '6', 'P003-138', '1.22700', '0.09540', '0', '0.44660', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('153', '3', '7', 'P003-050', '1.93700', '0.94690', '0', '0.39470', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('154', '3', '8', 'P003-148', '0.37200', '0.13270', '0', '0.47960', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('155', '3', '9', 'P003-148', '0.37200', '0.99970', '0', '0.55960', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('156', '3', '10', 'P003-148', '0.37200', '0.79910', '0', '0.31660', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('157', '3', '1', 'P004-076', '0.79800', '0.18590', '0', '0.97950', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('158', '3', '2', 'P004-076', '0.79800', '0.33970', '0', '0.75990', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('159', '3', '3', 'P004-076', '0.79800', '0.78080', '0', '0.62390', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('160', '3', '4', 'P004-076', '0.79800', '0.77740', '0', '0.01500', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('161', '3', '5', 'P004-076', '0.79800', '0.74290', '0', '0.66960', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('162', '3', '6', 'P004-076', '0.79800', '0.11930', '0', '0.58780', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('163', '3', '7', 'P004-076', '0.79800', '0.58100', '0', '0.14180', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('164', '3', '8', 'P004-076', '0.79800', '0.96590', '0', '0.40390', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('165', '3', '9', 'P004-076', '0.79800', '0.12180', '0', '0.39750', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('166', '3', '10', 'P004-076', '0.79800', '0.62190', '0', '0.91720', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('167', '3', '1', 'P005-025', '0.44200', '0.72030', '0', '0.84990', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('168', '3', '2', 'P005-026', '1.24500', '0.08840', '0', '0.89240', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('169', '3', '3', 'P005-029', '1.34500', '0.19680', '0', '0.30700', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('170', '3', '4', 'P005-019', '1.46700', '0.94440', '0', '0.80100', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('171', '3', '5', 'P005-029', '1.27900', '0.17160', '0', '0.45540', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('172', '3', '6', 'P005-025', '0.44200', '0.76190', '0', '0.44330', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('173', '3', '7', 'P005-026', '1.24500', '0.93080', '0', '0.32410', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('174', '3', '8', 'P005-022', '0.69200', '0.82810', '0', '0.16800', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('175', '3', '9', 'P005-025', '0.44200', '0.35590', '0', '0.27560', '0', null, null);
INSERT INTO `bts_mutasi` VALUES ('176', '3', '10', 'P005-026', '1.24500', '0.31000', '0', '0.72340', '0', null, null);

-- ----------------------------
-- Table structure for `bts_obq`
-- ----------------------------
DROP TABLE IF EXISTS `bts_obq`;
CREATE TABLE `bts_obq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomor` int(10) NOT NULL DEFAULT '0',
  `kdkec` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `prediksi` smallint(6) NOT NULL,
  `kepadatan` int(11) NOT NULL,
  `obq` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_obq
-- ----------------------------
INSERT INTO `bts_obq` VALUES ('1', '1', 'P001', '2016', '3994', '19211', '2016-12-21 04:09:15', '2016-12-21 04:09:15');
INSERT INTO `bts_obq` VALUES ('2', '2', 'P002', '2016', '15671', '75375', '2016-12-21 04:09:18', '2016-12-21 04:09:18');
INSERT INTO `bts_obq` VALUES ('3', '3', 'P003', '2016', '7110', '34198', '2016-12-21 04:09:22', '2016-12-21 04:09:22');
INSERT INTO `bts_obq` VALUES ('4', '4', 'P004', '2016', '2716', '9838', '2016-12-21 04:09:25', '2016-12-21 04:09:25');
INSERT INTO `bts_obq` VALUES ('5', '5', 'P005', '2016', '6605', '31769', '2016-12-21 04:09:29', '2016-12-21 04:09:29');

-- ----------------------------
-- Table structure for `bts_okumura`
-- ----------------------------
DROP TABLE IF EXISTS `bts_okumura`;
CREATE TABLE `bts_okumura` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fuplink` int(11) NOT NULL DEFAULT '0',
  `fdownlink` int(11) NOT NULL,
  `hms` double(8,2) NOT NULL DEFAULT '0.00',
  `hbsurban` double(8,2) NOT NULL DEFAULT '0.00',
  `hbssurban` double(8,2) NOT NULL DEFAULT '0.00',
  `hbsrural` double(8,2) NOT NULL DEFAULT '0.00',
  `auplink` double(8,7) NOT NULL DEFAULT '0.0000000',
  `adownlink` double(8,7) NOT NULL DEFAULT '0.0000000',
  `maplu` double(8,2) NOT NULL DEFAULT '0.00',
  `mapld` double(8,2) NOT NULL DEFAULT '0.00',
  `cm` double(8,2) NOT NULL DEFAULT '0.00',
  `thurban` double(8,2) NOT NULL DEFAULT '0.00',
  `thsurban` double(8,2) NOT NULL DEFAULT '0.00',
  `thrural` double(8,2) NOT NULL DEFAULT '0.00',
  `overlap` double(10,5) NOT NULL DEFAULT '0.00000',
  `blindspot` double(10,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_okumura
-- ----------------------------
INSERT INTO `bts_okumura` VALUES ('1', '1780', '1875', '1.65', '50.00', '50.00', '80.00', '0.4656470', '0.4451254', '162.67', '163.70', '0.00', '2.00', '2.00', '3.00', '200.00000', '3000.00000', null, '2016-12-22 04:10:10');

-- ----------------------------
-- Table structure for `bts_pathloss`
-- ----------------------------
DROP TABLE IF EXISTS `bts_pathloss`;
CREATE TABLE `bts_pathloss` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kdkota` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `kdkec` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `kdkat` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `puplink` double(8,5) NOT NULL DEFAULT '0.00000',
  `pdownlink` double(8,5) NOT NULL DEFAULT '0.00000',
  `maplu` double(8,5) NOT NULL DEFAULT '0.00000',
  `mapld` double(8,5) NOT NULL DEFAULT '0.00000',
  `layaku` smallint(6) NOT NULL DEFAULT '0',
  `layakd` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_pathloss
-- ----------------------------
INSERT INTO `bts_pathloss` VALUES ('1', 'K001', 'P001', 'C01', '132.63806', '133.42409', '162.67000', '163.70000', '1', '1', null, null);
INSERT INTO `bts_pathloss` VALUES ('2', 'K001', 'P002', 'C01', '122.61330', '123.39933', '162.67000', '163.70000', '1', '1', null, null);
INSERT INTO `bts_pathloss` VALUES ('3', 'K001', 'P003', 'C01', '128.40898', '129.19501', '162.67000', '163.70000', '1', '1', null, null);
INSERT INTO `bts_pathloss` VALUES ('4', 'K001', 'P004', 'C03', '134.52686', '135.31289', '162.67000', '163.70000', '1', '1', null, null);
INSERT INTO `bts_pathloss` VALUES ('5', 'K001', 'P005', 'C02', '128.94928', '129.73531', '162.67000', '163.70000', '1', '1', null, null);

-- ----------------------------
-- Table structure for `bts_populasi`
-- ----------------------------
DROP TABLE IF EXISTS `bts_populasi`;
CREATE TABLE `bts_populasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `populasi` int(11) NOT NULL DEFAULT '0',
  `iterasi` int(11) NOT NULL DEFAULT '0',
  `kdlokasi` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `evaluasi` double(8,5) NOT NULL DEFAULT '0.00000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_populasi
-- ----------------------------
INSERT INTO `bts_populasi` VALUES ('1', '1', '1', 'P001-087', '2.31900', null, null);
INSERT INTO `bts_populasi` VALUES ('2', '1', '2', 'P001-142', '3.80500', null, null);
INSERT INTO `bts_populasi` VALUES ('3', '1', '3', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi` VALUES ('4', '1', '4', 'P001-088', '2.76800', null, null);
INSERT INTO `bts_populasi` VALUES ('5', '1', '5', 'P001-004', '2.10900', null, null);
INSERT INTO `bts_populasi` VALUES ('6', '1', '6', 'P001-001', '2.84600', null, null);
INSERT INTO `bts_populasi` VALUES ('7', '1', '7', 'P001-097', '1.41200', null, null);
INSERT INTO `bts_populasi` VALUES ('8', '1', '8', 'P001-152', '5.09200', null, null);
INSERT INTO `bts_populasi` VALUES ('9', '1', '9', 'P001-005', '1.86100', null, null);
INSERT INTO `bts_populasi` VALUES ('10', '1', '10', 'P001-090', '2.63500', null, null);
INSERT INTO `bts_populasi` VALUES ('16', '1', '1', 'P002-121', '0.98300', null, null);
INSERT INTO `bts_populasi` VALUES ('17', '1', '2', 'P002-126', '1.30700', null, null);
INSERT INTO `bts_populasi` VALUES ('18', '1', '3', 'P002-106', '1.03600', null, null);
INSERT INTO `bts_populasi` VALUES ('19', '1', '4', 'P002-116', '1.13600', null, null);
INSERT INTO `bts_populasi` VALUES ('20', '1', '5', 'P002-107', '0.97600', null, null);
INSERT INTO `bts_populasi` VALUES ('21', '1', '6', 'P002-101', '1.51500', null, null);
INSERT INTO `bts_populasi` VALUES ('22', '1', '7', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('23', '1', '8', 'P002-104', '1.29800', null, null);
INSERT INTO `bts_populasi` VALUES ('24', '1', '9', 'P002-103', '1.38000', null, null);
INSERT INTO `bts_populasi` VALUES ('25', '1', '10', 'P002-105', '1.00800', null, null);
INSERT INTO `bts_populasi` VALUES ('31', '1', '1', 'P003-050', '1.93700', null, null);
INSERT INTO `bts_populasi` VALUES ('32', '1', '2', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi` VALUES ('33', '1', '3', 'P003-034', '2.89200', null, null);
INSERT INTO `bts_populasi` VALUES ('34', '1', '4', 'P003-037', '2.63000', null, null);
INSERT INTO `bts_populasi` VALUES ('35', '1', '5', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi` VALUES ('36', '1', '6', 'P003-047', '1.92400', null, null);
INSERT INTO `bts_populasi` VALUES ('37', '1', '7', 'P003-137', '1768.23900', null, null);
INSERT INTO `bts_populasi` VALUES ('38', '1', '8', 'P003-144', '1.57100', null, null);
INSERT INTO `bts_populasi` VALUES ('39', '1', '9', 'P003-055', '1.68000', null, null);
INSERT INTO `bts_populasi` VALUES ('40', '1', '10', 'P003-041', '2.57900', null, null);
INSERT INTO `bts_populasi` VALUES ('46', '1', '1', 'P004-080', '3.50700', null, null);
INSERT INTO `bts_populasi` VALUES ('47', '1', '2', 'P004-060', '3.34100', null, null);
INSERT INTO `bts_populasi` VALUES ('48', '1', '3', 'P004-068', '2.92100', null, null);
INSERT INTO `bts_populasi` VALUES ('49', '1', '4', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi` VALUES ('50', '1', '5', 'P004-071', '2.04300', null, null);
INSERT INTO `bts_populasi` VALUES ('51', '1', '6', 'P004-067', '3.34800', null, null);
INSERT INTO `bts_populasi` VALUES ('52', '1', '7', 'P004-059', '4.00800', null, null);
INSERT INTO `bts_populasi` VALUES ('53', '1', '8', 'P004-066', '3.68200', null, null);
INSERT INTO `bts_populasi` VALUES ('54', '1', '9', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('55', '1', '10', 'P004-072', '2.15400', null, null);
INSERT INTO `bts_populasi` VALUES ('61', '1', '1', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi` VALUES ('62', '1', '2', 'P005-017', '2.59700', null, null);
INSERT INTO `bts_populasi` VALUES ('63', '1', '3', 'P005-030', '2.11400', null, null);
INSERT INTO `bts_populasi` VALUES ('64', '1', '4', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi` VALUES ('65', '1', '5', 'P005-023', '0.29100', null, null);
INSERT INTO `bts_populasi` VALUES ('66', '1', '6', 'P005-011', '3.39300', null, null);
INSERT INTO `bts_populasi` VALUES ('67', '1', '7', 'P005-032', '3.40700', null, null);
INSERT INTO `bts_populasi` VALUES ('68', '1', '8', 'P005-029', '1.34500', null, null);
INSERT INTO `bts_populasi` VALUES ('69', '1', '9', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi` VALUES ('70', '1', '10', 'P005-022', '0.69200', null, null);
INSERT INTO `bts_populasi` VALUES ('76', '2', '1', 'P001-006', '2.43200', null, null);
INSERT INTO `bts_populasi` VALUES ('77', '2', '2', 'P001-001', '2.84600', null, null);
INSERT INTO `bts_populasi` VALUES ('78', '2', '3', 'P001-152', '5.09200', null, null);
INSERT INTO `bts_populasi` VALUES ('79', '2', '4', 'P001-088', '3.24300', null, null);
INSERT INTO `bts_populasi` VALUES ('80', '2', '5', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi` VALUES ('81', '2', '6', 'P001-088', '3.31900', null, null);
INSERT INTO `bts_populasi` VALUES ('82', '2', '7', 'P001-005', '1.86100', null, null);
INSERT INTO `bts_populasi` VALUES ('83', '2', '8', 'P001-142', '3.30700', null, null);
INSERT INTO `bts_populasi` VALUES ('84', '2', '9', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi` VALUES ('85', '2', '10', 'P001-004', '2.10900', null, null);
INSERT INTO `bts_populasi` VALUES ('86', '2', '1', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('87', '2', '2', 'P002-116', '0.85900', null, null);
INSERT INTO `bts_populasi` VALUES ('88', '2', '3', 'P002-101', '1.51500', null, null);
INSERT INTO `bts_populasi` VALUES ('89', '2', '4', 'P002-107', '0.52300', null, null);
INSERT INTO `bts_populasi` VALUES ('90', '2', '5', 'P002-118', '0.93400', null, null);
INSERT INTO `bts_populasi` VALUES ('91', '2', '6', 'P002-103', '1.38000', null, null);
INSERT INTO `bts_populasi` VALUES ('92', '2', '7', 'P002-107', '0.97600', null, null);
INSERT INTO `bts_populasi` VALUES ('93', '2', '8', 'P002-107', '1.22700', null, null);
INSERT INTO `bts_populasi` VALUES ('94', '2', '9', 'P002-105', '1.30200', null, null);
INSERT INTO `bts_populasi` VALUES ('95', '2', '10', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('96', '2', '1', 'P003-144', '1.57100', null, null);
INSERT INTO `bts_populasi` VALUES ('97', '2', '2', 'P003-034', '2.71400', null, null);
INSERT INTO `bts_populasi` VALUES ('98', '2', '3', 'P003-050', '1.93700', null, null);
INSERT INTO `bts_populasi` VALUES ('99', '2', '4', 'P003-047', '2.07700', null, null);
INSERT INTO `bts_populasi` VALUES ('100', '2', '5', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi` VALUES ('101', '2', '6', 'P003-041', '2.57900', null, null);
INSERT INTO `bts_populasi` VALUES ('102', '2', '7', 'P003-047', '1.92400', null, null);
INSERT INTO `bts_populasi` VALUES ('103', '2', '8', 'P003-034', '2.89200', null, null);
INSERT INTO `bts_populasi` VALUES ('104', '2', '9', 'P003-148', '0.72700', null, null);
INSERT INTO `bts_populasi` VALUES ('105', '2', '10', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi` VALUES ('106', '2', '1', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('107', '2', '2', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('108', '2', '3', 'P004-071', '2.04300', null, null);
INSERT INTO `bts_populasi` VALUES ('109', '2', '4', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('110', '2', '5', 'P004-071', '2.04300', null, null);
INSERT INTO `bts_populasi` VALUES ('111', '2', '6', 'P004-060', '3.34100', null, null);
INSERT INTO `bts_populasi` VALUES ('112', '2', '7', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi` VALUES ('113', '2', '8', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('114', '2', '9', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi` VALUES ('115', '2', '10', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi` VALUES ('116', '2', '1', 'P005-017', '2.59700', null, null);
INSERT INTO `bts_populasi` VALUES ('117', '2', '2', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi` VALUES ('118', '2', '3', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi` VALUES ('119', '2', '4', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi` VALUES ('120', '2', '5', 'P005-022', '0.69200', null, null);
INSERT INTO `bts_populasi` VALUES ('121', '2', '6', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi` VALUES ('122', '2', '7', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi` VALUES ('123', '2', '8', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi` VALUES ('124', '2', '9', 'P005-023', '0.30600', null, null);
INSERT INTO `bts_populasi` VALUES ('125', '2', '10', 'P005-029', '1.34500', null, null);
INSERT INTO `bts_populasi` VALUES ('139', '3', '1', 'P001-006', '2.43200', null, null);
INSERT INTO `bts_populasi` VALUES ('140', '3', '2', 'P001-088', '3.24300', null, null);
INSERT INTO `bts_populasi` VALUES ('141', '3', '3', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi` VALUES ('142', '3', '4', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi` VALUES ('143', '3', '5', 'P001-088', '3.24300', null, null);
INSERT INTO `bts_populasi` VALUES ('144', '3', '6', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi` VALUES ('145', '3', '7', 'P001-004', '2.10900', null, null);
INSERT INTO `bts_populasi` VALUES ('146', '3', '8', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi` VALUES ('147', '3', '9', 'P001-006', '2.43200', null, null);
INSERT INTO `bts_populasi` VALUES ('148', '3', '10', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi` VALUES ('149', '3', '1', 'P002-116', '0.85900', null, null);
INSERT INTO `bts_populasi` VALUES ('150', '3', '2', 'P002-118', '0.93400', null, null);
INSERT INTO `bts_populasi` VALUES ('151', '3', '3', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('152', '3', '4', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('153', '3', '5', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('154', '3', '6', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('155', '3', '7', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('156', '3', '8', 'P002-107', '1.22700', null, null);
INSERT INTO `bts_populasi` VALUES ('157', '3', '9', 'P002-107', '0.97600', null, null);
INSERT INTO `bts_populasi` VALUES ('158', '3', '10', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi` VALUES ('159', '3', '1', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi` VALUES ('160', '3', '2', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi` VALUES ('161', '3', '3', 'P003-050', '1.93700', null, null);
INSERT INTO `bts_populasi` VALUES ('162', '3', '4', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi` VALUES ('163', '3', '5', 'P003-050', '1.93700', null, null);
INSERT INTO `bts_populasi` VALUES ('164', '3', '6', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi` VALUES ('165', '3', '7', 'P003-144', '1.57100', null, null);
INSERT INTO `bts_populasi` VALUES ('166', '3', '8', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi` VALUES ('167', '3', '9', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi` VALUES ('168', '3', '10', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi` VALUES ('169', '3', '1', 'P004-071', '2.04300', null, null);
INSERT INTO `bts_populasi` VALUES ('170', '3', '2', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('171', '3', '3', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('172', '3', '4', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('173', '3', '5', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('174', '3', '6', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi` VALUES ('175', '3', '7', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('176', '3', '8', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('177', '3', '9', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('178', '3', '10', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi` VALUES ('179', '3', '1', 'P005-019', '1.52500', null, null);
INSERT INTO `bts_populasi` VALUES ('180', '3', '2', 'P005-019', '1.52500', null, null);
INSERT INTO `bts_populasi` VALUES ('181', '3', '3', 'P005-022', '0.69200', null, null);
INSERT INTO `bts_populasi` VALUES ('182', '3', '4', 'P005-029', '1.27900', null, null);
INSERT INTO `bts_populasi` VALUES ('183', '3', '5', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi` VALUES ('184', '3', '6', 'P005-029', '1.34500', null, null);
INSERT INTO `bts_populasi` VALUES ('185', '3', '7', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi` VALUES ('186', '3', '8', 'P005-019', '1.52500', null, null);
INSERT INTO `bts_populasi` VALUES ('187', '3', '9', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi` VALUES ('188', '3', '10', 'P005-019', '1.46700', null, null);

-- ----------------------------
-- Table structure for `bts_populasi2`
-- ----------------------------
DROP TABLE IF EXISTS `bts_populasi2`;
CREATE TABLE `bts_populasi2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `populasi` int(11) NOT NULL DEFAULT '0',
  `iterasi` int(11) NOT NULL DEFAULT '0',
  `kdlokasi` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `evaluasi` double(8,5) NOT NULL DEFAULT '0.00000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_populasi2
-- ----------------------------
INSERT INTO `bts_populasi2` VALUES ('1', '1', '1', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('2', '1', '2', 'P001-001', '2.84600', null, null);
INSERT INTO `bts_populasi2` VALUES ('3', '1', '3', 'P001-152', '5.09200', null, null);
INSERT INTO `bts_populasi2` VALUES ('4', '1', '4', 'P001-088', '2.76800', null, null);
INSERT INTO `bts_populasi2` VALUES ('5', '1', '5', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('6', '1', '6', 'P001-088', '2.76800', null, null);
INSERT INTO `bts_populasi2` VALUES ('7', '1', '7', 'P001-005', '1.86100', null, null);
INSERT INTO `bts_populasi2` VALUES ('8', '1', '8', 'P001-142', '3.80500', null, null);
INSERT INTO `bts_populasi2` VALUES ('9', '1', '9', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('10', '1', '10', 'P001-004', '2.10900', null, null);
INSERT INTO `bts_populasi2` VALUES ('11', '1', '1', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('12', '1', '2', 'P002-116', '1.13600', null, null);
INSERT INTO `bts_populasi2` VALUES ('13', '1', '3', 'P002-101', '1.51500', null, null);
INSERT INTO `bts_populasi2` VALUES ('14', '1', '4', 'P002-107', '0.97600', null, null);
INSERT INTO `bts_populasi2` VALUES ('15', '1', '5', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('16', '1', '6', 'P002-103', '1.38000', null, null);
INSERT INTO `bts_populasi2` VALUES ('17', '1', '7', 'P002-107', '0.97600', null, null);
INSERT INTO `bts_populasi2` VALUES ('18', '1', '8', 'P002-107', '0.97600', null, null);
INSERT INTO `bts_populasi2` VALUES ('19', '1', '9', 'P002-105', '1.00800', null, null);
INSERT INTO `bts_populasi2` VALUES ('20', '1', '10', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('21', '1', '1', 'P003-144', '1.57100', null, null);
INSERT INTO `bts_populasi2` VALUES ('22', '1', '2', 'P003-034', '2.89200', null, null);
INSERT INTO `bts_populasi2` VALUES ('23', '1', '3', 'P003-050', '1.93700', null, null);
INSERT INTO `bts_populasi2` VALUES ('24', '1', '4', 'P003-047', '1.92400', null, null);
INSERT INTO `bts_populasi2` VALUES ('25', '1', '5', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('26', '1', '6', 'P003-041', '2.57900', null, null);
INSERT INTO `bts_populasi2` VALUES ('27', '1', '7', 'P003-047', '1.92400', null, null);
INSERT INTO `bts_populasi2` VALUES ('28', '1', '8', 'P003-034', '2.89200', null, null);
INSERT INTO `bts_populasi2` VALUES ('29', '1', '9', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('30', '1', '10', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi2` VALUES ('31', '1', '1', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('32', '1', '2', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('33', '1', '3', 'P004-071', '2.04300', null, null);
INSERT INTO `bts_populasi2` VALUES ('34', '1', '4', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('35', '1', '5', 'P004-071', '2.04300', null, null);
INSERT INTO `bts_populasi2` VALUES ('36', '1', '6', 'P004-060', '3.34100', null, null);
INSERT INTO `bts_populasi2` VALUES ('37', '1', '7', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi2` VALUES ('38', '1', '8', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('39', '1', '9', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi2` VALUES ('40', '1', '10', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi2` VALUES ('41', '1', '1', 'P005-017', '2.59700', null, null);
INSERT INTO `bts_populasi2` VALUES ('42', '1', '2', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi2` VALUES ('43', '1', '3', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi2` VALUES ('44', '1', '4', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi2` VALUES ('45', '1', '5', 'P005-022', '0.69200', null, null);
INSERT INTO `bts_populasi2` VALUES ('46', '1', '6', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi2` VALUES ('47', '1', '7', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi2` VALUES ('48', '1', '8', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi2` VALUES ('49', '1', '9', 'P005-023', '0.29100', null, null);
INSERT INTO `bts_populasi2` VALUES ('50', '1', '10', 'P005-029', '1.34500', null, null);
INSERT INTO `bts_populasi2` VALUES ('51', '2', '1', 'P001-006', '2.43200', null, null);
INSERT INTO `bts_populasi2` VALUES ('52', '2', '2', 'P001-088', '3.24300', null, null);
INSERT INTO `bts_populasi2` VALUES ('53', '2', '3', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('54', '2', '4', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('55', '2', '5', 'P001-088', '3.24300', null, null);
INSERT INTO `bts_populasi2` VALUES ('56', '2', '6', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('57', '2', '7', 'P001-004', '2.10900', null, null);
INSERT INTO `bts_populasi2` VALUES ('58', '2', '8', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('59', '2', '9', 'P001-006', '2.43200', null, null);
INSERT INTO `bts_populasi2` VALUES ('60', '2', '10', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('61', '2', '1', 'P002-116', '0.85900', null, null);
INSERT INTO `bts_populasi2` VALUES ('62', '2', '2', 'P002-118', '0.93400', null, null);
INSERT INTO `bts_populasi2` VALUES ('63', '2', '3', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('64', '2', '4', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('65', '2', '5', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('66', '2', '6', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('67', '2', '7', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('68', '2', '8', 'P002-107', '1.22700', null, null);
INSERT INTO `bts_populasi2` VALUES ('69', '2', '9', 'P002-107', '0.97600', null, null);
INSERT INTO `bts_populasi2` VALUES ('70', '2', '10', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('71', '2', '1', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('72', '2', '2', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('73', '2', '3', 'P003-050', '1.93700', null, null);
INSERT INTO `bts_populasi2` VALUES ('74', '2', '4', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('75', '2', '5', 'P003-050', '1.93700', null, null);
INSERT INTO `bts_populasi2` VALUES ('76', '2', '6', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi2` VALUES ('77', '2', '7', 'P003-144', '1.57100', null, null);
INSERT INTO `bts_populasi2` VALUES ('78', '2', '8', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('79', '2', '9', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('80', '2', '10', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi2` VALUES ('81', '2', '1', 'P004-071', '2.04300', null, null);
INSERT INTO `bts_populasi2` VALUES ('82', '2', '2', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('83', '2', '3', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('84', '2', '4', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('85', '2', '5', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('86', '2', '6', 'P004-079', '1.66000', null, null);
INSERT INTO `bts_populasi2` VALUES ('87', '2', '7', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('88', '2', '8', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('89', '2', '9', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('90', '2', '10', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('91', '2', '1', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi2` VALUES ('92', '2', '2', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi2` VALUES ('93', '2', '3', 'P005-022', '0.69200', null, null);
INSERT INTO `bts_populasi2` VALUES ('94', '2', '4', 'P005-029', '1.34500', null, null);
INSERT INTO `bts_populasi2` VALUES ('95', '2', '5', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi2` VALUES ('96', '2', '6', 'P005-029', '1.34500', null, null);
INSERT INTO `bts_populasi2` VALUES ('97', '2', '7', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi2` VALUES ('98', '2', '8', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi2` VALUES ('99', '2', '9', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi2` VALUES ('100', '2', '10', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi2` VALUES ('101', '3', '1', 'P001-088', '3.24300', null, null);
INSERT INTO `bts_populasi2` VALUES ('102', '3', '2', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('103', '3', '3', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('104', '3', '4', 'P001-088', '3.24300', null, null);
INSERT INTO `bts_populasi2` VALUES ('105', '3', '5', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('106', '3', '6', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('107', '3', '7', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('108', '3', '8', 'P001-006', '1.53900', null, null);
INSERT INTO `bts_populasi2` VALUES ('109', '3', '9', 'P001-006', '2.43200', null, null);
INSERT INTO `bts_populasi2` VALUES ('110', '3', '10', 'P001-004', '2.10900', null, null);
INSERT INTO `bts_populasi2` VALUES ('111', '3', '1', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('112', '3', '2', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('113', '3', '3', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('114', '3', '4', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('115', '3', '5', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('116', '3', '6', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('117', '3', '7', 'P002-107', '1.22700', null, null);
INSERT INTO `bts_populasi2` VALUES ('118', '3', '8', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('119', '3', '9', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('120', '3', '10', 'P002-118', '0.47300', null, null);
INSERT INTO `bts_populasi2` VALUES ('121', '3', '1', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi2` VALUES ('122', '3', '2', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('123', '3', '3', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('124', '3', '4', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('125', '3', '5', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('126', '3', '6', 'P003-138', '1.22700', null, null);
INSERT INTO `bts_populasi2` VALUES ('127', '3', '7', 'P003-050', '1.93700', null, null);
INSERT INTO `bts_populasi2` VALUES ('128', '3', '8', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('129', '3', '9', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('130', '3', '10', 'P003-148', '0.37200', null, null);
INSERT INTO `bts_populasi2` VALUES ('131', '3', '1', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('132', '3', '2', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('133', '3', '3', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('134', '3', '4', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('135', '3', '5', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('136', '3', '6', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('137', '3', '7', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('138', '3', '8', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('139', '3', '9', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('140', '3', '10', 'P004-076', '0.79800', null, null);
INSERT INTO `bts_populasi2` VALUES ('141', '3', '1', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi2` VALUES ('142', '3', '2', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi2` VALUES ('143', '3', '3', 'P005-029', '1.34500', null, null);
INSERT INTO `bts_populasi2` VALUES ('144', '3', '4', 'P005-019', '1.46700', null, null);
INSERT INTO `bts_populasi2` VALUES ('145', '3', '5', 'P005-029', '1.27900', null, null);
INSERT INTO `bts_populasi2` VALUES ('146', '3', '6', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi2` VALUES ('147', '3', '7', 'P005-026', '1.24500', null, null);
INSERT INTO `bts_populasi2` VALUES ('148', '3', '8', 'P005-022', '0.69200', null, null);
INSERT INTO `bts_populasi2` VALUES ('149', '3', '9', 'P005-025', '0.44200', null, null);
INSERT INTO `bts_populasi2` VALUES ('150', '3', '10', 'P005-026', '1.24500', null, null);

-- ----------------------------
-- Table structure for `bts_populasi3`
-- ----------------------------
DROP TABLE IF EXISTS `bts_populasi3`;
CREATE TABLE `bts_populasi3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `populasi` int(11) NOT NULL DEFAULT '0',
  `iterasi` int(11) NOT NULL DEFAULT '0',
  `kdlokasi` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double(8,5) NOT NULL DEFAULT '0.00000',
  `longitude` double(8,5) NOT NULL DEFAULT '0.00000',
  `evaluasi` double(8,5) NOT NULL DEFAULT '0.00000',
  `co` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_populasi3
-- ----------------------------
INSERT INTO `bts_populasi3` VALUES ('1', '1', '1', 'P001-006', '-7.95766', '112.60586', '2.43200', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('2', '1', '2', 'P001-001', '-7.92028', '112.59466', '2.84600', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('3', '1', '3', 'P001-152', '-7.94355', '112.65976', '5.09200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('4', '1', '4', 'P001-088', '-7.95766', '112.63504', '3.24300', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('5', '1', '5', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('6', '1', '6', 'P001-088', '-7.95084', '112.63504', '2.76800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('7', '1', '7', 'P001-005', '-7.92747', '112.60028', '1.86100', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('8', '1', '8', 'P001-142', '-7.92602', '112.64173', '3.30700', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('9', '1', '9', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('10', '1', '10', 'P001-004', '-7.92458', '112.59977', '2.10900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('16', '1', '1', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('17', '1', '2', 'P002-116', '-7.97911', '112.63342', '0.85900', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('18', '1', '3', 'P002-101', '-7.96364', '112.62415', '1.51500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('19', '1', '4', 'P002-107', '-7.97257', '112.62690', '0.52300', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('20', '1', '5', 'P002-118', '-7.98098', '112.63342', '0.93400', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('21', '1', '6', 'P002-103', '-7.96781', '112.63411', '1.38000', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('22', '1', '7', 'P002-107', '-7.97257', '112.63342', '0.97600', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('23', '1', '8', 'P002-107', '-7.97257', '112.61574', '1.22700', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('24', '1', '9', 'P002-105', '-7.96815', '112.63342', '1.30200', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('25', '1', '10', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('31', '1', '1', 'P003-144', '-7.94406', '112.65856', '1.57100', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('32', '1', '2', 'P003-034', '-7.93057', '112.64809', '2.71400', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('33', '1', '3', 'P003-050', '-7.93790', '112.64577', '1.93700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('34', '1', '4', 'P003-047', '-7.93863', '112.64028', '2.07700', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('35', '1', '5', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('36', '1', '6', 'P003-041', '-7.93208', '112.64552', '2.57900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('37', '1', '7', 'P003-047', '-7.93863', '112.64363', '1.92400', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('38', '1', '8', 'P003-034', '-7.93057', '112.64028', '2.89200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('39', '1', '9', 'P003-148', '-7.95800', '112.64363', '0.72700', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('40', '1', '10', 'P003-138', '-7.96592', '112.65055', '1.22700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('46', '1', '1', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('47', '1', '2', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('48', '1', '3', 'P004-071', '-8.01501', '112.63751', '2.04300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('49', '1', '4', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('50', '1', '5', 'P004-071', '-8.01501', '112.63751', '2.04300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('51', '1', '6', 'P004-060', '-7.98118', '112.65519', '3.34100', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('52', '1', '7', 'P004-079', '-8.02499', '112.64983', '1.66000', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('53', '1', '8', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('54', '1', '9', 'P004-079', '-8.02499', '112.64983', '1.66000', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('55', '1', '10', 'P004-079', '-8.02499', '112.64983', '1.66000', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('61', '1', '1', 'P005-017', '-7.99039', '112.59239', '2.59700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('62', '1', '2', 'P005-019', '-7.98801', '112.60595', '1.46700', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('63', '1', '3', 'P005-025', '-8.00153', '112.61647', '0.44200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('64', '1', '4', 'P005-025', '-8.00153', '112.61647', '0.44200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('65', '1', '5', 'P005-022', '-7.99566', '112.60887', '0.69200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('66', '1', '6', 'P005-026', '-8.00076', '112.62565', '1.24500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('67', '1', '7', 'P005-019', '-7.98801', '112.60595', '1.46700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('68', '1', '8', 'P005-019', '-7.98801', '112.60595', '1.46700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('69', '1', '9', 'P005-023', '-7.99583', '112.61316', '0.29100', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('70', '1', '10', 'P005-029', '-8.00858', '112.62055', '1.34500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('76', '2', '1', 'P001-006', '-7.92602', '112.60586', '2.43200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('77', '2', '2', 'P001-088', '-7.95084', '112.63504', '3.24300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('78', '2', '3', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('79', '2', '4', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('80', '2', '5', 'P001-088', '-7.95084', '112.63504', '3.24300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('81', '2', '6', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('82', '2', '7', 'P001-004', '-7.92458', '112.59977', '2.10900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('83', '2', '8', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('84', '2', '9', 'P001-006', '-7.92602', '112.60586', '2.43200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('85', '2', '10', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('91', '2', '1', 'P002-116', '-7.97911', '112.61574', '0.85900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('92', '2', '2', 'P002-118', '-7.98098', '112.62398', '0.93400', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('93', '2', '3', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('94', '2', '4', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('95', '2', '5', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('96', '2', '6', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('97', '2', '7', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('98', '2', '8', 'P002-107', '-7.97257', '112.63342', '1.22700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('99', '2', '9', 'P002-107', '-7.97257', '112.63342', '0.97600', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('100', '2', '10', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('106', '2', '1', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('107', '2', '2', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('108', '2', '3', 'P003-050', '-7.93790', '112.64577', '1.93700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('109', '2', '4', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('110', '2', '5', 'P003-050', '-7.93790', '112.64577', '1.93700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('111', '2', '6', 'P003-138', '-7.96592', '112.65055', '1.22700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('112', '2', '7', 'P003-144', '-7.94406', '112.65856', '1.57100', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('113', '2', '8', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('114', '2', '9', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('115', '2', '10', 'P003-138', '-7.96592', '112.65055', '1.22700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('121', '2', '1', 'P004-071', '-8.01501', '112.63751', '2.04300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('122', '2', '2', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('123', '2', '3', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('124', '2', '4', 'P004-076', '-8.00952', '112.64862', '0.79800', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('125', '2', '5', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('126', '2', '6', 'P004-079', '-8.02499', '112.64983', '1.66000', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('127', '2', '7', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('128', '2', '8', 'P004-076', '-8.00952', '112.64862', '0.79800', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('129', '2', '9', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('130', '2', '10', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('136', '2', '1', 'P005-019', '-8.00858', '112.60595', '1.52500', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('137', '2', '2', 'P005-019', '-8.00858', '112.60595', '1.52500', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('138', '2', '3', 'P005-022', '-7.99566', '112.60887', '0.69200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('139', '2', '4', 'P005-029', '-7.98801', '112.62055', '1.27900', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('140', '2', '5', 'P005-026', '-8.00076', '112.62565', '1.24500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('141', '2', '6', 'P005-029', '-8.00858', '112.62055', '1.34500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('142', '2', '7', 'P005-025', '-8.00153', '112.61647', '0.44200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('143', '2', '8', 'P005-019', '-8.00858', '112.60595', '1.52500', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('144', '2', '9', 'P005-026', '-8.00076', '112.62565', '1.24500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('145', '2', '10', 'P005-019', '-7.98801', '112.60595', '1.46700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('151', '3', '1', 'P001-088', '-7.95084', '112.63504', '3.24300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('152', '3', '2', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('153', '3', '3', 'P001-006', '-7.95084', '112.60586', '1.74900', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('154', '3', '4', 'P001-088', '-7.92602', '112.63504', '2.64000', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('155', '3', '5', 'P001-006', '-7.95084', '112.60586', '1.74900', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('156', '3', '6', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('157', '3', '7', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('158', '3', '8', 'P001-006', '-7.92602', '112.60586', '1.53900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('159', '3', '9', 'P001-006', '-7.92602', '112.60586', '2.43200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('160', '3', '10', 'P001-004', '-7.92458', '112.59977', '2.10900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('166', '3', '1', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('167', '3', '2', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('168', '3', '3', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('169', '3', '4', 'P002-118', '-7.98098', '112.62398', '0.47300', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('170', '3', '5', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('171', '3', '6', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('172', '3', '7', 'P002-107', '-7.97257', '112.63342', '1.22700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('173', '3', '8', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('174', '3', '9', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('175', '3', '10', 'P002-118', '-7.98098', '112.62398', '0.47300', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('181', '3', '1', 'P003-138', '-7.96592', '112.65055', '1.22700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('182', '3', '2', 'P003-148', '-7.95800', '112.64809', '0.37200', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('183', '3', '3', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('184', '3', '4', 'P003-148', '-7.95800', '112.64809', '0.37200', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('185', '3', '5', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('186', '3', '6', 'P003-138', '-7.96592', '112.65055', '1.22700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('187', '3', '7', 'P003-050', '-7.93790', '112.64577', '1.93700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('188', '3', '8', 'P003-148', '-7.95800', '112.64809', '0.37200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('189', '3', '9', 'P003-148', '-7.95800', '112.64809', '0.37200', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('190', '3', '10', 'P003-148', '-7.95800', '112.64809', '0.37200', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('196', '3', '1', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('197', '3', '2', 'P004-076', '-8.00953', '112.64862', '0.79800', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('198', '3', '3', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('199', '3', '4', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('200', '3', '5', 'P004-076', '-8.00953', '112.64862', '0.79800', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('201', '3', '6', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('202', '3', '7', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('203', '3', '8', 'P004-076', '-8.00953', '112.64862', '0.79800', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('204', '3', '9', 'P004-076', '-8.00953', '112.64862', '0.79800', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('205', '3', '10', 'P004-076', '-8.00953', '112.64862', '0.79800', '1', null, null);
INSERT INTO `bts_populasi3` VALUES ('211', '3', '1', 'P005-025', '-8.00153', '112.61647', '0.44200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('212', '3', '2', 'P005-026', '-8.00076', '112.62565', '1.24500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('213', '3', '3', 'P005-029', '-8.00858', '112.62055', '1.34500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('214', '3', '4', 'P005-019', '-7.98801', '112.60595', '1.46700', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('215', '3', '5', 'P005-029', '-8.00858', '112.62055', '1.27900', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('216', '3', '6', 'P005-025', '-8.00153', '112.61647', '0.44200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('217', '3', '7', 'P005-026', '-8.00076', '112.62565', '1.24500', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('218', '3', '8', 'P005-022', '-7.99566', '112.60887', '0.69200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('219', '3', '9', 'P005-025', '-8.00153', '112.61647', '0.44200', '0', null, null);
INSERT INTO `bts_populasi3` VALUES ('220', '3', '10', 'P005-026', '-8.00076', '112.62565', '1.24500', '0', null, null);

-- ----------------------------
-- Table structure for `bts_populasi4`
-- ----------------------------
DROP TABLE IF EXISTS `bts_populasi4`;
CREATE TABLE `bts_populasi4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `populasi` int(11) NOT NULL DEFAULT '0',
  `iterasi` int(11) NOT NULL DEFAULT '0',
  `kdlokasi` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double(8,5) NOT NULL DEFAULT '0.00000',
  `longitude` double(8,5) NOT NULL DEFAULT '0.00000',
  `mt1` smallint(6) NOT NULL DEFAULT '0',
  `mt2` smallint(6) NOT NULL DEFAULT '0',
  `evaluasi` double(8,5) NOT NULL DEFAULT '0.00000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_populasi4
-- ----------------------------
INSERT INTO `bts_populasi4` VALUES ('1', '1', '1', 'P001-006', '-7.95766', '112.60586', '0', '0', '2.43200', null, null);
INSERT INTO `bts_populasi4` VALUES ('2', '1', '2', 'P001-001', '-7.92028', '112.59466', '0', '0', '2.84600', null, null);
INSERT INTO `bts_populasi4` VALUES ('3', '1', '3', 'P001-152', '-7.94355', '112.65976', '0', '0', '5.09200', null, null);
INSERT INTO `bts_populasi4` VALUES ('4', '1', '4', 'P001-088', '-7.95766', '112.63504', '0', '0', '3.24300', null, null);
INSERT INTO `bts_populasi4` VALUES ('5', '1', '5', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('6', '1', '6', 'P001-088', '-7.91599', '112.63504', '1', '0', '3.31900', null, null);
INSERT INTO `bts_populasi4` VALUES ('7', '1', '7', 'P001-005', '-7.92747', '112.60028', '0', '0', '1.86100', null, null);
INSERT INTO `bts_populasi4` VALUES ('8', '1', '8', 'P001-142', '-7.92602', '112.64173', '0', '0', '3.30700', null, null);
INSERT INTO `bts_populasi4` VALUES ('9', '1', '9', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('10', '1', '10', 'P001-004', '-7.92458', '112.59977', '0', '0', '2.10900', null, null);
INSERT INTO `bts_populasi4` VALUES ('16', '1', '1', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('17', '1', '2', 'P002-116', '-7.97911', '112.63342', '0', '0', '0.85900', null, null);
INSERT INTO `bts_populasi4` VALUES ('18', '1', '3', 'P002-101', '-7.96364', '112.62415', '0', '0', '1.51500', null, null);
INSERT INTO `bts_populasi4` VALUES ('19', '1', '4', 'P002-107', '-7.97257', '112.62690', '0', '0', '0.52300', null, null);
INSERT INTO `bts_populasi4` VALUES ('20', '1', '5', 'P002-118', '-7.98098', '112.63342', '0', '0', '0.93400', null, null);
INSERT INTO `bts_populasi4` VALUES ('21', '1', '6', 'P002-103', '-7.96781', '112.63411', '0', '0', '1.38000', null, null);
INSERT INTO `bts_populasi4` VALUES ('22', '1', '7', 'P002-107', '-7.97257', '112.63342', '0', '0', '0.97600', null, null);
INSERT INTO `bts_populasi4` VALUES ('23', '1', '8', 'P002-107', '-7.97257', '112.61574', '0', '0', '1.22700', null, null);
INSERT INTO `bts_populasi4` VALUES ('24', '1', '9', 'P002-105', '-7.96815', '112.63342', '0', '0', '1.30200', null, null);
INSERT INTO `bts_populasi4` VALUES ('25', '1', '10', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('31', '1', '1', 'P003-144', '-7.94406', '112.65856', '0', '0', '1.57100', null, null);
INSERT INTO `bts_populasi4` VALUES ('32', '1', '2', 'P003-034', '-7.93057', '112.64809', '0', '0', '2.71400', null, null);
INSERT INTO `bts_populasi4` VALUES ('33', '1', '3', 'P003-050', '-7.93790', '112.64577', '0', '0', '1.93700', null, null);
INSERT INTO `bts_populasi4` VALUES ('34', '1', '4', 'P003-047', '-7.93863', '112.64028', '0', '0', '2.07700', null, null);
INSERT INTO `bts_populasi4` VALUES ('35', '1', '5', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('36', '1', '6', 'P003-041', '-7.93208', '112.64552', '0', '0', '2.57900', null, null);
INSERT INTO `bts_populasi4` VALUES ('37', '1', '7', 'P003-047', '-7.93863', '112.64363', '0', '0', '1.92400', null, null);
INSERT INTO `bts_populasi4` VALUES ('38', '1', '8', 'P003-034', '-7.93057', '112.64028', '0', '0', '2.89200', null, null);
INSERT INTO `bts_populasi4` VALUES ('39', '1', '9', 'P003-148', '-7.95800', '112.64363', '0', '0', '0.72700', null, null);
INSERT INTO `bts_populasi4` VALUES ('40', '1', '10', 'P003-138', '-7.96592', '112.65055', '0', '0', '1.22700', null, null);
INSERT INTO `bts_populasi4` VALUES ('46', '1', '1', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('47', '1', '2', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('48', '1', '3', 'P004-071', '-8.01501', '112.63751', '0', '0', '2.04300', null, null);
INSERT INTO `bts_populasi4` VALUES ('49', '1', '4', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('50', '1', '5', 'P004-071', '-8.01501', '112.63751', '0', '0', '2.04300', null, null);
INSERT INTO `bts_populasi4` VALUES ('51', '1', '6', 'P004-060', '-7.98118', '112.65519', '0', '0', '3.34100', null, null);
INSERT INTO `bts_populasi4` VALUES ('52', '1', '7', 'P004-079', '-8.02499', '112.64983', '0', '0', '1.66000', null, null);
INSERT INTO `bts_populasi4` VALUES ('53', '1', '8', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('54', '1', '9', 'P004-079', '-8.02499', '112.64983', '0', '0', '1.66000', null, null);
INSERT INTO `bts_populasi4` VALUES ('55', '1', '10', 'P004-079', '-8.02499', '112.64983', '0', '0', '1.66000', null, null);
INSERT INTO `bts_populasi4` VALUES ('61', '1', '1', 'P005-017', '-7.99039', '112.59239', '0', '0', '2.59700', null, null);
INSERT INTO `bts_populasi4` VALUES ('62', '1', '2', 'P005-019', '-7.98801', '112.60595', '0', '0', '1.46700', null, null);
INSERT INTO `bts_populasi4` VALUES ('63', '1', '3', 'P005-025', '-8.00153', '112.61647', '0', '0', '0.44200', null, null);
INSERT INTO `bts_populasi4` VALUES ('64', '1', '4', 'P005-025', '-8.00153', '112.61647', '0', '0', '0.44200', null, null);
INSERT INTO `bts_populasi4` VALUES ('65', '1', '5', 'P005-022', '-7.99566', '112.60887', '0', '0', '0.69200', null, null);
INSERT INTO `bts_populasi4` VALUES ('66', '1', '6', 'P005-026', '-8.00076', '112.62565', '0', '0', '1.24500', null, null);
INSERT INTO `bts_populasi4` VALUES ('67', '1', '7', 'P005-019', '-7.98801', '112.60595', '0', '0', '1.46700', null, null);
INSERT INTO `bts_populasi4` VALUES ('68', '1', '8', 'P005-019', '-7.98801', '112.60595', '0', '0', '1.46700', null, null);
INSERT INTO `bts_populasi4` VALUES ('69', '1', '9', 'P005-023', '-7.99583', '112.61647', '0', '1', '0.30600', null, null);
INSERT INTO `bts_populasi4` VALUES ('70', '1', '10', 'P005-029', '-8.00858', '112.62055', '0', '0', '1.34500', null, null);
INSERT INTO `bts_populasi4` VALUES ('76', '2', '1', 'P001-006', '-7.92602', '112.60586', '0', '0', '2.43200', null, null);
INSERT INTO `bts_populasi4` VALUES ('77', '2', '2', 'P001-088', '-7.95084', '112.63504', '0', '0', '3.24300', null, null);
INSERT INTO `bts_populasi4` VALUES ('78', '2', '3', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('79', '2', '4', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('80', '2', '5', 'P001-088', '-7.95084', '112.63504', '0', '0', '3.24300', null, null);
INSERT INTO `bts_populasi4` VALUES ('81', '2', '6', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('82', '2', '7', 'P001-004', '-7.92458', '112.59977', '0', '0', '2.10900', null, null);
INSERT INTO `bts_populasi4` VALUES ('83', '2', '8', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('84', '2', '9', 'P001-006', '-7.92602', '112.60586', '0', '0', '2.43200', null, null);
INSERT INTO `bts_populasi4` VALUES ('85', '2', '10', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('91', '2', '1', 'P002-116', '-7.97911', '112.61574', '0', '0', '0.85900', null, null);
INSERT INTO `bts_populasi4` VALUES ('92', '2', '2', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.93400', null, null);
INSERT INTO `bts_populasi4` VALUES ('93', '2', '3', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('94', '2', '4', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('95', '2', '5', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('96', '2', '6', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('97', '2', '7', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('98', '2', '8', 'P002-107', '-7.97257', '112.63342', '0', '0', '1.22700', null, null);
INSERT INTO `bts_populasi4` VALUES ('99', '2', '9', 'P002-107', '-7.97257', '112.63342', '0', '0', '0.97600', null, null);
INSERT INTO `bts_populasi4` VALUES ('100', '2', '10', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('106', '2', '1', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('107', '2', '2', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('108', '2', '3', 'P003-050', '-7.93790', '112.64577', '0', '0', '1.93700', null, null);
INSERT INTO `bts_populasi4` VALUES ('109', '2', '4', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('110', '2', '5', 'P003-050', '-7.93790', '112.64577', '0', '0', '1.93700', null, null);
INSERT INTO `bts_populasi4` VALUES ('111', '2', '6', 'P003-138', '-7.96592', '112.65055', '0', '0', '1.22700', null, null);
INSERT INTO `bts_populasi4` VALUES ('112', '2', '7', 'P003-144', '-7.94406', '112.65856', '0', '0', '1.57100', null, null);
INSERT INTO `bts_populasi4` VALUES ('113', '2', '8', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('114', '2', '9', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('115', '2', '10', 'P003-138', '-7.96592', '112.65055', '0', '0', '1.22700', null, null);
INSERT INTO `bts_populasi4` VALUES ('121', '2', '1', 'P004-071', '-8.01501', '112.63751', '0', '0', '2.04300', null, null);
INSERT INTO `bts_populasi4` VALUES ('122', '2', '2', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('123', '2', '3', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('124', '2', '4', 'P004-076', '-8.00952', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('125', '2', '5', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('126', '2', '6', 'P004-079', '-8.02499', '112.64983', '0', '0', '1.66000', null, null);
INSERT INTO `bts_populasi4` VALUES ('127', '2', '7', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('128', '2', '8', 'P004-076', '-8.00952', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('129', '2', '9', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('130', '2', '10', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('136', '2', '1', 'P005-019', '-8.00858', '112.60595', '0', '0', '1.52500', null, null);
INSERT INTO `bts_populasi4` VALUES ('137', '2', '2', 'P005-019', '-8.00858', '112.60595', '0', '0', '1.52500', null, null);
INSERT INTO `bts_populasi4` VALUES ('138', '2', '3', 'P005-022', '-7.99566', '112.60887', '0', '0', '0.69200', null, null);
INSERT INTO `bts_populasi4` VALUES ('139', '2', '4', 'P005-029', '-7.98801', '112.62055', '0', '0', '1.27900', null, null);
INSERT INTO `bts_populasi4` VALUES ('140', '2', '5', 'P005-026', '-8.00076', '112.62565', '0', '0', '1.24500', null, null);
INSERT INTO `bts_populasi4` VALUES ('141', '2', '6', 'P005-029', '-8.00858', '112.62055', '0', '0', '1.34500', null, null);
INSERT INTO `bts_populasi4` VALUES ('142', '2', '7', 'P005-025', '-8.00153', '112.61647', '0', '0', '0.44200', null, null);
INSERT INTO `bts_populasi4` VALUES ('143', '2', '8', 'P005-019', '-8.00858', '112.60595', '0', '0', '1.52500', null, null);
INSERT INTO `bts_populasi4` VALUES ('144', '2', '9', 'P005-026', '-8.00076', '112.62565', '0', '0', '1.24500', null, null);
INSERT INTO `bts_populasi4` VALUES ('145', '2', '10', 'P005-019', '-7.98801', '112.60595', '0', '0', '1.46700', null, null);
INSERT INTO `bts_populasi4` VALUES ('151', '3', '1', 'P001-088', '-7.95084', '112.63504', '0', '0', '3.24300', null, null);
INSERT INTO `bts_populasi4` VALUES ('152', '3', '2', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('153', '3', '3', 'P001-006', '-7.95084', '112.60586', '0', '0', '1.74900', null, null);
INSERT INTO `bts_populasi4` VALUES ('154', '3', '4', 'P001-088', '-7.92602', '112.63504', '0', '0', '2.64000', null, null);
INSERT INTO `bts_populasi4` VALUES ('155', '3', '5', 'P001-006', '-7.95084', '112.60586', '0', '0', '1.74900', null, null);
INSERT INTO `bts_populasi4` VALUES ('156', '3', '6', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('157', '3', '7', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('158', '3', '8', 'P001-006', '-7.92602', '112.60586', '0', '0', '1.53900', null, null);
INSERT INTO `bts_populasi4` VALUES ('159', '3', '9', 'P001-006', '-7.92602', '112.60586', '0', '0', '2.43200', null, null);
INSERT INTO `bts_populasi4` VALUES ('160', '3', '10', 'P001-004', '-7.92458', '112.59977', '0', '0', '2.10900', null, null);
INSERT INTO `bts_populasi4` VALUES ('166', '3', '1', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('167', '3', '2', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('168', '3', '3', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('169', '3', '4', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('170', '3', '5', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('171', '3', '6', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('172', '3', '7', 'P002-107', '-7.97257', '112.63342', '0', '0', '1.22700', null, null);
INSERT INTO `bts_populasi4` VALUES ('173', '3', '8', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('174', '3', '9', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('175', '3', '10', 'P002-118', '-7.98098', '112.62398', '0', '0', '0.47300', null, null);
INSERT INTO `bts_populasi4` VALUES ('181', '3', '1', 'P003-138', '-7.96592', '112.65055', '0', '0', '1.22700', null, null);
INSERT INTO `bts_populasi4` VALUES ('182', '3', '2', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('183', '3', '3', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('184', '3', '4', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('185', '3', '5', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('186', '3', '6', 'P003-138', '-7.96592', '112.65055', '0', '0', '1.22700', null, null);
INSERT INTO `bts_populasi4` VALUES ('187', '3', '7', 'P003-050', '-7.93790', '112.64577', '0', '0', '1.93700', null, null);
INSERT INTO `bts_populasi4` VALUES ('188', '3', '8', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('189', '3', '9', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('190', '3', '10', 'P003-148', '-7.95800', '112.64809', '0', '0', '0.37200', null, null);
INSERT INTO `bts_populasi4` VALUES ('196', '3', '1', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('197', '3', '2', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('198', '3', '3', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('199', '3', '4', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('200', '3', '5', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('201', '3', '6', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('202', '3', '7', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('203', '3', '8', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('204', '3', '9', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('205', '3', '10', 'P004-076', '-8.00953', '112.64862', '0', '0', '0.79800', null, null);
INSERT INTO `bts_populasi4` VALUES ('211', '3', '1', 'P005-025', '-8.00153', '112.61647', '0', '0', '0.44200', null, null);
INSERT INTO `bts_populasi4` VALUES ('212', '3', '2', 'P005-026', '-8.00076', '112.62565', '0', '0', '1.24500', null, null);
INSERT INTO `bts_populasi4` VALUES ('213', '3', '3', 'P005-029', '-8.00858', '112.62055', '0', '0', '1.34500', null, null);
INSERT INTO `bts_populasi4` VALUES ('214', '3', '4', 'P005-019', '-7.98801', '112.60595', '0', '0', '1.46700', null, null);
INSERT INTO `bts_populasi4` VALUES ('215', '3', '5', 'P005-029', '-8.00858', '112.62055', '0', '0', '1.27900', null, null);
INSERT INTO `bts_populasi4` VALUES ('216', '3', '6', 'P005-025', '-8.00153', '112.61647', '0', '0', '0.44200', null, null);
INSERT INTO `bts_populasi4` VALUES ('217', '3', '7', 'P005-026', '-8.00076', '112.62565', '0', '0', '1.24500', null, null);
INSERT INTO `bts_populasi4` VALUES ('218', '3', '8', 'P005-022', '-7.99566', '112.60887', '0', '0', '0.69200', null, null);
INSERT INTO `bts_populasi4` VALUES ('219', '3', '9', 'P005-025', '-8.00153', '112.61647', '0', '0', '0.44200', null, null);
INSERT INTO `bts_populasi4` VALUES ('220', '3', '10', 'P005-026', '-8.00076', '112.62565', '0', '0', '1.24500', null, null);

-- ----------------------------
-- Table structure for `bts_prakiraan`
-- ----------------------------
DROP TABLE IF EXISTS `bts_prakiraan`;
CREATE TABLE `bts_prakiraan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `kdkota` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `kdkec` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `potensial` int(3) NOT NULL DEFAULT '0',
  `prediksi` int(2) NOT NULL DEFAULT '0',
  `asumsi` float(2,2) NOT NULL DEFAULT '0.00',
  `prakiraan` int(3) NOT NULL DEFAULT '0',
  `pelanggan` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_prakiraan
-- ----------------------------
INSERT INTO `bts_prakiraan` VALUES ('1', '2014', 'K001', 'P001', '42', '2', '0.30', '15', '601622', null, null);
INSERT INTO `bts_prakiraan` VALUES ('2', '2014', 'K001', 'P002', '42', '2', '0.30', '23', '601622', null, null);
INSERT INTO `bts_prakiraan` VALUES ('3', '2014', 'K001', 'P003', '42', '2', '0.30', '21', '601622', null, null);
INSERT INTO `bts_prakiraan` VALUES ('4', '2014', 'K001', 'P004', '42', '2', '0.30', '18', '601622', null, null);
INSERT INTO `bts_prakiraan` VALUES ('5', '2014', 'K001', 'P005', '42', '2', '0.30', '23', '601622', null, null);

-- ----------------------------
-- Table structure for `bts_seleksi`
-- ----------------------------
DROP TABLE IF EXISTS `bts_seleksi`;
CREATE TABLE `bts_seleksi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `populasi` int(11) NOT NULL,
  `iterasi` int(11) NOT NULL,
  `kdlokasi` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `evaluasi` double(8,5) NOT NULL DEFAULT '0.00000',
  `sum1` double(8,5) NOT NULL DEFAULT '0.00000',
  `mod1` double(8,5) NOT NULL DEFAULT '0.00000',
  `sum2` double(8,5) NOT NULL DEFAULT '0.00000',
  `mod2` double(8,5) NOT NULL DEFAULT '0.00000',
  `r` double(8,5) NOT NULL DEFAULT '0.00000',
  `seleksi` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bts_seleksi
-- ----------------------------
INSERT INTO `bts_seleksi` VALUES ('1', '1', '1', 'P001-087', '0.43122', '4.35200', '0.09900', '1.00000', '0.09900', '0.28440', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('2', '1', '2', 'P001-142', '0.26281', '4.35200', '0.06000', '1.00000', '0.15900', '0.52660', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('3', '1', '3', 'P001-006', '0.64977', '4.35200', '0.14900', '1.00000', '0.30800', '0.77970', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('4', '1', '4', 'P001-088', '0.36127', '4.35200', '0.08300', '1.00000', '0.39100', '0.31860', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('5', '1', '5', 'P001-004', '0.47416', '4.35200', '0.10900', '1.00000', '0.50000', '0.25420', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('6', '1', '6', 'P001-001', '0.35137', '4.35200', '0.08100', '1.00000', '0.58100', '0.31510', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('7', '1', '7', 'P001-097', '0.70822', '4.35200', '0.16300', '1.00000', '0.74400', '0.81310', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('8', '1', '8', 'P001-152', '0.19639', '4.35200', '0.04500', '1.00000', '0.78900', '0.12000', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('9', '1', '9', 'P001-005', '0.53735', '4.35200', '0.12300', '1.00000', '0.91200', '0.16060', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('10', '1', '10', 'P001-090', '0.37951', '4.35200', '0.08700', '1.00000', '0.99900', '0.44300', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('16', '1', '1', 'P002-121', '1.01729', '9.91400', '0.10300', '1.00000', '0.10300', '0.73320', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('17', '1', '2', 'P002-126', '0.76511', '9.91400', '0.07700', '1.00000', '0.18000', '0.33690', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('18', '1', '3', 'P002-106', '0.96525', '9.91400', '0.09700', '1.00000', '0.27700', '0.48510', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('19', '1', '4', 'P002-116', '0.88028', '9.91400', '0.08900', '1.00000', '0.36600', '0.41490', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('20', '1', '5', 'P002-107', '1.02459', '9.91400', '0.10300', '1.00000', '0.46900', '0.61910', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('21', '1', '6', 'P002-101', '0.66007', '9.91400', '0.06700', '1.00000', '0.53600', '0.85080', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('22', '1', '7', 'P002-118', '2.11416', '9.91400', '0.21300', '1.00000', '0.74900', '0.39690', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('23', '1', '8', 'P002-104', '0.77042', '9.91400', '0.07800', '1.00000', '0.82700', '0.43180', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('24', '1', '9', 'P002-103', '0.72464', '9.91400', '0.07300', '1.00000', '0.90000', '0.96850', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('25', '1', '10', 'P002-105', '0.99206', '9.91400', '0.10000', '1.00000', '1.00000', '0.54700', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('31', '1', '1', 'P003-050', '0.51626', '6.88500', '0.07500', '1.00000', '0.07500', '0.82970', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('32', '1', '2', 'P003-148', '2.68817', '6.88500', '0.39000', '1.00000', '0.46500', '0.50720', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('33', '1', '3', 'P003-034', '0.34578', '6.88500', '0.05000', '1.00000', '0.51500', '0.04710', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('34', '1', '4', 'P003-037', '0.38023', '6.88500', '0.05500', '1.00000', '0.57000', '0.71370', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('35', '1', '5', 'P003-138', '0.81500', '6.88500', '0.11800', '1.00000', '0.68800', '0.42750', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('36', '1', '6', 'P003-047', '0.51975', '6.88500', '0.07500', '1.00000', '0.76300', '0.99610', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('37', '1', '7', 'P003-137', '0.00057', '6.88500', '0.00000', '1.00000', '0.76300', '0.69830', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('38', '1', '8', 'P003-144', '0.63654', '6.88500', '0.09200', '1.00000', '0.85500', '0.50290', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('39', '1', '9', 'P003-055', '0.59524', '6.88500', '0.08600', '1.00000', '0.94100', '0.41980', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('40', '1', '10', 'P003-041', '0.38775', '6.88500', '0.05600', '1.00000', '0.99700', '0.59000', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('46', '1', '1', 'P004-080', '0.28514', '4.55600', '0.06300', '1.00000', '0.06300', '0.69100', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('47', '1', '2', 'P004-060', '0.29931', '4.55600', '0.06600', '1.00000', '0.12900', '0.68470', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('48', '1', '3', 'P004-068', '0.34235', '4.55600', '0.07500', '1.00000', '0.20400', '0.35050', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('49', '1', '4', 'P004-079', '0.60241', '4.55600', '0.13200', '1.00000', '0.33600', '0.69850', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('50', '1', '5', 'P004-071', '0.48948', '4.55600', '0.10700', '1.00000', '0.44300', '0.44110', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('51', '1', '6', 'P004-067', '0.29869', '4.55600', '0.06600', '1.00000', '0.50900', '0.10990', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('52', '1', '7', 'P004-059', '0.24950', '4.55600', '0.05500', '1.00000', '0.56400', '0.22620', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('53', '1', '8', 'P004-066', '0.27159', '4.55600', '0.06000', '1.00000', '0.62400', '0.80150', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('54', '1', '9', 'P004-076', '1.25313', '4.55600', '0.27500', '1.00000', '0.89900', '0.32880', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('55', '1', '10', 'P004-072', '0.46425', '4.55600', '0.10200', '1.00000', '1.00100', '0.23940', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('61', '1', '1', 'P005-025', '2.26244', '10.81900', '0.20900', '1.00000', '0.20900', '0.21050', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('62', '1', '2', 'P005-017', '0.38506', '10.81900', '0.03600', '1.00000', '0.24500', '0.33450', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('63', '1', '3', 'P005-030', '0.47304', '10.81900', '0.04400', '1.00000', '0.28900', '0.04070', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('64', '1', '4', 'P005-019', '0.68166', '10.81900', '0.06300', '1.00000', '0.35200', '0.20030', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('65', '1', '5', 'P005-023', '3.43643', '10.81900', '0.31800', '1.00000', '0.67000', '0.87930', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('66', '1', '6', 'P005-011', '0.29472', '10.81900', '0.02700', '1.00000', '0.69700', '0.79550', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('67', '1', '7', 'P005-032', '0.29351', '10.81900', '0.02700', '1.00000', '0.72400', '0.33970', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('68', '1', '8', 'P005-029', '0.74349', '10.81900', '0.06900', '1.00000', '0.79300', '0.31220', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('69', '1', '9', 'P005-026', '0.80321', '10.81900', '0.07400', '1.00000', '0.86700', '0.54150', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('70', '1', '10', 'P005-022', '1.44509', '10.81900', '0.13400', '1.00000', '1.00100', '0.77120', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('76', '2', '1', 'P001-006', '0.41118', '4.18200', '0.09800', '1.00000', '0.09800', '0.02080', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('77', '2', '2', 'P001-001', '0.35137', '4.18200', '0.08400', '1.00000', '0.18200', '0.30140', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('78', '2', '3', 'P001-152', '0.19639', '4.18200', '0.04700', '1.00000', '0.22900', '0.44470', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('79', '2', '4', 'P001-088', '0.30836', '4.18200', '0.07400', '1.00000', '0.30300', '0.31910', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('80', '2', '5', 'P001-006', '0.64977', '4.18200', '0.15500', '1.00000', '0.45800', '0.26160', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('81', '2', '6', 'P001-088', '0.30130', '4.18200', '0.07200', '1.00000', '0.53000', '0.35070', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('82', '2', '7', 'P001-005', '0.53735', '4.18200', '0.12800', '1.00000', '0.65800', '0.96870', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('83', '2', '8', 'P001-142', '0.30239', '4.18200', '0.07200', '1.00000', '0.73000', '0.79120', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('84', '2', '9', 'P001-006', '0.64977', '4.18200', '0.15500', '1.00000', '0.88500', '0.05000', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('85', '2', '10', 'P001-004', '0.47416', '4.18200', '0.11300', '1.00000', '0.99800', '0.87630', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('91', '2', '1', 'P002-118', '2.11416', '12.36800', '0.17100', '1.00000', '0.17100', '0.23140', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('92', '2', '2', 'P002-116', '1.16414', '12.36800', '0.09400', '1.00000', '0.26500', '0.52840', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('93', '2', '3', 'P002-101', '0.66007', '12.36800', '0.05300', '1.00000', '0.31800', '0.94780', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('94', '2', '4', 'P002-107', '1.91205', '12.36800', '0.15500', '1.00000', '0.47300', '0.15370', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('95', '2', '5', 'P002-118', '1.07066', '12.36800', '0.08700', '1.00000', '0.56000', '0.92530', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('96', '2', '6', 'P002-103', '0.72464', '12.36800', '0.05900', '1.00000', '0.61900', '0.16520', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('97', '2', '7', 'P002-107', '1.02459', '12.36800', '0.08300', '1.00000', '0.70200', '0.05010', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('98', '2', '8', 'P002-107', '0.81500', '12.36800', '0.06600', '1.00000', '0.76800', '0.75490', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('99', '2', '9', 'P002-105', '0.76805', '12.36800', '0.06200', '1.00000', '0.83000', '0.62420', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('100', '2', '10', 'P002-118', '2.11416', '12.36800', '0.17100', '1.00000', '1.00100', '0.85630', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('106', '2', '1', 'P003-144', '0.63654', '8.13500', '0.07800', '1.00000', '0.07800', '0.40890', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('107', '2', '2', 'P003-034', '0.36846', '8.13500', '0.04500', '1.00000', '0.12300', '0.47540', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('108', '2', '3', 'P003-050', '0.51626', '8.13500', '0.06300', '1.00000', '0.18600', '0.15050', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('109', '2', '4', 'P003-047', '0.48146', '8.13500', '0.05900', '1.00000', '0.24500', '0.32620', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('110', '2', '5', 'P003-148', '2.68817', '8.13500', '0.33000', '1.00000', '0.57500', '0.17970', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('111', '2', '6', 'P003-041', '0.38775', '8.13500', '0.04800', '1.00000', '0.62300', '0.91980', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('112', '2', '7', 'P003-047', '0.51975', '8.13500', '0.06400', '1.00000', '0.68700', '0.05990', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('113', '2', '8', 'P003-034', '0.34578', '8.13500', '0.04300', '1.00000', '0.73000', '0.53990', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('114', '2', '9', 'P003-148', '1.37552', '8.13500', '0.16900', '1.00000', '0.89900', '0.52000', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('115', '2', '10', 'P003-138', '0.81500', '8.13500', '0.10000', '1.00000', '0.99900', '0.98040', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('121', '2', '1', 'P004-076', '1.25313', '8.09800', '0.15500', '1.00000', '0.15500', '0.34200', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('122', '2', '2', 'P004-076', '1.25313', '8.09800', '0.15500', '1.00000', '0.31000', '0.76850', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('123', '2', '3', 'P004-071', '0.48948', '8.09800', '0.06000', '1.00000', '0.37000', '0.81680', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('124', '2', '4', 'P004-076', '1.25313', '8.09800', '0.15500', '1.00000', '0.52500', '0.77820', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('125', '2', '5', 'P004-071', '0.48948', '8.09800', '0.06000', '1.00000', '0.58500', '0.44090', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('126', '2', '6', 'P004-060', '0.29931', '8.09800', '0.03700', '1.00000', '0.62200', '0.86960', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('127', '2', '7', 'P004-079', '0.60241', '8.09800', '0.07400', '1.00000', '0.69600', '0.02560', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('128', '2', '8', 'P004-076', '1.25313', '8.09800', '0.15500', '1.00000', '0.85100', '0.51930', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('129', '2', '9', 'P004-079', '0.60241', '8.09800', '0.07400', '1.00000', '0.92500', '0.51940', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('130', '2', '10', 'P004-079', '0.60241', '8.09800', '0.07400', '1.00000', '0.99900', '0.03910', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('136', '2', '1', 'P005-017', '0.38506', '13.21500', '0.02900', '1.00000', '0.02900', '0.63750', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('137', '2', '2', 'P005-019', '0.68166', '13.21500', '0.05200', '1.00000', '0.08100', '0.07010', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('138', '2', '3', 'P005-025', '2.26244', '13.21500', '0.17100', '1.00000', '0.25200', '0.43810', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('139', '2', '4', 'P005-025', '2.26244', '13.21500', '0.17100', '1.00000', '0.42300', '0.98020', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('140', '2', '5', 'P005-022', '1.44509', '13.21500', '0.10900', '1.00000', '0.53200', '0.58660', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('141', '2', '6', 'P005-026', '0.80321', '13.21500', '0.06100', '1.00000', '0.59300', '0.99230', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('142', '2', '7', 'P005-019', '0.68166', '13.21500', '0.05200', '1.00000', '0.64500', '0.20190', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('143', '2', '8', 'P005-019', '0.68166', '13.21500', '0.05200', '1.00000', '0.69700', '0.03270', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('144', '2', '9', 'P005-023', '3.26797', '13.21500', '0.24700', '1.00000', '0.94400', '0.55760', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('145', '2', '10', 'P005-029', '0.74349', '13.21500', '0.05600', '1.00000', '1.00000', '0.69010', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('151', '3', '1', 'P001-006', '0.41118', '5.16200', '0.08000', '1.00000', '0.08000', '0.44180', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('152', '3', '2', 'P001-088', '0.30836', '5.16200', '0.06000', '1.00000', '0.14000', '0.30670', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('153', '3', '3', 'P001-006', '0.64977', '5.16200', '0.12600', '1.00000', '0.26600', '0.20830', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('154', '3', '4', 'P001-006', '0.64977', '5.16200', '0.12600', '1.00000', '0.39200', '0.12130', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('155', '3', '5', 'P001-088', '0.30836', '5.16200', '0.06000', '1.00000', '0.45200', '0.98150', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('156', '3', '6', 'P001-006', '0.64977', '5.16200', '0.12600', '1.00000', '0.57800', '0.54360', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('157', '3', '7', 'P001-004', '0.47416', '5.16200', '0.09200', '1.00000', '0.67000', '0.77370', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('158', '3', '8', 'P001-006', '0.64977', '5.16200', '0.12600', '1.00000', '0.79600', '0.23740', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('159', '3', '9', 'P001-006', '0.41118', '5.16200', '0.08000', '1.00000', '0.87600', '0.86630', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('160', '3', '10', 'P001-006', '0.64977', '5.16200', '0.12600', '1.00000', '1.00200', '0.61890', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('166', '3', '1', 'P002-116', '1.16414', '16.75900', '0.06900', '1.00000', '0.06900', '0.49590', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('167', '3', '2', 'P002-118', '1.07066', '16.75900', '0.06400', '1.00000', '0.13300', '0.62290', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('168', '3', '3', 'P002-118', '2.11416', '16.75900', '0.12600', '1.00000', '0.25900', '0.62660', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('169', '3', '4', 'P002-118', '2.11416', '16.75900', '0.12600', '1.00000', '0.38500', '0.26460', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('170', '3', '5', 'P002-118', '2.11416', '16.75900', '0.12600', '1.00000', '0.51100', '0.44280', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('171', '3', '6', 'P002-118', '2.11416', '16.75900', '0.12600', '1.00000', '0.63700', '0.42040', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('172', '3', '7', 'P002-118', '2.11416', '16.75900', '0.12600', '1.00000', '0.76300', '0.77360', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('173', '3', '8', 'P002-107', '0.81500', '16.75900', '0.04900', '1.00000', '0.81200', '0.60680', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('174', '3', '9', 'P002-107', '1.02459', '16.75900', '0.06100', '1.00000', '0.87300', '0.71320', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('175', '3', '10', 'P002-118', '2.11416', '16.75900', '0.12600', '1.00000', '0.99900', '0.74580', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('181', '3', '1', 'P003-148', '2.68817', '16.74000', '0.16100', '1.00000', '0.16100', '0.58920', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('182', '3', '2', 'P003-148', '2.68817', '16.74000', '0.16100', '1.00000', '0.32200', '0.70880', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('183', '3', '3', 'P003-050', '0.51626', '16.74000', '0.03100', '1.00000', '0.35300', '0.77640', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('184', '3', '4', 'P003-148', '2.68817', '16.74000', '0.16100', '1.00000', '0.51400', '0.75570', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('185', '3', '5', 'P003-050', '0.51626', '16.74000', '0.03100', '1.00000', '0.54500', '0.44900', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('186', '3', '6', 'P003-138', '0.81500', '16.74000', '0.04900', '1.00000', '0.59400', '0.97800', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('187', '3', '7', 'P003-144', '0.63654', '16.74000', '0.03800', '1.00000', '0.63200', '0.54300', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('188', '3', '8', 'P003-148', '2.68817', '16.74000', '0.16100', '1.00000', '0.79300', '0.78090', '8', null, null);
INSERT INTO `bts_seleksi` VALUES ('189', '3', '9', 'P003-148', '2.68817', '16.74000', '0.16100', '1.00000', '0.95400', '0.27560', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('190', '3', '10', 'P003-138', '0.81500', '16.74000', '0.04900', '1.00000', '1.00300', '0.03510', '1', null, null);
INSERT INTO `bts_seleksi` VALUES ('196', '3', '1', 'P004-071', '0.48948', '11.11700', '0.04400', '1.00000', '0.04400', '0.34880', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('197', '3', '2', 'P004-076', '1.25313', '11.11700', '0.11300', '1.00000', '0.15700', '0.63870', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('198', '3', '3', 'P004-076', '1.25313', '11.11700', '0.11300', '1.00000', '0.27000', '0.14720', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('199', '3', '4', 'P004-076', '1.25313', '11.11700', '0.11300', '1.00000', '0.38300', '0.81980', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('200', '3', '5', 'P004-076', '1.25313', '11.11700', '0.11300', '1.00000', '0.49600', '0.65730', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('201', '3', '6', 'P004-079', '0.60241', '11.11700', '0.05400', '1.00000', '0.55000', '0.82740', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('202', '3', '7', 'P004-076', '1.25313', '11.11700', '0.11300', '1.00000', '0.66300', '0.16480', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('203', '3', '8', 'P004-076', '1.25313', '11.11700', '0.11300', '1.00000', '0.77600', '0.34190', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('204', '3', '9', 'P004-076', '1.25313', '11.11700', '0.11300', '1.00000', '0.88900', '0.21500', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('205', '3', '10', 'P004-076', '1.25313', '11.11700', '0.11300', '1.00000', '1.00200', '0.04950', '2', null, null);
INSERT INTO `bts_seleksi` VALUES ('211', '3', '1', 'P005-019', '0.65574', '9.48800', '0.06900', '1.00000', '0.06900', '0.60250', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('212', '3', '2', 'P005-019', '0.65574', '9.48800', '0.06900', '1.00000', '0.13800', '0.86410', '9', null, null);
INSERT INTO `bts_seleksi` VALUES ('213', '3', '3', 'P005-022', '1.44509', '9.48800', '0.15200', '1.00000', '0.29000', '0.51270', '6', null, null);
INSERT INTO `bts_seleksi` VALUES ('214', '3', '4', 'P005-029', '0.78186', '9.48800', '0.08200', '1.00000', '0.37200', '0.97140', '10', null, null);
INSERT INTO `bts_seleksi` VALUES ('215', '3', '5', 'P005-026', '0.80321', '9.48800', '0.08500', '1.00000', '0.45700', '0.31900', '4', null, null);
INSERT INTO `bts_seleksi` VALUES ('216', '3', '6', 'P005-029', '0.74349', '9.48800', '0.07800', '1.00000', '0.53500', '0.68050', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('217', '3', '7', 'P005-025', '2.26244', '9.48800', '0.23800', '1.00000', '0.77300', '0.44570', '5', null, null);
INSERT INTO `bts_seleksi` VALUES ('218', '3', '8', 'P005-019', '0.65574', '9.48800', '0.06900', '1.00000', '0.84200', '0.18690', '3', null, null);
INSERT INTO `bts_seleksi` VALUES ('219', '3', '9', 'P005-026', '0.80321', '9.48800', '0.08500', '1.00000', '0.92700', '0.59740', '7', null, null);
INSERT INTO `bts_seleksi` VALUES ('220', '3', '10', 'P005-019', '0.68166', '9.48800', '0.07200', '1.00000', '0.99900', '0.42630', '5', null, null);

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2016_07_25_040457_create_kota_table', '1');
INSERT INTO `migrations` VALUES ('2016_07_25_040720_create_kecamatan_table', '1');
INSERT INTO `migrations` VALUES ('2016_07_25_040930_create_lokasi_table', '1');
INSERT INTO `migrations` VALUES ('2016_08_02_033615_create_table_kategori', '2');
INSERT INTO `migrations` VALUES ('2016_08_02_080105_create_table_konfigurasi', '3');
INSERT INTO `migrations` VALUES ('2016_08_27_074955_create_table_bts_prakiraan', '4');
INSERT INTO `migrations` VALUES ('2016_09_02_003238_create_table_klasifikasi', '5');
INSERT INTO `migrations` VALUES ('2016_09_11_074248_create_table_bts_kapenodeb', '6');
INSERT INTO `migrations` VALUES ('2016_09_21_042239_create_table_obq', '7');
INSERT INTO `migrations` VALUES ('2016_10_24_062452_create_table_okumura', '8');
INSERT INTO `migrations` VALUES ('2016_11_24_070138_create_table_pathloss', '9');
INSERT INTO `migrations` VALUES ('2016_11_24_233415_create_table_setting', '10');
INSERT INTO `migrations` VALUES ('2016_11_26_131237_create_table_bts_populasi', '11');
INSERT INTO `migrations` VALUES ('2016_11_30_031023_create_table_seleksi', '12');
INSERT INTO `migrations` VALUES ('2016_12_01_094750_create_table_populasi2', '13');
INSERT INTO `migrations` VALUES ('2016_11_30_095729_create_table_crossover', '14');
INSERT INTO `migrations` VALUES ('2016_12_05_085635_create_table_populasi3', '15');
INSERT INTO `migrations` VALUES ('2016_11_30_095747_create_table_mutasi', '16');
INSERT INTO `migrations` VALUES ('2016_12_05_085844_create_table_populasi4', '17');
INSERT INTO `migrations` VALUES ('2016_12_08_041144_create_table_downtilt', '18');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `maxgen` int(11) NOT NULL DEFAULT '0',
  `pc` double(8,5) NOT NULL DEFAULT '0.00000',
  `pm` double(8,5) NOT NULL DEFAULT '0.00000',
  `popsize` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('1', '3', '0.25000', '0.01000', '10', null, '2016-12-07 22:57:09');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Procedure structure for `akumpathloss`
-- ----------------------------
DROP PROCEDURE IF EXISTS `akumpathloss`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `akumpathloss`(IN kdkota varchar(4))
BEGIN
	DELETE FROM bts_pathloss;
  ALTER TABLE bts_pathloss AUTO_INCREMENT = 1;

	INSERT INTO bts_pathloss (kdkota,kdkec,kdkat,puplink,pdownlink,maplu,mapld,layaku,layakd) 
	select bts_kota.kdkota,bts_kecamatan.kdkec,bts_kategori.kdkat,
	(46.3+33.9*LOG10((SELECT bts_okumura.fuplink from bts_okumura where bts_okumura.id=1))-13.82*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END))-((SELECT bts_okumura.auplink from bts_okumura where bts_okumura.id=1))+(44.9-6.55*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END)))*LOG10((select sqrt(((select bts_kapenodeb.qam64 * 1000 from bts_kapenodeb WHERE bts_kapenodeb.konfig=1)/bts_obq.obq) / 2.59) from bts_obq where bts_obq.kdkec=bts_kecamatan.kdkec) + (select bts_okumura.cm from bts_okumura where bts_okumura.id=1))) as pathlossu,
	(46.3+33.9*LOG10((SELECT bts_okumura.fdownlink from bts_okumura where bts_okumura.id=1))-13.82*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END))-((SELECT bts_okumura.adownlink from bts_okumura where bts_okumura.id=1))+(44.9-6.55*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END)))*LOG10((select sqrt(((select bts_kapenodeb.qam64 * 1000 from bts_kapenodeb WHERE bts_kapenodeb.konfig=1)/bts_obq.obq) / 2.59) from bts_obq  where bts_obq.kdkec=bts_kecamatan.kdkec)+ (select bts_okumura.cm from bts_okumura where bts_okumura.id=1))) as pathlossd,
	(select bts_okumura.maplu from bts_okumura where bts_okumura.id=1) as maplu,(select bts_okumura.mapld from bts_okumura where bts_okumura.id=1) as mapld,
	IF((46.3+33.9*LOG10((SELECT bts_okumura.fuplink from bts_okumura where bts_okumura.id=1))-13.82*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END))-((SELECT bts_okumura.auplink from bts_okumura where bts_okumura.id=1))+(44.9-6.55*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END)))*LOG10((select sqrt(((select bts_kapenodeb.qam64 * 1000 from bts_kapenodeb WHERE bts_kapenodeb.konfig=1)/bts_obq.obq) / 2.59) from bts_obq where bts_obq.kdkec=bts_kecamatan.kdkec) + (select bts_okumura.cm from bts_okumura where bts_okumura.id=1))) < (select bts_okumura.maplu from bts_okumura where bts_okumura.id=1),1,0) as ku,
	IF((46.3+33.9*LOG10((SELECT bts_okumura.fdownlink from bts_okumura where bts_okumura.id=1))-13.82*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END))-((SELECT bts_okumura.adownlink from bts_okumura where bts_okumura.id=1))+(44.9-6.55*LOG10((CASE bts_kategori.kdkat WHEN "C01" THEN (SELECT bts_okumura.hbsurban from bts_okumura where bts_okumura.id=1) WHEN "C02" THEN (SELECT bts_okumura.hbssurban from bts_okumura where bts_okumura.id=1) WHEN "C03" THEN (SELECT bts_okumura.hbsrural from bts_okumura where bts_okumura.id=1) END)))*LOG10((select sqrt(((select bts_kapenodeb.qam64 * 1000 from bts_kapenodeb WHERE bts_kapenodeb.konfig=1)/bts_obq.obq) / 2.59) from bts_obq  where bts_obq.kdkec=bts_kecamatan.kdkec)+ (select bts_okumura.cm from bts_okumura where bts_okumura.id=1))) < (select bts_okumura.mapld from bts_okumura where bts_okumura.id=1),1,0) as kd
	from (bts_kecamatan inner join bts_kota on bts_kecamatan.kdkota = bts_kota.kdkota)
	inner join bts_kategori on bts_kecamatan.kdkat = bts_kategori.kdkat
	where bts_kecamatan.kdkota=kdkota;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `downtilt`
-- ----------------------------
DROP PROCEDURE IF EXISTS `downtilt`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `downtilt`()
BEGIN
       DELETE FROM bts_downtilt;
		   ALTER TABLE bts_downtilt AUTO_INCREMENT = 1;
			 
				dt1:BEGIN
									 DECLARE maxgen int DEFAULT (SELECT maxgen FROM setting WHERE id=1 );
									 SET @gen = 1;
				           WHILE (@gen <= maxgen) DO
																	dt2:BEGIN
																					DECLARE selesai INT DEFAULT FALSE;
																					DECLARE v_kec VARCHAR(4);
																					DECLARE kec_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as kec FROM bts_populasi4 GROUP BY trim(substring(kdlokasi,1,4));
																					DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai=TRUE;
																					
																					OPEN kec_cursor;
																											state1:LOOP
																																		FETCH kec_cursor INTO v_kec;
																																		
																																		IF selesai THEN
																																								LEAVE state1;
																																		END IF;	

																																		dt3:BEGIN
																																							DECLARE selesai1 INT DEFAULT FALSE;
																																							DECLARE v_lokasi1 VARCHAR(9);
																																							DECLARE v_lat1,v_long1 DOUBLE;	
																																							DECLARE lokasi1_cursor CURSOR FOR SELECT kdlokasi,latitude,longitude FROM bts_populasi4 where populasi = @gen and trim(substring(kdlokasi,1,4)) = v_kec;
																																							DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai1=TRUE;

																																							OPEN lokasi1_cursor;
																																													 state2:LOOP
																																																				FETCH lokasi1_cursor INTO v_lokasi1,v_lat1,v_long1;
																																																				
																																																				IF selesai1 THEN
																																																											LEAVE state2;
																																																				END IF;
																																																				
																																																				dt4:BEGIN
																																																							DECLARE selesai2 INT DEFAULT FALSE;
																																																							DECLARE v_lokasi2 VARCHAR(9);
																																																							DECLARE v_lat2,v_long2 DOUBLE;	
																																																							DECLARE lokasi2_cursor CURSOR FOR SELECT kdlokasi,latitude,longitude FROM bts_populasi4 where populasi = @gen and trim(substring(kdlokasi,1,4)) = v_kec and kdlokasi <> v_lokasi1;
																																																							DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai2=TRUE;
														
																																																							OPEN lokasi2_cursor;
																																																																 state3:LOOP
																																																																							FETCH lokasi2_cursor INTO v_lokasi2,v_lat2,v_long2;
																																																																							
																																																																							IF selesai2 THEN
																																																																														LEAVE state3;
																																																																							END IF;

																																																																							SET @cek = (SELECT 1 FROM bts_downtilt WHERE populasi = @gen and ((kdlokasi1 = v_lokasi1 and kdlokasi2 = v_lokasi2) or (kdlokasi1 = v_lokasi2 and kdlokasi2 = v_lokasi1)));
																																																																							IF @cek is null THEN	
																																																																											INSERT INTO bts_downtilt (populasi,kdlokasi1,kdlokasi2,lat1,long1,lat2,long2) VALUES (@gen,v_lokasi1,v_lokasi2,v_lat1,v_long1,v_lat2,v_long2);	
																																																																											
																																																																											SET @d = (SELECT round( (z.h / (TAN(RADIANS(z.theta)))),3) as d FROM
																																																																																														(select  a.kdlokasi1,a.kdlokasi2,(CASE b.kdkat
																																																																																																										WHEN 'C01' THEN (select x.hbsurban from bts_okumura x where x.id=1)
																																																																																																										WHEN 'C02' THEN (select x.hbssurban from bts_okumura x where x.id=1)
																																																																																																										WHEN 'C03' THEN (select x.hbsrural from bts_okumura x where x.id=1)
																																																																																																					END) as h,
																																																																																																				(CASE b.kdkat
																																																																																																										WHEN 'C01' THEN (select x.thurban from bts_okumura x where x.id=1)
																																																																																																										WHEN 'C02' THEN (select x.thsurban from bts_okumura x where x.id=1)
																																																																																																										WHEN 'C03' THEN (select x.thrural from bts_okumura x where x.id=1)
																																																																																																					END) as theta		
																																																																																																					from bts_downtilt a inner join bts_kecamatan b on b.kdkec = trim(substring(a.kdlokasi1,1,4))
																																																																																														where a.populasi=@gen and a.kdlokasi1=v_lokasi1 and a.kdlokasi2=v_lokasi2) as z);

																																																																											
																																																																										UPDATE bts_downtilt
																																																																										SET evaluasi =IFNULL(ROUND((SQRT((long2 - long1) + (lat2 - lat1))) ,3),0) * 111.23
																																																																										where populasi=@gen and kdlokasi1=v_lokasi1 and kdlokasi2=v_lokasi2;								

																																																																										UPDATE bts_downtilt
																																																																										SET d1 = @d,d2 = @d,dt = round( (@d + @d) - (evaluasi * 1000),3)
																																																																										where populasi=@gen and kdlokasi1=v_lokasi1 and kdlokasi2=v_lokasi2;								
																																																																							END IF;
																																																																	END LOOP state3;
																																																								CLOSE lokasi2_cursor;
																																																				END dt4;
																																														END LOOP state2;
																																							CLOSE lokasi1_cursor;
																																			 END dt3;	
																											 END LOOP	state1;
																					CLOSE kec_cursor;	
																		END dt2;

																		SET 	@gen = @gen + 1;
										END WHILE;	
				END dt1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `generatepop`
-- ----------------------------
DROP PROCEDURE IF EXISTS `generatepop`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generatepop`()
BEGIN 
DELETE FROM bts_populasi;
ALTER TABLE bts_populasi AUTO_INCREMENT = 1;

DELETE FROM bts_seleksi;
ALTER TABLE bts_seleksi AUTO_INCREMENT = 1;

DELETE FROM bts_populasi2;
ALTER TABLE bts_populasi2 AUTO_INCREMENT = 1;

DELETE FROM bts_crossover;
ALTER TABLE bts_crossover AUTO_INCREMENT = 1;

DELETE FROM bts_populasi3;
ALTER TABLE bts_populasi3 AUTO_INCREMENT = 1;

DELETE FROM bts_mutasi;
ALTER TABLE bts_mutasi AUTO_INCREMENT = 1;

DELETE FROM bts_populasi4;
ALTER TABLE bts_populasi4 AUTO_INCREMENT = 1;

genr:BEGIN
				 DECLARE maxgen int DEFAULT (SELECT maxgen FROM setting WHERE id=1 );
				 
				 SET @gen = 1;
				 xc :WHILE (@gen <= maxgen) DO

																		IF (SELECT IFNULL(COUNT(*),0) as cekpop FROM bts_populasi4) = 0 THEN	
																					genpop:BEGIN
																							DECLARE popsize int DEFAULT (SELECT popsize FROM setting WHERE id=1);	
																							DECLARE selesai INT DEFAULT FALSE;
																							DECLARE v_kec VARCHAR(4);
																							DECLARE kec_cursor CURSOR FOR SELECT kdkec FROM bts_pathloss;
																							DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai=TRUE;

																							OPEN kec_cursor;
																									state:LOOP
																											FETCH kec_cursor INTO v_kec;
																											IF selesai THEN
																													LEAVE state; 
																											END IF;

																											SET @inc = 0;
																											INSERT INTO bts_populasi (populasi,iterasi,kdlokasi,evaluasi)
																											select x.populasi,(@inc:=@inc + 1) as iterasi,x.kdlokasi,x.evaluasi
																											from
																											(select @gen as populasi,a.kdlokasi,
																												ROUND((6371.1*((2*ASIN(SQRT(POW((SIN((RADIANS(b.latitude)-RADIANS(a.latitude))/2)),2)+COS(RADIANS(b.latitude))*COS(RADIANS(a.latitude))* (POW((SIN((RADIANS(b.longitude)-RADIANS(a.longitude))/2)),2))))))),3) as evaluasi
																												from (bts_lokasi a inner join bts_konfigurasi b on a.kdkec=b.kdkec)
																												where a.kdkec=v_kec order by rand() limit popsize) as x; 		
																									END LOOP state;
																							CLOSE kec_cursor;
																					END genpop;
																		ELSE			
																					popmutasi:BEGIN
																									INSERT INTO bts_populasi (populasi,iterasi,kdlokasi,evaluasi)
																									SELECT @gen,iterasi,kdlokasi,evaluasi FROM bts_populasi4 WHERE populasi = @gen - 1;
																					END popmutasi;
																		END IF;	
	
																		seleksi_1:BEGIN
																				DECLARE selesai INT DEFAULT FALSE;
																				DECLARE v_lokasi VARCHAR(4);
																				DECLARE lokasi_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as lokasi  FROM bts_populasi where populasi=@gen  group by trim(substring(kdlokasi,1,4)) ;
																				DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai=TRUE; 

																				OPEN lokasi_cursor;
																									state: LOOP
																															FETCH lokasi_cursor INTO v_lokasi;
																															IF selesai THEN
																																				LEAVE state;
																															END IF;

																															insert into bts_seleksi (populasi,iterasi,kdlokasi,evaluasi,sum1,mod1,sum2,r)
																															select  populasi,iterasi,kdlokasi, (1/evaluasi)  as evaluasi, round((select sum(1/evaluasi) from bts_populasi where trim(substring(kdlokasi,1,4)) = v_lokasi and populasi = @gen) ,3) as sum1,
																															round(((1 / evaluasi) / (select sum(1/evaluasi) from bts_populasi where trim(substring(kdlokasi,1,4)) = v_lokasi and populasi = @gen)),3) as mod1, 
																															(select round(sum((1 / evaluasi) / (select sum(1/evaluasi) from bts_populasi where trim(substring(kdlokasi,1,4)) = v_lokasi and populasi = @gen)),3) from bts_populasi where trim(substring(kdlokasi,1,4)) = v_lokasi and populasi=@gen) as sum2,
																															round(RAND(),4) as r
																															from bts_populasi where trim(substring(kdlokasi,1,4)) = v_lokasi and populasi =@gen;
																									END LOOP state;
																			 CLOSE lokasi_cursor;
																		END seleksi_1;


																		seleksi_2:BEGIN
																											DECLARE selesai INT DEFAULT FALSE;
																											DECLARE v_kec VARCHAR(4);
																											DECLARE kec_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as kec FROM bts_seleksi WHERE populasi = @gen GROUP BY trim(substring(kdlokasi,1,4));
																											DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai=TRUE; 
																											
																											OPEN kec_cursor;
																																	state: LOOP
																																							FETCH kec_cursor INTO v_kec;
																																							IF selesai THEN
																																											LEAVE state;
																																							END IF;	

																																							seleksi_mod2:BEGIN
																																							DECLARE selesaix INT DEFAULT FALSE;
																																							DECLARE v_pop,v_ite INT;
																																							DECLARE v_lokasi VARCHAR(9);
																																							DECLARE v_mod1 DOUBLE;
																																							DECLARE mod1_cursor CURSOR FOR SELECT populasi,iterasi,kdlokasi,mod1 FROM bts_seleksi where  trim(substring(kdlokasi,1,4)) = v_kec and populasi = @gen;
																																							DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesaix=TRUE; 
																																							
																																							 SET @mod1 = 0;

																																							OPEN mod1_cursor;
																																											 statex:LOOP
																																																FETCH mod1_cursor INTO v_pop,v_ite,v_lokasi,v_mod1;
																																																IF selesaix THEN
																																																						LEAVE statex;
																																															 END IF;

																																															UPDATE bts_seleksi 
																																															SET mod2 =  ((@mod1:=@mod1 + v_mod1) /  sum2)
																																															WHERE populasi = v_pop AND iterasi = v_ite AND kdlokasi = v_lokasi;
																																												END LOOP statex;
																																							CLOSE mod1_cursor;
																																							END seleksi_mod2;
																																END LOOP state;		
																												CLOSE kec_cursor;		
																		END seleksi_2;

																		kecamatan:BEGIN
																								DECLARE selesai INT DEFAULT FALSE;
																								DECLARE v_kec VARCHAR(4);
																								DECLARE kec_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as kec FROM bts_seleksi WHERE populasi =@gen  group by trim(substring(kdlokasi,1,4));
																								DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai=TRUE;
																								
																								OPEN kec_cursor;	
																														kecloop : LOOP
																																							FETCH kec_cursor INTO v_kec;
																																							
																																							IF selesai THEN
																																									 LEAVE kecloop;	
																																							END IF;

																																							/** start proses seleksi**/		
																																							seleksi:BEGIN
																																									DECLARE selesaix INT DEFAULT FALSE;
																																									DECLARE v_pop,v_ite INT;
																																									DECLARE v_lokasi VARCHAR(9);
																																									DECLARE v_rand DOUBLE;
																																									DECLARE rand_cursor CURSOR FOR SELECT populasi,iterasi,kdlokasi,r FROM bts_seleksi where trim(substring(kdlokasi,1,4)) = v_kec AND populasi = @gen;
																																									DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesaix=TRUE; 
																																									
																																									OPEN rand_cursor;
																																													 state:LOOP
																																																		FETCH rand_cursor INTO v_pop,v_ite,v_lokasi,v_rand;
																																																		IF selesaix THEN
																																																								LEAVE state;
																																																	 END IF;
																																																				
																																																				/**start proses nested mod2**/
																																																				nested:BEGIN
																																																													DECLARE v_itex INT;
																																																													DECLARE v_mod2 DOUBLE;
																																																													DECLARE mod2_cursor CURSOR FOR SELECT iterasi,mod2 FROM bts_seleksi where trim(substring(kdlokasi,1,4)) = v_kec AND populasi = @gen;
																																																													
																																																													OPEN mod2_cursor;
																																																													statex:LOOP
																																																																			 FETCH mod2_cursor INTO v_itex,v_mod2; 
																																																																			
																																																																			 IF  (v_mod2 > v_rand) THEN
																																																																						 UPDATE bts_seleksi 
																																																																						 SET seleksi =  v_itex
																																																																						 WHERE populasi = v_pop AND iterasi = v_ite AND kdlokasi = v_lokasi;

																																																																						 LEAVE statex;	
																																																																			 END IF;
																																																												 
																																																													END LOOP statex;
																																																													CLOSE mod2_cursor;
																																																				END nested;
																																																				/**end proses nested mod2**/

																																														END LOOP state;
																																									CLOSE rand_cursor;
																																							END seleksi;
																																							/** end proses seleksi**/		
																															END LOOP kecloop;
																								CLOSE kec_cursor;
																		END kecamatan;

																		/**start populasi2**/
																		kecamatan2:BEGIN
																								DECLARE selesai INT DEFAULT FALSE;
																								DECLARE v_kec VARCHAR(4);
																								DECLARE kec_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as kec FROM bts_seleksi WHERE  populasi = @gen group by trim(substring(kdlokasi,1,4));
																								DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai=TRUE;
																								
																								OPEN kec_cursor;	
																														kecloop : LOOP
																																							FETCH kec_cursor INTO v_kec;
																																							
																																							IF selesai THEN
																																									 LEAVE kecloop;	
																																							END IF;

																																							populasi2:BEGIN
																																													DECLARE selesai INT DEFAULT FALSE;
																																													DECLARE v_seleksi INT;
																																													DECLARE seleksi_cursor CURSOR FOR SELECT seleksi FROM bts_seleksi where trim(substring(kdlokasi,1,4)) = v_kec and populasi = @gen;
																																													DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai=TRUE;
																																													SET @ite = 0;
																																												 OPEN seleksi_cursor;
																																																			state:LOOP
																																																								 FETCH seleksi_cursor INTO v_seleksi;
																																																								 IF selesai THEN
																																																																LEAVE state;
																																																								 END IF;

																																																									INSERT INTO bts_populasi2 (populasi,iterasi,kdlokasi,evaluasi)
																																																									select populasi,(@ite:=@ite + 1) as iterasi,kdlokasi,evaluasi FROM bts_populasi WHERE trim(substring(kdlokasi,1,4)) = v_kec AND 
																																																									iterasi = v_seleksi and populasi = @gen;
																																	
																																																			END LOOP state;
																																												CLOSE seleksi_cursor;
																																							END populasi2;

																											END LOOP kecloop;
																								CLOSE kec_cursor;
																		END kecamatan2;
																		/**end populasi2**/ 

																		/**start crossover**/
																		crossover:BEGIN				
																									INSERT INTO bts_crossover (populasi,iterasi,kdlokasi,evaluasi,r)
																									SELECT populasi,iterasi,kdlokasi,evaluasi ,round(RAND(),4) as r FROM bts_populasi2 WHERE populasi = @gen;
																						
																									UPDATE bts_crossover
																									SET co = (r <= (select pc from setting where id=1))
																									WHERE populasi =@gen;

																									doco1:BEGIN
																														 DECLARE selesai INT DEFAULT FALSE;
																														 DECLARE v_kec VARCHAR(4);
																														 DECLARE kec_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as lokasi FROM bts_populasi2 WHERE populasi=@gen group by trim(substring(kdlokasi,1,4));	
																														 DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai = TRUE;

																															OPEN kec_cursor;
																																					 state: LOOP	
																																											FETCH kec_cursor INTO v_kec;		
																																											IF selesai THEN
																																																	LEAVE state;
																																											END IF;

																																											INSERT INTO bts_populasi3 (populasi,iterasi,kdlokasi,latitude,longitude,evaluasi,co)
																																											SELECT a.populasi,a.iterasi,a.kdlokasi,b.latitude,b.longitude,a.evaluasi,a.co FROM (bts_crossover a inner join bts_lokasi b on a.kdlokasi=b.kdlokasi) WHERE trim(substring(a.kdlokasi,1,4)) = v_kec AND a.populasi = @gen
																																											order by a.iterasi;
																																						END LOOP state;		
																															CLOSE kec_cursor;	
																										END doco1;

																										dokec:BEGIN
																																				 DECLARE selesaix INT DEFAULT FALSE;
																																				 DECLARE v_kec VARCHAR(4);
																																				 DECLARE kec_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as kec FROM bts_crossover WHERE populasi = @gen GROUP BY trim(substring(kdlokasi,1,4));
																																				 DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesaix = TRUE;

																																					OPEN kec_cursor;
																																											state_kec:LOOP	
																																																		FETCH kec_cursor INTO v_kec;
																																											
																																																		IF selesaix THEN
																																																							LEAVE state_kec;
																																																		END IF;

																																																		doco2:BEGIN
																																																						 DECLARE v_acak INT DEFAULT (select round((RAND() * (2 - 1)) + 1) as acak);
																																																						 DECLARE v_cekifone INT DEFAULT (SELECT count(*) FROM bts_crossover a inner join bts_lokasi b on a.kdlokasi = b.kdlokasi where  trim(substring(a.kdlokasi,1,4)) = v_kec AND a.co=1 AND a.populasi = @gen);	
																																																						 DECLARE selesai INT DEFAULT FALSE;
																																																						 DECLARE v_lat,v_long DOUBLE;
																																																						 DECLARE v_lokasi VARCHAR(9);
																																																						 DECLARE v_pop,v_ite INT;
																																																						 DECLARE cord_cursor CURSOR FOR SELECT a.populasi,a.iterasi,a.kdlokasi,b.latitude,b.longitude FROM bts_crossover a inner join bts_lokasi b on a.kdlokasi = b.kdlokasi where  trim(substring(a.kdlokasi,1,4)) = v_kec AND a.co=1 AND a.populasi = @gen;
																																																						 DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai = TRUE;
																																																						 
																																																						 OPEN cord_cursor;
																																																												 state:LOOP
																																																																		FETCH cord_cursor INTO v_pop,v_ite,v_lokasi,v_lat,v_long;
																																																																		IF selesai THEN
																																																																										LEAVE state;
																																																																		END IF;
																																																																		 
																																																																		
																																																																		IF (v_cekifone > 1 ) THEN		
																																																																										IF (v_acak % 2) = 1 THEN
																																																																																UPDATE bts_populasi3
																																																																																SET latitude = IFNULL( (select a.latitude from bts_lokasi a inner join bts_crossover b on a.kdlokasi=b.kdlokasi where trim(substring(a.kdlokasi,1,4)) = trim(substring(v_lokasi,1,4)) and b.co=1  and b.kdlokasi <>  v_lokasi AND b.populasi = v_pop order by rand() LIMIT 1),latitude)
																																																																																WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;

																																																																																SET @eval =  (select ROUND((6371.1*((2*ASIN(SQRT(POW((SIN((RADIANS(b.latitude)-RADIANS(a.latitude))/2)),2)+COS(RADIANS(b.latitude))*COS(RADIANS(a.latitude))* (POW((SIN((RADIANS(b.longitude)-RADIANS(a.longitude))/2)),2))))))),3)
																																																																																															from bts_populasi3 a inner join bts_konfigurasi b on trim(substring(a.kdlokasi,1,4)) = b.kdkec where a.kdlokasi =v_lokasi  and a.co=1 and a.populasi = v_pop and a.iterasi = v_ite); 

																																																																																UPDATE bts_populasi3
																																																																																SET evaluasi = @eval
																																																																																WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;
																																																																										ELSE
																																																																																UPDATE bts_populasi3
																																																																																SET longitude = IFNULL( (select a.longitude from bts_lokasi a inner join bts_crossover b on a.kdlokasi=b.kdlokasi where trim(substring(a.kdlokasi,1,4)) = trim(substring(v_lokasi,1,4)) and b.co=1 and b.kdlokasi <>  v_lokasi and b.populasi=v_pop order by rand() LIMIT 1) ,longitude)
																																																																																WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;


																																																																																SET @eval =  (select ROUND((6371.1*((2*ASIN(SQRT(POW((SIN((RADIANS(b.latitude)-RADIANS(a.latitude))/2)),2)+COS(RADIANS(b.latitude))*COS(RADIANS(a.latitude))* (POW((SIN((RADIANS(b.longitude)-RADIANS(a.longitude))/2)),2))))))),3)
																																																																																															from bts_populasi3 a inner join bts_konfigurasi b on trim(substring(a.kdlokasi,1,4)) = b.kdkec where a.kdlokasi =v_lokasi  and a.co=1 and a.populasi = v_pop and a.iterasi = v_ite); 

																																																																																UPDATE bts_populasi3
																																																																																SET evaluasi = @eval
																																																																																WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;
																																																																										END IF;
																																																																		ELSE
																																																																										IF (v_acak % 2) = 1 THEN
																																																																																UPDATE bts_populasi3
																																																																																SET latitude = latitude
																																																																																WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;

																																																																																SET @eval =  (select ROUND((6371.1*((2*ASIN(SQRT(POW((SIN((RADIANS(b.latitude)-RADIANS(a.latitude))/2)),2)+COS(RADIANS(b.latitude))*COS(RADIANS(a.latitude))* (POW((SIN((RADIANS(b.longitude)-RADIANS(a.longitude))/2)),2))))))),3)
																																																																																															from bts_populasi3 a inner join bts_konfigurasi b on trim(substring(a.kdlokasi,1,4)) = b.kdkec where a.kdlokasi =v_lokasi  and a.co=1 and a.populasi = v_pop and a.iterasi = v_ite); 

																																																																																UPDATE bts_populasi3
																																																																																SET evaluasi = @eval
																																																																																WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;
																																																																										ELSE
																																																																																UPDATE bts_populasi3
																																																																																SET longitude = longitude
																																																																																WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;


																																																																																SET @eval =  (select ROUND((6371.1*((2*ASIN(SQRT(POW((SIN((RADIANS(b.latitude)-RADIANS(a.latitude))/2)),2)+COS(RADIANS(b.latitude))*COS(RADIANS(a.latitude))* (POW((SIN((RADIANS(b.longitude)-RADIANS(a.longitude))/2)),2))))))),3)
																																																																																															from bts_populasi3 a inner join bts_konfigurasi b on trim(substring(a.kdlokasi,1,4)) = b.kdkec where a.kdlokasi =v_lokasi  and a.co=1 and a.populasi = v_pop and a.iterasi = v_ite); 

																																																																																UPDATE bts_populasi3
																																																																																SET evaluasi = @eval
																																																																																WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;
																																																																										END IF;
																																																																		END IF;
																																																																			
																																																													END LOOP state;
																																																						 CLOSE cord_cursor;
																																																	END doco2;

																																											END LOOP state_kec;
																																		CLOSE kec_cursor;
																										END dokec;
																		END crossover;

																		mutasi:BEGIN
																								INSERT INTO bts_mutasi (populasi,iterasi,kdlokasi,evaluasi,r1,r2)
																								SELECT populasi,iterasi,kdlokasi,evaluasi ,round(RAND(),4) as r1,round(RAND(),4) as r2 FROM bts_populasi3 WHERE populasi = @gen;

																								UPDATE bts_mutasi
																								SET mt1 = (r1 <= (select pm from setting where id=1)),
																												mt2 = (r2 <= (select pm from setting where id=1))
																								WHERE populasi = @gen;	

																							domt1:BEGIN
																														 DECLARE selesai INT DEFAULT FALSE;
																														 DECLARE v_kec VARCHAR(4);
																														 DECLARE kec_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as lokasi FROM bts_populasi3 WHERE populasi = @gen group by trim(substring(kdlokasi,1,4));	
																														 DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai = TRUE;

																															OPEN kec_cursor;
																																					 state: LOOP	
																																											FETCH kec_cursor INTO v_kec;		
																																											IF selesai THEN
																																																	LEAVE state;
																																											END IF;

																																											INSERT INTO bts_populasi4 (populasi,iterasi,kdlokasi,latitude,longitude,evaluasi,mt1,mt2)
																																											SELECT a.populasi,a.iterasi,a.kdlokasi,b.latitude,b.longitude,a.evaluasi,a.mt1,a.mt2 
																																											FROM (bts_mutasi a inner join bts_populasi3 b on a.kdlokasi=b.kdlokasi and a.populasi = b.populasi and a.iterasi = b.iterasi) WHERE trim(substring(a.kdlokasi,1,4)) = v_kec AND a.populasi = @gen
																																											order by a.iterasi;
																																						END LOOP state;		
																															CLOSE kec_cursor;	
																										END domt1;

																										dokec:BEGIN
																																				 DECLARE selesaix INT DEFAULT FALSE;
																																				 DECLARE v_kec VARCHAR(4);
																																				 DECLARE kec_cursor CURSOR FOR SELECT trim(substring(kdlokasi,1,4)) as kec FROM bts_mutasi WHERE populasi = @gen GROUP BY trim(substring(kdlokasi,1,4));
																																				 DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesaix = TRUE;

																																					OPEN kec_cursor;
																																											state_kec:LOOP	
																																																		FETCH kec_cursor INTO v_kec;
																																											
																																																		IF selesaix THEN
																																																							LEAVE state_kec;
																																																		END IF;

																																																		doco2:BEGIN
																																																						 DECLARE selesai INT DEFAULT FALSE;
																																																						 DECLARE v_lat,v_long DOUBLE;
																																																						 DECLARE v_lokasi VARCHAR(9);
																																																						 DECLARE v_pop,v_ite INT;
																																																						 DECLARE v_mt1,v_mt2 SMALLINT;	
																																																						 DECLARE cord_cursor CURSOR FOR SELECT a.populasi,a.iterasi,a.kdlokasi,b.latitude,b.longitude,a.mt1,a.mt2 FROM (bts_mutasi a inner join bts_populasi3 b on a.kdlokasi=b.kdlokasi and a.populasi = b.populasi and a.iterasi = b.iterasi) where  trim(substring(a.kdlokasi,1,4)) = v_kec AND a.populasi = @gen AND (a.mt1 = 1 or a.mt2 = 1);
																																																						 DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai = TRUE;
																																																						 
																																																						 OPEN cord_cursor;
																																																												 state:LOOP
																																																																		FETCH cord_cursor INTO v_pop,v_ite,v_lokasi,v_lat,v_long,v_mt1,v_mt2;
																																																																		IF selesai THEN
																																																																										LEAVE state;
																																																																		END IF;
																																																																		 
																																																																		IF (v_mt1 = 1) THEN
																																																																								UPDATE bts_populasi4
																																																																								SET latitude = (SELECT latitude from bts_lokasi where kdkec=v_kec and kdlokasi <> v_lokasi and populasi = @gen order by RAND() limit 1) 
																																																																								WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;

																																																																								SET @eval =  (select ROUND((6371.1*((2*ASIN(SQRT(POW((SIN((RADIANS(b.latitude)-RADIANS(a.latitude))/2)),2)+COS(RADIANS(b.latitude))*COS(RADIANS(a.latitude))* (POW((SIN((RADIANS(b.longitude)-RADIANS(a.longitude))/2)),2))))))),3)
																																																																																							from bts_populasi4 a inner join bts_konfigurasi b on trim(substring(a.kdlokasi,1,4)) = b.kdkec where a.kdlokasi =v_lokasi  and (a.mt1=1 or a.mt2=1) and a.populasi = v_pop and a.iterasi = v_ite); 

																																																																								UPDATE bts_populasi4
																																																																								SET evaluasi = @eval
																																																																								WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;	
																																																																		END IF;

																																																																		IF (v_mt2 = 1) THEN
																																																																								UPDATE bts_populasi4
																																																																								SET longitude = (SELECT longitude from bts_lokasi where kdkec=v_kec and kdlokasi <> v_lokasi AND populasi = @gen order by RAND() limit 1)  
																																																																								WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;


																																																																								SET @eval =  (select ROUND((6371.1*((2*ASIN(SQRT(POW((SIN((RADIANS(b.latitude)-RADIANS(a.latitude))/2)),2)+COS(RADIANS(b.latitude))*COS(RADIANS(a.latitude))* (POW((SIN((RADIANS(b.longitude)-RADIANS(a.longitude))/2)),2))))))),3)
																																																																																							from bts_populasi4 a inner join bts_konfigurasi b on trim(substring(a.kdlokasi,1,4)) = b.kdkec where a.kdlokasi =v_lokasi  and (a.mt1=1 or a.mt2=1) and a.populasi = v_pop and a.iterasi = v_ite); 

																																																																								UPDATE bts_populasi4
																																																																								SET evaluasi = @eval
																																																																								WHERE kdlokasi=v_lokasi and populasi = v_pop and iterasi = v_ite;
																																																																		END IF;
																																																																		
																																																																			
																																																													END LOOP state;
																																																						 CLOSE cord_cursor;
																																																	END doco2;

																																											END LOOP state_kec;
																																		CLOSE kec_cursor;
																										END dokec;

																		END mutasi; 
																		/**end mutasi**/
								SET 	@gen = @gen + 1;
			END WHILE xc;	
END genr;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `saveconfig`
-- ----------------------------
DROP PROCEDURE IF EXISTS `saveconfig`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `saveconfig`(IN ptahun INT(4),IN pkota VARCHAR(4),IN ppotensial INT(3),IN pprediksi INT(2),IN pasumsi FLOAT(3),IN ppelanggan INT(10))
BEGIN
  DELETE FROM bts_obq;
  ALTER TABLE bts_obq AUTO_INCREMENT = 1;

	DELETE FROM bts_prakiraan;
	ALTER TABLE bts_prakiraan AUTO_INCREMENT = 1;
	
	INSERT INTO bts_prakiraan (tahun,kdkota,kdkec,potensial,prediksi,asumsi,prakiraan,pelanggan)
	SELECT a.tahun,c.kdkota,a.kdkec,ppotensial,pprediksi,pasumsi,a.prakiraan,ppelanggan FROM 
	(bts_konfigurasi a INNER JOIN bts_kecamatan b ON a.kdkec=b.kdkec)
	INNER JOIN bts_kota c ON b.kdkota=c.kdkota
	WHERE a.tahun=ptahun AND c.kdkota=pkota;
END
;;
DELIMITER ;
