/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : root

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-18 02:28:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_account
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_account`;
CREATE TABLE `ims_yzcyk_sun_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `storeid` varchar(1000) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_user` varchar(100) NOT NULL DEFAULT '',
  `accountname` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  `salt` varchar(10) NOT NULL DEFAULT '',
  `pwd` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pay_account` varchar(200) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '状态',
  `role` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1:店长,2:店员',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL,
  `areaid` int(10) NOT NULL DEFAULT '0' COMMENT '区域id',
  `is_admin_order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_queue` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_service` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_notice_boss` tinyint(1) NOT NULL DEFAULT '0',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `lat` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '经度',
  `lng` decimal(18,10) NOT NULL DEFAULT '0.0000000000' COMMENT '纬度',
  `cityname` varchar(50) NOT NULL COMMENT '城市名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_acode
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_acode`;
CREATE TABLE `ims_yzcyk_sun_acode` (
  `id` int(11) NOT NULL COMMENT '该id不自动增加',
  `time` varchar(30) NOT NULL COMMENT '时间',
  `code` text NOT NULL COMMENT '码',
  `url` varchar(255) NOT NULL,
  `uncode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_activationcode
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_activationcode`;
CREATE TABLE `ims_yzcyk_sun_activationcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `code` varchar(60) DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '天数',
  `add_time` int(11) DEFAULT NULL,
  `use_time` int(11) DEFAULT NULL,
  `is_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_active
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_active`;
CREATE TABLE `ims_yzcyk_sun_active` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `subtitle` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `createtime` int(13) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `content` text NOT NULL COMMENT '文章内容',
  `sort` int(10) DEFAULT '0',
  `antime` timestamp NULL DEFAULT NULL,
  `hits` int(10) DEFAULT '0',
  `status` tinyint(10) DEFAULT '0' COMMENT '0审核中1审核通过',
  `astime` timestamp NULL DEFAULT NULL,
  `thumb` varchar(200) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `sharenum` int(11) DEFAULT NULL COMMENT '每天可分享次数',
  `thumb_url` text,
  `part_num` varchar(15) DEFAULT '0' COMMENT '参与人数',
  `share_plus` varchar(15) DEFAULT '1' COMMENT '分享之后可得的次数',
  `new_partnum` varchar(15) DEFAULT NULL COMMENT '初始虚拟参与人数',
  `user_id` varchar(100) DEFAULT NULL COMMENT '用户ID',
  `storeinfo` varchar(200) DEFAULT NULL COMMENT '店铺信息',
  `showindex` int(11) DEFAULT NULL COMMENT '0不显示1显示',
  `active_num` int(11) DEFAULT NULL COMMENT '活动商品数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_activerecord
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_activerecord`;
CREATE TABLE `ims_yzcyk_sun_activerecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `uid` int(10) DEFAULT NULL,
  `pid` int(10) DEFAULT '0',
  `num` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_activity
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_activity`;
CREATE TABLE `ims_yzcyk_sun_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `store_id` int(11) DEFAULT NULL COMMENT '商家门店id',
  `category_id` int(11) DEFAULT NULL COMMENT '活动分类',
  `bm_begin_time` int(11) DEFAULT NULL COMMENT '报名开始时间',
  `bm_end_time` int(11) DEFAULT NULL COMMENT '报名结束时间',
  `hdbegintime` varchar(60) DEFAULT NULL,
  `hdendtime` varchar(60) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL COMMENT '展示图',
  `lb_pics` text COMMENT '轮播图',
  `tag` varchar(200) DEFAULT NULL COMMENT '标签',
  `common_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '普通价',
  `qzk_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '车友卡价',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '份数',
  `sale_num` int(11) NOT NULL DEFAULT '0' COMMENT '销售或者领取份数',
  `qzk_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '车友卡专享活动 1',
  `age_limit` varchar(100) DEFAULT NULL COMMENT '年龄限制',
  `remark` varchar(100) DEFAULT NULL COMMENT '温馨提示',
  `info` text COMMENT '活动须知',
  `content` text COMMENT '详情',
  `add_time` int(11) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '2通过 3失败',
  `tg_time` int(11) DEFAULT NULL,
  `jj_time` int(11) DEFAULT NULL,
  `show_index` tinyint(4) NOT NULL DEFAULT '0' COMMENT '首页展示',
  `gkfl_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '购卡福利',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='活动表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_activity_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_activity_category`;
CREATE TABLE `ims_yzcyk_sun_activity_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL COMMENT '名称',
  `icons` varchar(200) DEFAULT NULL COMMENT '图标',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_ad
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_ad`;
CREATE TABLE `ims_yzcyk_sun_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '轮播图标题',
  `logo` varchar(200) NOT NULL COMMENT '图片',
  `status` int(11) NOT NULL COMMENT '1.开启  2.关闭',
  `src` varchar(100) NOT NULL COMMENT '链接',
  `orderby` int(11) NOT NULL COMMENT '排序',
  `xcx_name` varchar(20) NOT NULL,
  `appid` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `type` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `wb_src` varchar(300) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_address
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_address`;
CREATE TABLE `ims_yzcyk_sun_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consignee` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text NOT NULL,
  `stree` text NOT NULL,
  `uid` text NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_announcement
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_announcement`;
CREATE TABLE `ims_yzcyk_sun_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1首页公告 2好店公告',
  `title` varchar(100) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `show_index` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告管理';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_area
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_area`;
CREATE TABLE `ims_yzcyk_sun_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL COMMENT '区域名称',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_baby
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_baby`;
CREATE TABLE `ims_yzcyk_sun_baby` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` varchar(4) DEFAULT '1' COMMENT '1男2女',
  `birth` varchar(20) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `edit_time` int(11) DEFAULT NULL,
  `car_producer` varchar(100) DEFAULT NULL COMMENT '车辆产商',
  `car_level` varchar(100) DEFAULT NULL COMMENT '车辆级别',
  `car_number` varchar(100) DEFAULT NULL COMMENT '车辆号',
  `car_insurance` varchar(20) DEFAULT NULL COMMENT '保险到期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='宝宝表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_banner
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_banner`;
CREATE TABLE `ims_yzcyk_sun_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(45) NOT NULL,
  `lb_imgs` varchar(500) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `url_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '小程序类型 1基本 2商品分类',
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_baowen
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_baowen`;
CREATE TABLE `ims_yzcyk_sun_baowen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xml` text,
  `out_trade_no` varchar(60) DEFAULT NULL,
  `transaction_id` varchar(60) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `out_trade_no` (`out_trade_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=614 DEFAULT CHARSET=utf8 COMMENT='支付报文';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_bargain
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_bargain`;
CREATE TABLE `ims_yzcyk_sun_bargain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL COMMENT '商品名',
  `marketprice` varchar(45) DEFAULT NULL COMMENT '原价',
  `selftime` varchar(100) DEFAULT NULL COMMENT '发布时间',
  `pic` varchar(200) DEFAULT NULL COMMENT '活动图',
  `details` text COMMENT '商品详情',
  `status` int(11) DEFAULT NULL COMMENT '状态 1为开启2为关闭',
  `uniacid` int(11) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `shopprice` varchar(45) DEFAULT NULL COMMENT '最低价',
  `endtime` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `content` text COMMENT '活动详情',
  `showindex` int(2) DEFAULT '0' COMMENT '0为不开启1为开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_car
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_car`;
CREATE TABLE `ims_yzcyk_sun_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `start_place` varchar(100) NOT NULL COMMENT '出发地',
  `end_place` varchar(100) NOT NULL COMMENT '目的地',
  `start_time` varchar(30) NOT NULL COMMENT '出发时间',
  `num` int(4) NOT NULL COMMENT '乘车人数/可乘人数',
  `link_name` varchar(30) NOT NULL COMMENT '联系人',
  `link_tel` varchar(20) NOT NULL COMMENT '联系电话',
  `typename` varchar(30) NOT NULL COMMENT '分类名称',
  `other` varchar(300) NOT NULL COMMENT '补充',
  `time` int(11) NOT NULL COMMENT '发布时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `top_id` int(11) NOT NULL COMMENT '置顶ID',
  `top` int(4) NOT NULL COMMENT '是否置顶,1,是,2否',
  `uniacid` varchar(50) NOT NULL,
  `state` int(4) NOT NULL COMMENT '1待审核,2通过，3拒绝',
  `tj_place` varchar(300) NOT NULL COMMENT '途经地',
  `hw_wet` varchar(10) NOT NULL COMMENT '货物重量',
  `star_lat` varchar(20) NOT NULL COMMENT '出发地维度',
  `star_lng` varchar(20) NOT NULL COMMENT '出发地经度',
  `end_lat` varchar(20) NOT NULL COMMENT '目的地维度',
  `end_lng` varchar(20) NOT NULL COMMENT '目的地经度',
  `is_open` int(4) NOT NULL,
  `start_time2` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_car_my_tag
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_car_my_tag`;
CREATE TABLE `ims_yzcyk_sun_car_my_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `car_id` int(11) NOT NULL COMMENT '拼车ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_car_tag
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_car_tag`;
CREATE TABLE `ims_yzcyk_sun_car_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) NOT NULL COMMENT '分类名称',
  `tagname` varchar(30) NOT NULL COMMENT '标签名称',
  `uniacid` varchar(11) NOT NULL COMMENT '50',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_car_top
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_car_top`;
CREATE TABLE `ims_yzcyk_sun_car_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.一周3.一个月',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车置顶';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_carpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_carpaylog`;
CREATE TABLE `ims_yzcyk_sun_carpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(44) NOT NULL COMMENT '拼车id',
  `money` decimal(10,2) NOT NULL COMMENT '钱',
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拼车支付记录表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_comments
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_comments`;
CREATE TABLE `ims_yzcyk_sun_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `details` varchar(200) NOT NULL COMMENT '评论详情',
  `time` varchar(20) NOT NULL COMMENT '时间',
  `reply` varchar(200) NOT NULL COMMENT '回复详情',
  `hf_time` varchar(20) NOT NULL COMMENT '回复时间',
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `score` decimal(10,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_commission_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_commission_withdrawal`;
CREATE TABLE `ims_yzcyk_sun_commission_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1.支付宝2.银行卡',
  `state` int(11) NOT NULL COMMENT '1.审核中2.通过3.拒绝',
  `time` int(11) NOT NULL COMMENT '申请时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `uniacid` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `account` varchar(100) NOT NULL,
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际到账金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金提现';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_coupon`;
CREATE TABLE `ims_yzcyk_sun_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `store_id` int(11) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '优惠券类型 1满减 2折扣 3满送 4体验券',
  `sign` tinyint(1) DEFAULT '1' COMMENT '使用方式 1线上优惠券 2门店优惠券',
  `start_time` int(11) DEFAULT NULL COMMENT '活动开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '活动结束时间',
  `uniacid` int(11) DEFAULT NULL,
  `m_price` int(10) NOT NULL DEFAULT '0' COMMENT '单笔满多少金额',
  `mj_price` int(10) NOT NULL DEFAULT '0' COMMENT '满减金额',
  `expiry_day` int(11) NOT NULL DEFAULT '1' COMMENT '领取后有效天数',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '总量',
  `yl_num` int(11) NOT NULL DEFAULT '0' COMMENT '已领数量',
  `show_index` tinyint(4) DEFAULT NULL COMMENT '是否限时在首页',
  `add_time` int(11) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1开启 2关闭',
  `info` text COMMENT '使用说明',
  `remark` text,
  `is_vip` tinyint(4) NOT NULL DEFAULT '0' COMMENT '仅车友卡vip可以领取',
  `is_punch` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否打卡奖品 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_coupon_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_coupon_order`;
CREATE TABLE `ims_yzcyk_sun_coupon_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `pid` int(10) DEFAULT '0',
  `uid` int(10) DEFAULT NULL,
  `cid` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(10) DEFAULT '0',
  `num` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_customize
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_customize`;
CREATE TABLE `ims_yzcyk_sun_customize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1 首页banner 2菜单图标 3底部图标 4好店banner 5门店banner',
  `title` varchar(255) DEFAULT NULL COMMENT '标题名称',
  `pic` varchar(200) DEFAULT NULL COMMENT '图标图片',
  `clickago_icon` varchar(200) DEFAULT NULL COMMENT '点击前图标',
  `clickafter_icon` varchar(200) DEFAULT NULL COMMENT '点击后图标',
  `url_type` tinyint(4) DEFAULT NULL COMMENT '链接类型 1基本 2商品分类',
  `url` varchar(200) DEFAULT NULL COMMENT '链接地址',
  `url_name` varchar(50) DEFAULT NULL COMMENT '链接名称',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序 越大越前',
  `add_time` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='自定义';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_distribution
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_distribution`;
CREATE TABLE `ims_yzcyk_sun_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1.审核中2.通过3.拒绝',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销申请';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_distribution_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_distribution_order`;
CREATE TABLE `ims_yzcyk_sun_distribution_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ordertype` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单类别，1车友卡充值，3活动',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `parent_id_1` int(11) NOT NULL COMMENT '一级id',
  `parent_id_2` int(11) NOT NULL COMMENT '二级id',
  `parent_id_3` int(11) NOT NULL COMMENT '3级id',
  `first_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '一级佣金',
  `second_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '二级佣金',
  `third_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '三级佣金',
  `rebate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否自购，0否，1是',
  `user_id` int(11) NOT NULL COMMENT '购买用户id',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除（用来识别是否计入可提现佣金），0未，1删',
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_distribution_promoter
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_distribution_promoter`;
CREATE TABLE `ims_yzcyk_sun_distribution_promoter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `mobilephone` varchar(30) NOT NULL COMMENT '手机号',
  `allcommission` decimal(10,2) NOT NULL COMMENT '累计佣金',
  `canwithdraw` decimal(10,2) NOT NULL COMMENT '可提现佣金',
  `referrer_name` varchar(100) NOT NULL COMMENT '推荐人',
  `referrer_uid` int(11) NOT NULL COMMENT '推荐人id',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态，0审核中，1通过，2拒绝',
  `addtime` int(11) NOT NULL COMMENT '申请时间',
  `checktime` int(11) NOT NULL COMMENT '审核时间',
  `meno` text NOT NULL COMMENT '备注',
  `form_id` varchar(50) NOT NULL COMMENT 'form_id，发模板消息',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `freezemoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现冻结的金额',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `code_img` mediumblob NOT NULL COMMENT '小程序码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_distribution_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_distribution_set`;
CREATE TABLE `ims_yzcyk_sun_distribution_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '分销层级,0不开启，1一级，2二级',
  `is_buyself` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分销内购，0关闭，1开启',
  `lower_condition` tinyint(1) NOT NULL DEFAULT '0' COMMENT '成为下线条件，0首次点击链接',
  `share_condition` tinyint(3) NOT NULL DEFAULT '0' COMMENT '成为分销商条件，0无条件但要审核，1申请审核，2不需要审核',
  `autoshare` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '消费自动成为分销商',
  `withdrawtype` varchar(100) NOT NULL COMMENT '提现方式,1微信支付,2支付宝支付,3银行卡支付,4余额支付',
  `minwithdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最少提现额度',
  `daymaxwithdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '每日提现上限',
  `withdrawnotice` text NOT NULL COMMENT '用户提现须知',
  `tpl_wd_arrival` varchar(255) NOT NULL COMMENT '提现到账模板消息id',
  `tpl_wd_fail` varchar(255) NOT NULL COMMENT '提现失败模板消息id',
  `tpl_share_check` varchar(255) NOT NULL COMMENT '分销审核模板消息id',
  `application` text NOT NULL COMMENT '申请协议',
  `applybanner` varchar(255) NOT NULL COMMENT '申请页面banner',
  `checkbanner` varchar(255) NOT NULL COMMENT '待审核页面banner',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `commissiontype` tinyint(3) NOT NULL DEFAULT '1' COMMENT '分销佣金类型，1百分比，2固定金额',
  `firstname` varchar(255) NOT NULL COMMENT '一级名称',
  `firstmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '一级金额',
  `secondname` varchar(255) NOT NULL COMMENT '二级名称',
  `secondmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '二级金额',
  `withdrawhandingfee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现手续费',
  `thirdname` varchar(50) NOT NULL COMMENT '第三级名称',
  `thirdmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '第三级佣金',
  `postertoppic` varchar(255) NOT NULL COMMENT '海报图',
  `postertoptitle` varchar(200) NOT NULL COMMENT '海报标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_distribution_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_distribution_withdraw`;
CREATE TABLE `ims_yzcyk_sun_distribution_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL COMMENT 'openid',
  `uniacid` int(11) NOT NULL COMMENT 'uniacid',
  `uname` varchar(255) NOT NULL COMMENT '姓名',
  `account` varchar(20) NOT NULL COMMENT '提现账号',
  `withdrawaltype` tinyint(3) NOT NULL DEFAULT '0' COMMENT '提现方式，1微信，2支付宝，3银行卡，4余额',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '提现状态，0待打款，1已经打款，2拒绝',
  `time` int(11) NOT NULL COMMENT '时间',
  `mobilephone` varchar(30) NOT NULL COMMENT '手机号',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `realmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际金额',
  `ratesmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `meno` text NOT NULL COMMENT '备注',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `form_id` varchar(50) NOT NULL COMMENT 'form_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_dynamic`;
CREATE TABLE `ims_yzcyk_sun_dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `head_img` varchar(100) DEFAULT NULL COMMENT '头像',
  `title` varchar(60) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `imgs` text COMMENT '图片',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '关联商品id',
  `is_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0未审核 1通过 2拒绝',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_dynamic_collection
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_dynamic_collection`;
CREATE TABLE `ims_yzcyk_sun_dynamic_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `dynamic_id` int(11) DEFAULT NULL,
  `openid` varchar(60) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `headimg` varchar(200) DEFAULT NULL,
  `is_status` tinyint(4) DEFAULT NULL COMMENT '1 收藏 0 取消收藏',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='动态点赞收藏';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_dynamic_comment
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_dynamic_comment`;
CREATE TABLE `ims_yzcyk_sun_dynamic_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `dynamic_id` int(11) DEFAULT NULL,
  `openid` varchar(60) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `content` text,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='动态评论表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_earnings
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_earnings`;
CREATE TABLE `ims_yzcyk_sun_earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `son_id` int(11) NOT NULL COMMENT '下线',
  `money` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金收益表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_fabuset
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_fabuset`;
CREATE TABLE `ims_yzcyk_sun_fabuset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(5) DEFAULT NULL COMMENT '选择类型',
  `price` varchar(15) DEFAULT '0',
  `uniacid` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_fx
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_fx`;
CREATE TABLE `ims_yzcyk_sun_fx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `zf_user_id` int(11) NOT NULL COMMENT '转发人ID',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `time` int(11) NOT NULL COMMENT '时间戳',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分销表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_fxset
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_fxset`;
CREATE TABLE `ims_yzcyk_sun_fxset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fx_details` text NOT NULL COMMENT '分销商申请协议',
  `tx_details` text NOT NULL COMMENT '佣金提现协议',
  `is_fx` int(11) NOT NULL COMMENT '1.开启分销审核2.不开启',
  `is_ej` int(11) NOT NULL COMMENT '是否开启二级分销1.是2.否',
  `tx_rate` int(11) NOT NULL COMMENT '提现手续费',
  `commission` varchar(10) NOT NULL COMMENT '一级佣金',
  `commission2` varchar(10) NOT NULL COMMENT '二级佣金',
  `tx_money` int(11) NOT NULL COMMENT '提现门槛',
  `img` varchar(100) NOT NULL COMMENT '分销中心图片',
  `img2` varchar(100) NOT NULL COMMENT '申请分销图片',
  `uniacid` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '1' COMMENT '1.开启2关闭',
  `instructions` text NOT NULL COMMENT '分销商说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_fxuser
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_fxuser`;
CREATE TABLE `ims_yzcyk_sun_fxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '一级分销',
  `fx_user` int(11) NOT NULL COMMENT '二级分销',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_gift
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_gift`;
CREATE TABLE `ims_yzcyk_sun_gift` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `title` varchar(200) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `content` text NOT NULL COMMENT '文章内容',
  `sort` int(10) DEFAULT '0',
  `hits` int(10) DEFAULT '0',
  `status` tinyint(10) DEFAULT '0',
  `thumb` varchar(200) DEFAULT NULL,
  `thumb2` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT '0',
  `rate` mediumint(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_gift_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_gift_order`;
CREATE TABLE `ims_yzcyk_sun_gift_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `pid` int(10) DEFAULT '0',
  `uid` varchar(100) NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(10) DEFAULT '0',
  `consignee` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_goods
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_goods`;
CREATE TABLE `ims_yzcyk_sun_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `goods_volume` varchar(45) NOT NULL COMMENT '虚拟销量',
  `sales_num` int(11) NOT NULL DEFAULT '0' COMMENT '销量支付完成',
  `spec_id` int(11) NOT NULL COMMENT '主规格ID',
  `lid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品营销类别 1普通 2预约 3好物 4拼团 5砍价 6限时购 7分享',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `goods_num` int(11) NOT NULL COMMENT '商品数量',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品售价',
  `pintuan_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '拼团价格',
  `kanjia_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '砍价最低价',
  `qianggou_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抢购价格',
  `share_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '分享赚钱 一级佣金',
  `second_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '分享赚钱 二级佣金',
  `kanjia_percent` int(11) NOT NULL DEFAULT '20' COMMENT '砍价百分比幅度 10代表10%',
  `goods_cost` decimal(10,2) NOT NULL,
  `type_id` int(11) NOT NULL,
  `freight` decimal(10,2) NOT NULL COMMENT '运费',
  `delivery` varchar(500) NOT NULL COMMENT '关于发货',
  `quality` int(4) NOT NULL COMMENT '正品1是,0否',
  `free` int(4) NOT NULL COMMENT '包邮1是,0否',
  `all_day` int(4) NOT NULL COMMENT '24小时发货1是,0否',
  `service` int(4) NOT NULL COMMENT '售后服务1是,0否',
  `refund` int(4) NOT NULL COMMENT '极速退款1是,0否',
  `weeks` int(4) NOT NULL COMMENT '7天包邮1是，0否',
  `lb_imgs` varchar(500) NOT NULL COMMENT '轮播图',
  `imgs` varchar(500) NOT NULL COMMENT '商品介绍图',
  `time` int(11) NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL,
  `goods_details` text NOT NULL COMMENT '商品详细',
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '1待审核,2通过，3拒绝',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `pintuan_num` int(11) NOT NULL DEFAULT '1' COMMENT '几人成团',
  `sy_num` int(11) NOT NULL COMMENT '剩余数量',
  `is_show` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `spec_name` varchar(45) NOT NULL,
  `spec_value` varchar(200) NOT NULL,
  `spec_names` varchar(45) NOT NULL,
  `spec_values` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '活动开启 1开启 2关闭',
  `title` varchar(200) DEFAULT NULL COMMENT '好物标题',
  `title_dec` varchar(200) DEFAULT NULL COMMENT '好物小标题',
  `haowuimg` varchar(200) DEFAULT NULL COMMENT '好物展示图',
  `pic` varchar(200) DEFAULT NULL COMMENT '活动商品图',
  `haowu_info` text COMMENT '好物介绍',
  `video` text COMMENT '好物视频介绍',
  `show_index` tinyint(1) DEFAULT '0' COMMENT '是否显示在首页',
  `show_recommend` tinyint(1) DEFAULT '0' COMMENT '展示在推荐列表页',
  `show_columns` tinyint(1) DEFAULT '0' COMMENT '展示在专栏列表页',
  `start_time` int(10) DEFAULT NULL COMMENT '活动开始时间',
  `end_time` int(10) DEFAULT NULL COMMENT '活动结束时间',
  `pin_hours` int(11) NOT NULL DEFAULT '24' COMMENT '拼团 下单后结束时间 小时',
  `content` text COMMENT '活动说明',
  `is_deliver` tinyint(4) DEFAULT '0' COMMENT '1自动退款',
  `tag` varchar(255) DEFAULT NULL COMMENT '商品标签',
  `related_gid` int(11) DEFAULT NULL COMMENT '关联商品id  好物和分享',
  `distribution_open` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不开启单独分销，1开启',
  `distribution_commissiontype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0百分比，1固定金额',
  `firstmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '一级佣金',
  `secondmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '二级佣金',
  `thirdmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '三级佣金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_goods_spec`;
CREATE TABLE `ims_yzcyk_sun_goods_spec` (
  `spec_value` varchar(45) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(100) NOT NULL COMMENT '规格名称',
  `sort` int(4) NOT NULL COMMENT '排序',
  `uniacid` varchar(50) NOT NULL COMMENT '50',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_groups`;
CREATE TABLE `ims_yzcyk_sun_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL COMMENT '商品名',
  `marketprice` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `selftime` varchar(100) DEFAULT NULL COMMENT '发布时间',
  `pic` varchar(200) DEFAULT NULL COMMENT '活动图',
  `details` text COMMENT '商品详情',
  `status` int(11) DEFAULT NULL COMMENT '状态 1为开启2为关闭',
  `uniacid` int(11) DEFAULT NULL,
  `starttime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `shopprice` decimal(10,2) DEFAULT NULL COMMENT '最低价',
  `endtime` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `num` int(11) DEFAULT '0' COMMENT '数量',
  `pintuan_num` int(11) DEFAULT '0',
  `content` text COMMENT '活动详情',
  `groups_num` int(11) DEFAULT NULL COMMENT '几人成团',
  `is_deliver` int(2) DEFAULT '0' COMMENT '1为自动退款2为否',
  `showindex` tinyint(1) DEFAULT '0' COMMENT '1显示在首页',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_hblq
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_hblq`;
CREATE TABLE `ims_yzcyk_sun_hblq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `tz_id` int(11) NOT NULL COMMENT '帖子ID',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `time` int(11) NOT NULL COMMENT '时间戳',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='红包领取表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_help
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_help`;
CREATE TABLE `ims_yzcyk_sun_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL COMMENT '标题',
  `answer` text NOT NULL COMMENT '回答',
  `sort` int(4) NOT NULL COMMENT '排序',
  `uniacid` varchar(50) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_hotcity
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_hotcity`;
CREATE TABLE `ims_yzcyk_sun_hotcity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(50) NOT NULL COMMENT '城市名称',
  `time` int(11) NOT NULL COMMENT '创建时间',
  `uniacid` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_hxstaff
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_hxstaff`;
CREATE TABLE `ims_yzcyk_sun_hxstaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(60) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='核销人员';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_information
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_information`;
CREATE TABLE `ims_yzcyk_sun_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` text NOT NULL COMMENT '内容',
  `img` text NOT NULL COMMENT '图片',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '联系人',
  `user_tel` varchar(20) NOT NULL COMMENT '电话',
  `hot` int(11) NOT NULL COMMENT '1.热门 2.不热门',
  `top` int(11) NOT NULL COMMENT '1.置顶 2.不置顶',
  `givelike` int(11) NOT NULL COMMENT '点赞数',
  `views` int(11) NOT NULL COMMENT '浏览量',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `type2_id` int(11) NOT NULL COMMENT '分类二id',
  `type_id` int(11) NOT NULL,
  `state` int(11) NOT NULL COMMENT '1.待审核 2.通过3拒绝',
  `money` decimal(10,2) NOT NULL,
  `time` int(11) NOT NULL COMMENT '发布时间',
  `sh_time` int(11) NOT NULL,
  `top_type` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `hb_money` decimal(10,2) NOT NULL,
  `hb_num` int(11) NOT NULL,
  `hb_type` int(11) NOT NULL,
  `hb_keyword` varchar(20) NOT NULL,
  `hb_random` int(11) NOT NULL,
  `hong` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT '2',
  `user_img2` varchar(100) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `hbfx_num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_label
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_label`;
CREATE TABLE `ims_yzcyk_sun_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(20) NOT NULL,
  `type2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_like
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_like`;
CREATE TABLE `ims_yzcyk_sun_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_id` int(11) NOT NULL COMMENT '帖子id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `zx_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_mercapdetails
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_mercapdetails`;
CREATE TABLE `ims_yzcyk_sun_mercapdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL COMMENT '商家id',
  `store_name` varchar(100) DEFAULT NULL COMMENT '商家名称',
  `mcd_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '提现方式 1订单收入 2微信提现 3审核失败',
  `openid` varchar(30) DEFAULT NULL COMMENT '订单收入支付的openid|提现给的openid',
  `sign` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1增加 2减少',
  `mcd_memo` text COMMENT '相关详细信息',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '全额 订单收入全额 提现全额',
  `realmoney` decimal(10,2) NOT NULL,
  `paycommission` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现支付给平台佣金',
  `ratesmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现手续费',
  `order_id` int(11) DEFAULT NULL COMMENT '订单收入id',
  `wd_id` int(11) DEFAULT NULL COMMENT '提现id',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1成功 2失败 提现可能会失败',
  `add_time` int(11) DEFAULT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_mylabel
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_mylabel`;
CREATE TABLE `ims_yzcyk_sun_mylabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `information_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_news
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_news`;
CREATE TABLE `ims_yzcyk_sun_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '公告标题',
  `details` text NOT NULL COMMENT '公告详情',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_order
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_order`;
CREATE TABLE `ims_yzcyk_sun_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `orderformid` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `good_total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品金额',
  `good_total_num` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `activity_id` int(11) DEFAULT NULL COMMENT '活动id',
  `baby_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `sincetype` tinyint(4) NOT NULL DEFAULT '1' COMMENT '配送方式 1上门自提',
  `distribution` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '配送费',
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠券优惠金额',
  `order_lid` tinyint(4) DEFAULT NULL COMMENT '订单类型 1车友卡充值续费 2车友卡免费领取 3活动报名 4活动入驻',
  `qzk_type` tinyint(4) DEFAULT NULL COMMENT '车友卡类型 1年',
  `pay_type` tinyint(4) DEFAULT NULL COMMENT '支付方式 1微信支付  2免费领取',
  `pay_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态 1支付',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付时间',
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态 0待付款 1待发货(待使用) 2待确认 3已完成 4退款中 5已退款 6退款拒绝7取消订单',
  `queren_time` int(11) DEFAULT NULL COMMENT '确认时间',
  `add_time` int(11) DEFAULT NULL,
  `prepay_id` varchar(60) DEFAULT NULL COMMENT '统一下单标识',
  `qrcode_path` varchar(100) DEFAULT NULL COMMENT '核销二维码',
  `hx_openid` varchar(60) DEFAULT NULL COMMENT '核销人员openid',
  `hx_time` int(11) DEFAULT NULL COMMENT '核销时间',
  `del_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态 1已删除',
  `cancel_time` int(11) DEFAULT NULL COMMENT '取消时间',
  `del_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `store_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '门店id',
  `storelimit_id` int(11) DEFAULT NULL COMMENT '入驻价格id',
  `parent_id_1` int(11) NOT NULL DEFAULT '0',
  `parent_id_2` int(11) NOT NULL DEFAULT '0',
  `parent_id_3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_order_detail`;
CREATE TABLE `ims_yzcyk_sun_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动id',
  `title` varchar(100) DEFAULT NULL COMMENT '活动名称',
  `common_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '普通价',
  `qzk_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '车友价',
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `num` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '门店id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_order_detail1
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_order_detail1`;
CREATE TABLE `ims_yzcyk_sun_order_detail1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `uniacid` int(11) NOT NULL,
  `uid` varchar(60) NOT NULL,
  `gid` int(11) DEFAULT NULL COMMENT '商品id',
  `gname` varchar(60) DEFAULT NULL COMMENT '商品名称',
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价',
  `combine` varchar(100) DEFAULT NULL COMMENT '规格组合',
  `spec_value` varchar(30) DEFAULT NULL COMMENT '规格1',
  `spec_value1` varchar(30) DEFAULT NULL COMMENT '规格2',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `add_time` int(11) DEFAULT NULL,
  `is_pingjia` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_order1
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_order1`;
CREATE TABLE `ims_yzcyk_sun_order1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `user_name` varchar(20) NOT NULL COMMENT '联系人',
  `address` varchar(200) NOT NULL COMMENT '联系地址',
  `tel` varchar(20) NOT NULL COMMENT '电话',
  `time` int(11) NOT NULL COMMENT '下单时间',
  `pay_time` int(11) NOT NULL,
  `complete_time` int(11) NOT NULL,
  `fh_time` int(11) NOT NULL COMMENT '发货时间',
  `state` int(11) NOT NULL COMMENT '1.待付款 2.待发货3.待确认4.已完成5.退款中6.已退款7.退款拒绝',
  `order_num` varchar(20) NOT NULL COMMENT '订单号',
  `good_id` varchar(45) NOT NULL,
  `good_name` varchar(200) NOT NULL,
  `good_img` varchar(400) NOT NULL,
  `good_money` varchar(100) NOT NULL,
  `out_trade_no` varchar(50) NOT NULL,
  `good_spec` varchar(200) NOT NULL COMMENT '商品规格',
  `del` int(11) NOT NULL COMMENT '用户删除1是  2否 ',
  `del2` int(11) NOT NULL COMMENT '商家删除1.是2.否',
  `uniacid` int(11) NOT NULL,
  `freight` decimal(10,2) NOT NULL,
  `note` varchar(100) NOT NULL,
  `good_num` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_order2
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_order2`;
CREATE TABLE `ims_yzcyk_sun_order2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `uid` varchar(60) NOT NULL,
  `cid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '下单方式 0直接下单 1购物车下单',
  `crid` varchar(255) DEFAULT NULL COMMENT '多个商品id',
  `orderformid` varchar(50) DEFAULT NULL COMMENT '订单号',
  `order_lid` tinyint(4) DEFAULT '1' COMMENT '订单类别 1普通订单 2预约订单 3好物 4拼团 5 砍价 6限时购 7分享 8到店买单',
  `pin_buy_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '拼团商品 购买方式  0直接购买 1拼团购买',
  `pin_mch_id` int(11) NOT NULL DEFAULT '0' COMMENT '拼团 0 位拼主 其他值为跟团id (user_groups的id)',
  `pin_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '拼单为拼主的订单id 0为拼主(仅拼单的拼团购买有效)',
  `transaction_id` varchar(50) DEFAULT NULL,
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `good_total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总金额',
  `good_total_num` int(11) NOT NULL DEFAULT '0' COMMENT '商品总数量',
  `sincetype` tinyint(4) NOT NULL DEFAULT '1' COMMENT '配送方式 1送货上门(快递) 2上门自提',
  `distribution` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '配送费(快递费)',
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠券优惠金额',
  `name` varchar(60) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(60) DEFAULT NULL COMMENT '手机',
  `postalcode` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL COMMENT '区县',
  `address` varchar(150) DEFAULT NULL COMMENT '地址',
  `ziti_phone` varchar(60) DEFAULT NULL COMMENT '自提电话',
  `yuyue_name` varchar(60) DEFAULT NULL COMMENT 'order_lid为2生效  预约人姓名',
  `yuyue_phone` varchar(30) DEFAULT NULL COMMENT '预约人电话',
  `yuyue_time` varchar(60) DEFAULT NULL COMMENT '预约人时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `add_time` int(11) NOT NULL COMMENT '下单时间',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付时间',
  `pay_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态 1支付',
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态 0待付款 1待发货 2待确认 3已完成 4退款中 5已退款 6退款拒绝7取消订单',
  `fahuo_time` int(11) DEFAULT NULL COMMENT '发货时间',
  `queren_time` int(11) DEFAULT NULL COMMENT '确认收货时间',
  `cancel_time` int(11) DEFAULT NULL COMMENT '订单取消时间',
  `refund_application_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0未申请退款 1已申请退款',
  `refund_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 退款申请失败 |1退款申请成功(退款处理中) |2退款成功|3退款失败',
  `refund_time` int(11) DEFAULT NULL COMMENT '退款时间',
  `tuikuanformid` varchar(50) DEFAULT NULL COMMENT '退款订单号',
  `del_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态 0未删除 1 用户删除 2商家删除',
  `del_time` int(11) DEFAULT NULL COMMENT '订单删除时间',
  `is_pingjia` tinyint(4) NOT NULL DEFAULT '0' COMMENT '评价 1已评价',
  `share_deduction` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '分享金抵扣',
  `prepay_id` varchar(60) DEFAULT NULL COMMENT '统一下单标识 消息模板使用',
  `qrcode_path` varchar(100) DEFAULT NULL COMMENT '核销二维码',
  `hx_openid` varchar(60) DEFAULT NULL COMMENT '核销人员openid',
  `hx_time` int(11) DEFAULT NULL COMMENT '核销时间',
  `express_delivery` varchar(60) DEFAULT NULL COMMENT '快递',
  `express_orderformid` varchar(60) DEFAULT NULL COMMENT '快递单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_paylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_paylog`;
CREATE TABLE `ims_yzcyk_sun_paylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '外键id(商家,帖子,黄页,拼车)',
  `money` decimal(10,2) NOT NULL COMMENT '钱',
  `time` datetime NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL COMMENT '50',
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_pingjia
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_pingjia`;
CREATE TABLE `ims_yzcyk_sun_pingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `uid` varchar(60) DEFAULT NULL,
  `order_id` int(60) DEFAULT NULL,
  `order_detail_id` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `imgs` text,
  `content` text,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单评价';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_platform
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_platform`;
CREATE TABLE `ims_yzcyk_sun_platform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计申请提现金额',
  `total_realmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计提现金额',
  `total_paycommission` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计平台佣金',
  `total_ratesmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计手续费用',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_privilege_identifier
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_privilege_identifier`;
CREATE TABLE `ims_yzcyk_sun_privilege_identifier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `pic` varchar(200) DEFAULT NULL COMMENT '图片',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='特权标识';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_punch
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_punch`;
CREATE TABLE `ims_yzcyk_sun_punch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL COMMENT '任务标题',
  `pic` varchar(200) DEFAULT NULL COMMENT '展示图标',
  `remark` text COMMENT '任务描述',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务信息表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_punch_prize
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_punch_prize`;
CREATE TABLE `ims_yzcyk_sun_punch_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `punch_id` int(11) DEFAULT NULL COMMENT '任务id',
  `task_day_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT '任务天数1 一周 2 15天 3一个月 4 一个季度 5一年',
  `prize_day` int(11) DEFAULT NULL COMMENT '奖品天数',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `add_time` int(11) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '启用状态 1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='打卡奖品';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_punch_receive_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_punch_receive_record`;
CREATE TABLE `ims_yzcyk_sun_punch_receive_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `prize_id` int(11) DEFAULT NULL COMMENT '奖品id',
  `day_num` int(11) DEFAULT NULL COMMENT '天数',
  `title` varchar(60) DEFAULT NULL COMMENT '奖品名称',
  `store_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `user_coupon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券领取记录';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_punch_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_punch_record`;
CREATE TABLE `ims_yzcyk_sun_punch_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL COMMENT '任务id',
  `year` varchar(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `punch_date` varchar(20) DEFAULT NULL COMMENT '打卡日期',
  `punch_diary` text COMMENT '打卡日记',
  `punch_pic` text COMMENT '打卡图片',
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `user_coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户领取优惠券id',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='打卡记录';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_punch_task
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_punch_task`;
CREATE TABLE `ims_yzcyk_sun_punch_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `punch_id` int(11) DEFAULT NULL,
  `task_day_id` tinyint(4) DEFAULT NULL COMMENT '任务天数id',
  `baby_id` int(11) DEFAULT NULL COMMENT '宝宝id',
  `title` varchar(60) DEFAULT NULL,
  `content` text COMMENT '目标内容',
  `pic` varchar(200) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `add_time_d` varchar(20) DEFAULT NULL,
  `task_num` int(11) DEFAULT NULL COMMENT '任务天数',
  `wc_num` int(11) NOT NULL DEFAULT '0' COMMENT '完成天数',
  `is_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否完成目标 1完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='打卡任务';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_settings
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_settings`;
CREATE TABLE `ims_yzcyk_sun_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `background` varchar(200) DEFAULT NULL COMMENT '首页车友卡背景图',
  `weblogo` varchar(200) DEFAULT NULL COMMENT '车友卡logo',
  `kkxf_background` varchar(200) DEFAULT NULL COMMENT '开卡续费背景图',
  `privilege` text COMMENT '特权介绍',
  `rule` text COMMENT '使用须知',
  `old_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '开卡年费',
  `add_time` int(11) DEFAULT NULL,
  `bg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='车友卡配置';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_share`;
CREATE TABLE `ims_yzcyk_sun_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL COMMENT '帖子id',
  `gid` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_shop_car
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_shop_car`;
CREATE TABLE `ims_yzcyk_sun_shop_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `combine` varchar(110) NOT NULL,
  `spec_value` varchar(30) NOT NULL DEFAULT '' COMMENT '规格值1',
  `spec_value1` varchar(30) NOT NULL DEFAULT '' COMMENT '规格值2',
  `gname` varchar(55) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价',
  `pic` varchar(110) NOT NULL,
  `uid` text NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_sms
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_sms`;
CREATE TABLE `ims_yzcyk_sun_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appkey` varchar(100) NOT NULL,
  `tpl_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '2',
  `tid1` varchar(50) NOT NULL,
  `tid2` varchar(50) NOT NULL,
  `tid3` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_spec_value`;
CREATE TABLE `ims_yzcyk_sun_spec_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `spec_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `num` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_store
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_store`;
CREATE TABLE `ims_yzcyk_sun_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `store_name` varchar(100) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未审核 2审核成功 3审核失败',
  `rz_time` int(11) DEFAULT NULL COMMENT '当前入驻时间',
  `add_time` int(11) DEFAULT NULL,
  `syrq` varchar(100) DEFAULT NULL COMMENT '使用人群',
  `tag` varchar(255) DEFAULT NULL COMMENT '商店标签',
  `coordinates` varchar(20) DEFAULT NULL COMMENT '经纬度',
  `longitude` varchar(20) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(20) DEFAULT NULL COMMENT '纬度',
  `starttime` varchar(20) DEFAULT NULL,
  `endtime` varchar(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `content` text COMMENT '详情',
  `pic` varchar(200) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL COMMENT '商家openid',
  `rz_end_time` int(11) DEFAULT NULL COMMENT '当前入驻结束时间',
  `rz_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1已入驻 2过期',
  `pay_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1已支付 支付完才可以审核',
  `storelimit_id` int(11) DEFAULT NULL COMMENT '入驻价格id',
  `edit_time` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商户账户余额',
  `ptcc_rate` float(11,0) NOT NULL DEFAULT '0' COMMENT '平台抽成比例 1代表1%',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_store_active
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_store_active`;
CREATE TABLE `ims_yzcyk_sun_store_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL COMMENT '活动类型',
  `store_name` varchar(45) DEFAULT NULL COMMENT '商家名称',
  `tel` varchar(15) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `dq_time` int(15) DEFAULT NULL COMMENT '入驻期限',
  `time_type` int(11) DEFAULT NULL COMMENT '1为一周，2一个月，3三个月，4半年，5一年',
  `active_type` int(11) DEFAULT NULL COMMENT '1为集卡',
  `state` int(11) DEFAULT '1' COMMENT '1为待审核2为审核通过',
  `uniacid` int(45) DEFAULT NULL,
  `time_over` int(15) DEFAULT NULL COMMENT '1为时间到期2为时间未到期',
  `rz_time` int(15) DEFAULT NULL COMMENT '入驻时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_store_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_store_category`;
CREATE TABLE `ims_yzcyk_sun_store_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家类别';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_store_district
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_store_district`;
CREATE TABLE `ims_yzcyk_sun_store_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商圈';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_store_rz_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_store_rz_record`;
CREATE TABLE `ims_yzcyk_sun_store_rz_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `begin_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `storelimit_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商家入驻记录信息表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_store_wallet
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_store_wallet`;
CREATE TABLE `ims_yzcyk_sun_store_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `note` varchar(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1加2减',
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家钱包明细';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_store1
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_store1`;
CREATE TABLE `ims_yzcyk_sun_store1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `store_name` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(200) NOT NULL COMMENT '商家地址',
  `announcement` varchar(100) NOT NULL COMMENT '公告',
  `storetype_id` int(11) NOT NULL COMMENT '主行业分类id',
  `storetype2_id` int(11) NOT NULL COMMENT '商家子分类id',
  `area_id` int(11) NOT NULL COMMENT '区域id',
  `yy_time` varchar(50) NOT NULL COMMENT '营业时间',
  `keyword` varchar(50) NOT NULL COMMENT '关键字',
  `skzf` int(11) NOT NULL COMMENT '1.是 2否(刷卡支付)',
  `wifi` int(11) NOT NULL COMMENT '1.是 2否',
  `mftc` int(11) NOT NULL COMMENT '1.是 2否(免费停车)',
  `jzxy` int(11) NOT NULL COMMENT '1.是 2否(禁止吸烟)',
  `tgbj` int(11) NOT NULL COMMENT '1.是 2否(提供包间)',
  `sfxx` int(11) NOT NULL COMMENT '1.是 2否(沙发休闲)',
  `tel` varchar(20) NOT NULL COMMENT '手机号',
  `logo` varchar(100) NOT NULL,
  `weixin_logo` varchar(100) NOT NULL,
  `ad` text NOT NULL COMMENT '轮播图',
  `state` int(11) NOT NULL COMMENT '1.待审核2通过3拒绝',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `password` varchar(100) NOT NULL COMMENT '核销密码',
  `details` text NOT NULL COMMENT '商家简介',
  `uniacid` int(11) NOT NULL,
  `coordinates` varchar(50) NOT NULL,
  `views` int(11) NOT NULL,
  `score` decimal(10,1) NOT NULL,
  `type` int(11) NOT NULL,
  `sh_time` int(11) NOT NULL,
  `time_over` int(11) NOT NULL,
  `img` text NOT NULL,
  `vr_link` text NOT NULL,
  `num` int(11) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `wallet` decimal(10,2) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `dq_time` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `fx_num` int(11) NOT NULL,
  `ewm_logo` varchar(100) NOT NULL,
  `is_top` int(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_storein
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_storein`;
CREATE TABLE `ims_yzcyk_sun_storein` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.半年3.一年',
  `money` decimal(10,2) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_storelimit
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_storelimit`;
CREATE TABLE `ims_yzcyk_sun_storelimit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lt_id` int(11) NOT NULL DEFAULT '0' COMMENT '入驻期限类别id',
  `lt_name` varchar(30) NOT NULL COMMENT '入驻期限类别名称',
  `lt_day` int(5) NOT NULL COMMENT '入驻期限类别天数',
  `uniacid` int(11) NOT NULL COMMENT '应用id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '入驻价格',
  `sort` int(5) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_storepaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_storepaylog`;
CREATE TABLE `ims_yzcyk_sun_storepaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '商家ID',
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商家入驻支付记录表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_storetype
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_storetype`;
CREATE TABLE `ims_yzcyk_sun_storetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL COMMENT '排序',
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_storetype2
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_storetype2`;
CREATE TABLE `ims_yzcyk_sun_storetype2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL COMMENT '排序',
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_story
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_story`;
CREATE TABLE `ims_yzcyk_sun_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL COMMENT '专辑id',
  `title` varchar(100) DEFAULT NULL COMMENT '标题名称',
  `pic` varchar(200) DEFAULT NULL COMMENT '首页和列表图',
  `pic_bg` varchar(200) DEFAULT NULL COMMENT '详情背景图',
  `pic_open` varchar(200) DEFAULT NULL COMMENT '详情中间图片',
  `file_path` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `add_time` int(11) DEFAULT NULL,
  `is_album` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否属于专辑 1专辑',
  `show_index` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1显示在首页',
  `show_st` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1显示在试听',
  `is_vip` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1车友会员卡专享',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1未审核 2审核通过 3审核失败',
  `tg_time` int(11) DEFAULT NULL,
  `jj_time` int(11) DEFAULT NULL,
  `access_num` int(11) NOT NULL DEFAULT '0' COMMENT '访问次数',
  `duration` varchar(30) DEFAULT NULL COMMENT '音频时长',
  `file_link` varchar(250) DEFAULT NULL COMMENT '音频链接',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_story_album
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_story_album`;
CREATE TABLE `ims_yzcyk_sun_story_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `title` varchar(100) DEFAULT NULL COMMENT '专辑名称',
  `pic` varchar(200) DEFAULT NULL COMMENT '首页展示和列表图',
  `banner` varchar(200) DEFAULT NULL COMMENT '专辑banner',
  `source` varchar(100) DEFAULT NULL,
  `show_index` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示在首页',
  `show_st` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示在试听',
  `is_vip` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1车友会员卡专享',
  `add_time` int(11) DEFAULT NULL,
  `access_num` int(11) NOT NULL DEFAULT '0' COMMENT '访问次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_story_category
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_story_category`;
CREATE TABLE `ims_yzcyk_sun_story_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_story_collection
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_story_collection`;
CREATE TABLE `ims_yzcyk_sun_story_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `story_id` int(11) DEFAULT NULL COMMENT '收藏故事会id',
  `collect_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '收藏状态 1收藏',
  `add_time` int(11) DEFAULT NULL,
  `edit_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_system
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_system`;
CREATE TABLE `ims_yzcyk_sun_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(100) NOT NULL COMMENT 'appid',
  `appsecret` varchar(200) NOT NULL COMMENT 'appsecret',
  `mchid` varchar(20) NOT NULL COMMENT '商户号',
  `wxkey` varchar(100) NOT NULL COMMENT '商户秘钥',
  `uniacid` varchar(50) NOT NULL,
  `url_name` varchar(20) NOT NULL COMMENT '网址名称',
  `details` text NOT NULL COMMENT '关于我们',
  `url_logo` varchar(100) NOT NULL COMMENT '网址logo',
  `bq_name` varchar(50) NOT NULL COMMENT '版权名称',
  `link_name` varchar(30) NOT NULL COMMENT '网站名称',
  `link_logo` varchar(100) NOT NULL COMMENT '网站logo',
  `support` varchar(20) NOT NULL COMMENT '技术支持',
  `bq_logo` varchar(100) NOT NULL,
  `fontcolor` varchar(20) DEFAULT NULL,
  `color` varchar(20) NOT NULL,
  `tz_appid` varchar(30) NOT NULL,
  `tz_name` varchar(30) NOT NULL,
  `pt_name` varchar(30) NOT NULL COMMENT '平台名称',
  `tz_audit` int(11) NOT NULL COMMENT '帖子审核1.是 2否',
  `sj_audit` int(11) NOT NULL COMMENT '商家审核1.是 2否',
  `mapkey` varchar(200) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `gd_key` varchar(100) NOT NULL,
  `hb_sxf` int(11) NOT NULL,
  `tx_money` decimal(10,2) NOT NULL,
  `tx_sxf` int(11) NOT NULL,
  `tx_details` text NOT NULL,
  `rz_xuz` text NOT NULL,
  `ft_xuz` text NOT NULL,
  `fx_money` decimal(10,2) NOT NULL,
  `is_hhr` int(4) NOT NULL DEFAULT '2',
  `is_hbfl` int(4) NOT NULL DEFAULT '2',
  `is_zx` int(4) NOT NULL DEFAULT '2',
  `is_car` int(4) NOT NULL,
  `pc_xuz` text NOT NULL,
  `pc_money` decimal(10,2) NOT NULL,
  `is_sjrz` int(4) NOT NULL,
  `is_pcfw` int(4) NOT NULL,
  `total_num` int(11) NOT NULL,
  `is_goods` int(4) NOT NULL,
  `apiclient_cert` text NOT NULL,
  `apiclient_key` text NOT NULL,
  `is_openzx` int(4) NOT NULL,
  `is_hyset` int(4) NOT NULL,
  `is_tzopen` int(4) NOT NULL,
  `is_pageopen` int(11) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `is_tel` int(4) NOT NULL,
  `tx_mode` int(4) NOT NULL DEFAULT '1',
  `many_city` int(4) NOT NULL DEFAULT '2',
  `tx_type` int(4) NOT NULL DEFAULT '2',
  `is_hbzf` int(4) NOT NULL DEFAULT '1',
  `hb_img` varchar(100) NOT NULL,
  `tz_num` int(11) NOT NULL,
  `client_ip` varchar(30) NOT NULL,
  `hb_content` varchar(100) NOT NULL,
  `is_vipcardopen` int(4) NOT NULL DEFAULT '1',
  `is_jkopen` int(4) NOT NULL DEFAULT '1',
  `address` varchar(150) DEFAULT NULL COMMENT '店铺地址',
  `sj_ruzhu` int(5) DEFAULT NULL COMMENT '0为关闭1为开启',
  `is_kanjiaopen` int(4) DEFAULT '0' COMMENT '0关闭1开启',
  `bargain_price` varchar(10) DEFAULT NULL COMMENT '每次砍价的%',
  `sign` varchar(12) DEFAULT NULL COMMENT '本店招牌自定义',
  `bargain_title` varchar(15) DEFAULT NULL COMMENT '砍价分享标题',
  `is_pintuanopen` int(4) DEFAULT NULL COMMENT '2为关闭1为开启',
  `refund` int(4) DEFAULT '1' COMMENT '1为买家申请2为自动退款',
  `refund_time` int(4) DEFAULT '0' COMMENT '自动退款时间 1为24；2为48；3为72；4为活动结束；5为不退款',
  `groups_title` varchar(45) DEFAULT NULL COMMENT '拼团分享标题',
  `mask` int(2) DEFAULT '1' COMMENT '0不显示1显示',
  `announcement` varchar(60) DEFAULT NULL COMMENT '首页公告',
  `shopmsg_status` tinyint(1) DEFAULT NULL COMMENT '欢迎语开关',
  `shopmsg` varchar(60) DEFAULT NULL COMMENT '欢迎语',
  `shopmsg2` varchar(60) DEFAULT NULL COMMENT '问题咨询',
  `shopmsg_img` varchar(200) DEFAULT NULL COMMENT '欢迎头像',
  `is_yuyueopen` int(4) DEFAULT NULL COMMENT '开启预约 1开启 2禁用',
  `yuyue_title` varchar(60) DEFAULT NULL COMMENT '预约分享标题',
  `is_haowuopen` int(4) DEFAULT NULL COMMENT '开启好物',
  `haowu_title` varchar(60) DEFAULT NULL COMMENT '好物分享标题',
  `is_couponopen` int(4) DEFAULT NULL COMMENT '开启优惠券 1开启 2禁用',
  `coupon_title` varchar(60) DEFAULT NULL COMMENT '分享优惠券标题',
  `coupon_banner` varchar(200) DEFAULT NULL COMMENT '优惠券banner',
  `is_gywmopen` int(4) DEFAULT NULL COMMENT '开启关于我们',
  `gywm_title` varchar(60) DEFAULT NULL COMMENT '分享关于我们标题',
  `is_xianshigouopen` int(4) DEFAULT NULL COMMENT '开启限时购 1开启 ',
  `xianshigou_title` varchar(60) DEFAULT NULL COMMENT '分享限时购标题',
  `is_shareopen` int(4) DEFAULT NULL COMMENT '开启分享 1开启',
  `share_title` varchar(60) DEFAULT NULL COMMENT '分享分享标题',
  `customer_time` varchar(30) DEFAULT NULL COMMENT '客服时间',
  `provide` varchar(255) DEFAULT NULL COMMENT '基础服务',
  `shop_banner` text COMMENT '商店banner',
  `shop_details` text COMMENT '商店介绍',
  `gywm_banner` varchar(200) DEFAULT NULL COMMENT '关于我们banner',
  `shopdes` text COMMENT '商店介绍 详情',
  `shopdes_img` text COMMENT '商店介绍图',
  `distribution` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '配送费',
  `ziti_address` varchar(200) DEFAULT NULL COMMENT '商家自提地址',
  `ddmd_img` varchar(100) DEFAULT NULL COMMENT '到店买单头像',
  `ddmd_title` varchar(100) DEFAULT NULL COMMENT '到店买单商户名称',
  `hx_openid` text COMMENT '核销人员openid',
  `tag` varchar(200) DEFAULT NULL COMMENT '店铺标签',
  `is_by` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否全店包邮',
  `is_xxpf` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否先行赔付',
  `is_qtwy` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否七天无忧退款退货',
  `yuyue_sort` int(11) NOT NULL DEFAULT '0' COMMENT '预约 首页推荐排序',
  `haowu_sort` int(11) NOT NULL DEFAULT '0' COMMENT '好物 首页推荐排序',
  `groups_sort` int(11) NOT NULL DEFAULT '0' COMMENT '拼团 首页推荐排序',
  `bargain_sort` int(11) NOT NULL DEFAULT '0' COMMENT '砍价 首页推荐排序',
  `xianshigou_sort` int(11) NOT NULL DEFAULT '0' COMMENT '限时购首页推荐 排序',
  `share_sort` int(11) NOT NULL DEFAULT '0' COMMENT '分享首页推荐排序',
  `xinpin_sort` int(11) NOT NULL DEFAULT '0' COMMENT '新品 首页推荐排序',
  `index_adv_img` varchar(100) DEFAULT NULL COMMENT '首页广告图',
  `is_adv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否开启首页广告 1开启',
  `share_rule` text COMMENT '分享金规则',
  `groups_rule` text COMMENT '拼团规则说明',
  `coordinates` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `index_title` varchar(60) DEFAULT NULL COMMENT '首页自定义标题',
  `hz_tel` varchar(60) DEFAULT NULL COMMENT '首页合作电话',
  `jszc_img` varchar(200) DEFAULT NULL COMMENT '技术支持头像',
  `jszc_tdcp` varchar(200) DEFAULT NULL COMMENT '首页技术支持团队出品',
  `index_layout` text COMMENT '首页布局',
  `is_layout` tinyint(4) DEFAULT '0' COMMENT '首页布局开关 1开',
  `is_techzhichi` tinyint(4) NOT NULL DEFAULT '1' COMMENT '技术支持开关 1开 2关',
  `store_open` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商家入驻 1开启 0关闭',
  `map_key` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_tab
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_tab`;
CREATE TABLE `ims_yzcyk_sun_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` varchar(10) DEFAULT NULL COMMENT '首页文字',
  `indeximg` varchar(200) DEFAULT NULL,
  `indeximgs` varchar(200) DEFAULT NULL COMMENT '首页图标',
  `store` varchar(10) DEFAULT NULL COMMENT '商店',
  `storeimg` varchar(200) DEFAULT NULL,
  `storeimgs` varchar(200) DEFAULT NULL,
  `dynamic` varchar(10) DEFAULT NULL COMMENT '动态',
  `dynamicimg` varchar(200) DEFAULT NULL,
  `dynamicimgs` varchar(200) DEFAULT NULL,
  `dynamic_status` tinyint(1) DEFAULT '0' COMMENT '动态开关',
  `dynamic_banner` varchar(255) DEFAULT NULL COMMENT '动态页banner',
  `dynamic_headimg` varchar(255) DEFAULT NULL COMMENT '动态页店家头像',
  `cart` varchar(10) DEFAULT NULL COMMENT '购物车',
  `cartimg` varchar(200) DEFAULT NULL,
  `cartimgs` varchar(200) DEFAULT NULL,
  `mine` varchar(10) DEFAULT NULL COMMENT '我的',
  `mineimg` varchar(200) DEFAULT NULL,
  `mineimgs` varchar(200) DEFAULT NULL,
  `fontcolor` varchar(10) DEFAULT NULL,
  `fontcolored` varchar(10) DEFAULT NULL COMMENT '点击后字体颜色',
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_top
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_top`;
CREATE TABLE `ims_yzcyk_sun_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1.一天2.一周3.一个月',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `uniacid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_type`;
CREATE TABLE `ims_yzcyk_sun_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL COMMENT '分类名称',
  `img` varchar(100) NOT NULL COMMENT '分类图片',
  `uniacid` int(11) NOT NULL COMMENT '小程序id',
  `num` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_type2
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_type2`;
CREATE TABLE `ims_yzcyk_sun_type2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `type_id` int(11) NOT NULL COMMENT '主分类id',
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_tzpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_tzpaylog`;
CREATE TABLE `ims_yzcyk_sun_tzpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tz_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帖子支付记录表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user`;
CREATE TABLE `ims_yzcyk_sun_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL COMMENT 'openid',
  `img` varchar(200) NOT NULL COMMENT '头像',
  `time` varchar(20) NOT NULL COMMENT '注册时间',
  `name` varchar(20) NOT NULL COMMENT '昵称',
  `uniacid` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '分销金额 暂定分销金额',
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计金额',
  `user_name` varchar(20) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  `end_time` int(11) DEFAULT NULL COMMENT 'vip车友会员卡过期时间',
  `is_vip` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1车友vip会员卡',
  `names` varchar(30) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `address_detail` varchar(100) DEFAULT NULL,
  `baby_id` int(11) DEFAULT NULL,
  `parents_id` int(11) DEFAULT '0' COMMENT '上级用户id',
  `parents_name` varchar(255) DEFAULT NULL COMMENT '上级用户昵称',
  `telphone` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=993 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_active
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_active`;
CREATE TABLE `ims_yzcyk_sun_user_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL COMMENT 'openid',
  `num` int(11) DEFAULT NULL COMMENT '卡片数量',
  `img` varchar(150) DEFAULT NULL,
  `jikanum` int(11) DEFAULT NULL COMMENT '当前可抽奖次数',
  `active_id` int(11) DEFAULT NULL,
  `kapian_id` int(11) DEFAULT NULL,
  `sharenum` int(11) DEFAULT NULL COMMENT '可分享次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_bargain
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_bargain`;
CREATE TABLE `ims_yzcyk_sun_user_bargain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) NOT NULL COMMENT '用户id',
  `gid` int(11) DEFAULT NULL COMMENT '商品ID',
  `mch_id` int(11) DEFAULT NULL COMMENT '0是砍主，其他则返回砍主的ID',
  `status` int(11) DEFAULT '1' COMMENT '状态 1砍价中 2待付款 3已购买',
  `uniacid` int(11) DEFAULT NULL,
  `price_ago` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '砍价前价格',
  `prices` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '砍价后价格',
  `kanjias` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '个人砍价金额',
  `add_time` int(11) DEFAULT NULL COMMENT '砍价时间',
  `prices_current` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '当前砍价后价格(只对砍主用)',
  `kanjias_current` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '总共砍了多少钱(砍主使用)',
  `lowest_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '砍价最低价格(砍主使用)',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_coupon`;
CREATE TABLE `ims_yzcyk_sun_user_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(60) NOT NULL DEFAULT '' COMMENT '用户',
  `store_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `title` varchar(60) DEFAULT NULL COMMENT '优惠券名称',
  `sign` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1线上优惠券 2门店优惠券',
  `type` tinyint(1) DEFAULT NULL COMMENT '优惠券类型 1满减 2折扣 3满送',
  `m_price` int(10) NOT NULL DEFAULT '0' COMMENT '满多少',
  `mj_price` int(10) NOT NULL DEFAULT '0' COMMENT '减多少',
  `lq_time` int(11) DEFAULT NULL COMMENT '领取时间',
  `end_time` int(11) DEFAULT NULL COMMENT '过期时间',
  `source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '来源 1用户领取 2打卡领取',
  `is_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否使用 1使用',
  `use_time` int(11) DEFAULT NULL COMMENT '使用时间',
  `orderformid` varchar(30) DEFAULT NULL COMMENT '优惠券单号',
  `qrcode_path` varchar(100) DEFAULT NULL COMMENT '核销二维码',
  `hx_openid` varchar(60) DEFAULT NULL COMMENT '核销人员openid',
  `hx_time` int(11) DEFAULT NULL COMMENT '核销时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='用户优惠券';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_groups`;
CREATE TABLE `ims_yzcyk_sun_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拼团id',
  `mch_id` int(11) DEFAULT NULL COMMENT '判断是否是团长，团长 0，跟团id',
  `gid` int(11) DEFAULT NULL COMMENT '商品的id',
  `openid` varchar(100) DEFAULT NULL COMMENT '用户的id',
  `order_id` varchar(100) DEFAULT NULL COMMENT '订单的id',
  `addtime` int(11) DEFAULT NULL COMMENT '加入的时间',
  `uniacid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '状态  1 为拼团成功，2为拼团中，3为拼团失败',
  `price` decimal(10,2) DEFAULT NULL COMMENT '拼团价格',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '当前拼团人数',
  `buynum` int(11) NOT NULL DEFAULT '0' COMMENT '总拼团人数',
  `refund_num` int(11) NOT NULL DEFAULT '0' COMMENT '已经申请退款次数',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `xml` text COMMENT '退款返回报文',
  `out_refund_no` varchar(60) DEFAULT NULL COMMENT '退款单号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_money_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_money_record`;
CREATE TABLE `ims_yzcyk_sun_user_money_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(60) DEFAULT NULL,
  `sign` tinyint(4) DEFAULT NULL COMMENT '1 增加 2减少',
  `type` tinyint(4) DEFAULT NULL COMMENT '1分销增加 2佣金支付抵扣减少',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `title` varchar(100) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `user_share_record_id` int(11) DEFAULT '0' COMMENT '关联分享记录id',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '佣金级别 1一级 2二级',
  `orderformid` varchar(60) DEFAULT NULL COMMENT '关联订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='金额变动记录表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_share
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_share`;
CREATE TABLE `ims_yzcyk_sun_user_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `openid` varchar(60) DEFAULT NULL COMMENT '子级openid',
  `p_openid` varchar(60) DEFAULT NULL COMMENT '父级openid',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分享用户关系表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_share_access_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_share_access_record`;
CREATE TABLE `ims_yzcyk_sun_user_share_access_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(60) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分享详情访问记录';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_share_goods_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_share_goods_record`;
CREATE TABLE `ims_yzcyk_sun_user_share_goods_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(60) DEFAULT NULL COMMENT '分享者openid',
  `acc_openid` varchar(60) DEFAULT NULL COMMENT '访问者openid',
  `gid` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分享商品记录';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_share_join
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_share_join`;
CREATE TABLE `ims_yzcyk_sun_user_share_join` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(60) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='判断参加记录信息表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_share_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_share_record`;
CREATE TABLE `ims_yzcyk_sun_user_share_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(60) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `first_openid` varchar(60) DEFAULT NULL,
  `first_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '一级佣金',
  `second_openid` varchar(60) DEFAULT NULL,
  `second_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '二级佣金',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分享记录信息表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_user_vipcard
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_user_vipcard`;
CREATE TABLE `ims_yzcyk_sun_user_vipcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL,
  `vipcard_id` int(11) NOT NULL,
  `card_number` varchar(45) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_userformid
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_userformid`;
CREATE TABLE `ims_yzcyk_sun_userformid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `form_id` varchar(50) NOT NULL COMMENT 'form_id',
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL COMMENT 'openid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='formid表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_userinfo`;
CREATE TABLE `ims_yzcyk_sun_userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `uid` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(10) DEFAULT '0',
  `nickName` varchar(60) DEFAULT NULL,
  `avatarUrl` varchar(200) DEFAULT NULL,
  `fromuid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_vip_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_vip_record`;
CREATE TABLE `ims_yzcyk_sun_vip_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `begin_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联订单id',
  `add_time` int(11) DEFAULT NULL,
  `activationcode_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联激活码id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='vip记录';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_vipcard
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_vipcard`;
CREATE TABLE `ims_yzcyk_sun_vipcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `img` varchar(100) NOT NULL,
  `price` varchar(45) NOT NULL,
  `desc` text NOT NULL,
  `uniacid` int(11) NOT NULL,
  `discount` varchar(45) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_withdraw`;
CREATE TABLE `ims_yzcyk_sun_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL COMMENT '提现openid',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现全额',
  `wd_type` tinyint(4) DEFAULT NULL COMMENT '提现方式 1微信',
  `wd_account` varchar(100) DEFAULT NULL COMMENT '提现账号',
  `wd_name` varchar(255) DEFAULT NULL COMMENT '提现姓名',
  `wd_phone` varchar(255) DEFAULT NULL COMMENT '提现手机号',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提现状态 1成功 2失败',
  `realmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际提现金额',
  `paycommission` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台佣金',
  `ratesmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '商家id',
  `store_name` varchar(100) DEFAULT NULL COMMENT '商家名称',
  `baowen` text COMMENT '提现报文',
  `add_time` int(11) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1审核通过 2审核失败',
  `is_state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0不需要审核 1需要审核',
  `err_code` varchar(50) DEFAULT NULL COMMENT '提现错误码',
  `err_code_des` varchar(200) DEFAULT NULL COMMENT '失败原因',
  `tx_time` int(11) DEFAULT NULL COMMENT '提现时间',
  `request_time` int(11) DEFAULT NULL,
  `del_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态',
  `review_time` int(11) DEFAULT NULL COMMENT '审核时间',
  `return_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '返还状态 1提现失败返还',
  `return_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_withdraw_baowen
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_withdraw_baowen`;
CREATE TABLE `ims_yzcyk_sun_withdraw_baowen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `baowen` text,
  `wd_id` int(11) DEFAULT NULL COMMENT '提现id',
  `add_time` int(11) DEFAULT NULL,
  `request_data` text COMMENT '请求数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_withdrawal`;
CREATE TABLE `ims_yzcyk_sun_withdrawal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL COMMENT '真实姓名',
  `username` varchar(100) NOT NULL COMMENT '账号',
  `type` int(11) NOT NULL COMMENT '1支付宝 2.微信 3.银行',
  `time` int(11) NOT NULL COMMENT '申请时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `state` int(11) NOT NULL COMMENT '1.待审核 2.通过  3.拒绝',
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `uniacid` int(11) NOT NULL,
  `method` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_withdrawset
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_withdrawset`;
CREATE TABLE `ims_yzcyk_sun_withdrawset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `wd_type` varchar(255) NOT NULL DEFAULT '1' COMMENT '提现方式 1微信提现',
  `min_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最低提现金额',
  `avoidmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '免审金额',
  `is_open` tinyint(4) NOT NULL DEFAULT '1' COMMENT '提现开关 1开 2关',
  `cms_rates` float NOT NULL DEFAULT '0' COMMENT '平台抽成比率',
  `wd_wxrates` float NOT NULL DEFAULT '0' COMMENT '微信提现手续费费率',
  `wd_content` text COMMENT '提现须知',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_yellowpaylog
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_yellowpaylog`;
CREATE TABLE `ims_yzcyk_sun_yellowpaylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hy_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `time` datetime NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黄页支付记录表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_yellowset
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_yellowset`;
CREATE TABLE `ims_yzcyk_sun_yellowset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL COMMENT '入住天数',
  `money` decimal(10,2) NOT NULL,
  `num` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黄页设置表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_yellowstore
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_yellowstore`;
CREATE TABLE `ims_yzcyk_sun_yellowstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT 'logo图片',
  `company_name` varchar(100) NOT NULL COMMENT '公司名称',
  `company_address` varchar(200) NOT NULL COMMENT '公司地址',
  `type_id` int(11) NOT NULL COMMENT '二级分类',
  `link_tel` varchar(20) NOT NULL COMMENT '联系电话',
  `sort` int(11) NOT NULL COMMENT '排序',
  `rz_time` int(11) NOT NULL COMMENT '入住时间',
  `sh_time` int(11) NOT NULL COMMENT '审核时间',
  `state` int(4) NOT NULL COMMENT '1待,2通过,3拒绝',
  `rz_type` int(4) NOT NULL COMMENT '入驻类型',
  `time_over` int(4) NOT NULL COMMENT '1到期,2没到期',
  `uniacid` varchar(50) NOT NULL,
  `coordinates` varchar(50) NOT NULL COMMENT '坐标',
  `content` text NOT NULL COMMENT '简介',
  `imgs` varchar(500) NOT NULL COMMENT '多图',
  `views` int(11) NOT NULL,
  `tel2` varchar(20) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `dq_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_yingxiao
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_yingxiao`;
CREATE TABLE `ims_yzcyk_sun_yingxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yuyue` varchar(45) DEFAULT NULL COMMENT '预约',
  `yyimg` varchar(150) DEFAULT NULL COMMENT '预约图标',
  `haowu` varchar(45) DEFAULT NULL COMMENT '好物',
  `hwimg` varchar(150) DEFAULT NULL COMMENT '好物图标',
  `youhuiquan` varchar(45) DEFAULT NULL COMMENT '优惠券',
  `yhqimg` varchar(150) DEFAULT NULL COMMENT '优惠券图标',
  `guanyuwomen` varchar(45) DEFAULT NULL COMMENT '关于我们',
  `gywmimg` varchar(150) DEFAULT NULL COMMENT '关于我们图标',
  `pintuan` varchar(45) DEFAULT NULL COMMENT '拼团',
  `ptimg` varchar(150) DEFAULT NULL COMMENT '拼团图标',
  `kanjia` varchar(45) DEFAULT NULL COMMENT '砍价',
  `kjimg` varchar(150) DEFAULT NULL COMMENT '砍价图标',
  `xianshigou` varchar(45) DEFAULT NULL COMMENT '限时购',
  `xsgimg` varchar(150) DEFAULT NULL COMMENT '限时购图标',
  `fenxiang` varchar(45) DEFAULT NULL COMMENT '分享',
  `fximg` varchar(150) DEFAULT NULL COMMENT '分享图标',
  `uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_yjset
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_yjset`;
CREATE TABLE `ims_yzcyk_sun_yjset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(4) NOT NULL DEFAULT '1' COMMENT '1统一模式,2分开模式',
  `typer` varchar(10) NOT NULL COMMENT '统一比例',
  `sjper` varchar(10) NOT NULL COMMENT '商家比例',
  `hyper` varchar(10) NOT NULL COMMENT '黄页比例',
  `pcper` varchar(10) NOT NULL COMMENT '拼车比例',
  `tzper` varchar(10) NOT NULL COMMENT '帖子比例',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='佣金比例表';

-- ----------------------------
-- Table structure for ims_yzcyk_sun_yjtx
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_yjtx`;
CREATE TABLE `ims_yzcyk_sun_yjtx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL COMMENT '账号id',
  `tx_type` int(4) NOT NULL COMMENT '提现方式 1,支付宝,2微信,3银联',
  `tx_cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `status` int(4) NOT NULL COMMENT '状态 1申请,2通过,3拒绝',
  `uniacid` varchar(50) NOT NULL,
  `cerated_time` datetime NOT NULL COMMENT '日期',
  `sj_cost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `account` varchar(30) NOT NULL COMMENT '账户',
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `sx_cost` decimal(10,2) NOT NULL COMMENT '手续费',
  `time` datetime NOT NULL COMMENT '审核时间',
  `is_del` int(4) NOT NULL DEFAULT '1' COMMENT '1正常,2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_zx
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_zx`;
CREATE TABLE `ims_yzcyk_sun_zx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL COMMENT '分类ID',
  `user_id` int(11) NOT NULL COMMENT '发布人ID',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` datetime NOT NULL,
  `yd_num` int(11) NOT NULL COMMENT '阅读数量',
  `pl_num` int(11) NOT NULL COMMENT '评论数量',
  `uniacid` varchar(50) NOT NULL,
  `imgs` text NOT NULL COMMENT '图片',
  `state` int(4) NOT NULL DEFAULT '1',
  `sh_time` datetime NOT NULL,
  `type` int(4) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `jianjie` varchar(50) DEFAULT NULL COMMENT '头条简介',
  `indeximg` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_zx_assess
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_zx_assess`;
CREATE TABLE `ims_yzcyk_sun_zx_assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_id` int(4) NOT NULL,
  `score` int(11) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(500) NOT NULL,
  `cerated_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `uniacid` varchar(50) NOT NULL,
  `status` int(4) NOT NULL,
  `reply` text NOT NULL,
  `reply_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_zx_type
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_zx_type`;
CREATE TABLE `ims_yzcyk_sun_zx_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL COMMENT '分类名称',
  `icon` varchar(100) NOT NULL COMMENT '图标',
  `sort` int(4) NOT NULL COMMENT '排序',
  `time` datetime NOT NULL COMMENT '时间',
  `uniacid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ims_yzcyk_sun_zx_zj
-- ----------------------------
DROP TABLE IF EXISTS `ims_yzcyk_sun_zx_zj`;
CREATE TABLE `ims_yzcyk_sun_zx_zj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zx_id` int(11) NOT NULL COMMENT '资讯ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `uniacid` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯足迹';
