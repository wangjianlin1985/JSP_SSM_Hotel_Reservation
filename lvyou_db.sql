/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : lvyou_db

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2019-04-29 01:09:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL default '',
  `password` varchar(32) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a');

-- ----------------------------
-- Table structure for `t_area`
-- ----------------------------
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE `t_area` (
  `areaId` int(11) NOT NULL auto_increment COMMENT '地区id',
  `areanName` varchar(20) NOT NULL COMMENT '地区名称',
  PRIMARY KEY  (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_area
-- ----------------------------
INSERT INTO `t_area` VALUES ('1', '热门景点');
INSERT INTO `t_area` VALUES ('2', '酒店');
INSERT INTO `t_area` VALUES ('3', '热销产品');

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `commentId` int(11) NOT NULL auto_increment COMMENT '评论id',
  `minsuObj` int(11) NOT NULL COMMENT '被评旅游',
  `content` varchar(1000) NOT NULL COMMENT '评论内容',
  `userObj` varchar(30) NOT NULL COMMENT '评论用户',
  `commentTime` varchar(20) default NULL COMMENT '评论时间',
  PRIMARY KEY  (`commentId`),
  KEY `minsuObj` (`minsuObj`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`minsuObj`) REFERENCES `t_minsu` (`minsuId`),
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '1', '非常好玩的地方哦！', 'user1', '2019-04-24 14:15:13');
INSERT INTO `t_comment` VALUES ('2', '1', '这里的环境优美！很好！', 'user1', '2019-04-24 14:15:13');
INSERT INTO `t_comment` VALUES ('3', '2', '看起来非常干净哦！', 'user1', '2019-04-29 00:54:28');

-- ----------------------------
-- Table structure for `t_minsu`
-- ----------------------------
DROP TABLE IF EXISTS `t_minsu`;
CREATE TABLE `t_minsu` (
  `minsuId` int(11) NOT NULL auto_increment COMMENT '旅游id',
  `areaObj` int(11) NOT NULL COMMENT '所在地区',
  `minsuName` varchar(50) NOT NULL COMMENT '旅游名称',
  `minsuPhoto` varchar(60) NOT NULL COMMENT '旅游照片',
  `price` float NOT NULL COMMENT '每日价格',
  `minsuDesc` varchar(20000) NOT NULL COMMENT '旅游介绍',
  `minsuMemo` varchar(500) default NULL COMMENT '备注信息',
  `ownerObj` varchar(30) NOT NULL COMMENT '旅游主人',
  `addTime` varchar(20) default NULL COMMENT '发布时间',
  PRIMARY KEY  (`minsuId`),
  KEY `areaObj` (`areaObj`),
  KEY `ownerObj` (`ownerObj`),
  CONSTRAINT `t_minsu_ibfk_1` FOREIGN KEY (`areaObj`) REFERENCES `t_area` (`areaId`),
  CONSTRAINT `t_minsu_ibfk_2` FOREIGN KEY (`ownerObj`) REFERENCES `t_owner` (`ownerUserName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_minsu
-- ----------------------------
INSERT INTO `t_minsu` VALUES ('1', '1', '茂名森林公园', 'upload/23e20f0d-4c6b-4b39-b16a-71d942af776f.jpg', '248', '<ul class=\"notice-content list-paddingleft-2\" style=\"margin: 30px 0px 0px; padding: 0px;\"><li><p><strong>优待政策</strong></p><p>免票政策：身高1.2米(不含)以下儿童免费；65周岁(含)以上老人持老年证免费；现役军人/残疾人凭有效证件免费。<br/>优惠政策：身高在1.2米(含)-1.5米(不含)的儿童，年龄在60岁(含)-64岁(含)之间老人持老年证购景区优惠票。<br/>以上信息仅供参考，具体信息请以景区当天披露为准。</p></li><li><p><strong>温馨提示</strong></p><p>特别提示：景区无免费停车位，收费标准请参照景区。<br/>该景区可能有存在高风险的游玩项目，携程建议您购买相关保险。出行前，建议您仔细阅读旅游安全的相关内容。抵达景区后，也请您不要忽略景区内的游玩提示或安全提示类信息。<br/>为使您的旅程圆满完成，并普及旅游安全知识及旅游文明公约，特制定<a target=\"_blank\" href=\"http://pages.ctrip.com/tour/pdf3/20130930.pdf\" style=\"color: rgb(0, 102, 204); text-decoration-line: none; outline: 0px;\">《携程旅游告游客注意事项》</a>，出行前，提醒您仔细阅读相关内容。同时，携程从出行常识、旅游活动和特殊人群三方面为您提供旅游安全指南。<a target=\"_blank\" href=\"http://pages.ctrip.com/commerce/promote/201004/package/dj/page_5.htm\" style=\"color: rgb(0, 102, 204); text-decoration-line: none; outline: 0px;\">查看详情</a></p></li><li><p><strong>安全指南</strong></p><p>旅游安全是旅游的生命线，为保障游客“住得安心、吃得放心、玩的舒心”，携程从出行常识、旅游活动和特殊人群三方面为您提供旅游安全指南。出行前，提醒您仔细阅读相关内容，重视旅游安全，使您的出游真正成为“快乐之游、难忘之游、收获之游”。<a href=\"https://pages.ctrip.com/commerce/promote/201004/package/dj/page_5.htm\" target=\"_blank\" style=\"color: rgb(0, 102, 204); text-decoration-line: none; outline: 0px;\">查看详情</a></p></li><li style=\"\"><p><br/></p></li></ul><p>景点简介</p><ul class=\"introduce-feature list-paddingleft-2\" style=\"list-style-type: none;\"><li><p><span class=\"icon\" style=\"display: inline-block; padding: 2px 8px; margin-right: 20px; color: rgb(255, 255, 255); text-align: center; vertical-align: middle; background-color: rgb(255, 153, 19); border-radius: 3px;\">特色1</span>被评为“茂名休闲十大好去处”之一</p></li><li><p><span class=\"icon\" style=\"display: inline-block; padding: 2px 8px; margin-right: 20px; color: rgb(255, 255, 255); text-align: center; vertical-align: middle; background-color: rgb(255, 153, 19); border-radius: 3px;\">特色2</span>以森林为主，兼种新、奇、特南亚热带植被</p></li></ul><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">﻿茂名森林公园不仅是旅游、观光、休闲、娱乐的好去处，更是展示生物多样性和奇妙性，传播百科知识，开展科研科普和生态环保教育的理想场所，先后被命名为“全国林业科普基地”、“全国野生动物保护科普教育基地”、“广东省科普教育基地”、“广东省青少年科技教育基地”、“广东省森林生态旅游示范基地”，并被评为“茂名休闲十大好去处”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><img src=\"https://dimg02.c-ctrip.com/images/100d08000000303281404_C_422_236.jpg\" alt=\"森林公园正门\"/>&nbsp;<img src=\"https://dimg06.c-ctrip.com/images/1003080000003033x0275_C_422_236.jpg\" alt=\"勇敢者之路\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">茂名森林公园位于茂名市茂南区公馆镇，地势平坦，土壤以沙壤土为主，部分为砖红壤土、微酸性、土质瘦、有机质含量低。该森林公园中主峰区平和岭，海拔56.4米，面积147亩，是公园*高点，登高远望，可纵览市区全景。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">属热带季风性海洋气候，高温多雨，光照充足，年日照平均时数1916h，年平均气温23.2摄氏度。全年无霜，降雨量1500~1800mm，4~9月为雨季，降雨量占全年84%，夏秋之间有台风雨。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><img src=\"https://dimg02.c-ctrip.com/images/1002080000003031t8CF6_C_422_236.jpg\" alt=\"趣湖\"/>&nbsp;<img src=\"https://dimg08.c-ctrip.com/images/100m080000003032zAE2F_C_422_236.jpg\" alt=\"白虎3\"/></p><p><br/></p>', '好地方', 'sz001', '2019-04-23 18:57:27');
INSERT INTO `t_minsu` VALUES ('2', '2', '茂名南越印象岭南文化主题酒店火车站店 ', 'upload/606d53e4-effc-4610-9e3e-e286575ad8f0.jpg', '228', '<p>茂名南越印象岭南文化主题酒店火车站店坐落于茂名市区繁华的光华南路商圈摩根时代，周围餐饮、娱乐等生活配套齐全，出行便利。<br/>　　这是一家以南越国及岭南地区历史文化特色为基础打造的精品文化主题酒店，首层为南越印象酒店大堂、樊登书店，2层设有南越人家中餐厅、蓝色部落生活馆、3至4层为岭南文化主题客房。<br/>　　酒店将传统的岭南建筑技艺、文化特色、生活器皿等以艺术的构造和陈列方式，营造出穿越历史长河的时空情境，不仅还原了独具特色的本土文化，更传承和发扬了岭南文化精髓，引领了茂名酒店业向文化发展的新潮流。<br/>　　2018年5月，经中国饭店协会评定，南越印象酒店荣获五叶级“文化主题饭店”称号的酒店。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/></p><h2 class=\"detail_title \" style=\"margin: 0px 0px 10px; padding: 0px; font-family: &quot;microsoft yahei&quot;, simsun; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: 22px; color: rgb(0, 102, 204); white-space: normal; background-color: rgb(255, 255, 255);\">酒店设施</h2><table width=\"860\"><tbody><tr class=\"firstRow\"><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">网络</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><em class=\"icons-facility32\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -150px; float: left; margin-left: -30px;\"></em>公共区WIFI<span class=\"green\" style=\"color: rgb(16, 162, 0); font-weight: bold;\">免费</span></p></li></ul></td></tr><tr><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">交通设施</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><br/></p></li><li><p><em class=\"icons-facility03\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -60px 0px; float: left; margin-left: -30px;\"></em><span class=\"green\" style=\"color: rgb(16, 162, 0); font-weight: bold;\">免费</span>停车场<span class=\"info\" style=\"margin-left: 10px; color: rgb(153, 153, 153);\">酒店内有公共停车场，无需预订。<span class=\"green\" style=\"color: rgb(16, 162, 0); font-weight: bold;\">免费</span>！</span></p></li><li><p><br/></p></li></ul></td></tr><tr><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">交通服务</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><em class=\"icons-facility28\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -90px -120px; float: left; margin-left: -30px;\"></em>接机服务</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>叫车服务</p></li></ul></td></tr><tr><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">前台服务</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><em class=\"icons-facility10\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -90px -30px; float: left; margin-left: -30px;\"></em>行李寄存</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>前台中文</p></li><li><p><em class=\"icons-facility17\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -120px -60px; float: left; margin-left: -30px;\"></em>24小时前台</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>部分时段大堂经理</p></li><li><p><em class=\"icons-facility06\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -150px 0px; float: left; margin-left: -30px;\"></em><span class=\"green\" style=\"color: rgb(16, 162, 0); font-weight: bold;\">免费</span>旅游交通图</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>叫醒服务</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>邮政服务</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>信用卡结算</p></li></ul></td></tr><tr><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">餐饮服务</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><em class=\"icons-facility30\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -150px -120px; float: left; margin-left: -30px;\"></em>中餐厅</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>送餐服务</p></li></ul></td></tr></tbody></table><p><br/></p>', '交通方便', 'sz001', '2019-04-23 18:26:21');
INSERT INTO `t_minsu` VALUES ('3', '3', '电白清煮花蟹', 'upload/34cb0c4c-235f-45f7-870f-0ccdb9a2c37e.jpg', '199', '<p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">花蟹性味咸、寒且有小毒，汽油理胃消食、解结散血、通经络等食疗效果。<span class=\"bjh-br\"></span><span class=\"bjh-br\"></span>清蒸花蟹是茂名传统的汉族名菜，属粤菜。在电白，花蟹最常用的做法就是清煮。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span></span></p><p><img src=\"/ueditor/jsp/upload/image/20190423/1556017575981051906.jpg\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span>将选好身材魁梧的花蟹洗净，然后用针从蟹的嘴部扎进去破坏蟹的神经，这样是为了防止蟹在蒸的时候挣扎，导致肢腿断失。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span></span></p><p><img class=\"large\" src=\"/ueditor/jsp/upload/image/20190423/1556017552498051585.jpg\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span><span class=\"bjh-br\"></span>为了防止蟹的黄膏流失，所以将整只蟹背部向下放入冷水锅中盖好，慢火煮20-30分钟闻到香味可出锅。<span class=\"bjh-br\"></span>在食用花蟹时，一般悬着甜醋作为配味，因为花蟹中有一种寄生菌，而醋刚好是它的克星。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span></span></p><p><img class=\"normal\" width=\"320px\" src=\"/ueditor/jsp/upload/image/20190423/1556017552606085375.jpg\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span><span class=\"bjh-br\"></span>电白的清煮花蟹，食之鲜嫩、齿颊留香，极大的保存了花蟹的原汁原味，真是诠释了蟹的鲜美。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span></span></p><p><img class=\"large\" src=\"/ueditor/jsp/upload/image/20190423/1556017552759087178.jpg\"/></p><p><br/></p>', '很不错的地方', 'sz001', '2019-04-23 18:26:36');
INSERT INTO `t_minsu` VALUES ('5', '1', '茂名玉湖', 'upload/508ed3ef-a6a6-4126-9415-4dbc8329ed55.gif', '289', '<p>茂名玉湖为国家水利风景区。</p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　玉湖，湖水与山光、天色同碧，吹来轻风，飘来薄雾，绕着山，绕着轩榭和游人，此情此景，使人疑为蓬莱仙景；玉湖的山是连绵起伏的，娇媚得如彩点染。也许是水绿树绿的原因吧，风来松涛阵阵，绿浪无边。它与石骨大坝、良德大坝等八条泥龙连接，锁住了曹江和大井河，兜住了11.5亿立方米的水，形成一个闻名遐迩的人工湖——高州水库。</span></p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　山是大自然的造成物，湖是人创造的奇迹。每当细雨蒙蒙，那山犹如披着面纱的少女似的，能看到的是隐隐约约的秀气的脸蛋。面对这诱人的神韵，恐怕就连“江郎才尽”的诗人，也许会灵犀一点通，吟咏出令诗神也叹服的绝唱。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　1959年，水库建成蓄水，淹没了良德、石骨、黄塘、均墟四个古老的墟镇(其中良德墟曾是唐明皇太监高力士的故乡)，移民5万，水最深50多米。也许是山高水深，也许是季节变更星移物换的缘故吧，水色也跟着变。春水蓝、夏水绿、秋水青、冬水黝蓝。水变山也变，青也罢，绿也罢，湖水却永远是鱼的乐园。</p><p style=\"font-size: 14px; font-family: 宋体; line-height: 22.4px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);\">　　玉湖的雕塑点缀着自然美。当人们来到纪念碑前，便沉浸于夯硪的铜像的想象之中，看他们腰圆膀阔，举硪同夯，人们一下子回到当年筑堤造湖的情景：4万民工搬土运泥，肩挑手推，夯硪者随着夯硪的起落，“哎哟，哎哟”地发出铿锵的号声。这原始的诗，描绘出眼前如此雄伟壮丽的场面——玉湖。而今它的美不仅仅是纪念，而且变成了玉湖一景。</p><p><br/></p>', '好地方哦', 'sz001', '2019-04-29 00:36:32');
INSERT INTO `t_minsu` VALUES ('6', '2', '茂名国际大酒店 ', 'upload/11777701-6567-45ff-adad-61801ac25f69.jpg', '448', '<p>茂名国际大酒店位于中国广东省茂名市双山三路繁华商业地段，毗邻肯德基富丽餐厅及广百百货，交通极其便利。 茂名国际大酒店是茂名国际投资集团有限公司属下的旅游商务酒店，集住房、餐饮、娱乐、休闲、健身、商务功能于一体，分主楼和副楼，建筑总面积8万平方米。酒店规模宏大，以典雅舒适的尊贵客房，荟萃各式美食的餐厅，先进快捷的商务、会议设施以及功能齐备的康乐服务，接待了无数海内外宾客及政要名流。 功能齐全的商务中心能为您提供秘书及订票服务，可代购全国各地的机票、火车票，助宾客事业成功、大展宏图。酒店拥有国内最先进洗涤设备，高效快捷，员工技术过硬，可为您提供干、湿洗衣、净烫等专业洗衣服务。酒店以独具特色的人文素养和婉约柔丽的殷殷之情，为您全力打造至臻完美的酒店服务经典；是旅行、聚会、商务、会议、社团活动的理想选择。 拨打电话：市内电话，国内与国际长途收费。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><br/></p><h2 class=\"detail_title \" style=\"margin: 0px 0px 10px; padding: 0px; font-family: &quot;microsoft yahei&quot;, simsun; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: 22px; color: rgb(0, 102, 204); white-space: normal; background-color: rgb(255, 255, 255);\">酒店设施</h2><table width=\"860\" style=\"width: 718px;\"><tbody><tr class=\"firstRow\"><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">网络</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><em class=\"icons-facility32\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -150px; float: left; margin-left: -30px;\"></em>客房WIFI<span class=\"green\" style=\"color: rgb(16, 162, 0); font-weight: bold;\">免费</span></p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>房间内高速上网</p></li><li><p><em class=\"icons-facility01\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; float: left; margin-left: -30px;\"></em>公共区WIFI</p></li></ul></td></tr><tr><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">交通设施</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><br/></p></li><li><p><em class=\"icons-facility03\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -60px 0px; float: left; margin-left: -30px;\"></em><span class=\"green\" style=\"color: rgb(16, 162, 0); font-weight: bold;\">免费</span>停车场<span class=\"info\" style=\"margin-left: 10px; color: rgb(153, 153, 153);\"><span class=\"green\" style=\"color: rgb(16, 162, 0); font-weight: bold;\">免费</span>！</span></p></li><li><p><br/></p></li></ul></td></tr><tr><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">交通服务</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><em class=\"icons-facility28\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -90px -120px; float: left; margin-left: -30px;\"></em>接机服务</p></li></ul></td></tr><tr><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">休闲娱乐</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><em class=\"icons-facility15\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -60px -60px; float: left; margin-left: -30px;\"></em>室内游泳池</p></li><li><p><em class=\"icons-facility14\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -60px; float: left; margin-left: -30px;\"></em>健身室</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>棋牌室</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>KTV</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>理发美容中心</p></li></ul></td></tr><tr><th style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x; width: 100px; text-align: left; color: rgb(153, 153, 153); font-weight: normal;\">前台服务</th><td style=\"margin: 0px; padding: 8px 0px; vertical-align: top; background: url(&quot;data:image/gif;base64,R0lGODlhIAABAIAAAP///8zMzCH5BAAAAAAALAAAAAAgAAEAAAIITACGmtfrGCsAOw==&quot;) 0px 100% repeat-x;\"><ul class=\"facility_list list-paddingleft-2\" style=\"padding: 0px;\"><li><p><em class=\"icons-facility10\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -90px -30px; float: left; margin-left: -30px;\"></em>行李寄存</p></li><li><p><em class=\"icons-facility17\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -120px -60px; float: left; margin-left: -30px;\"></em>24小时前台</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>24小时大堂经理</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>专职行李员</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>礼宾服务</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>旅游票务</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>叫醒服务</p></li><li><p><em class=\"icons-facility38\" style=\"display: inline-block; vertical-align: middle; margin-right: 8px; width: 21px; height: 21px; background-image: url(&quot;//pic.c-ctrip.com/hotelcommon/icon_facility.png&quot;); background-repeat: no-repeat; background-position: -30px -180px; float: left; margin-left: -30px;\"></em>邮政服务</p></li></ul></td></tr></tbody></table><p><br/></p>', '很舒服', '1', '2019-04-29 00:40:09');
INSERT INTO `t_minsu` VALUES ('7', '3', '白糖罂荔枝', 'upload/13aa72c9-e0a3-4b20-9c54-f29eacaf039c.jpg', '28', '<p style=\" color: #4444ff;\">白糖罂荔枝地理标志保护产品。白糖罂荔枝，简称白糖罂，为荔枝的一个品种，又名蜂糖罂、中华红。该品种果肉爽脆，味清甜，是广东省品质最优良的早熟品种。主要产于茂名市的高州、电白等地，约有二、三百年栽培历史。白糖罂是茂市大面积推广种植的品种之一，在第三届农业博览会荣获“优质名牌产品”称号。</p><p>白糖罂荔枝地理标志保护产品。白糖罂荔枝，简称白糖罂，为荔枝的一个品种，又名蜂糖罂、中华红。该品种果肉爽脆，味清甜，是广东省品质最优良的早熟品种。主要产于茂名市的高州、电白等地，约有二、三百年栽培历史。白糖罂是茂市大面积推广种植的品种之一，在第三届农业博览会荣获“优质名牌产品”称号。</p><p>特产品质：</p><p>白糖罂又蜂糖罂，中华红。主产广东西南部的高州、电白、茂港区等县(市)，其中以高州的分界、根子镇，茂港区的羊角镇的最好、最靓，其主要特点：树体生长势中等，树形稍直立，叶片椭圆、卵圆或长椭圆形，叶边缘具波纹，先端短尖；果歪心形，单果重21～32克；果皮鲜红色；果肉白蜡色，肉厚爽脆，带浓蜜味，可食率71.9％～77.4％，可溶性固形物18.0％～20.3％，酸含量0.05克/100毫升，品质上等，中、小核占50％以上，5月下旬至6月上旬成熟，早熟、丰产，宜在肥沃的土壤推广种植。</p><p>营养价值：</p><p>荔枝含有丰富的糖分、蛋白质、多种维生素、脂肪、柠檬酸、果胶以及磷、铁等，是对人体有益的水果。荔枝营养丰富，据测100克荔枝含有以下营养成分：膳食纤维0.50克、蛋白质0.90克、脂肪0.20克、胡萝卜素10.00微克、碳水化合物16.60克、硫胺素0.10毫克、核黄素0.04毫克、尼克酸1.10毫克、维生素C 41.00毫克、维生素A 2.00微克等，及各类矿物质钠1.70毫克、镁12.00毫克、铜0.16毫克、硒0.14微克、铁0.40毫克、锌0.17毫克、磷24.00毫克、钙2.00毫克、锰0.09毫克、钾151.00毫克。</p><p>生长环境：</p><p>白糖罂又名蜂糖罂，主产广东省茂名市的高州、电白，是广东省早熟的优质品种。叶片薄，边缘有皱纹 ，叶色较淡，2月中旬开花，5月下旬成熟上市。一般植后3年可挂果，较丰产稳产。产于我国南部，以广东、广西、福建、四川、台湾、云南等地栽培最多。高州荔枝品种有40种以上，其中为高州特有的名优品种有：早熟优稀、丰产稳产、果大、核细、清甜有浓香蜜味的白糖罂。</p><p>特产荣誉榜：</p><p>白糖罂荔枝被评为广东省早熟荔枝第一名、第三、四届中国国际农业博览会评为“中国名牌产品”。</p>', '好吃的', '6', '2019-04-29 00:43:23');

-- ----------------------------
-- Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `noticeId` int(11) NOT NULL auto_increment COMMENT '公告id',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `content` varchar(5000) NOT NULL COMMENT '公告内容',
  `publishDate` varchar(20) default NULL COMMENT '发布时间',
  PRIMARY KEY  (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('1', '网站成立了', '<p>可以来这里玩</p>', '2019-04-23 19:13:29');

-- ----------------------------
-- Table structure for `t_orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderinfo`;
CREATE TABLE `t_orderinfo` (
  `orderId` int(11) NOT NULL auto_increment COMMENT '订单id',
  `minsuObj` int(11) NOT NULL COMMENT '预订旅游',
  `userObj` varchar(30) NOT NULL COMMENT '预订用户',
  `liveDate` varchar(20) default NULL COMMENT '入住日期',
  `orderDays` int(11) NOT NULL COMMENT '入住天数',
  `totalPrice` float NOT NULL COMMENT '订单总价',
  `orderMemo` varchar(500) default NULL COMMENT '订单备注',
  `orderState` varchar(20) NOT NULL COMMENT '订单状态',
  `orderTime` varchar(20) default NULL COMMENT '预订时间',
  PRIMARY KEY  (`orderId`),
  KEY `minsuObj` (`minsuObj`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_orderinfo_ibfk_1` FOREIGN KEY (`minsuObj`) REFERENCES `t_minsu` (`minsuId`),
  CONSTRAINT `t_orderinfo_ibfk_2` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderinfo
-- ----------------------------
INSERT INTO `t_orderinfo` VALUES ('1', '1', 'user1', '2019-04-23', '3', '11', '我下午来哈！', '已付款', '2019-04-23 19:12:45');
INSERT INTO `t_orderinfo` VALUES ('2', '3', 'user1', '2019-04-23', '2', '398', '我买给女朋友吃！', '交易成功', '2019-04-23 19:12:52');
INSERT INTO `t_orderinfo` VALUES ('3', '6', 'user1', '2019-05-03', '2', '896', '我要来住店', '待入住', '2019-04-29 01:05:00');

-- ----------------------------
-- Table structure for `t_owner`
-- ----------------------------
DROP TABLE IF EXISTS `t_owner`;
CREATE TABLE `t_owner` (
  `ownerUserName` varchar(30) NOT NULL COMMENT 'ownerUserName',
  `password` varchar(30) NOT NULL COMMENT '登录密码',
  `name` varchar(20) NOT NULL COMMENT '宿主姓名',
  `gender` varchar(4) NOT NULL COMMENT '性别',
  `birthDate` varchar(20) default NULL COMMENT '出生日期',
  `ownerPhoto` varchar(60) NOT NULL COMMENT '宿主照片',
  `telephone` varchar(20) NOT NULL COMMENT '联系电话',
  `address` varchar(80) default NULL COMMENT '家庭地址',
  `regTime` varchar(20) default NULL COMMENT '注册时间',
  `shzt` varchar(20) NOT NULL COMMENT '审核状态',
  PRIMARY KEY  (`ownerUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_owner
-- ----------------------------
INSERT INTO `t_owner` VALUES ('1', '123', '茂南区', '123', '2019-04-23', 'upload/NoImage.jpg', '123', '123', '2019-04-23 17:24:59', '待审核');
INSERT INTO `t_owner` VALUES ('2', '123', '高州市', '123', '2019-04-23', 'upload/NoImage.jpg', '123', '123', '2019-04-23 17:50:19', '待审核');
INSERT INTO `t_owner` VALUES ('4', '123', '化州市', '123', '2019-04-23', 'upload/NoImage.jpg', '123', '123', '2019-04-23 17:51:38', '待审核');
INSERT INTO `t_owner` VALUES ('5', '123', '其他区', '123', '2019-04-29', 'upload/NoImage.jpg', '123', '123', '2019-04-29 01:08:40', '待审核');
INSERT INTO `t_owner` VALUES ('6', '123', '信宜市', '123', '2019-04-23', 'upload/NoImage.jpg', '123', '123', '2019-04-23 17:55:23', '待审核');
INSERT INTO `t_owner` VALUES ('sz001', '123', '电白区', '男', '2018-04-03', 'upload/bc0ad1d5-c4b0-42cc-869f-84749ba990ce.jpg', '13908928524', '福建福州海阳路10号', '2018-04-07 21:46:54', '已审核');
INSERT INTO `t_owner` VALUES ('sz002', '123', '高州市', '男', '2018-04-11', 'upload/4665bafd-d009-4a22-96d6-ebe16f16f1b3.jpg', '13980930532', '四川攀枝花万明路12号', '2018-04-18 15:46:42', '已审核');

-- ----------------------------
-- Table structure for `t_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo` (
  `user_name` varchar(30) NOT NULL COMMENT 'user_name',
  `password` varchar(30) NOT NULL COMMENT '登录密码',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `gender` varchar(4) NOT NULL COMMENT '性别',
  `birthDate` varchar(20) default NULL COMMENT '出生日期',
  `userPhoto` varchar(60) NOT NULL COMMENT '用户照片',
  `telephone` varchar(20) NOT NULL COMMENT '联系电话',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `address` varchar(80) default NULL COMMENT '家庭地址',
  `regTime` varchar(20) default NULL COMMENT '注册时间',
  PRIMARY KEY  (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
INSERT INTO `t_userinfo` VALUES ('user1', '123', '张萌分', '女', '2019-04-23', 'upload/32d42f00-bda4-4f86-b1d2-338abaa1ddd1.jpg', '13589834234', 'mengfen@163.com', '四川成都红星路13号', '2019-04-23 18:25:45');
INSERT INTO `t_userinfo` VALUES ('user2', '123', '王兆国', '男', '2019-04-23', 'upload/760593f8-48de-4cd0-9881-6e1531afd256.jpg', '13083941398', 'zhaoguo@163.com', '四川成都红星路10号', '2019-04-23 18:25:53');
