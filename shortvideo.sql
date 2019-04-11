/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : shortvideo

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2019-04-11 11:04:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dim_user_active_day
-- ----------------------------
DROP TABLE IF EXISTS `dim_user_active_day`;
CREATE TABLE `dim_user_active_day` (
  `fromurl` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `pcsystemnameormobilebrandname` varchar(255) DEFAULT NULL,
  `cityname` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `dim` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dim_user_active_day
-- ----------------------------
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'all', 'all', '7', '18-10-23', '0000');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'all', '北京市', '2', '18-10-23', '0001');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'all', '天津市', '1', '18-10-23', '0001');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'all', '河南省商丘市', '1', '18-10-23', '0001');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'all', '河南省郑州市', '3', '18-10-23', '0001');
INSERT INTO `dim_user_active_day` VALUES ('all', '115.55.38.65', 'all', 'all', '1', '18-10-23', '0100');
INSERT INTO `dim_user_active_day` VALUES ('all', '123.151.77.81', 'all', 'all', '1', '18-10-23', '0100');
INSERT INTO `dim_user_active_day` VALUES ('all', '125.46.17.59', 'all', 'all', '3', '18-10-23', '0100');
INSERT INTO `dim_user_active_day` VALUES ('all', '61.148.243.147', 'all', 'all', '2', '18-10-23', '0100');
INSERT INTO `dim_user_active_day` VALUES ('http://192.168.134.151:8080/ShortVideoProject/index.jsp', 'all', 'all', 'all', '1', '18-10-23', '1000');
INSERT INTO `dim_user_active_day` VALUES ('http://thisisgjf.picp.io/ShortVideoProject/index.jsp', 'all', 'all', 'all', '6', '18-10-23', '1000');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'MI-8', 'all', '2', '18-10-23', '0010');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'Windows', 'all', '3', '18-10-23', '0010');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'iPad', 'all', '2', '18-10-23', '0010');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'all', 'all', '1', '18-10-18', '0000');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'Windows', 'all', '1', '18-10-18', '0010');
INSERT INTO `dim_user_active_day` VALUES ('http://192.168.134.151:8080/ShortVideoProject/index.jsp', 'all', 'all', 'all', '1', '18-10-18', '1000');
INSERT INTO `dim_user_active_day` VALUES ('all', 'all', 'all', '北京市', '1', '18-10-18', '0001');
INSERT INTO `dim_user_active_day` VALUES ('all', '114.242.250.39', 'all', 'all', '1', '18-10-18', '0100');

-- ----------------------------
-- Table structure for video_content
-- ----------------------------
DROP TABLE IF EXISTS `video_content`;
CREATE TABLE `video_content` (
  `vc_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `vc_author` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '作者',
  `vc_detail` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '详情',
  `vc_shareurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '链接',
  `vc_from` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源',
  `vc_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '类型',
  `vc_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `reserved_field01` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '封面',
  `reserved_field02` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段',
  `reserved_field03` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段',
  `reserved_field04` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段',
  `reserved_field05` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`vc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of video_content
-- ----------------------------
INSERT INTO `video_content` VALUES ('00dc1ad3-da55-44d5-a07e-bcaa87124b5f', '高火火❤️', '希望每天都能有一个好的心情.重点奥！这喇叭我用的是淋淋尽致的！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200f5d0000be9rclbbo1icd89v5aeg&line=0', 'douyin', null, '2018-09-27 10:31:10', 'https://p1.pstatp.com/aweme/300x400/b9530001db0710866338.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('0cb299f6-1c75-4d30-86db-63cca2827729', '高火火❤️', '一天真的可烦人了奥.跑调还唱！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200f5c0000bdslv4frri6cobohfnng&line=0', 'douyin', null, '2018-09-27 10:31:16', 'https://p3.pstatp.com/aweme/300x400/abf7000a69ab59deea31.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('19c04453-048e-4a76-87dd-7b02947a7a4c', '高火火❤️', '不接受反驳！哈哈哈哈哈哈', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200fe70000bdclppubm86jq9rksa4g&line=0', 'douyin', null, '2018-09-27 10:31:29', 'https://p3.pstatp.com/aweme/300x400/9d640010a2d168f9928a.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('19f27308-443b-478d-a1e2-6145fc07a306', '高火火❤️', '我发我嘴是真的好看奥！我要靠脸吃饭了感觉！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200f760000bdv7tb2epr18befnpoo0&line=0', 'douyin', null, '2018-09-27 10:31:15', 'https://p9.pstatp.com/aweme/300x400/ae8400062f6c26946438.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('45d8646a-3f04-4f27-861b-4f97e416d0f5', '高火火❤️', '谢谢四年以来的照顾.以后换我照顾你了.@欣宇Cherish', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0300f0f0000bdo4de8e8b7n15sev950&line=0', 'douyin', null, '2018-09-27 10:31:19', 'https://p3.pstatp.com/aweme/300x400/a5330001140f4e06e6d9.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('46d2e24e-5a9a-4000-820e-6af3e2ee7809', '高火火❤️', '这都带个了.一下子口水.真的奥！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0300fb40000be4fdm8e8b7vkmjm1j8g&line=0', 'douyin', null, '2018-09-27 10:31:13', 'https://p1.pstatp.com/aweme/300x400/b2cb0004eb38bb29fed2.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('4bb07e82-b1d3-4681-8a55-957d23ca2d01', '高火火❤️', '巧了啊，第一次学手势舞，就是为了你@郭 聪 明 ?', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200fe70000bdc90e4m7fie8i72tidg&line=0', 'douyin', null, '2018-09-27 10:31:31', 'https://p3.pstatp.com/aweme/300x400/9d5700075fa914268162.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('6bb1c30a-29ea-4390-b3bb-fe935be68406', '高火火❤️', '可别让我去接你们了.这么两天接一百来个了！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200f0f0000bdpcnpfm1hf492r7nikg&line=0', 'douyin', null, '2018-09-27 10:31:18', 'https://p1.pstatp.com/aweme/300x400/a7e4000b63de5380cded.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('6f04fefd-e9c9-4ca1-ae4c-d1cea1cbe2fa', '高火火❤️', '这是给我洗头呢.....', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0300f6c0000bdjdtb2bc5or79hslhtg&line=0', 'douyin', null, '2018-09-27 10:31:25', 'https://p1.pstatp.com/aweme/300x400/a1e90013a0f755464bca.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('8f183b7a-8ccd-448a-a519-d2cb821278b5', '高火火❤️', '真行奥哥...这你也能点出来.我行我可以我最胖！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200f0a0000be54jkp1h1vklq2hf1a0&line=0', 'douyin', null, '2018-09-27 10:31:12', 'https://p1.pstatp.com/aweme/300x400/b382000006ca69c0531f.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('9560af6d-e8d4-4b0c-95f0-e433c48b2c87', '高火火❤️', '#跟着抖音游山东 旅游宣传使者带你游刘公岛啦～', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200f0f0000bdn755lqg5bf610q29ng&line=0', 'douyin', null, '2018-09-27 10:31:21', 'https://p1.pstatp.com/aweme/300x400/a45600005bf7efdc139d.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('96554cc9-3215-4ab7-9a19-38bcda1035ed', '高火火❤️', '嗯嗯嗯。我行！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200fc20000bef49amdm15ab8tbbs2g&line=0', 'douyin', null, '2018-09-27 10:31:07', 'https://p1.pstatp.com/aweme/300x400/c03000053f3730f19cbb.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('b20d6557-d0be-4fa3-8324-714804444237', '高火火❤️', '不会唱还不会跳啊.嗯嗯嗯我行！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0300f930000behoq75pimmeut3v1gr0&line=0', 'douyin', null, '2018-09-27 10:31:06', 'https://p1.pstatp.com/aweme/300x400/c3b9000878e3cc9876be.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('bf7cd081-bdd1-4b0a-98e8-0049cec4e024', '高火火❤️', '哥你还是给聪明吧！@郭 聪 明? 我不要奥！我过敏...', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200fa70000bej5292gnbh17f4obgf0&line=0', 'douyin', null, '2018-09-27 10:31:04', 'https://p1.pstatp.com/aweme/300x400/c52c000a15cbea653ddd.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('c12bd811-da67-45e1-8c07-a8c0323c5af4', '高火火❤️', '真的拼一下午.非常谢谢大家！这么疼爱我！全程在看词！', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200fc10000bdi3oh2gd9fp5c33qqog&line=0', 'douyin', null, '2018-09-27 10:31:26', 'https://p1.pstatp.com/aweme/300x400/a1af0006373ed7489f9a.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('c3a1b150-a94d-4852-bb4d-39524833155d', '高火火❤️', '不说了。我去吃含片了...', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200f9a0000bd8rbqbf55feeqg07fp0&line=0', 'douyin', null, '2018-09-27 10:31:35', 'https://p1.pstatp.com/aweme/300x400/9bf900061c06552a4027.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('c3c57ffb-a6e4-443a-9924-66f0a5f57697', '高火火❤️', 'doudoudoudou在这里等你#我的dou音之歌.', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200ff20000be346ald2r6f70tc4fa0&line=0', 'douyin', null, '2018-09-27 10:31:14', 'https://p3.pstatp.com/aweme/300x400/b171000ac0884c8d5d1d.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('c9e9c639-5ac6-4ac2-b25a-22ae70d2f456', '高火火❤️', '∨、难 过 ㄋ就 、 __ 蹲 丅 来〔 抱抱 〕臫 巳 √.', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200fc50000bedq93lqg5b16t6ttm3g&line=0', 'douyin', null, '2018-09-27 10:31:09', 'https://p9.pstatp.com/aweme/300x400/bd6b000754679bfc4451.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('d65d2900-2b85-443e-b87a-776778d15d00', '高火火❤️', '烦烦烦！真滴烦....我想削他.', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0200ff50000bde4r1r3ft9inuljh0ug&line=0', 'douyin', null, '2018-09-27 10:31:28', 'https://p1.pstatp.com/aweme/300x400/9e26000d0515f4f3a55c.jpeg', null, null, null, null);
INSERT INTO `video_content` VALUES ('dd262a2b-2b05-46ed-8cc0-f94de3240037', '高火火❤️', '据说有百分之99的人跟不上.哈哈哈哈哈', 'https://aweme.snssdk.com/aweme/v1/playwm/?video_id=v0300f6c0000bdkmhptm7i9idvcj1arg&line=0', 'douyin', null, '2018-09-27 10:31:23', 'https://p1.pstatp.com/aweme/300x400/a2d00008c3d54f9f7380.jpeg', null, null, null, null);
