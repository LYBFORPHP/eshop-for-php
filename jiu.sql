/*
Navicat MySQL Data Transfer

Source Server         : qwed
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : jiu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-01-04 09:21:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jiu_adminer
-- ----------------------------
DROP TABLE IF EXISTS `jiu_adminer`;
CREATE TABLE `jiu_adminer` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ad_adminer` varchar(64) NOT NULL,
  `ad_pass` varchar(255) NOT NULL COMMENT '密码',
  `ad_sex` tinyint(4) NOT NULL DEFAULT '2' COMMENT '0:女,1:男,2:保密',
  `ad_icon` varchar(255) NOT NULL DEFAULT 'default.jpg' COMMENT '头像',
  `ad_email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `ad_tel` char(11) NOT NULL DEFAULT '' COMMENT '手机',
  `ad_level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0:超级管理员,1:管理员',
  `ad_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0:禁用,1:启用',
  `description` text NOT NULL COMMENT '备注',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ad_id`) COMMENT '主键',
  UNIQUE KEY `un_adminer` (`ad_adminer`) COMMENT '唯一登录帐号'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_adminer
-- ----------------------------
INSERT INTO `jiu_adminer` VALUES ('20', 'lyb123', '$2y$10$zSMztvlOGJQ3ftyhZIYkbuIzupgeBGkbjwG4a68CklTmHwzSrj3gK', '1', 'default.jpg', '12313@qq.com', '13707898879', '1', '1', '', '1481594500');
INSERT INTO `jiu_adminer` VALUES ('23', 'admin', '$2y$10$cl1GyTVznIcyX7/AaJKsTu7cVeIj5IfQNX5qGKnzccGv39NUCL0LG', '1', 'default.jpg', '123@163.com', '13756565566', '0', '1', '', '1483492192');

-- ----------------------------
-- Table structure for jiu_carousel
-- ----------------------------
DROP TABLE IF EXISTS `jiu_carousel`;
CREATE TABLE `jiu_carousel` (
  `cal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cal_name` varchar(64) NOT NULL COMMENT '轮播图名称',
  `cal_image` varchar(255) NOT NULL DEFAULT 'default.jpg' COMMENT '轮播图',
  `cal_address` varchar(255) NOT NULL COMMENT '轮播图跳转地址',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cal_id`) COMMENT '主键'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_carousel
-- ----------------------------
INSERT INTO `jiu_carousel` VALUES ('5', '第一', '1482151703_1476294214.jpg', 'wwwbaidu.com', '1482136577');
INSERT INTO `jiu_carousel` VALUES ('6', '第二张', '1482146158_221265748.jpg', 'www.biadu.com', '1482146158');
INSERT INTO `jiu_carousel` VALUES ('7', '第三张', '1482151523_774470422.jpg', 'www.sougou.com', '1482151523');
INSERT INTO `jiu_carousel` VALUES ('8', '第四张', '1482151549_1517252472.jpg', 'www.meizu.com', '1482151549');
INSERT INTO `jiu_carousel` VALUES ('9', '第五张', '1482151743_1329240578.jpg', 'www.huawei.com', '1482151585');
INSERT INTO `jiu_carousel` VALUES ('10', '第六张', '1482157031_1143256617.jpg', 'www.quanmin.com', '1482157031');

-- ----------------------------
-- Table structure for jiu_category
-- ----------------------------
DROP TABLE IF EXISTS `jiu_category`;
CREATE TABLE `jiu_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '父级ID',
  `name` varchar(64) NOT NULL COMMENT '分类名',
  `description` text NOT NULL COMMENT '描述',
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) COMMENT '分类主键'
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_category
-- ----------------------------
INSERT INTO `jiu_category` VALUES ('1', '0', '全部商品', '为什么', '0,');
INSERT INTO `jiu_category` VALUES ('2', '1', '一键选购', '', '0,1,');
INSERT INTO `jiu_category` VALUES ('3', '1', '葡萄酒', '', '0,1,');
INSERT INTO `jiu_category` VALUES ('4', '1', '白酒', '', '0,1,');
INSERT INTO `jiu_category` VALUES ('5', '1', '烈酒', '', '0,1,');
INSERT INTO `jiu_category` VALUES ('6', '1', '啤酒', '', '0,1,');
INSERT INTO `jiu_category` VALUES ('7', '1', '食品饮料', '', '0,1,');
INSERT INTO `jiu_category` VALUES ('8', '1', '酒具周边', '', '0,1,');
INSERT INTO `jiu_category` VALUES ('9', '1', '生态世界', '', '0,1,');
INSERT INTO `jiu_category` VALUES ('44', '2', '一键选购', '', '0,1,2,');
INSERT INTO `jiu_category` VALUES ('45', '2', '价格区间', '', '0,1,2,');
INSERT INTO `jiu_category` VALUES ('46', '3', '葡萄酒类型', '', '0,1,3,');
INSERT INTO `jiu_category` VALUES ('47', '3', '品牌', '', '0,1,3,');
INSERT INTO `jiu_category` VALUES ('48', '3', '等级', '', '0,1,3,');
INSERT INTO `jiu_category` VALUES ('49', '3', '国家', '', '0,1,3,');
INSERT INTO `jiu_category` VALUES ('50', '3', '产区', '', '0,1,3,');
INSERT INTO `jiu_category` VALUES ('51', '4', '品牌', '', '0,1,4,');
INSERT INTO `jiu_category` VALUES ('52', '4', '香型', '', '0,1,4,');
INSERT INTO `jiu_category` VALUES ('53', '4', '产地', '', '0,1,4,');
INSERT INTO `jiu_category` VALUES ('54', '4', '价位', '', '0,1,4,');
INSERT INTO `jiu_category` VALUES ('55', '5', '种类', '', '0,1,5,');
INSERT INTO `jiu_category` VALUES ('56', '5', '品牌', '', '0,1,5,');
INSERT INTO `jiu_category` VALUES ('57', '6', '国家', '', '0,1,6,');
INSERT INTO `jiu_category` VALUES ('58', '6', '种类', '', '0,1,6,');
INSERT INTO `jiu_category` VALUES ('59', '6', '品牌', '', '0,1,6,');
INSERT INTO `jiu_category` VALUES ('60', '7', '饮品', '', '0,1,7,');
INSERT INTO `jiu_category` VALUES ('61', '7', '进口食品', '', '0,1,7,');
INSERT INTO `jiu_category` VALUES ('62', '7', '品牌', '', '0,1,7,');
INSERT INTO `jiu_category` VALUES ('63', '8', '种类', '', '0,1,8,');
INSERT INTO `jiu_category` VALUES ('64', '8', '品牌', '', '0,1,8,');
INSERT INTO `jiu_category` VALUES ('65', '9', '衍生品', '', '0,1,9,');
INSERT INTO `jiu_category` VALUES ('66', '9', '体育周边', '', '0,1,9,');
INSERT INTO `jiu_category` VALUES ('67', '44', '法国', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('68', '44', '智力', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('69', '44', '波尔多', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('70', '44', '1855列级庄', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('71', '44', '奔富', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('72', '44', '干露', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('73', '44', '拉菲', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('74', '44', '芈酒', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('75', '44', '芝华士', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('76', '44', '轩尼诗', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('77', '44', '威士忌', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('78', '44', '白兰地', '', '0,1,2,44,');
INSERT INTO `jiu_category` VALUES ('86', '46', '红葡萄酒', '', '0,1,3,46,');
INSERT INTO `jiu_category` VALUES ('87', '46', '白葡萄酒', '', '0,1,3,46,');
INSERT INTO `jiu_category` VALUES ('88', '46', '起泡葡萄酒', '', '0,1,3,46,');
INSERT INTO `jiu_category` VALUES ('89', '46', '甜型葡萄酒', '', '0,1,3,46,');
INSERT INTO `jiu_category` VALUES ('90', '47', '奔富酒园', '', '0,1,3,47,');
INSERT INTO `jiu_category` VALUES ('91', '47', '卡沃利', '', '0,1,3,47,');
INSERT INTO `jiu_category` VALUES ('92', '47', '火玫瑰', '', '0,1,3,47,');
INSERT INTO `jiu_category` VALUES ('93', '47', 'V骑士', '', '0,1,3,47,');
INSERT INTO `jiu_category` VALUES ('94', '47', '泽巴赫酒庄', '', '0,1,3,47,');
INSERT INTO `jiu_category` VALUES ('95', '49', '法国', '', '0,1,3,49,');
INSERT INTO `jiu_category` VALUES ('96', '48', '澳大利亚', '', '0,1,3,48,');
INSERT INTO `jiu_category` VALUES ('97', '49', '意大利', '', '0,1,3,49,');
INSERT INTO `jiu_category` VALUES ('98', '49', '葡萄牙', '', '0,1,3,49,');
INSERT INTO `jiu_category` VALUES ('99', '49', '中国', '', '0,1,3,49,');
INSERT INTO `jiu_category` VALUES ('100', '49', '新西兰', '', '0,1,3,49,');
INSERT INTO `jiu_category` VALUES ('101', '49', '阿根廷', '', '0,1,3,49,');
INSERT INTO `jiu_category` VALUES ('102', '50', '波尔多', '', '0,1,3,50,');
INSERT INTO `jiu_category` VALUES ('103', '50', '托斯卡纳', '', '0,1,3,50,');
INSERT INTO `jiu_category` VALUES ('104', '50', '威尼托', '', '0,1,3,50,');
INSERT INTO `jiu_category` VALUES ('105', '50', '罗纳河谷', '', '0,1,3,50,');
INSERT INTO `jiu_category` VALUES ('106', '51', '茅台', '', '0,1,4,51,');
INSERT INTO `jiu_category` VALUES ('107', '51', '五粮液', '', '0,1,4,51,');
INSERT INTO `jiu_category` VALUES ('108', '51', '剑南春', '', '0,1,4,51,');
INSERT INTO `jiu_category` VALUES ('109', '51', '古井贡', '', '0,1,4,51,');
INSERT INTO `jiu_category` VALUES ('110', '51', '红星', '', '0,1,4,51,');
INSERT INTO `jiu_category` VALUES ('111', '51', '泸州老窖', '', '0,1,4,51,');
INSERT INTO `jiu_category` VALUES ('112', '51', '洋河', '', '0,1,4,51,');
INSERT INTO `jiu_category` VALUES ('113', '52', '酱香', '', '0,1,4,52,');
INSERT INTO `jiu_category` VALUES ('114', '52', '浓香', '', '0,1,4,52,');
INSERT INTO `jiu_category` VALUES ('115', '52', '清香', '', '0,1,4,52,');
INSERT INTO `jiu_category` VALUES ('116', '53', '安徽', '', '0,1,4,53,');
INSERT INTO `jiu_category` VALUES ('117', '53', '北京', '', '0,1,4,53,');
INSERT INTO `jiu_category` VALUES ('118', '53', '贵州', '', '0,1,4,53,');
INSERT INTO `jiu_category` VALUES ('119', '53', '山西', '', '0,1,4,53,');
INSERT INTO `jiu_category` VALUES ('120', '53', '四川', '', '0,1,4,53,');
INSERT INTO `jiu_category` VALUES ('121', '55', '白兰地', '', '0,1,5,55,');
INSERT INTO `jiu_category` VALUES ('122', '55', '伏特加', '', '0,1,5,55,');
INSERT INTO `jiu_category` VALUES ('123', '55', '预调酒', '', '0,1,5,55,');
INSERT INTO `jiu_category` VALUES ('124', '55', '朗姆酒', '', '0,1,5,55,');
INSERT INTO `jiu_category` VALUES ('125', '55', '龙舌兰', '', '0,1,5,55,');
INSERT INTO `jiu_category` VALUES ('126', '55', '金酒', '', '0,1,5,55,');
INSERT INTO `jiu_category` VALUES ('127', '56', '芝华士', '', '0,1,5,56,');
INSERT INTO `jiu_category` VALUES ('128', '56', '杰克丹尼', '', '0,1,5,56,');
INSERT INTO `jiu_category` VALUES ('129', '56', '百龄坛', '', '0,1,5,56,');
INSERT INTO `jiu_category` VALUES ('130', '56', '格兰菲迪', '', '0,1,5,56,');
INSERT INTO `jiu_category` VALUES ('131', '56', '麦卡伦', '', '0,1,5,56,');
INSERT INTO `jiu_category` VALUES ('132', '56', '摩根船长', '', '0,1,5,56,');
INSERT INTO `jiu_category` VALUES ('133', '56', '人头马', '', '0,1,5,56,');
INSERT INTO `jiu_category` VALUES ('134', '56', '哈瓦纳俱乐部', '', '0,1,5,56,');
INSERT INTO `jiu_category` VALUES ('135', '57', '德国', '', '0,1,6,57,');
INSERT INTO `jiu_category` VALUES ('136', '57', '比利时', '', '0,1,6,57,');
INSERT INTO `jiu_category` VALUES ('137', '57', '荷兰', '', '0,1,6,57,');
INSERT INTO `jiu_category` VALUES ('138', '57', '美国', '', '0,1,6,57,');
INSERT INTO `jiu_category` VALUES ('139', '57', '墨西哥', '', '0,1,6,57,');
INSERT INTO `jiu_category` VALUES ('140', '57', '丹麦', '', '0,1,6,57,');
INSERT INTO `jiu_category` VALUES ('141', '58', '黄啤酒', '', '0,1,6,58,');
INSERT INTO `jiu_category` VALUES ('142', '58', '白啤酒', '', '0,1,6,58,');
INSERT INTO `jiu_category` VALUES ('143', '58', '黑啤酒', '', '0,1,6,58,');
INSERT INTO `jiu_category` VALUES ('144', '59', '智美', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('145', '59', '粉象', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('146', '59', '福佳', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('147', '59', '雪夫', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('148', '59', '奥丁格', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('149', '59', '百威', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('150', '59', '喜力', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('151', '59', '林德曼', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('152', '59', '艾丁格', '', '0,1,6,59,');
INSERT INTO `jiu_category` VALUES ('153', '60', '蔬菜汁', '', '0,1,7,60,');
INSERT INTO `jiu_category` VALUES ('154', '60', '饮用水', '', '0,1,7,60,');
INSERT INTO `jiu_category` VALUES ('155', '60', '茶饮料', '', '0,1,7,60,');
INSERT INTO `jiu_category` VALUES ('156', '60', '含乳饮料', '', '0,1,7,60,');
INSERT INTO `jiu_category` VALUES ('157', '60', '纯牛奶', '', '0,1,7,60,');
INSERT INTO `jiu_category` VALUES ('158', '60', '酸奶', '', '0,1,7,60,');
INSERT INTO `jiu_category` VALUES ('159', '60', '调味奶', '', '0,1,7,60,');
INSERT INTO `jiu_category` VALUES ('160', '60', '儿童奶', '', '0,1,7,60,');
INSERT INTO `jiu_category` VALUES ('161', '61', '饼干/糕点', '', '0,1,7,61,');
INSERT INTO `jiu_category` VALUES ('162', '61', '果干/坚果', '', '0,1,7,61,');
INSERT INTO `jiu_category` VALUES ('163', '61', '休闲零食', '', '0,1,7,61,');
INSERT INTO `jiu_category` VALUES ('164', '61', '饮用水/饮料', '', '0,1,7,61,');
INSERT INTO `jiu_category` VALUES ('165', '61', '乳制品', '', '0,1,7,61,');
INSERT INTO `jiu_category` VALUES ('166', '61', '方便素食', '', '0,1,7,61,');
INSERT INTO `jiu_category` VALUES ('167', '62', '维他', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('168', '62', '芭提娅', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('169', '62', '亚利桑那', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('170', '62', '汇源', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('171', '62', '菜家', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('172', '62', 'Tipo', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('173', '62', 'TATAWA', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('174', '62', '新富町', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('175', '62', '时选', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('176', '62', '蒙牛', '', '0,1,7,62,');
INSERT INTO `jiu_category` VALUES ('177', '63', '酒杯', '', '0,1,8,63,');
INSERT INTO `jiu_category` VALUES ('178', '63', '醒酒器', '', '0,1,8,63,');
INSERT INTO `jiu_category` VALUES ('179', '63', '酒刀', '', '0,1,8,63,');
INSERT INTO `jiu_category` VALUES ('180', '63', '酒塞', '', '0,1,8,63,');
INSERT INTO `jiu_category` VALUES ('181', '63', '酒袋', '', '0,1,8,63,');
INSERT INTO `jiu_category` VALUES ('182', '63', '酒壶', '', '0,1,8,63,');
INSERT INTO `jiu_category` VALUES ('183', '63', '皮盒', '', '0,1,8,63,');
INSERT INTO `jiu_category` VALUES ('184', '64', '石岛', '', '0,1,8,64,');
INSERT INTO `jiu_category` VALUES ('185', '64', '巴拉卡', '', '0,1,8,64,');
INSERT INTO `jiu_category` VALUES ('186', '64', '拉吉奥', '', '0,1,8,64,');
INSERT INTO `jiu_category` VALUES ('187', '64', '富信', '', '0,1,8,64,');
INSERT INTO `jiu_category` VALUES ('188', '64', '新潮', '', '0,1,8,64,');
INSERT INTO `jiu_category` VALUES ('189', '65', '公仔', '', '0,1,9,65,');
INSERT INTO `jiu_category` VALUES ('190', '65', '自拍杆', '', '0,1,9,65,');
INSERT INTO `jiu_category` VALUES ('191', '66', '棒球帽', '', '0,1,9,66,');
INSERT INTO `jiu_category` VALUES ('192', '66', '定制背包', '', '0,1,9,66,');
INSERT INTO `jiu_category` VALUES ('193', '66', '马克杯', '', '0,1,9,66,');

-- ----------------------------
-- Table structure for jiu_comment
-- ----------------------------
DROP TABLE IF EXISTS `jiu_comment`;
CREATE TABLE `jiu_comment` (
  `cm_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品评价id',
  `userName` varchar(32) NOT NULL COMMENT '会员名',
  `goodsName` varchar(32) NOT NULL,
  `goodsImg` varchar(32) NOT NULL,
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `cm_grade` tinyint(4) NOT NULL DEFAULT '1' COMMENT '评分，分 1 ~ 5 个等级',
  `cm_content` text NOT NULL COMMENT '评论内容',
  `cm_addtime` varchar(64) NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_comment
-- ----------------------------
INSERT INTO `jiu_comment` VALUES ('12', 'lyb123', '轩尼诗传奇梅多克干红葡萄酒', '1482217924_1060041594.jpg', '181', '5', '    商品百分百正品,客服服务态度也很好,好评！好评！！下次还要来买..0.0test', '1482805567');
INSERT INTO `jiu_comment` VALUES ('13', 'lyb123', '轩尼诗传奇梅多克干红葡萄酒', '1482217924_1060041594.jpg', '181', '5', '    商品百分百正品,客服服务态度也很好,好评！好评！！下次还要来买..0.0', '1482806263');
INSERT INTO `jiu_comment` VALUES ('14', 'lyb123', '轩尼诗传奇梅多克干红葡萄酒', '1482217924_1060041594.jpg', '181', '5', '    商品百分百正品,客服服务态度也很好,好评！好评！！下次还要来买..0.0dg', '1482806306');
INSERT INTO `jiu_comment` VALUES ('15', 'lyb123', '轩尼诗传奇梅多克干红葡萄酒', '1482217924_1060041594.jpg', '181', '4', '    商品百分百正品,客服服务态度也很好,好评！好评！！下次还要来买..0.0', '1482806405');
INSERT INTO `jiu_comment` VALUES ('16', 'lyb123', '轩尼诗传奇梅多克干红葡萄酒', '1482217924_1060041594.jpg', '181', '5', '    商品百分百正品,客服服务态度也很好,好评！好评！！下次还要来买..0.0', '1482996229');
INSERT INTO `jiu_comment` VALUES ('17', 'lyb123', '轩尼诗传奇梅多克干红葡萄酒*2', '1482217133_1161351363.jpg', '180', '4', '    商品百分百正品,客服服务态度也很好,好评！好评！！下次还要来买..0.0', '1482996248');
INSERT INTO `jiu_comment` VALUES ('18', 'lyb123', '轩尼诗传奇梅多克干红葡萄酒*2', '1482217133_1161351363.jpg', '180', '4', '    商品百分百正品,客服服务态度也很好,好评！好评！！下次还要来买..0.0test', '1482999670');
INSERT INTO `jiu_comment` VALUES ('19', 'lyb123', '轩尼诗传说梅多克干红葡萄酒', '1482217048_765010460.jpg', '182', '4', '    商品百分百正品,客服服务态度也很好,好评！好评！！下次还要来买..0.0test', '1483408605');

-- ----------------------------
-- Table structure for jiu_detail
-- ----------------------------
DROP TABLE IF EXISTS `jiu_detail`;
CREATE TABLE `jiu_detail` (
  `detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `pid` int(10) unsigned NOT NULL COMMENT '订单父ID',
  `gid` int(10) unsigned NOT NULL COMMENT '商品id',
  `g_name` varchar(32) NOT NULL COMMENT '商品名',
  `g_price` double(6,2) unsigned NOT NULL COMMENT '商品价格',
  `g_num` int(10) unsigned NOT NULL COMMENT '商品数量',
  `g_total` double(8,2) NOT NULL,
  `g_picture` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT '商品图片',
  `is_comment` enum('0','1') DEFAULT '0' COMMENT '0:为评价,1:以评价',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_detail
-- ----------------------------
INSERT INTO `jiu_detail` VALUES ('1', '40', '1', 'asd', '123.00', '2', '246.00', 'qwe', '0');
INSERT INTO `jiu_detail` VALUES ('2', '40', '2', 'aaa', '123.00', '1', '123.00', '12', '0');
INSERT INTO `jiu_detail` VALUES ('3', '68', '104', '安第神鹰白葡萄酒', '166.00', '2', '332.00', '1482148464_2095328402.jpg', '');
INSERT INTO `jiu_detail` VALUES ('4', '70', '176', '50度古井贡年份原浆', '299.00', '1', '299.00', '1482225078_394617740.jpg', '');
INSERT INTO `jiu_detail` VALUES ('5', '71', '177', '50度古井贡酒年份原浆', '699.00', '2', '1398.00', '1482225146_1310894691.jpg', '');
INSERT INTO `jiu_detail` VALUES ('6', '71', '179', '50度古井贡酒原浆', '155.00', '3', '465.00', '1482225280_1122444248.jpg', '');
INSERT INTO `jiu_detail` VALUES ('7', '72', '96', '十字波旁红葡萄酒*2', '655.00', '1', '655.00', '1482147978_50628717.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('8', '72', '94', '弗朗酒庄之樱桃树干红葡萄酒', '766.00', '2', '1532.00', '1482147843_1572483844.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('9', '73', '96', '十字波旁红葡萄酒*2', '655.00', '1', '655.00', '1482147978_50628717.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('10', '73', '94', '弗朗酒庄之樱桃树干红葡萄酒', '766.00', '2', '1532.00', '1482147843_1572483844.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('11', '74', '175', '干露三重奏梅洛', '244.00', '10', '2440.00', '1482224940_1247078965.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('12', '75', '175', '干露三重奏梅洛', '244.00', '10', '2440.00', '1482224940_1247078965.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('13', '76', '175', '干露三重奏梅洛', '244.00', '10', '2440.00', '1482224940_1247078965.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('14', '77', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '1', '389.00', '1482217924_1060041594.jpg', '1');
INSERT INTO `jiu_detail` VALUES ('15', '0', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '3', '1167.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('16', '0', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('17', '78', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '4', '1556.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('18', '78', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('19', '79', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '4', '1556.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('20', '79', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('21', '80', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '1', '389.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('22', '84', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '1', '389.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('23', '85', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '1', '389.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('24', '86', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '1', '389.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('25', '87', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '5', '1945.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('26', '88', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('27', '89', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '3', '1167.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('28', '90', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '2', '778.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('29', '91', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '3', '1167.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('30', '91', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('31', '92', '185', '轩尼诗鬼脸佳美娜红葡萄酒*6', '766.00', '1', '766.00', '1482216880_1209305178.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('32', '92', '184', '轩尼诗 园中园卡麦妮红葡萄酒', '349.00', '1', '349.00', '1482216924_614153914.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('33', '0', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '12', '4668.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('34', '0', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '12', '4668.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('35', '93', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '12', '4668.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('36', '93', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '1', '566.00', '1482217133_1161351363.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('37', '93', '179', '50度剑南春', '155.00', '1', '155.00', '1482225280_1122444248.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('38', '94', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '12', '4668.00', '1482217924_1060041594.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('39', '94', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '1', '566.00', '1482217133_1161351363.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('40', '94', '179', '50度剑南春', '155.00', '1', '155.00', '1482225280_1122444248.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('41', '95', '181', '轩尼诗传奇梅多克干红葡萄酒', '389.00', '12', '4668.00', '1482217924_1060041594.jpg', '1');
INSERT INTO `jiu_detail` VALUES ('42', '95', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '1', '566.00', '1482217133_1161351363.jpg', '1');
INSERT INTO `jiu_detail` VALUES ('43', '95', '179', '50度剑南春', '155.00', '1', '155.00', '1482225280_1122444248.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('44', '96', '183', '轩尼诗传奇波尔多干白葡萄酒', '342.00', '2', '684.00', '1482216992_1032879843.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('45', '96', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '2', '598.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('46', '97', '185', '轩尼诗鬼脸佳美娜红葡萄酒*6', '766.00', '3', '2298.00', '1482216880_1209305178.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('47', '97', '179', '50度剑南春', '155.00', '2', '310.00', '1482225280_1122444248.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('48', '98', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '3', '1698.00', '1482217133_1161351363.jpg', '1');
INSERT INTO `jiu_detail` VALUES ('49', '99', '183', '轩尼诗传奇波尔多干白葡萄酒', '342.00', '1', '342.00', '1482216992_1032879843.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('50', '100', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '1', '566.00', '1482217133_1161351363.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('51', '100', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('52', '101', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '1', '566.00', '1482217133_1161351363.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('53', '101', '179', '50度剑南春', '155.00', '1', '155.00', '1482225280_1122444248.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('54', '102', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('55', '102', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '2', '1132.00', '1482217133_1161351363.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('56', '104', '77', '【名庄】玛歌酒庄正牌干红葡萄酒', '9999.00', '1', '9999.00', '1482139197_724024003.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('57', '104', '100', '干露火玫瑰赤霞珠红葡萄酒', '124.00', '1', '124.00', '1482148276_98435249.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('58', '105', '77', '【名庄】玛歌酒庄正牌干红葡萄酒', '9999.00', '1', '9999.00', '1482139197_724024003.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('59', '105', '100', '干露火玫瑰赤霞珠红葡萄酒', '124.00', '1', '124.00', '1482148276_98435249.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('60', '107', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '1', '566.00', '1482217133_1161351363.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('61', '108', '183', '轩尼诗传奇波尔多干白葡萄酒', '342.00', '1', '342.00', '1482216992_1032879843.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('62', '109', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '2', '598.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('63', '110', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '2', '598.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('64', '111', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('65', '111', '183', '轩尼诗传奇波尔多干白葡萄酒', '342.00', '1', '342.00', '1482216992_1032879843.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('66', '112', '183', '轩尼诗传奇波尔多干白葡萄酒', '342.00', '2', '684.00', '1482216992_1032879843.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('67', '113', '183', '轩尼诗传奇波尔多干白葡萄酒', '342.00', '2', '684.00', '1482216992_1032879843.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('68', '114', '183', '轩尼诗传奇波尔多干白葡萄酒', '342.00', '2', '684.00', '1482216992_1032879843.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('69', '115', '185', '轩尼诗鬼脸佳美娜红葡萄酒*6', '766.00', '1', '766.00', '1482216880_1209305178.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('70', '116', '179', '50度剑南春', '155.00', '1', '155.00', '1482225280_1122444248.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('71', '117', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('72', '118', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('73', '119', '97', '维洛特骑士珍藏红葡萄酒', '433.00', '1', '433.00', '1482148023_2047811891.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('74', '120', '97', '维洛特骑士珍藏红葡萄酒', '433.00', '1', '433.00', '1482148023_2047811891.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('75', '128', '77', '【名庄】玛歌酒庄正牌干红葡萄酒', '9999.00', '1', '9999.00', '1482139197_724024003.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('76', '129', '182', '轩尼诗传说梅多克干红葡萄酒', '299.00', '1', '299.00', '1482217048_765010460.jpg', '1');
INSERT INTO `jiu_detail` VALUES ('77', '129', '180', '轩尼诗传奇梅多克干红葡萄酒*2', '566.00', '1', '566.00', '1482217133_1161351363.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('78', '129', '183', '轩尼诗传奇波尔多干白葡萄酒', '342.00', '1', '342.00', '1482216992_1032879843.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('79', '130', '150', '52度古井贡年份原浆', '159.00', '3', '477.00', '1481873949_271527842.jpg', '0');
INSERT INTO `jiu_detail` VALUES ('80', '130', '116', '干露鬼脸佳美娜红葡萄酒*6', '766.00', '2', '1532.00', '1482216880_1209305178.jpg', '0');

-- ----------------------------
-- Table structure for jiu_frilink
-- ----------------------------
DROP TABLE IF EXISTS `jiu_frilink`;
CREATE TABLE `jiu_frilink` (
  `Fri_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接自增ID',
  `Fri_name` varchar(255) NOT NULL COMMENT '公司名',
  `Fri_url` varchar(255) NOT NULL COMMENT '公司链接地址',
  `Fri_linktime` varchar(64) NOT NULL COMMENT '添加友情链接的时间',
  `Fri_describe` text NOT NULL COMMENT '描述',
  PRIMARY KEY (`Fri_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_frilink
-- ----------------------------
INSERT INTO `jiu_frilink` VALUES ('13', '百度糯米', 'http://www.baidu.com', '1482388243', '百度糯米');
INSERT INTO `jiu_frilink` VALUES ('14', '乐视生态', 'http://www.leshi.com', '1482388444', '乐视');
INSERT INTO `jiu_frilink` VALUES ('15', '酷狗', 'http://www.kugou.com', '1482388466', '酷狗');
INSERT INTO `jiu_frilink` VALUES ('16', '美团', 'http://www.4399.com', '1482388522', '美团');
INSERT INTO `jiu_frilink` VALUES ('17', '4399', 'http://www.4399.com', '1482388537', '4399');
INSERT INTO `jiu_frilink` VALUES ('18', '魅族', 'http://www.meizu.com', '1482388567', '魅族');
INSERT INTO `jiu_frilink` VALUES ('19', '新浪微博', 'http://www.xina.com', '1482388596', '新浪微博');
INSERT INTO `jiu_frilink` VALUES ('20', '首都萨达大厦', 'http://', '1482823535', '');
INSERT INTO `jiu_frilink` VALUES ('21', 'sdfds', 'http://sfsdfasfda是否.scom', '1482824506', '');

-- ----------------------------
-- Table structure for jiu_goods
-- ----------------------------
DROP TABLE IF EXISTS `jiu_goods`;
CREATE TABLE `jiu_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL COMMENT '商品分类ID',
  `name` varchar(255) NOT NULL COMMENT '商品名',
  `picture` varchar(255) NOT NULL COMMENT '商品图片',
  `price` float(8,2) NOT NULL COMMENT '商品价格',
  `store` int(10) unsigned DEFAULT '0' COMMENT '商品库存量',
  `views` int(10) unsigned DEFAULT '0' COMMENT '商品浏览量',
  `buy` int(10) unsigned DEFAULT '0' COMMENT '商品购买量',
  `describe` text NOT NULL COMMENT '商品描述',
  `display` tinyint(1) DEFAULT '1' COMMENT '0:下架，1：上架',
  `status` tinyint(1) DEFAULT '1' COMMENT '0：热销，1：新品，2：猜你喜欢',
  `not_icon` varchar(255) NOT NULL DEFAULT 'xiangqing.jpg' COMMENT '详情图片',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_goods
-- ----------------------------
INSERT INTO `jiu_goods` VALUES ('61', '106', '53度茅台飞天', '1481872059_915365025.jpg', '1300.00', '100', '0', '0', '酱香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481872059');
INSERT INTO `jiu_goods` VALUES ('63', '106', '53度茅台王子', '1481872231_1000426609.jpg', '100.00', '100', '0', '0', '酱香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481872231');
INSERT INTO `jiu_goods` VALUES ('64', '107', '52度五粮液', '1481872859_2028840208.jpg', '830.00', '100', '0', '0', '浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481872859');
INSERT INTO `jiu_goods` VALUES ('65', '107', '52度五粮液1618瓷瓶', '1481873052_2086876691.jpg', '850.00', '100', '0', '0', '浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481873052');
INSERT INTO `jiu_goods` VALUES ('66', '107', '39度五粮液', '1481873214_1352953408.jpg', '600.00', '100', '0', '0', '浓香型白酒', '1', '0', 'xiangqing.jpg', '1481873214');
INSERT INTO `jiu_goods` VALUES ('67', '107', '55度五粮液', '1481873445_1712449940.jpg', '1000.00', '100', '0', '0', '浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481873445');
INSERT INTO `jiu_goods` VALUES ('68', '111', '52度泸州老窖窖龄30', '1481873692_1858579486.jpg', '200.00', '100', '0', '0', '浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481873692');
INSERT INTO `jiu_goods` VALUES ('69', '111', '52度泸州老窖窖龄60年', '1481873862_1378666819.jpg', '300.00', '100', '0', '0', '浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481873813');
INSERT INTO `jiu_goods` VALUES ('70', '111', '52度泸州老窖窖龄40年', '1481873949_271527842.jpg', '255.00', '100', '0', '0', '浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481873949');
INSERT INTO `jiu_goods` VALUES ('71', '111', '52度泸州老窖 国窖1573 ', '1481874077_2145360335.jpg', '800.00', '100', '0', '0', '浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1481874077');
INSERT INTO `jiu_goods` VALUES ('72', '110', '46度红星珍品二锅头', '1482138279_665680257.jpg', '150.00', '100', '2', '0', '清香型白酒', '1', '0', 'xiangqing.jpg', '1482138279');
INSERT INTO `jiu_goods` VALUES ('73', '110', '52度红星珍品二锅头(青花瓷)', '1482138712_390186328.jpg', '225.00', '100', '0', '0', '清香型白酒', '1', '0', 'xiangqing.jpg', '1482138712');
INSERT INTO `jiu_goods` VALUES ('74', '110', '53度红星珍品二锅头(青花瓷)', '1482138798_832878326.jpg', '999.00', '100', '1', '0', '清香型白酒', '1', '0', 'xiangqing.jpg', '1482138798');
INSERT INTO `jiu_goods` VALUES ('75', '110', '48度红星珍品二锅头(蓝花瓷)', '1482138876_1147867689.jpg', '500.00', '100', '0', '0', '清香型白酒', '1', '0', 'xiangqing.jpg', '1482138876');
INSERT INTO `jiu_goods` VALUES ('76', '110', '46度红星珍品二锅头(灰花瓷)', '1482138958_1133504279.jpg', '666.00', '100', '0', '0', '清香型白酒', '1', '0', 'xiangqing.jpg', '1482138958');
INSERT INTO `jiu_goods` VALUES ('77', '70', '【名庄】玛歌酒庄正牌干红葡萄酒', '1482139197_724024003.jpg', '9999.00', '97', '2', '3', '甘甜型红酒2000ml', '1', '1', 'xiangqing.jpg', '1482139197');
INSERT INTO `jiu_goods` VALUES ('78', '70', '【名庄】美人鱼庄园正牌干红葡萄酒', '1482139257_1779586295.jpg', '8999.00', '100', '0', '0', '甘甜型葡萄酒500ml', '1', '0', 'xiangqing.jpg', '1482139257');
INSERT INTO `jiu_goods` VALUES ('79', '109', '50度古井贡酒年份原浆（8年', '1482139369_1721417867.jpg', '1389.00', '100', '0', '0', '浓香型白酒', '1', '0', 'xiangqing.jpg', '1482139369');
INSERT INTO `jiu_goods` VALUES ('80', '109', '50度古井贡酒年份原浆（8年）', '1482139420_1716061806.jpg', '258.00', '100', '0', '0', '浓香型白酒', '1', '0', 'xiangqing.jpg', '1482139420');
INSERT INTO `jiu_goods` VALUES ('81', '109', '45度古井贡酒年份原浆（5年）', '1482139440_147866141.jpg', '135.00', '100', '0', '0', ' 浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1482139440');
INSERT INTO `jiu_goods` VALUES ('82', '109', '5度古井贡年份原浆献礼版', '1482139505_847060730.jpg', '100.00', '100', '4', '0', ' 浓香型白酒500毫升', '1', '0', 'xiangqing.jpg', '1482139505');
INSERT INTO `jiu_goods` VALUES ('83', '109', '50度古井贡酒原浆（献礼版）', '1482139537_1715579685.jpg', '150.00', '100', '2', '0', '醇香型白酒', '1', '0', 'xiangqing.jpg', '1482139537');
INSERT INTO `jiu_goods` VALUES ('84', '108', '52度剑南春', '1482147117_351401266.jpg', '399.00', '100', '0', '0', ' 浓香型白酒500ml/瓶', '1', '0', 'xiangqing.jpg', '1482147117');
INSERT INTO `jiu_goods` VALUES ('85', '108', '52度剑南春金剑南（K6）', '1482147161_656166531.jpg', '266.00', '100', '0', '0', '浓香型白酒', '1', '0', 'xiangqing.jpg', '1482147161');
INSERT INTO `jiu_goods` VALUES ('86', '108', '38度剑南春', '1482147200_1741098687.jpg', '388.00', '100', '0', '0', ' 浓香型白酒500ml', '1', '0', 'xiangqing.jpg', '1482147200');
INSERT INTO `jiu_goods` VALUES ('87', '108', '48度剑南春', '1482147274_1007322161.jpg', '466.00', '100', '0', '0', ' 浓香型白酒', '1', '0', 'xiangqing.jpg', '1482147274');
INSERT INTO `jiu_goods` VALUES ('88', '67', '曼诺庄园红葡萄酒2014', '1482147494_348046348.jpg', '255.00', '100', '1', '0', '单宁柔和 酒体顺滑', '1', '0', 'xiangqing.jpg', '1482147494');
INSERT INTO `jiu_goods` VALUES ('89', '67', '【名庄】 肯德布朗三牌 2008', '1482147531_1298425397.jpg', '1999.00', '100', '0', '0', '名庄三牌，与肯德布朗风格一致！', '1', '0', 'xiangqing.jpg', '1482147531');
INSERT INTO `jiu_goods` VALUES ('90', '67', '嘉特干红葡萄酒', '1482147605_297486955.jpg', '233.00', '100', '1', '0', '单宁成熟、柔滑，尾香清爽且有辛料味。', '1', '0', 'xiangqing.jpg', '1482147605');
INSERT INTO `jiu_goods` VALUES ('91', '70', '【名庄】蓝珊庄园干红葡萄酒', '1482147679_95806410.jpg', '1888.00', '100', '0', '0', '爱波尔多佳酿的人们喜爱的葡萄酒。', '1', '0', 'xiangqing.jpg', '1482147679');
INSERT INTO `jiu_goods` VALUES ('92', '67', '欧酩雅干红葡萄酒', '1482147746_127410866.jpg', '288.00', '100', '0', '0', '壕礼必备 大容量1.5L', '1', '0', 'xiangqing.jpg', '1482147746');
INSERT INTO `jiu_goods` VALUES ('93', '67', ' 薇谷干红葡萄酒*6', '1482147792_1796042322.jpg', '788.00', '100', '0', '0', '口感丰富，单宁柔顺，酒体中等至强劲', '1', '0', 'xiangqing.jpg', '1482147792');
INSERT INTO `jiu_goods` VALUES ('94', '67', '弗朗酒庄之樱桃树干红葡萄酒', '1482147843_1572483844.jpg', '766.00', '100', '1', '0', '弗朗酒庄有着悠久的酿酒历史，酒质丝滑', '1', '0', 'xiangqing.jpg', '1482147843');
INSERT INTO `jiu_goods` VALUES ('95', '70', '人鱼庄园红葡萄酒2012*6', '1482147927_1626624571.jpg', '2444.00', '100', '0', '0', '它来自法国波尔多产区，气候温和', '1', '0', 'xiangqing.jpg', '1482147927');
INSERT INTO `jiu_goods` VALUES ('96', '70', '十字波旁红葡萄酒*2', '1482147978_50628717.jpg', '655.00', '100', '1', '0', '香气优雅，带有拉菲酒典型的杏仁味', '1', '0', 'xiangqing.jpg', '1482147978');
INSERT INTO `jiu_goods` VALUES ('97', '70', '维洛特骑士珍藏红葡萄酒', '1482148023_2047811891.jpg', '433.00', '99', '180', '1', '弗朗酒庄有着悠久的酿酒历史', '1', '0', 'xiangqing.jpg', '1482148023');
INSERT INTO `jiu_goods` VALUES ('98', '70', 'V骑士盾牌红葡萄酒2014', '1482148119_653223235.jpg', '3245.00', '100', '4', '0', '壕礼必备，柔滑，尾香清爽', '1', '0', 'xiangqing.jpg', '1482148119');
INSERT INTO `jiu_goods` VALUES ('99', '68', '干露火玫瑰混酿红葡萄酒', '1482148225_2026909858.jpg', '188.00', '100', '0', '0', '适合中国用户口味及全场景的品质葡萄酒', '1', '0', 'xiangqing.jpg', '1482148225');
INSERT INTO `jiu_goods` VALUES ('100', '68', '干露火玫瑰赤霞珠红葡萄酒', '1482148276_98435249.jpg', '124.00', '98', '0', '2', '适合中国用户口味及全场景的品质葡萄酒', '1', '0', 'xiangqing.jpg', '1482148276');
INSERT INTO `jiu_goods` VALUES ('101', '68', '文娜玛西拉红葡萄酒', '1482148315_1940539004.jpg', '222.00', '100', '0', '0', '果香味馥郁 圆润成熟', '1', '0', 'xiangqing.jpg', '1482148315');
INSERT INTO `jiu_goods` VALUES ('102', '68', '【名庄】智利桑雅庄园红葡萄酒', '1482213954_1002992736.jpg', '1299.00', '100', '0', '0', 'Sena桑雅酒厂是由Errazuriz 伊拉苏酒厂', '1', '0', 'xiangqing.jpg', '1482148363');
INSERT INTO `jiu_goods` VALUES ('103', '68', '马拉斯公爵赤霞珠干红葡萄酒', '1482148423_1699138130.jpg', '599.00', '100', '1', '0', '入口怡人活泼 平衡感佳', '1', '0', 'xiangqing.jpg', '1482148423');
INSERT INTO `jiu_goods` VALUES ('104', '68', '安第神鹰白葡萄酒', '1482148464_2095328402.jpg', '166.00', '100', '4', '0', '入口怡人活泼 平衡感佳', '1', '0', 'xiangqing.jpg', '1482148464');
INSERT INTO `jiu_goods` VALUES ('105', '68', '太阳花长相思干白葡萄酒', '1482148499_957581186.jpg', '159.00', '100', '1', '0', '入口怡人活泼 平衡感佳 单宁平和', '1', '0', 'xiangqing.jpg', '1482148499');
INSERT INTO `jiu_goods` VALUES ('106', '68', '克洛特人赤霞珠干红葡萄酒', '1482148545_1380698441.jpg', '344.00', '100', '2', '0', '奶油般质感清爽提神', '1', '0', 'xiangqing.jpg', '1482148545');
INSERT INTO `jiu_goods` VALUES ('107', '69', '【名庄】柯斯拉柏丽庄园正牌干红葡', '1482148652_2017721246.jpg', '2545.00', '100', '0', '0', '被认为是爱士图尔酒庄的弟弟', '1', '0', 'xiangqing.jpg', '1482148652');
INSERT INTO `jiu_goods` VALUES ('108', '69', '【名庄】乐王吉尔酒庄正牌干红葡萄', '1482148701_336628920.jpg', '1899.00', '100', '0', '0', '乐王吉尔酒庄又一杰出之作，酒质柔和', '1', '0', 'xiangqing.jpg', '1482148701');
INSERT INTO `jiu_goods` VALUES ('109', '69', '【名庄】克里奈教堂酒庄干红葡萄酒', '1482214000_447922106.jpg', '2899.00', '100', '0', '0', '酒庄系波美侯名庄', '1', '0', 'xiangqing.jpg', '1482148740');
INSERT INTO `jiu_goods` VALUES ('110', '77', '威雀 调配苏格兰威士忌 ', '1482216542_1170838618.jpg', '139.00', '100', '0', '0', '浓郁回味悠长', '1', '0', 'xiangqing.jpg', '1482216542');
INSERT INTO `jiu_goods` VALUES ('111', '77', '百龄坛 特醇苏格兰威士忌', '1482216597_1193079744.jpg', '99.00', '100', '0', '0', '百龄坛的绵滑的口味来源于苏格兰的天然成', '1', '0', 'xiangqing.jpg', '1482216597');
INSERT INTO `jiu_goods` VALUES ('112', '77', '红牌陈年调配型苏格兰威士', '1482216656_1653294679.jpg', '188.00', '100', '0', '0', '风味多样，活力四射。', '1', '0', 'xiangqing.jpg', '1482216656');
INSERT INTO `jiu_goods` VALUES ('113', '77', '温莎 12年调配苏格兰威士忌', '1482216710_1175537784.jpg', '122.00', '100', '0', '0', '英国进口-精心调和 光芒闪烁', '1', '0', 'xiangqing.jpg', '1482216710');
INSERT INTO `jiu_goods` VALUES ('114', '77', '杰克丹尼威士忌 700ml', '1482216763_304924313.jpg', '566.00', '100', '0', '0', '商品因批次不同，包装可能会产生差异', '1', '0', 'xiangqing.jpg', '1482216763');
INSERT INTO `jiu_goods` VALUES ('115', '77', '尊美醇 爱尔兰威士忌 700ml', '1482216808_983675775.jpg', '459.00', '100', '0', '0', '韵味无穷 感受不同价值', '1', '0', 'xiangqing.jpg', '1482216808');
INSERT INTO `jiu_goods` VALUES ('116', '72', '干露鬼脸佳美娜红葡萄酒*6', '1482216880_1209305178.jpg', '766.00', '98', '1', '2', '丰富的红色果香，余韵悠长', '1', '0', 'xiangqing.jpg', '1482216880');
INSERT INTO `jiu_goods` VALUES ('117', '72', '干露 园中园卡麦妮红葡萄酒', '1482216924_614153914.jpg', '349.00', '100', '0', '0', '源自智利的新品', '1', '0', 'xiangqing.jpg', '1482216924');
INSERT INTO `jiu_goods` VALUES ('118', '73', '拉菲传奇波尔多干白葡萄酒', '1482216992_1032879843.jpg', '342.00', '100', '0', '0', '果味迷人，酸度清爽，收尾干净', '1', '0', 'xiangqing.jpg', '1482216992');
INSERT INTO `jiu_goods` VALUES ('119', '73', '拉菲传说梅多克干红葡萄酒', '1482217048_765010460.jpg', '299.00', '100', '0', '0', '香气优雅，带有拉菲酒典型的杏仁味', '1', '0', 'xiangqing.jpg', '1482217048');
INSERT INTO `jiu_goods` VALUES ('120', '73', '拉菲传奇梅多克干红葡萄酒', '1482217088_2083302046.jpg', '389.00', '100', '0', '0', '爱波尔多佳酿的人们喜爱的葡萄酒', '1', '0', 'xiangqing.jpg', '1482217088');
INSERT INTO `jiu_goods` VALUES ('121', '73', '拉菲传奇梅多克干红葡萄酒*2', '1482217133_1161351363.jpg', '566.00', '100', '1', '0', '爱波尔多佳酿的人们喜爱的葡萄酒', '1', '0', 'xiangqing.jpg', '1482217133');
INSERT INTO `jiu_goods` VALUES ('122', '73', '雾禾山谷白葡萄酒', '1482217171_450746815.jpg', '899.00', '100', '0', '0', '批次不同，随机发货', '1', '0', 'xiangqing.jpg', '1482217171');
INSERT INTO `jiu_goods` VALUES ('123', '73', '拉菲传说波尔多干白葡萄酒', '1482217223_75340725.jpg', '8999.00', '100', '1', '0', '梅多克列级酒庄第一级。', '1', '0', 'xiangqing.jpg', '1482217223');
INSERT INTO `jiu_goods` VALUES ('124', '72', '雾禾山谷白葡萄酒', '1482217268_1950465602.jpg', '289.00', '100', '2', '0', '爱波尔多佳酿的人们喜爱的葡萄酒', '1', '0', 'xiangqing.jpg', '1482217268');
INSERT INTO `jiu_goods` VALUES ('125', '72', '巴斯克卡本妮苏维翁红葡萄酒', '1482217394_113407553.jpg', '569.00', '100', '0', '0', '这一作品是款和谐、的调配精品', '1', '0', 'xiangqing.jpg', '1482217394');
INSERT INTO `jiu_goods` VALUES ('126', '72', '巴斯克理德红葡萄酒*6', '1482217450_748590236.jpg', '899.00', '100', '1', '0', '豪华6件装', '1', '0', 'xiangqing.jpg', '1482217450');
INSERT INTO `jiu_goods` VALUES ('127', '78', '轩尼诗 VSOP干邑白兰地', '1482217687_107077062.jpg', '599.00', '100', '0', '0', '丰满、圆润、高雅，且精致细腻的花香', '1', '0', 'xiangqing.jpg', '1482217687');
INSERT INTO `jiu_goods` VALUES ('128', '78', '轩尼诗 VSOP干邑白兰地', '1482217733_541745853.jpg', '369.00', '100', '3', '0', '每一滴均经糖枫木炭过滤', '1', '0', 'xiangqing.jpg', '1482217733');
INSERT INTO `jiu_goods` VALUES ('129', '70', '马爹利 名士干邑白兰地', '1482217758_1021321902.jpg', '459.00', '100', '5', '0', '风尚传承', '1', '0', 'xiangqing.jpg', '1482217758');
INSERT INTO `jiu_goods` VALUES ('130', '78', '马爹利XO干邑 50ml', '1482217789_308861736.jpg', '99.00', '100', '0', '0', '优质干邑佳酿而成 彰显内涵', '1', '0', 'xiangqing.jpg', '1482217789');
INSERT INTO `jiu_goods` VALUES ('131', '78', '马爹利 蓝带干邑白兰地', '1482217844_1945992137.jpg', '999.00', '100', '0', '0', '干邑世家 荣耀非凡', '1', '0', 'xiangqing.jpg', '1482217844');
INSERT INTO `jiu_goods` VALUES ('132', '78', '人头马 天醇XO干邑白兰地', '1482217884_1325477620.jpg', '1299.00', '100', '0', '0', '马爹利X.O.传统品味，集荣誉于一身', '1', '0', 'xiangqing.jpg', '1482217884');
INSERT INTO `jiu_goods` VALUES ('133', '78', '轩尼诗 XO干邑白兰地', '1482217924_1060041594.jpg', '1308.00', '100', '2', '0', '心中干邑 干邑中心', '1', '0', 'xiangqing.jpg', '1482217924');
INSERT INTO `jiu_goods` VALUES ('134', '112', '42度洋河蓝色经典海之蓝', '1482218176_1282481812.jpg', '159.00', '100', '1', '0', '酒味香醇 真佳酒也', '1', '0', 'xiangqing.jpg', '1482218176');
INSERT INTO `jiu_goods` VALUES ('135', '112', '52度洋河蓝色经典天之蓝', '1482218227_2142631958.jpg', '369.00', '100', '0', '0', '酒味香醇 真佳酒也', '1', '0', 'xiangqing.jpg', '1482218227');
INSERT INTO `jiu_goods` VALUES ('136', '112', '46度洋河蓝色经典天之蓝', '1482218265_1423475832.jpg', '329.00', '100', '0', '0', '酒味香醇 真佳酒也', '1', '0', 'xiangqing.jpg', '1482218265');
INSERT INTO `jiu_goods` VALUES ('137', '112', '42度洋河蓝色经典海之蓝', '1482218293_2142602141.jpg', '799.00', '100', '0', '0', '酒味香醇 真佳酒也', '1', '0', 'xiangqing.jpg', '1482218293');
INSERT INTO `jiu_goods` VALUES ('138', '112', '52度洋河蓝色经典梦之蓝', '1482218336_1215007022.jpg', '766.00', '100', '0', '0', '酒味香醇 真佳酒也', '1', '0', 'xiangqing.jpg', '1482218336');
INSERT INTO `jiu_goods` VALUES ('139', '112', '45度洋河蓝色经典梦之蓝', '1482218383_1574123616.jpg', '459.00', '100', '0', '0', '酒味香醇 真佳酒也', '1', '0', 'xiangqing.jpg', '1482218383');
INSERT INTO `jiu_goods` VALUES ('140', '155', '维他菊花茶', '1482220844_1812345903.jpg', '5.00', '100', '0', '0', '好喝又解渴', '1', '0', 'xiangqing.jpg', '1482220844');
INSERT INTO `jiu_goods` VALUES ('141', '155', '蜂蜜柚子茶', '1482220962_2068074604.jpg', '25.00', '100', '0', '0', '清爽具有甜美的爱情', '1', '0', 'xiangqing.jpg', '1482220962');
INSERT INTO `jiu_goods` VALUES ('142', '155', '薄荷清爽茶', '1482221048_1856038908.jpg', '56.00', '100', '0', '0', '炎热的夏季 值得拥有', '1', '0', 'xiangqing.jpg', '1482221048');
INSERT INTO `jiu_goods` VALUES ('143', '155', '维他柠檬茶', '1482221165_897917966.jpg', '105.00', '100', '0', '0', '过年整箱带回家', '1', '0', 'xiangqing.jpg', '1482221165');
INSERT INTO `jiu_goods` VALUES ('144', '155', '容情泡芙', '1482221248_205999208.jpg', '55.00', '100', '0', '0', '甜美的爱情故事重这开始', '1', '0', 'xiangqing.jpg', '1482221248');
INSERT INTO `jiu_goods` VALUES ('145', '153', '汇源 果肉多 果肉饮品', '1482221338_1148498311.jpg', '15.00', '100', '0', '0', '具有天然营养', '1', '0', 'xiangqing.jpg', '1482221338');
INSERT INTO `jiu_goods` VALUES ('146', '153', '汇源果汁 100%纯果汁', '1482221398_949577890.jpg', '155.00', '100', '0', '0', '新鲜水果加蔬菜', '1', '0', 'xiangqing.jpg', '1482221398');
INSERT INTO `jiu_goods` VALUES ('147', '153', '献果园100%桃汁', '1482221537_462980747.jpg', '50.00', '100', '0', '0', '精选蟠桃纯手工打造', '1', '0', 'xiangqing.jpg', '1482221537');
INSERT INTO `jiu_goods` VALUES ('148', '153', '柠檬渍渍水', '1482221689_1625243054.jpg', '25.00', '100', '1', '0', '天然柠檬加上纯净山泉水泡制', '1', '0', 'xiangqing.jpg', '1482221689');
INSERT INTO `jiu_goods` VALUES ('149', '153', '电灯泡果汁', '1482221745_1021426375.jpg', '55.00', '100', '0', '0', '独特的外形甜美的果汁', '1', '0', 'xiangqing.jpg', '1482221745');
INSERT INTO `jiu_goods` VALUES ('150', '109', '52度古井贡年份原浆', '1481873949_271527842.jpg', '159.00', '97', '1', '3', '2次发酵技术，果糖转化为果醋', '1', '0', 'xiangqing.jpg', '1482221868');
INSERT INTO `jiu_goods` VALUES ('151', '154', '清凉雪碧', '1482221979_1602605573.jpg', '5.00', '100', '0', '0', '雪碧透心凉 心飞扬', '1', '0', 'xiangqing.jpg', '1482221979');
INSERT INTO `jiu_goods` VALUES ('152', '154', '可口可乐', '1482222063_1990124718.jpg', '3.00', '100', '0', '0', '豪华版精装便携带', '1', '0', 'xiangqing.jpg', '1482222063');
INSERT INTO `jiu_goods` VALUES ('153', '154', '茉莉花茶', '1482222222_2100204311.jpg', '4.00', '100', '1', '0', '茉莉的清香带有淡淡的甘甜', '1', '0', 'xiangqing.jpg', '1482222222');
INSERT INTO `jiu_goods` VALUES ('154', '109', '45度古井贡年份原浆', '1482147274_1007322161.jpg', '599.00', '100', '0', '0', '冷的泡芙更好喝', '1', '0', 'xiangqing.jpg', '1482222404');
INSERT INTO `jiu_goods` VALUES ('155', '154', '香飘飘飘', '1482222555_723134689.jpg', '10.00', '100', '0', '0', '暖暖的更贴心', '1', '0', 'xiangqing.jpg', '1482222555');
INSERT INTO `jiu_goods` VALUES ('156', '177', '帕莎阿纳迪卡白酒杯', '1482223122_618521975.jpg', '150.00', '100', '0', '0', '通透柔亮 呈现美酒色泽', '1', '0', 'xiangqing.jpg', '1482223122');
INSERT INTO `jiu_goods` VALUES ('157', '177', '石岛酒杯G011', '1482223163_514505677.jpg', '255.00', '100', '0', '0', '通透柔亮 呈现美酒色泽', '1', '0', 'xiangqing.jpg', '1482223163');
INSERT INTO `jiu_goods` VALUES ('158', '177', '洛娜雅兰红酒杯460ML', '1482223207_1678985144.jpg', '145.00', '100', '0', '0', '通透柔亮 呈现美酒色泽', '1', '0', 'xiangqing.jpg', '1482223207');
INSERT INTO `jiu_goods` VALUES ('159', '177', '帕莎皇家白酒杯', '1482223256_1570159000.jpg', '560.00', '100', '0', '0', '通透柔亮 呈现美酒色泽', '1', '0', 'xiangqing.jpg', '1482223256');
INSERT INTO `jiu_goods` VALUES ('160', '177', 'Riedel起泡酒杯0480', '1482223329_1163882584.jpg', '59.00', '100', '0', '0', '呈现品酒与享受的全新乐趣', '1', '0', 'xiangqing.jpg', '1482223329');
INSERT INTO `jiu_goods` VALUES ('161', '179', '庄园海马刀开瓶器芭蕾红', '1482223429_1588570851.jpg', '999.00', '100', '0', '0', '古老的历史传承', '1', '0', 'xiangqing.jpg', '1482223429');
INSERT INTO `jiu_goods` VALUES ('162', '179', '红酒开瓶器', '1482223493_1091565575.jpg', '45.00', '100', '0', '0', '轻松加愉快', '1', '0', 'xiangqing.jpg', '1482223493');
INSERT INTO `jiu_goods` VALUES ('163', '179', '荷兰梵酷卡式老酒拔塞器', '1482223659_556591243.jpg', '15.00', '100', '0', '0', '简介而又不失用途', '1', '0', 'xiangqing.jpg', '1482223659');
INSERT INTO `jiu_goods` VALUES ('164', '179', '全套酒开专用品', '1482223734_1109708288.jpg', '55.00', '100', '0', '0', '价格实惠豪华套餐', '1', '0', 'xiangqing.jpg', '1482223734');
INSERT INTO `jiu_goods` VALUES ('165', '179', '葡萄酒开瓶器开酒器黑色', '1482223832_1741787635.jpg', '55.00', '100', '0', '0', '绅士重这开启', '1', '0', 'xiangqing.jpg', '1482223832');
INSERT INTO `jiu_goods` VALUES ('166', '180', '红酒木塞', '1482224183_1560434316.jpg', '5.00', '100', '0', '0', '保护酒的香容', '1', '0', 'xiangqing.jpg', '1482224183');
INSERT INTO `jiu_goods` VALUES ('167', '180', '莱珍斯海马塞', '1482224294_590065783.jpg', '500.00', '100', '0', '0', '陈年桦木永久散发', '1', '0', '1483405557_1321089826.jpg', '1482224294');
INSERT INTO `jiu_goods` VALUES ('168', '180', '张裕摩塞尔塞', '1482224358_1727559376.jpg', '100.00', '100', '0', '0', '超值套餐组 划算', '1', '0', 'xiangqing.jpg', '1482224358');
INSERT INTO `jiu_goods` VALUES ('169', '180', '狄俄尼索斯塞', '1482224449_136028144.jpg', '499.00', '100', '0', '0', '纪念版索斯塞', '1', '0', 'xiangqing.jpg', '1482224449');
INSERT INTO `jiu_goods` VALUES ('170', '72', '干露鬼脸佳美娜红葡萄酒', '1482224588_1894369802.jpg', '899.00', '100', '0', '0', '丰富的红色果香，余韵悠长', '1', '0', 'xiangqing.jpg', '1482224588');
INSERT INTO `jiu_goods` VALUES ('171', '72', '干露缘峰设拉子红葡萄酒', '1482224639_1677827200.jpg', '166.00', '100', '0', '0', '洋溢着巧克力、香草的气息', '1', '0', 'xiangqing.jpg', '1482224639');
INSERT INTO `jiu_goods` VALUES ('172', '72', '干露鬼脸赤霞珠红葡萄酒', '1482224675_1158062363.jpg', '566.00', '100', '5', '0', '单宁细致优雅，果味丰富', '1', '0', 'xiangqing.jpg', '1482224675');
INSERT INTO `jiu_goods` VALUES ('173', '73', '侯爵黑皮诺葡萄酒', '1482224742_635955947.jpg', '253.00', '100', '0', '0', '智利大的酒厂', '1', '0', 'xiangqing.jpg', '1482224742');
INSERT INTO `jiu_goods` VALUES ('174', '73', '干露旭日卡本妮苏维翁', '1482224818_139473074.jpg', '799.00', '100', '5', '0', '干露旭日卡本妮苏维翁', '1', '0', 'xiangqing.jpg', '1482224818');
INSERT INTO `jiu_goods` VALUES ('175', '77', '干露三重奏梅洛', '1482224940_1247078965.jpg', '244.00', '100', '5', '0', '源自智利的新品', '1', '0', 'xiangqing.jpg', '1482224940');
INSERT INTO `jiu_goods` VALUES ('176', '109', '50度古井贡年份原浆', '1482225078_394617740.jpg', '299.00', '100', '2', '0', '浓香型白酒', '1', '0', 'xiangqing.jpg', '1482225078');
INSERT INTO `jiu_goods` VALUES ('177', '109', '50度古井贡酒年份原浆', '1482225146_1310894691.jpg', '699.00', '100', '1', '0', '浓香型白酒', '1', '0', 'xiangqing.jpg', '1482225146');
INSERT INTO `jiu_goods` VALUES ('178', '108', '45度古井贡年份原浆献礼版', '1482225202_278272556.jpg', '199.00', '100', '3', '0', '浓香型白酒', '1', '0', 'xiangqing.jpg', '1482225202');
INSERT INTO `jiu_goods` VALUES ('179', '108', '50度剑南春', '1482225280_1122444248.jpg', '155.00', '84', '9', '16', '浓香型白酒', '1', '0', 'xiangqing.jpg', '1482225280');
INSERT INTO `jiu_goods` VALUES ('180', '76', '轩尼诗传奇梅多克干红葡萄酒*2', '1482217133_1161351363.jpg', '566.00', '82', '23', '18', '爱波尔多佳酿的人们喜爱的葡萄酒', '1', '0', '1483405698_810694036.jpg', '1482217133');
INSERT INTO `jiu_goods` VALUES ('181', '76', '轩尼诗传奇梅多克干红葡萄酒', '1482217924_1060041594.jpg', '389.00', '0', '23', '124', '爱波尔多佳酿的人们喜爱的葡萄酒', '0', '0', 'xiangqing.jpg', '1482217088');
INSERT INTO `jiu_goods` VALUES ('182', '76', '轩尼诗传说梅多克干红葡萄酒', '1482217048_765010460.jpg', '299.00', '66', '8', '34', '香气优雅，带有拉菲酒典型的杏仁味', '1', '0', '1483405663_714096716.jpg', '1482217048');
INSERT INTO `jiu_goods` VALUES ('183', '76', '轩尼诗传奇波尔多干白葡萄酒', '1482216992_1032879843.jpg', '342.00', '84', '3', '16', '果味迷人，酸度清爽，收尾干净', '1', '0', '1483405645_1783601536.jpg', '1482216992');
INSERT INTO `jiu_goods` VALUES ('184', '76', '轩尼诗 园中园卡麦妮红葡萄酒', '1482216924_614153914.jpg', '349.00', '99', '3', '1', '源自智利的新品', '1', '0', 'xiangqing.jpg', '1482216924');
INSERT INTO `jiu_goods` VALUES ('185', '76', '轩尼诗鬼脸佳美娜红葡萄酒*6', '1482216880_1209305178.jpg', '766.00', '89', '2', '11', '丰富的红色果香，余韵悠长', '1', '0', '1483405621_1147380746.jpg', '1482216880');
INSERT INTO `jiu_goods` VALUES ('186', '86', 'fhgf', '1483409218_1304160783.jpg', '2432.00', '124', '1', '0', 'fhgfhjghg', '1', '1', 'xiangqing.jpg', '1483409129');

-- ----------------------------
-- Table structure for jiu_information
-- ----------------------------
DROP TABLE IF EXISTS `jiu_information`;
CREATE TABLE `jiu_information` (
  `info_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `info_content` varchar(255) NOT NULL COMMENT '内容',
  `addtime` varchar(64) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_information
-- ----------------------------
INSERT INTO `jiu_information` VALUES ('3', '[公告] 关于停服的一些通知', '1482323160');
INSERT INTO `jiu_information` VALUES ('4', '[公告] 年底送人佳品 , 特此优惠仅此一天', '1482323395');
INSERT INTO `jiu_information` VALUES ('6', '[公告] 关于年底快递停运的通知', '1482323670');
INSERT INTO `jiu_information` VALUES ('7', '[公告]关于近期不法分子冒充我公司名义诈骗的声明', '1482323765');
INSERT INTO `jiu_information` VALUES ('8', '[公告]冬至 , 饺子下酒 , 很溜', '1482417078');
INSERT INTO `jiu_information` VALUES ('9', 'test1223hdh', '1483408853');

-- ----------------------------
-- Table structure for jiu_inmail
-- ----------------------------
DROP TABLE IF EXISTS `jiu_inmail`;
CREATE TABLE `jiu_inmail` (
  `Inm_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '站内信自增id',
  `Inm_sjid` int(10) NOT NULL COMMENT '收件人id',
  `Inm_fjid` int(10) NOT NULL COMMENT '发件人id',
  `Inm_sjname` varchar(64) NOT NULL,
  `Inm_fjname` varchar(64) NOT NULL,
  `Inm_title` varchar(64) NOT NULL COMMENT '站内信标题',
  `Inm_content` varchar(255) NOT NULL COMMENT '站内信内容',
  `Inm_status` varchar(10) NOT NULL DEFAULT '0' COMMENT '对于收件人 0:未读 1:已读  对于发件人0:已发送 1:对方已读',
  `Inm_sendtime` varchar(64) NOT NULL COMMENT '站内信发送时间',
  PRIMARY KEY (`Inm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_inmail
-- ----------------------------
INSERT INTO `jiu_inmail` VALUES ('39', '4', '20', 'lybqw', 'lyb123', 'asd', 'qwe', '0', '2016-12-15 15:56:15');
INSERT INTO `jiu_inmail` VALUES ('42', '4', '20', 'lybqw', 'lyb123', 'qgjkfdfdgdfg', 'sfdgdfgd', '0', '2016-12-15 18:06:23');
INSERT INTO `jiu_inmail` VALUES ('44', '20', '20', 'lyb123', 'lyb123', 'sfgf', 'gdhd', '0', '2017-01-03 09:59:03');

-- ----------------------------
-- Table structure for jiu_location
-- ----------------------------
DROP TABLE IF EXISTS `jiu_location`;
CREATE TABLE `jiu_location` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收货地址id',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `l_name` varchar(10) NOT NULL COMMENT '收件人',
  `l_tel` varchar(11) NOT NULL COMMENT '联系手机',
  `l_address` text NOT NULL COMMENT '收货地址',
  `l_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态，0：普通地址 1：默认地址',
  `l_addtime` varchar(64) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_location
-- ----------------------------
INSERT INTO `jiu_location` VALUES ('1', '1', 'aaa', '13145454542', '广东省广州市白云区111', '0', '1482287306');
INSERT INTO `jiu_location` VALUES ('2', '1', 'bbb', '13145454542', '广东省广州市越秀区222', '1', '1482288418');
INSERT INTO `jiu_location` VALUES ('3', '1', 'bbb', '13145454542', '山西省太原市迎泽区11', '0', '1482288506');
INSERT INTO `jiu_location` VALUES ('4', '1', 'qq', '13145454542', '广东省广州市白云区123123', '1', '1482456919');
INSERT INTO `jiu_location` VALUES ('5', '1', 'qq', '13145454542', '广东省广州市白云区123123', '1', '1482456995');
INSERT INTO `jiu_location` VALUES ('6', '1', 'qq', '13145454542', '广东省广州市白云区123123', '1', '1482457251');
INSERT INTO `jiu_location` VALUES ('7', '1', 'qq', '13145454542', '广东省广州市白云区123123', '1', '1482457254');
INSERT INTO `jiu_location` VALUES ('14', '3', 'asd', '13145454542', '北京市市辖区东城区111', '0', '1482735225');
INSERT INTO `jiu_location` VALUES ('21', '3', 'sdaf', '13145454542', '北京市市辖区东城区1231', '0', '1482735850');
INSERT INTO `jiu_location` VALUES ('22', '2', 'qwe', '13145454542', '江苏省南京市秦淮区ad', '0', '1482837280');
INSERT INTO `jiu_location` VALUES ('23', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '0', '1482837316');
INSERT INTO `jiu_location` VALUES ('24', '9', 'dasda', '15231231111', '北京市市辖区东城区ffasaf', '0', '1483407885');
INSERT INTO `jiu_location` VALUES ('25', '2', 'tjyt', '13707835567', '辽宁省鞍山市千山区ehjfhgg', '0', '1483408408');

-- ----------------------------
-- Table structure for jiu_order
-- ----------------------------
DROP TABLE IF EXISTS `jiu_order`;
CREATE TABLE `jiu_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_num` varchar(255) NOT NULL COMMENT '订单号',
  `order_uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `order_linkman` varchar(32) NOT NULL COMMENT '联系人姓名',
  `order_tel` varchar(11) NOT NULL COMMENT '联系人手机号码',
  `order_address` varchar(255) NOT NULL COMMENT '联系人地址',
  `order_total` double(8,2) unsigned NOT NULL COMMENT '总金额',
  `order_addtime` int(10) unsigned NOT NULL,
  `order_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0:新订单; 1:已发货; 2:已收货;3:无效订单;4:已付款',
  PRIMARY KEY (`order_id`) COMMENT '主键'
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_order
-- ----------------------------
INSERT INTO `jiu_order` VALUES ('72', '14826562440002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '2187.00', '1482656244', '0');
INSERT INTO `jiu_order` VALUES ('73', '14826568280002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '2187.00', '1482656828', '0');
INSERT INTO `jiu_order` VALUES ('74', '14827193930002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '2440.00', '1482719393', '0');
INSERT INTO `jiu_order` VALUES ('75', '14827194290002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '2440.00', '1482719429', '0');
INSERT INTO `jiu_order` VALUES ('76', '14827194560002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '2440.00', '1482719456', '3');
INSERT INTO `jiu_order` VALUES ('77', '14828052030002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '389.00', '1482805203', '2');
INSERT INTO `jiu_order` VALUES ('78', '14828378650002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '1855.00', '1482837865', '0');
INSERT INTO `jiu_order` VALUES ('79', '14828380830002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '1855.00', '1482838083', '0');
INSERT INTO `jiu_order` VALUES ('80', '14828381530002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '389.00', '1482838153', '0');
INSERT INTO `jiu_order` VALUES ('81', '14828384090002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '389.00', '1482838409', '0');
INSERT INTO `jiu_order` VALUES ('82', '14828386560002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '389.00', '1482838656', '0');
INSERT INTO `jiu_order` VALUES ('83', '14828389550002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '389.00', '1482838955', '0');
INSERT INTO `jiu_order` VALUES ('84', '14828417250002', '2', 'qwe', '13145454542', '江苏省南京市秦淮区ad', '389.00', '1482841725', '0');
INSERT INTO `jiu_order` VALUES ('85', '14828418250002', '2', 'qwe', '13145454542', '江苏省南京市秦淮区ad', '389.00', '1482841825', '0');
INSERT INTO `jiu_order` VALUES ('86', '14828419110002', '2', 'qwe', '13145454542', '江苏省南京市秦淮区ad', '389.00', '1482841911', '0');
INSERT INTO `jiu_order` VALUES ('87', '14828424530002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '1945.00', '1482842453', '0');
INSERT INTO `jiu_order` VALUES ('88', '14828485860002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '299.00', '1482848586', '4');
INSERT INTO `jiu_order` VALUES ('89', '14828487280002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '1167.00', '1482848728', '0');
INSERT INTO `jiu_order` VALUES ('90', '14828490510002', '2', 'qwe', '13145454542', '江苏省南京市秦淮区ad', '778.00', '1482849051', '3');
INSERT INTO `jiu_order` VALUES ('91', '14829254730002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '1466.00', '1482925473', '1');
INSERT INTO `jiu_order` VALUES ('92', '14829288950002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '1115.00', '1482928895', '0');
INSERT INTO `jiu_order` VALUES ('93', '14829810360002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '5389.00', '1482981036', '0');
INSERT INTO `jiu_order` VALUES ('94', '14829811910002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '5389.00', '1482981191', '0');
INSERT INTO `jiu_order` VALUES ('95', '14829812360002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '5389.00', '1482981236', '2');
INSERT INTO `jiu_order` VALUES ('96', '14829813610002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '1282.00', '1482981361', '3');
INSERT INTO `jiu_order` VALUES ('97', '14829913720002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '2608.00', '1482991372', '2');
INSERT INTO `jiu_order` VALUES ('98', '14829991360002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '1698.00', '1482999136', '2');
INSERT INTO `jiu_order` VALUES ('99', '14830096450002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '342.00', '1483009645', '4');
INSERT INTO `jiu_order` VALUES ('100', '14830119430002', '2', 'qwe', '13145454542', '江苏省南京市秦淮区ad', '865.00', '1483011943', '4');
INSERT INTO `jiu_order` VALUES ('101', '14830123190002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '721.00', '1483012319', '4');
INSERT INTO `jiu_order` VALUES ('102', '14830134170002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '1431.00', '1483013417', '4');
INSERT INTO `jiu_order` VALUES ('103', '14830136070002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '1431.00', '1483013607', '4');
INSERT INTO `jiu_order` VALUES ('104', '14830143890002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '10123.00', '1483014389', '4');
INSERT INTO `jiu_order` VALUES ('105', '14830144040002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '10123.00', '1483014404', '4');
INSERT INTO `jiu_order` VALUES ('106', '14830144460002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '10123.00', '1483014446', '4');
INSERT INTO `jiu_order` VALUES ('107', '14830885340002', '2', 'qwe', '13145454542', '江苏省南京市秦淮区ad', '566.00', '1483088534', '4');
INSERT INTO `jiu_order` VALUES ('108', '14830886880002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '342.00', '1483088688', '4');
INSERT INTO `jiu_order` VALUES ('109', '14833470080002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '598.00', '1483347008', '0');
INSERT INTO `jiu_order` VALUES ('110', '14833471270002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '598.00', '1483347127', '4');
INSERT INTO `jiu_order` VALUES ('111', '14833473280002', '2', 'tt', '13145454542', '北京市市辖区东城区112', '641.00', '1483347328', '4');
INSERT INTO `jiu_order` VALUES ('112', '14833474090002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '684.00', '1483347409', '0');
INSERT INTO `jiu_order` VALUES ('113', '14833474320002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '684.00', '1483347432', '0');
INSERT INTO `jiu_order` VALUES ('114', '14833482070002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '684.00', '1483348207', '4');
INSERT INTO `jiu_order` VALUES ('115', '14833483400002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '766.00', '1483348340', '4');
INSERT INTO `jiu_order` VALUES ('116', '14833492290002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '155.00', '1483349229', '4');
INSERT INTO `jiu_order` VALUES ('117', '14833494180002', '2', 'qwe', '13145454542', '江苏省南京市秦淮区ad', '299.00', '1483349418', '0');
INSERT INTO `jiu_order` VALUES ('118', '14833495290002', '2', 'rr', '13145454542', '山西省太原市杏花岭区sdfs', '299.00', '1483349529', '4');
INSERT INTO `jiu_order` VALUES ('119', '14833533790002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483353379', '0');
INSERT INTO `jiu_order` VALUES ('120', '14833534630002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483353463', '4');
INSERT INTO `jiu_order` VALUES ('121', '14833538380002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483353838', '4');
INSERT INTO `jiu_order` VALUES ('122', '14833539350002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483353935', '0');
INSERT INTO `jiu_order` VALUES ('123', '14833542260002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483354226', '0');
INSERT INTO `jiu_order` VALUES ('124', '14833543530002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483354353', '0');
INSERT INTO `jiu_order` VALUES ('125', '14833544390002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483354439', '0');
INSERT INTO `jiu_order` VALUES ('126', '14833545720002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483354572', '0');
INSERT INTO `jiu_order` VALUES ('127', '14833550270002', '2', 'cc', '13145454542', '北京市市辖区东城区123', '433.00', '1483355027', '0');
INSERT INTO `jiu_order` VALUES ('128', '14834078970009', '9', 'dasda', '15231231111', '北京市市辖区东城区ffasaf', '9999.00', '1483407897', '4');
INSERT INTO `jiu_order` VALUES ('129', '14834084140002', '2', 'tjyt', '13707835567', '辽宁省鞍山市千山区ehjfhgg', '865.00', '1483408414', '2');
INSERT INTO `jiu_order` VALUES ('130', '14834092980002', '2', 'tjyt', '13707835567', '辽宁省鞍山市千山区ehjfhgg', '2009.00', '1483409298', '4');

-- ----------------------------
-- Table structure for jiu_suggest
-- ----------------------------
DROP TABLE IF EXISTS `jiu_suggest`;
CREATE TABLE `jiu_suggest` (
  `sug_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '反馈自增id',
  `userId` int(10) NOT NULL COMMENT '反馈人ID',
  `userName` varchar(64) NOT NULL COMMENT '反馈人',
  `sug_content` varchar(255) NOT NULL COMMENT '反馈内容',
  `sug_time` varchar(64) NOT NULL COMMENT '反馈时间',
  PRIMARY KEY (`sug_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_suggest
-- ----------------------------
INSERT INTO `jiu_suggest` VALUES ('2', '24', 'admin1111', '问题多多,赶紧查查', '1482396960');
INSERT INTO `jiu_suggest` VALUES ('3', '24', 'admin1111', '测试测试', '1482396991');
INSERT INTO `jiu_suggest` VALUES ('4', '2', 'lyb123', 'test', '1482805697');
INSERT INTO `jiu_suggest` VALUES ('5', '2', 'lyb123', 'sghsgfgf', '1483408814');

-- ----------------------------
-- Table structure for jiu_user
-- ----------------------------
DROP TABLE IF EXISTS `jiu_user`;
CREATE TABLE `jiu_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) NOT NULL,
  `real_name` varchar(64) NOT NULL COMMENT '真实名字',
  `user_pass` varchar(255) NOT NULL COMMENT '密码',
  `user_sex` tinyint(4) NOT NULL DEFAULT '2' COMMENT '0:女,1:男,2:妖',
  `user_icon` varchar(255) NOT NULL DEFAULT 'default.jpg' COMMENT '头像',
  `user_email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `user_tel` char(11) NOT NULL DEFAULT '' COMMENT '手机',
  `user_integral` int(32) NOT NULL DEFAULT '10' COMMENT '积分',
  `user_level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0:黄金会员,1:普通会员',
  `user_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0:禁用,1:启用',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`) COMMENT '主键',
  UNIQUE KEY `un_user` (`user_name`) COMMENT '唯一登录帐号'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiu_user
-- ----------------------------
INSERT INTO `jiu_user` VALUES ('2', 'lyb123', '', '$2y$10$C4BCaVnZgZ1lFPXjVQi2ie898DIkJTTvjG6Q/3YiRS/AyuHSgBT4S', '2', '1482807415_1943538947.png', '', '', '9567', '1', '1', '1482324896');
INSERT INTO `jiu_user` VALUES ('3', 'aas', '', '$2y$10$sCmHOc8zGqW0JYhusCSLiOW8m6QRKiNGdm4FZ5Lphb1FfXilxfxoe', '1', 'default.jpg', '132@qq.com', '13707658876', '0', '1', '1', '1482723984');
INSERT INTO `jiu_user` VALUES ('5', '1234', '', '$2y$10$ODYwWybcc8cI.uZqX09ge.229.smNngBWAJLBdRvi8GhQxsbP83qe', '2', 'default.jpg', '', '15521315355', '10', '1', '1', '1482983612');
INSERT INTO `jiu_user` VALUES ('6', 'test1', '', '$2y$10$Rl/LTQW/l0OZRPpqPtSAjekZFTxaWVFBl2.qb3dwlzV.WZJ5Ab0Ue', '2', 'default.jpg', '', '13707836673', '10', '1', '1', '1483001912');
INSERT INTO `jiu_user` VALUES ('7', 'test2', '', '$2y$10$iqcFWqiezpA7wa55GJ0jwuolAqzOmzzpLgn1g3l0In.USuCkPhI0O', '2', 'default.jpg', '', '13707836673', '10', '1', '1', '1483021504');
INSERT INTO `jiu_user` VALUES ('8', 'test5', '', '$2y$10$5EPAuY6GbaD86PQ1rvrrc.w5241KcqGZpuasiCpgp4NjXv0B3DWmS', '2', 'default.jpg', '', '13707836673', '10', '1', '1', '1483089249');
INSERT INTO `jiu_user` VALUES ('9', 'admin1', '', '$2y$10$e.C.HKYEQOv3RHTfoJz1oOD6wF2CUokbdn23f8btwBsWE9rsuL28W', '2', 'default.jpg', '', '15521315355', '1010', '1', '1', '1483405737');
INSERT INTO `jiu_user` VALUES ('10', 'fhfhj', '', '$2y$10$Ev/8oE2lyyB5B/Tjovajoe7FC8GCcU8ZjKuZlXgNp.WEwr3zi7Mfy', '2', 'default.jpg', '', '15521315355', '10', '1', '1', '1483408240');
