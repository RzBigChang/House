/*
Navicat MySQL Data Transfer

Source Server         : wuyanzu
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2020-05-23 09:45:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `houseName` varchar(255) NOT NULL COMMENT '房屋名称',
  `houseVolume` varchar(255) NOT NULL COMMENT '房屋面积',
  `houseCourtroom` varchar(255) NOT NULL COMMENT '房屋庭室',
  `houseAddress` varchar(255) NOT NULL COMMENT '房屋地址',
  `houseRentOrSell` int(255) NOT NULL COMMENT '是租还是卖',
  `houseRent` varchar(255) NOT NULL COMMENT '租金',
  `houseFloor` varchar(255) NOT NULL COMMENT '楼层',
  `houseHeat` int(255) NOT NULL COMMENT '热度',
  `housePhoto` varchar(255) NOT NULL COMMENT '房屋照片',
  `houseType` varchar(255) NOT NULL COMMENT '房屋类型',
  `houseAdvantage` varchar(255) NOT NULL COMMENT '房屋优点',
  `houseExamine` int(11) NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '个人湖东景园精装朝南主卧天鹅湖银泰蔚蓝商务港旁看房方便', '200m', '单间', '荷叶地湖东景园南区', '1', '880', '中层/33', '10', '1.jpg', '1', '朝南配套齐全精装修', '1');
INSERT INTO `house` VALUES ('2', '个人不收中介费。兴华苑二期精装主卧单间，干净卫生！', '15m', '单间', '张洼新村兴华苑B区', '1', '580', '高层/18', '11', '5.jpg', '0', '房间干净卫生，定期有保洁打扫公共卫生。房间里生活设施齐全，带空调随时入住。燃气热水器，不会出现热水不够用，免费光线宽带。部分房间带独立阳台或独立卫生间，可随时看房！干净卫生。', '1');
INSERT INTO `house` VALUES ('3', '时代领峯', '120m', '三室/四室', '[包河区]北京路与龙川路交口东南角', '0', '21500元/m', '中层/18', '101', '2.jpg', '5', '牛逼就完事了', '1');
INSERT INTO `house` VALUES ('4', '东方蓝海直营，A区景观高层，满两年精装修，全天视野降价急售！', '93.02', '三室两厅1卫', '滨湖新区-云谷路1943号', '0', '176万', '中层/18', '12', '3.jpg', '6', '顶', '1');
INSERT INTO `house` VALUES ('5', '(出售)政务区天鹅湖 唯一在卖商铺 融创出品 现铺低总价好地段', '43m', '商铺', '天鹅湖九号商铺', '0', '128万', '独栋1层', '26', '7.jpg', '1', '牛逼', '1');
INSERT INTO `house` VALUES ('6', '(出租)想开了放价了！（绿地赢海）|精致300至500平', '300m', '写字楼', '包河区-马鞍山路-马鞍山南路680号', '1', '1.47万/月', '中区/28', '18', '10.jpg', '2', '可容纳40-80工位', '1');
INSERT INTO `house` VALUES ('7', '(出租)独栋有房本大产权 1200到3600标准厂房', '1600m', '厂房', '包河区-包河周边-繁华大道与重庆路交叉口', '1', '4800/月', '多层', '10', '12.jpg', '3', '吊', '1');
INSERT INTO `house` VALUES ('8', '(出租)瑶海区仓库出租仓配运一体专业托管适合各种行业', '5000m', '仓库', '新站区-物流大道-铜陵北路与物流大道叉口', '1', '面议', '单层', '42', '14.jpg', '4', '牛逼', '1');
INSERT INTO `house` VALUES ('9', '天鹅花园 摩尔广场 广明路 中国人民解放军901医院', '25m', '一室一卫', '蜀山安徽大学', '1', '700', '底层/33层', '0', '15.jpg', '0', '拎包即住：全新衣柜书桌靠椅品牌空调免费宽带', '1');
INSERT INTO `house` VALUES ('12', '中翔新东城 月付 无中介管理费 家电全配 密码门锁 可做饭', '33.65平', '1室一厅一卫', '瑶海&nbsp&nbsp三里街&nbsp&nbsp中翔新东城', '1', '1290/月', '中层/31层', '0', '16.jpg', '0', '本社区由法国设计师匠心设计的两大风格，瑞典简约风和意式复古风，一室一厅，独立卫浴，灵动立体空间，极简主义风格', '0');
INSERT INTO `house` VALUES ('13', '免租龤个月 元一时代广场 元一时代花园 长淮地铁口 可做饭', '20平', '4室2厅2卫', '瑶海&nbsp&nbsp元一时代广场', '1', '880/月', '高层/16层', '0', '17.jpg', '0', '1房屋设施\r\n有全新家具（不是二房东的二手家具），空调，洗衣机，热水器，冰箱等一应俱全，更有五十兆电信宽带，无线WIFI全覆盖，满足您娱乐工作需求', '0');
INSERT INTO `house` VALUES ('14', '整租滨湖万达城地铁口公寓出租|装修温馨|家电齐全|随时看房', '50平', '1室1厅1卫', '滨湖新区&nbsp&nbsp万达文旅城', '1', '1300/月', '中层/49层', '0', '18.jpg', '0', '【户型】：一室一厅精装公寓（您所看到的房屋图片均为本人现场实拍，随时看房）', '0');
INSERT INTO `house` VALUES ('15', '无宗介 精装单间带YT 瑶海万达旁 拎包即住 优惠多多 冲啊', '25平', '3室2厅1卫', '瑶海-瑶海万达广场-万达华府', '1', '950/月', '高层/34层', '0', '19.jpg', '0', '贴心式服务，入住期间免费维修，预约时间，师傅', '0');
INSERT INTO `house` VALUES ('16', '保利五月花B区！三室两厅一厨两卫精装修 家电齐全 拎包入住', '105.64平', '3室2厅2卫', '滨湖新区-环湖CBD', '1', '2600/月', '中层/33层', '0', '20.jpg', '0', '精美装修，配套齐全，家一般的感觉。所有照片都是亲自拍摄，绝无虚假', '0');

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `powerName` varchar(255) NOT NULL,
  `reamrk` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `partentId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power
-- ----------------------------
INSERT INTO `power` VALUES ('1', '我的信息', '<a class=\"btn btn-primary\" href=\"\" role=\"button\">我的信息</a>', '1', '/index', '1');
INSERT INTO `power` VALUES ('2', '审核中', '<a class=\"btn btn-primary\" href=\"\" role=\"button\">审核中</a>', '1', '/index', '1');
INSERT INTO `power` VALUES ('3', '推广', '<a class=\"btn btn-primary\" href=\"\" role=\"button\">推广</a>', '1', '/index', '1');
INSERT INTO `power` VALUES ('4', '商家管理', '<a class=\"btn btn-primary\" href=\"\" role=\"button\">商家管理</a>', '1', '/index', '1');
INSERT INTO `power` VALUES ('5', '审核商家上传房源', '<a class=\"btn btn-primary\" href=\"\" role=\"button\">审核商家房源</a>', '1', '/index', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '普通用户');
INSERT INTO `role` VALUES ('2', '商家');
INSERT INTO `role` VALUES ('3', '网站管理员');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL COMMENT '用户名称',
  `userLoginName` varchar(255) NOT NULL COMMENT '登录名称',
  `userPassword` varchar(255) NOT NULL COMMENT '密码',
  `userSalt` varchar(255) NOT NULL COMMENT '盐值',
  `userType` int(11) NOT NULL COMMENT '账号状态',
  `userNumber` int(11) NOT NULL COMMENT '封禁值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张健', '忧郁男孩', 'd841631d1e262957b3aae5f665c58ae6', '11d02c730445734c636886d8cd066881', '1', '1');
INSERT INTO `user` VALUES ('2', '嘎子', '小鬼子呢', '722607d34238e882418e515af4ae8bdc', 'cd46866f504540564b25004ea82bd58a', '1', '1');
INSERT INTO `user` VALUES ('3', '张三', '逝去的爱', 'a5c87cc982c6ab42f14462ad96716e53', 'e9183fcdf3456722ab873ddca5cf05ce', '1', '1');
INSERT INTO `user` VALUES ('5', '张健', '网抑云', '2e856b77c6767eff940e9184b090d425', '4860b868fa63fc3e25b1a473ae595b48', '1', '0');

-- ----------------------------
-- Table structure for userandhouse
-- ----------------------------
DROP TABLE IF EXISTS `userandhouse`;
CREATE TABLE `userandhouse` (
  `userId` int(250) NOT NULL,
  `houseId` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userandhouse
-- ----------------------------
INSERT INTO `userandhouse` VALUES ('3', '1');
INSERT INTO `userandhouse` VALUES ('3', '2');
INSERT INTO `userandhouse` VALUES ('3', '3');
INSERT INTO `userandhouse` VALUES ('3', '4');
INSERT INTO `userandhouse` VALUES ('3', '9');
INSERT INTO `userandhouse` VALUES ('3', '12');
INSERT INTO `userandhouse` VALUES ('3', '16');
INSERT INTO `userandhouse` VALUES ('3', '13');
INSERT INTO `userandhouse` VALUES ('3', '14');
INSERT INTO `userandhouse` VALUES ('3', '15');

-- ----------------------------
-- Table structure for userandpower
-- ----------------------------
DROP TABLE IF EXISTS `userandpower`;
CREATE TABLE `userandpower` (
  `powerId` int(250) NOT NULL,
  `userId` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userandpower
-- ----------------------------

-- ----------------------------
-- Table structure for userandrole
-- ----------------------------
DROP TABLE IF EXISTS `userandrole`;
CREATE TABLE `userandrole` (
  `userId` int(255) NOT NULL,
  `roleId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userandrole
-- ----------------------------
INSERT INTO `userandrole` VALUES ('2', '3');
INSERT INTO `userandrole` VALUES ('1', '1');
INSERT INTO `userandrole` VALUES ('3', '2');
INSERT INTO `userandrole` VALUES ('5', '1');
