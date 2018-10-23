/*
Navicat MySQL Data Transfer

Source Server         : dz
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : sport

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2018-10-23 16:12:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address_info`
-- ----------------------------
DROP TABLE IF EXISTS `address_info`;
CREATE TABLE `address_info` (
  `address_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) NOT NULL,
  `address_area` varchar(200) NOT NULL,
  `address_detail` varchar(500) NOT NULL,
  `address_poster` varchar(10) NOT NULL,
  `address_name` varchar(20) NOT NULL,
  `address_tel` varchar(15) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_info
-- ----------------------------

-- ----------------------------
-- Table structure for `colors`
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors` (
  `color_id` int(6) NOT NULL AUTO_INCREMENT,
  `goods_id` int(6) NOT NULL,
  `colors` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`color_id`),
  KEY `colors_fk1` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `colors` VALUES ('1', '1', '上黄下黑');
INSERT INTO `colors` VALUES ('2', '1', '纯蓝');
INSERT INTO `colors` VALUES ('3', '1', '上白下黑');
INSERT INTO `colors` VALUES ('4', '1', '灰色');
INSERT INTO `colors` VALUES ('5', '2', '灰色');
INSERT INTO `colors` VALUES ('6', '3', '白色');
INSERT INTO `colors` VALUES ('7', '3', '点点蓝');
INSERT INTO `colors` VALUES ('8', '3', '黑色');
INSERT INTO `colors` VALUES ('9', '4', '纯黑');
INSERT INTO `colors` VALUES ('10', '5', '黄蓝');
INSERT INTO `colors` VALUES ('11', '5', '纯蓝');
INSERT INTO `colors` VALUES ('12', '5', '条纹蓝');
INSERT INTO `colors` VALUES ('13', '6', '经典款');
INSERT INTO `colors` VALUES ('14', '7', '橙色');
INSERT INTO `colors` VALUES ('15', '7', '深蓝色');
INSERT INTO `colors` VALUES ('16', '7', '灰色');
INSERT INTO `colors` VALUES ('17', '8', '黄黑条纹');
INSERT INTO `colors` VALUES ('18', '8', '蓝白条纹');
INSERT INTO `colors` VALUES ('19', '9', '红色');
INSERT INTO `colors` VALUES ('20', '9', '黄绿');
INSERT INTO `colors` VALUES ('21', '9', '蓝白');
INSERT INTO `colors` VALUES ('22', '9', '紫橙');
INSERT INTO `colors` VALUES ('23', '9', '橙绿');
INSERT INTO `colors` VALUES ('24', '10', '黑白');
INSERT INTO `colors` VALUES ('25', '10', '黄蓝');
INSERT INTO `colors` VALUES ('26', '10', '灰红');
INSERT INTO `colors` VALUES ('27', '10', '白色');
INSERT INTO `colors` VALUES ('28', '10', '荧光黄');
INSERT INTO `colors` VALUES ('29', '11', '灰蓝');
INSERT INTO `colors` VALUES ('30', '11', '纯黑');
INSERT INTO `colors` VALUES ('31', '12', '星空');
INSERT INTO `colors` VALUES ('32', '12', '蓝黑');
INSERT INTO `colors` VALUES ('33', '12', '黑白');
INSERT INTO `colors` VALUES ('34', '12', '橙灰');
INSERT INTO `colors` VALUES ('35', '13', '绿色');
INSERT INTO `colors` VALUES ('36', '13', '浅紫');
INSERT INTO `colors` VALUES ('37', '13', '浅橙');
INSERT INTO `colors` VALUES ('38', '14', '白绿爆款');
INSERT INTO `colors` VALUES ('39', '15', '升级款');
INSERT INTO `colors` VALUES ('40', '16', '蓝色');
INSERT INTO `colors` VALUES ('41', '16', '粉色');
INSERT INTO `colors` VALUES ('42', '16', '橘红色');
INSERT INTO `colors` VALUES ('43', '17', '紫色');
INSERT INTO `colors` VALUES ('44', '17', '粉色');
INSERT INTO `colors` VALUES ('45', '18', '经典金属色');
INSERT INTO `colors` VALUES ('46', '19', '黄色');
INSERT INTO `colors` VALUES ('47', '19', '绿色');
INSERT INTO `colors` VALUES ('48', '20', '黑色');
INSERT INTO `colors` VALUES ('49', '21', '商店同款');
INSERT INTO `colors` VALUES ('50', '22', '透明');
INSERT INTO `colors` VALUES ('51', '23', '白色');
INSERT INTO `colors` VALUES ('52', '23', '黑色');
INSERT INTO `colors` VALUES ('53', '23', '红色');
INSERT INTO `colors` VALUES ('54', '23', '灰色');
INSERT INTO `colors` VALUES ('55', '24', '白色');
INSERT INTO `colors` VALUES ('56', '24', '黑色');
INSERT INTO `colors` VALUES ('57', '25', '浅灰色');
INSERT INTO `colors` VALUES ('58', '25', '深灰色');
INSERT INTO `colors` VALUES ('59', '25', '蓝色');
INSERT INTO `colors` VALUES ('60', '26', '黑色');
INSERT INTO `colors` VALUES ('61', '26', '蓝色');
INSERT INTO `colors` VALUES ('62', '26', '白色');
INSERT INTO `colors` VALUES ('63', '27', '玫瑰粉');
INSERT INTO `colors` VALUES ('64', '28', '黑色');
INSERT INTO `colors` VALUES ('65', '28', '白色');
INSERT INTO `colors` VALUES ('66', '29', '新鲜红');
INSERT INTO `colors` VALUES ('67', '30', '灰色');
INSERT INTO `colors` VALUES ('68', '31', '白色');
INSERT INTO `colors` VALUES ('69', '31', '黑色');
INSERT INTO `colors` VALUES ('70', '32', '经典星空蓝');
INSERT INTO `colors` VALUES ('71', '33', '灰红');
INSERT INTO `colors` VALUES ('72', '33', '黄白');
INSERT INTO `colors` VALUES ('73', '33', '蓝白');
INSERT INTO `colors` VALUES ('74', '34', '白色');
INSERT INTO `colors` VALUES ('75', '35', '蓝色');
INSERT INTO `colors` VALUES ('76', '35', '灰色');
INSERT INTO `colors` VALUES ('77', '36', '黑色');

-- ----------------------------
-- Table structure for `goods_comment`
-- ----------------------------
DROP TABLE IF EXISTS `goods_comment`;
CREATE TABLE `goods_comment` (
  `goods_id` int(6) NOT NULL,
  `goods_comments` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`goods_comments`),
  CONSTRAINT `fk_goods_comment` FOREIGN KEY (`goods_id`) REFERENCES `goods_info` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_comment
-- ----------------------------
INSERT INTO `goods_comment` VALUES ('1', '10');
INSERT INTO `goods_comment` VALUES ('2', '20');
INSERT INTO `goods_comment` VALUES ('3', '32');
INSERT INTO `goods_comment` VALUES ('4', '23');
INSERT INTO `goods_comment` VALUES ('5', '342');
INSERT INTO `goods_comment` VALUES ('6', '2987');
INSERT INTO `goods_comment` VALUES ('7', '35435');
INSERT INTO `goods_comment` VALUES ('8', '354');
INSERT INTO `goods_comment` VALUES ('9', '34');
INSERT INTO `goods_comment` VALUES ('10', '35');
INSERT INTO `goods_comment` VALUES ('11', '0');
INSERT INTO `goods_comment` VALUES ('12', '76');
INSERT INTO `goods_comment` VALUES ('13', '687');
INSERT INTO `goods_comment` VALUES ('14', '78');
INSERT INTO `goods_comment` VALUES ('15', '6');
INSERT INTO `goods_comment` VALUES ('16', '7');
INSERT INTO `goods_comment` VALUES ('17', '8');
INSERT INTO `goods_comment` VALUES ('18', '55');
INSERT INTO `goods_comment` VALUES ('19', '0');
INSERT INTO `goods_comment` VALUES ('20', '76');
INSERT INTO `goods_comment` VALUES ('21', '65');
INSERT INTO `goods_comment` VALUES ('22', '33');
INSERT INTO `goods_comment` VALUES ('23', '23');
INSERT INTO `goods_comment` VALUES ('24', '56');
INSERT INTO `goods_comment` VALUES ('25', '56');
INSERT INTO `goods_comment` VALUES ('26', '56');
INSERT INTO `goods_comment` VALUES ('27', '53');
INSERT INTO `goods_comment` VALUES ('28', '356');
INSERT INTO `goods_comment` VALUES ('29', '8697');
INSERT INTO `goods_comment` VALUES ('30', '707');
INSERT INTO `goods_comment` VALUES ('31', '80');
INSERT INTO `goods_comment` VALUES ('32', '98');
INSERT INTO `goods_comment` VALUES ('33', '68');
INSERT INTO `goods_comment` VALUES ('34', '67');
INSERT INTO `goods_comment` VALUES ('35', '5');
INSERT INTO `goods_comment` VALUES ('36', '67');

-- ----------------------------
-- Table structure for `goods_info`
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `goods_id` int(6) NOT NULL AUTO_INCREMENT,
  `goods_price` float(6,2) NOT NULL,
  `two_catid` int(6) NOT NULL,
  `goods_content` varchar(600) NOT NULL,
  `goods_name` varchar(100) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES ('1', '188.00', '2', '是否商场同款: 是 颜色分类: 套装1：上衣黄+裤子黑 </br>套装2：上衣白+裤子深灰</br> 套装3：灰色套装 套装4：蓝色套装款号: 71427743n品牌: ANTA/安踏上市时间: 2016年夏季吊牌价: 298上装款式: 套头上衣领型: 圆领袖长: 短袖裤长: 七分裤材质: 棉运动户外项目: 运动休闲服装款式细节: 品牌LOGO 字母功能: 速干 透气性别: 女尺码: XS/155 S/160 M/165 L/170 XL/175 2XL/180 3XL/185运动系列: \r\n运动生活', '安踏运动套装女装夏季短袖T恤2016新款跑步服七分裤品牌休闲装女');
INSERT INTO `goods_info` VALUES ('2', '288.00', '1', '颜色分类: 浅灰色 宝蓝色 黑色款号: T918品牌: 未知街上市时间: 2016年春季吊牌价: 488上装款式: 开衫上衣领型: 立领袖长: 长袖裤长: 长裤材质: 棉涤运动户外项目: 运动休闲性别: 男尺码: 女-M【身高155-160 体重85-98】 女-L【身高158-165 体重98-112】 女-XL【身高160-168 体重112-122】 女-XXL【身高160-170 体重120-130】 男-L【身高158-170 体重100-125】 男-XL【身高165-176 体重120-140】 \r\n男-XXL【身高168-178 体重138-155】 男-XXXL【身高170-180 体重155-175】 男-4XL【身高177-186 体重170-185】运动系列: 运动生活', '\r\n未知街运动服男春秋季男士三件套运动套装情侣套装女士休闲服套装');
INSERT INTO `goods_info` VALUES ('3', '259.00', '2', '是否商场同款: 是款号: AX7072品牌: Adidas/阿迪达斯颜色分类: AJ8830 吴亦凡同款-短袖 AJ8829 男款-16夏季新品 AJ7719 男款-16夏季新品 AO3006 男款-16夏季新品 AO0550 吴亦凡亲着款 AO0549 男款 AJ7148 男款-16夏季新品 AX7073 男款-16夏季新品 AO0539 男款-16夏季新品 AO0540 男款-16夏季新品 AJ7136 男款-16夏季新品 AJ7137 男款-16夏季新品 AB7531 男款 S93422 男款 AI9528 女款 AJ8084 女款 AI9529 女款上市时间: 2016年春季吊牌价: 249性别: 男领型: 圆领T恤款式: 短袖尺码: XS S M L XL 32 34 36 38 XXL（成人）', '包邮adidas阿迪达斯T恤三叶草男女夏季休闲短袖AO3005 AJ8830');
INSERT INTO `goods_info` VALUES ('4', '78.00', '3', '是否商场同款: 是颜色分类: 黑/荧 黑/蓝 黑/白 黑/金款号: T7184品牌: TotargetCamp/拓营者上市时间: 2016年春季吊牌价: 268裤门襟: 松紧面料材质: 涤纶里料材质: 涤纶服装款式细节: 光版运动户外项目: 足球功能: 吸湿排汗 速干 透气 超强弹性性别: 男尺码: L（薄款） M（薄款） XL（薄款） 2XL（薄款） 3XL（薄款） 4XL（薄款） M（厚款） L（厚款） XL（厚款） 2XL（厚款） 3XL（厚款） 4XL（厚款）运动系列: 男子足球', '拓营者足球裤男春夏薄款小脚训练裤收小腿弹力跑步健身运动裤长裤');
INSERT INTO `goods_info` VALUES ('5', '379.00', '4', '是否商场同款: 是款号: AJ3669颜色分类: AJ3669 AJ3670 AJ3682 AJ3683 AJ3681 AJ3680 AJ3679 AO2925 AO2927 AA3179 AB4557 AB4559 AK1027 AK1029 AK1030 AK1026品牌: Adidas/阿迪达斯上市时间: 2016年春季吊牌价: 569性别: 男领型: 连帽衣门襟: 拉链运动户外项目: 运动休闲服装款式细节: 品牌LOGO 迷彩功能: 耐磨 防风尺码: XS S(175/92A) M（175/96A） L(180/100A) XL(185/104A) XXL(185/108A) XXXL(190/112A)运动系列: 运动生活系列', 'Adidas外套男 16春季新款运动防风服 连帽休闲夹克 AJ3669 AK1027');
INSERT INTO `goods_info` VALUES ('6', '59.00', '5', '颜色分类: 718615 粉 718615 黑曼巴款号: 718615品牌: Zormes上市时间: 2016年夏季吊牌价: 199裤长: 短裤面料材质: 棉服装款式细节: 图案 刺绣运动户外项目: 运动休闲功能: 吸湿排汗 透气性别: 男尺码: L XL XXL XXXL运动系列: 运动生活', '2016新款夏季 男士科比篮球裤 篮球短裤 运动短裤 五分裤 中裤');
INSERT INTO `goods_info` VALUES ('7', '136.00', '6', '产品名称：XTEP/特步 984119319176是否商场同款: 否颜色分类: 灰/白 桔/灰 深兰/白款号: 984119319176品牌: XTEP/特步上市时间: 2016年春季吊牌价: 239性别: 男子鞋帮高度: 低帮帮面材质: 纺织品鞋底材质: 防滑橡胶+EVA底功能: 防滑 减震 耐磨 轻便 透气鞋码: 39 40 41 42 43 44 45运动系列: 运动休闲闭合方式: 系带流行元素: 车缝线是否瑕疵: 否', '特步男鞋2016夏季新款运动鞋男透气网鞋慢跑鞋板鞋男韩版潮休闲鞋');
INSERT INTO `goods_info` VALUES ('8', '639.00', '7', '产品名称：Adidas/阿迪达斯 2015Q2S...是否商场同款: 是颜色分类: 太阳能蓝/亮白/学院藏青蓝 一号黑/白/柠檬黄 远景灰/亮白/闪光绿 亮蓝/亮白/学院藏青蓝 侦探灰/亮白/浅闪光黄 太阳能蓝/亮白/一号黑色款号: 2015Q2SP-IVB01品牌: Adidas/阿迪达斯上市时间: 2015年夏季吊牌价: 929性别: 男子帮面材质: 网面外底材料: 橡胶适合路面: 小道 公路 跑道运动鞋科技: Climacool/清风功能: 透气鞋码: 39 40 40.5 41 42 42.5 43 44 44.5 45 46 46.5闭合方式: 系带运动系列: 清风系列鞋是否瑕疵: 否', '阿迪达斯男鞋 2016夏季新款透气运动鞋 网面缓震清风跑步鞋AQ4687');
INSERT INTO `goods_info` VALUES ('9', '199.00', '8', '产品名称：Lining/李宁 ARBK086是否商场同款: 是颜色分类: 基础白/电光蓝 荧光粉绿/荧光亮绿 荧光桃红/荧光焰红 凝雪灰/荧光莓红 新基础黑/荧光柔橙 荧光亮绿/荧光嫩绿 亮水蓝/荧光粉绿 荧光柔橙/荧光梅紫款号: ARBK086品牌: Lining/李宁上市时间: 2015年秋季吊牌价: 399性别: 女子帮面材质: 超纤合成革+三明治网布外底材料: 橡胶+PHYLON适合路面: 跑道运动鞋科技: 智能芯片;Probarloc/足弓支撑功能: 智能芯片 支撑 轻便鞋码: 35 35.5 36 37 37.5 38 39 40闭合方式: 系带流行元素: 车缝线运动系列: 轻质跑鞋是否瑕疵: 否', '李宁智能跑鞋 赤兔女子跑步鞋轻质女鞋运动鞋ARBK086');
INSERT INTO `goods_info` VALUES ('10', '259.00', '10', '产品名称：ANTA/安踏 11537776是否商场同款: 是颜色分类: 中灰/深藏青/荧光绿/火花红 黑/中灰/淡灰/火花红 安踏白/淡灰/银色 黑/安踏白/中灰 荧光绿/安踏白款号: 11537776品牌: ANTA/安踏上市时间: 2015年秋季吊牌价: 369性别: 男子帮面材质: 人造革+织物鞋底材质: 橡胶+EVA适用场地: 室外硬地 室内地板运动鞋科技: 气垫 天足 缓震胶 扭转系统功能: 减震 防滑 耐磨 透气 包裹性 支撑 平衡 抗冲击 增高鞋码: 39 40 40.5 41 42 42.5 43 44.5闭合方式: 系带运动系列: 训练AIR MAX是否瑕疵: 否', '安踏男鞋运动鞋男春夏季2016网面透气跑步鞋男旅游鞋气垫鞋休闲鞋');
INSERT INTO `goods_info` VALUES ('11', '189.00', '9', '产品名称：erke/鸿星尔克 511162030...是否商场同款: 是颜色分类: 正黑/正白 浅灰/浅耀蓝 新荧光果绿/正黑 荧光蓝款号: 51116203059品牌: erke/鸿星尔克上市时间: 2016年夏季吊牌价: 339性别: 男子帮面材质: pu+网布外底材料: MD适合路面: 小道 公路 跑道运动鞋科技: 扭转系统 飞线技术 易弯折功能 强化避震缓冲 透气技术功能: 减震 防滑 耐磨 透气 包裹性鞋码: 39 40 41 42 43 44闭合方式: 系带流行元素: 车缝线运动系列: 运动生活系列是否瑕疵: 否', '鸿星尔克男鞋运动鞋男2016夏季新款网面透气跑步鞋男跑鞋休闲鞋潮');
INSERT INTO `goods_info` VALUES ('12', '359.00', '11', '产品名称：ANTA/安踏 11625588是否商场同款: 是颜色分类: 浅灰/荧光橘红/安踏白/银色 蓝绸色/荧光电子绿/魅力蓝/安踏白 霓虹绿/黑/安踏白/银色 深蓝/浅军月/霓虹绿/安踏白 深蓝/魅力蓝/荧光绿/安踏白 黑/安踏白/浅灰/银色款号: 11625588品牌: ANTA/安踏上市时间: 2016年夏季吊牌价: 449性别: 男子帮面材质: 织物外底材料: 耐磨橡胶适合路面: 小道 公路 跑道运动鞋科技: 易弯折功能 强化避震缓冲功能: 减震 防滑 耐磨 透气 吸汗 包裹性 支撑 平衡 抗冲击 轻便鞋码: 39 40 40.5 41 42 42.5 43 44.5闭合方式: 系带流行元素: 图腾运动系列: 运动生活系列是否瑕疵: 否', '安踏跑鞋男鞋2016夏季新品能量环编织面呼吸跑步鞋运动鞋11625588');
INSERT INTO `goods_info` VALUES ('13', '528.00', '12', '产品名称：NEW BALANCE 2016Q2WL574B...是否商场同款: 是颜色分类: 空气紫 空气粉 空气绿款号: 2016Q2WL574BWA品牌: NEW BALANCE上市时间: 2016年夏季吊牌价: 619性别: 女子帮面材质: 人造革外底材料: 橡胶适合路面: 小道 公路 跑道运动鞋科技: 缓震胶功能: 减震 耐磨 包裹性 支撑 平衡鞋码: 35 36 37 37.5闭合方式: 系带流行元素: 车缝线运动系列: 女鞋-复古鞋是否瑕疵: 否', 'NEW BALANCE 574女鞋2016新款运动鞋复古跑步鞋WL574BWA\\BWB\\BWC');
INSERT INTO `goods_info` VALUES ('14', '468.00', '13', '上市时间: 2016年春季品牌: 高乔系列: 健身车型号: DG9988是否商场同款: 是颜色分类: 亏本冲量【铂金高配版-新款 黑色】送大礼包、十大仓库、送货上门 亏本冲量【铂金高配版-老款黑色】送大礼包+送货上门 亏本冲量【铂金高配版-老款白色】送大礼包+送货上门 亏本冲量【铂金高配版-新款 白色】送大礼包、十大仓库、送货上门 铂金普通款/颜色随机/简配无赠品/品牌巨亏3000万/十大仓库发货货号: GQ16A9988款式: 直立式阻力调节方式: 其他教材模式: 书籍', '高乔动感单车静音室内家用磁健身车脚踏控减肥运动自行车健身器材');
INSERT INTO `goods_info` VALUES ('15', '17.90', '14', '上市时间: 2015年冬季品牌: 纵横四海颜色分类: 160MM红魔至尊款送（俯卧撑架+收纳袋+专业跪垫） 弹力绳+160MM红魔至尊款送（俯卧撑架+收纳袋+专业跪垫 145MM蓝天使升级款送（俯卧撑架+收纳袋+专业跪垫） 弹力绳+145MM蓝天使升级款送（俯卧撑架+收纳袋+专业跪垫 200MM黑金刚旗舰款送（俯卧撑架+收纳袋+专业跪垫） 弹力绳+200MM黑金刚旗舰款送（俯卧撑架+收纳袋+专业跪垫） 160MM红旋风至尊款（收藏送加厚跪垫）货号: ZH-2健身器材分类: 双轮健腹器按健身效果选择: 美腹/瘦腹/健腹', '健腹轮健腹器收腹运动健身滚轮 腹部滑轮腹肌轮健身器材');
INSERT INTO `goods_info` VALUES ('16', '9.90', '15', '上市时间: 2015年冬季品牌: 奥韵是否商场同款: 是颜色分类: 天蓝色 橘红色 浅绿色 粉色 四键液晶蓝屏磁控计数玫红色 四键液晶蓝屏磁控计数蓝色货号: AY-HS08跳绳种类: 其他长度: 3M手柄材质: 塑料材质: 其他适用对象: 女按健身效果选择: 整体减肥/塑身/美体', '奥韵计数跳绳花样跳绳健身减肥运动中考专用成人儿童男女跳绳包邮');
INSERT INTO `goods_info` VALUES ('17', '39.90', '16', '上市时间: 2014年秋季品牌: 中欧是否商场同款: 是颜色分类: 镇店之宝 匠心精选 重量1450g 加宽80CM紫色三件套 赠透气背包+捆带 （净重≈1450g） 加宽80CM紫色两件套 赠捆带 （净重≈1450g） 加宽80CM深蓝三件套 赠透气背包+捆带 （净重≈1450g） 加宽80CM深蓝两件套 赠捆带 （净重≈1450g） 加宽80CM粉色三件套 赠透气背包+捆带 （净重≈1450g） 加宽80CM粉色两件套 赠捆带 （净重≈1450g）货号: YOGA-001材质: 环保NBR尺寸: 185cm×80cm厚度: 10mm(初学者)', '中欧加宽80瑜伽垫加厚健身垫初学无味防滑10mm加长运动垫瑜珈垫子');
INSERT INTO `goods_info` VALUES ('18', '255.00', '17', '上市时间: 2016年春季品牌: 恒动力是否商场同款: 否颜色分类: 江苏浙江上海安徽快递 湖南湖北江西福建河南广东快递 北京天津河北山东山西陕西合作快递 四川重庆贵州广西云南合作快递 新疆拉萨内蒙物流自提 甘肃青海宁夏海南合作快递 辽宁黑龙江吉林省合作快递货号: HDL-gang-001哑铃分类: 其他重量: 两只总重10公斤钢制(纸箱装)配双保险35公分链接杆 两只总重15kg钢哑铃(纸箱装)配双保险35公分链接杆 两只总重20kg钢哑铃(纸箱装)配双保险35公分链接杆 两只总重30kg钢哑铃(纸箱装)配双保险35公分链接杆 两只总重30KG钢哑铃/精装盒配双保险35公分链接杆 两只总重10KG钢哑铃/精装盒配双保险35公分链接杆 两只总重15KG钢哑铃/精装盒配双保险35公分链接杆 两只总重20KG钢哑铃/精装盒配双保险35公分链接杆适用对象: 男按健身效果选择: 健身综合练习', '双保险可拆卸电镀哑铃20kg10 15 30公斤盒装纯钢哑铃杠铃健身器材');
INSERT INTO `goods_info` VALUES ('19', '17.90', '18', '上市时间: 2014年秋季品牌: 小霸龙是否商场同款: 是颜色分类: 绿色 黄色 紫色 蓝色货号: XBL-5257', '小霸龙仰卧起坐健身器材减肥减肚子瘦腰家用运动拉力器脚蹬拉力绳');
INSERT INTO `goods_info` VALUES ('20', '129.00', '19', '上市时间: 2014年冬季品牌: Pseudois/普达维斯是否商场同款: 是颜色分类: 黑色货号: TRX001拉力器分类: 悬挂式训练带适用对象: 男按健身效果选择: 健身综合练习', '普达维斯家用健身器材拉力训练带TRX拉力绳阻力带悬挂式训练带');
INSERT INTO `goods_info` VALUES ('21', '158.00', '20', '厂名：北京澳特舒尔保健品开发有限公司厂址：北京市房山区窦店镇秋实工业小区1号厂家联系方式：400-686-9299配料表：绿茶、金银花、决明子、荷叶、绞股蓝、山楂、番泻叶、蜂蜜储藏方法：置于低温干燥处保质期：600 天食品添加剂：无产品名称：碧生源牌减肥茶 2.5g/袋...产品剂型: 冲剂保健食品产品名称: 碧生源牌减肥茶品牌: 碧生源批准文号: 国食健字G20040371具体规格: 2.5g/袋*15袋/盒*4盒是否礼盒装: 否是否进口: 否食用方法和食用量:每日2次，每次2袋，沸水冲泡，5-8分钟后饮用注意事项:本品不能代替药物产品名称:碧生源牌减肥茶功能:减肥功效成分/标志性成分含量:每100g含：茶多酚 1.33g、总黄酮 0.42g不适宜人群:孕期及哺乳期妇女适宜人群:单纯性肥胖者贮藏方法:置阴凉干燥处主要原料:绿茶、金银花、决明子、荷叶、绞', '碧生源牌减肥茶 2.5g/袋*15袋/盒*4盒');
INSERT INTO `goods_info` VALUES ('22', '33.90', '21', '产品名称：千选 TS-2010A4健康秤不锈钢金属粘接点: 4个健康秤体重指示: 液晶数字显示健康秤品牌: 千选型号: TS-2010A4健康秤形状: 圆形健康秤特殊功能: 测温 无特殊功能健康秤面板材质: 钢化玻璃颜色分类: 蓝色经典款 白色经典款 白色豪华款 蓝色豪华款 蓝色升级款 白色升级款售后服务: 全国联保驱动类型: 电子', '千选家用电子秤电子称超精准人体成人体重秤称重器健康减肥体重计');
INSERT INTO `goods_info` VALUES ('23', '89.00', '2', '是否商场同款: 是款号: 15617146品牌: ANTA/安踏颜色分类: BC17灰花灰 BC17灰花灰- H150R灰花灰 基础黑 纯净白 钻石蓝 热情红- 图蓝色 热情红 基础黑-上市时间: 2016年春季吊牌价: 119性别: 男领型: 圆领T恤款式: 短袖服装版型: 常规材质: 棉涤服装款式细节: 撞色 品牌LOGO 图案 字母 渐变 条纹运动户外项目: 运动休闲功能: 吸湿排汗 速干 超轻 透气尺码: S（165/84A） M（170/88A） L（175/92A） XL（180/96A） 2XL（185/100A） 3XL（190/104A）运动系列: 圆领短T恤', '安踏短袖T恤男装宽松2016夏季新款透气轻薄款圆领针织衫运动上衣');
INSERT INTO `goods_info` VALUES ('24', '188.00', '2', '是否商场同款: 是款号: S19231品牌: Adidas/阿迪达斯颜色分类: AJ8829 AO3005 AJ8830 S93428 AJ7108 AJ8828 AX7072 S19233上市时间: 2015年夏季吊牌价: 299性别: 男领型: 圆领T恤款式: 短袖服装版型: 常规服装款式细节: 品牌LOGO运动户外项目: 运动休闲功能: 吸湿排汗 透气尺码: XXL（成人） L（成人） M（成人） ', '专柜正品adidas阿迪三叶草2016新款男子圆领短袖T恤AJ8830/S93428');
INSERT INTO `goods_info` VALUES ('25', '109.00', '2', '是否商场同款: 是款号: 95527144品牌: ANTA/安踏颜色分类: BC17灰花灰-4 纯净白-1 朴蓝色-3上市时间: 2016年夏季吊牌价: 119.00性别: 男领型: 圆领T恤款式: 短袖服装版型: 常规材质: 棉涤服装款式细节: 品牌LOGO 字母运动户外项目: 运动休闲功能: 吸湿排汗 速干 超轻 透气 超强弹性尺码: 165/84A(S) 170/88A(M) 175/92A(L) 180/96A(XL) 185/100A(2XL) 190/104A(3XL)运动系列: 运动生活', '安踏T恤衫 男装运动短袖夏装2016新款 夏季休闲男式薄款透气上衣');
INSERT INTO `goods_info` VALUES ('26', '165.00', '2', '是否商场同款: 是款号: VN-01O8WHT品牌: VANS颜色分类: 白色VN-01O8WHT 蓝色VN0001O8LKZ 黑色VN-01O8BLK上市时间: 2015年春季吊牌价: 220性别: 男领型: 圆领T恤款式: 短袖服装版型: 常规材质: 棉服装款式细节: 品牌LOGO运动户外项目: 运动休闲功能: 速干 透气尺码: XS（成人） S（成人） M（成人） L', 'VANS经典款夏男款圆领纯棉短袖T恤VN-01O8WHT/BLK黑白色速干透气');
INSERT INTO `goods_info` VALUES ('27', '105.00', '2', '是否商场同款: 是款号: 561624819A品牌: 361°颜色分类: 中花灰 本白 郎窑粉 玫瑰粉 光蓝 夺目黄上市时间: 2016年夏季吊牌价: 159性别: 女领型: 翻领_将删勿发T恤款式: 短袖服装版型: 常规材质: 棉涤服装款式细节: 品牌LOGO运动户外项目: 运动休闲功能: 吸湿排汗 速干 超轻 透气 超强弹性尺码: S/155【361度官方指定天猫专卖店】 M/160【95%订单12小时闪电发货，其余力争24小时内发货】 L/165【实体店发货，严格把关质量，100%品质保障】 XL/170【售后保障：法定三包,7天包退,30天包换,6个月保修】 2XL/175【100%正品保障，支持专柜验货和论坛验货】 3XL/180【2016夏季新款实体同款】 4XL/185 5XL运动系列: 女子跑步', '361度女装2016夏季新款运动T恤361女纯色百搭翻领短袖561624819A');
INSERT INTO `goods_info` VALUES ('28', '195.00', '2', '是否商场同款: 是款号: GDYZT03001品牌: DCSHOECOUSA颜色分类: 黑色KVJ0 白色WBN0上市时间: 2016年夏季吊牌价: 195性别: 男领型: 圆领T恤款式: 短袖服装版型: 常规材质: 棉服装款式细节: 品牌LOGO运动户外项目: 运动休闲功能: 吸湿排汗 速干 透气尺码: S（偏大一码） M（偏大一码） L（偏大一码） XL（偏大一码） XXL（偏大一码）运动系列: 圆领短T恤', 'DCSHOECOUSA运动T恤男士新款印花LOGO纯棉短袖GDYZT03001');
INSERT INTO `goods_info` VALUES ('29', '45.00', '22', '厂名：临猗县广润苹果种植专业合作社厂址：临猗卓里工贸区厂家联系方式：15513592313配料表：纯天然鲜桃储藏方法：低温贮藏或冷藏保质期：90 天食品添加剂：纯天然净含量: 2500g包装方式: 包装同城服务: 同城24小时物流送货上门品牌: 临润售卖方式: 单品热卖时间: 6月 7月 8月产地: 中国大陆省份: 山西省城市: 运城市套餐份量: 1人份套餐周期: 2周配送频次: 1周2次特产品类: 稷山鲜桃净含量: 2.5kg(含）-5kg(不含)价格: 51-100元水果种类: 水蜜桃', '预售现摘新鲜桃子水果山西运城水蜜桃水果新鲜桃5斤装非黄桃油桃');
INSERT INTO `goods_info` VALUES ('30', '229.00', '2', '是否商场同款: 是款号: 683518-060品牌: Nike/耐克颜色分类: 灰色683518-060 红色683518-657 蓝色683518-455上市时间: 其他吊牌价: 329性别: 男领型: 圆领T恤款式: 短袖服装版型: 常规服装款式细节: 品牌LOGO运动户外项目: 运动休闲功能: 吸湿排汗 速干 透气尺码: S（成人） M（成人） L（成人） XL（成人） XXL（成人）运动系列: 运动生活', 'NIKE耐克2016年新款男子DRI-FIT CONTOUR SST恤683518-060');
INSERT INTO `goods_info` VALUES ('31', '298.00', '2', '是否商场同款: 是款号: 26623157品牌: 斐乐/Fila颜色分类: 传奇蓝-NV 标准白-WT上市时间: 2016年春季吊牌价: 340性别: 女领型: 圆领T恤款式: 短袖服装版型: 常规材质: 棉服装款式细节: 品牌LOGO 图案运动户外项目: 运动休闲功能: 吸湿排汗 透气尺码: 155/76A(XS) 160/80A(S) 165/84A(M) 170/88A(L) 175/92A(XL) 180/96A(XXL)运动系列: 圆领短T恤', 'FILA斐乐2016夏季新款短袖T恤女丝柔棉经典款大F LOGOt恤');
INSERT INTO `goods_info` VALUES ('32', '188.00', '2', '款号: 702202品牌: Puma/彪马颜色分类: 蓝色 35 粉色36上市时间: 2016年春季吊牌价: 299性别: 男领型: 圆领T恤款式: 短袖尺码: XS S M L XL', 'PUMA/彪马 TEAMSPORT 男子 短袖T恤 702202');
INSERT INTO `goods_info` VALUES ('33', '79.00', '2', '是否商场同款: 是款号: 8358191品牌: 迪卡侬/Decathlon颜色分类: 2016新款浅灰色印花 2016新款灰色印花 2016新款灰紫色印花 2016新款绿色印花上市时间: 2016年春季吊牌价: 79性别: 女领型: 圆领T恤款式: 短袖服装版型: 常规服装款式细节: 撞色 品牌LOGO 图案运动户外项目: 跑步功能: 吸湿排汗 速干 超轻 透气 超强弹性 反光夜视尺码: XXS(身高160/胸围80-83cm) XS(身高165/胸围84-87cm) S(身高165/胸围88-91cm) M(身高170/胸围92-95cm) M-L(身高170/胸围96-99cm) L(身高170/胸围100-103cm) L-XL(身高170/胸围104-107cm)运动系列: 女子跑步', '迪卡侬 运动t恤女士跑步t恤速干排汗印花短袖t恤速干t恤KALENJI');
INSERT INTO `goods_info` VALUES ('34', '199.00', '2', '是否商场同款: 是款号: 10001418品牌: Converse/匡威颜色分类: 纹理灰色/10001418035 白色/10001418102 黑色/10001418003上市时间: 2016年夏季吊牌价: 199性别: 男领型: 圆领T恤款式: 短袖尺码: S M L XL XXL XXXL', 'CONVERSE匡威官方 炫彩条纹印花短袖T恤 男款 10001418');
INSERT INTO `goods_info` VALUES ('35', '188.00', '1', '颜色分类: 浅灰色 宝蓝色 黑色款号: T918品牌: 未知街上市时间: 2016年春季吊牌价: 488上装款式: 开衫上衣领型: 立领袖长: 长袖裤长: 长裤材质: 棉涤运动户外项目: 运动休闲性别: 男尺码: 女-M【身高155-160 体重85-98】 女-L【身高158-165 体重98-112】 女-XL【身高160-168 体重112-122】 女-XXL【身高160-170 体重120-130】 男-L【身高158-170 体重100-125】 男-XL【身高165-176 体重120-140】 男-XXL【身高168-178 体重138-155】 男-XXXL【身高170-180 体重155-175】 男-4XL【身高177-186 体重170-185】运动系列: 运动生活', '未知街运动服男春秋季男士三件套运动套装情侣套装女士休闲服套装');
INSERT INTO `goods_info` VALUES ('36', '259.00', '2', '否商场同款: 是款号: AO0549品牌: Adidas/阿迪达斯颜色分类: AO0539 AO0540 AO0541 AO0542 AJ8829 AJ8830 AO0549 AJ7136 AJ7137 AO0550 AO0938 AJ7124 S93065 S93066 AJ7148 AJ7122 AP9796上市时间: 2016年夏季吊牌价: 369性别: 男领型: 圆领T恤款式: 短袖服装版型: 常规材质: 棉服装款式细节: 品牌LOGO 图案 字母功能: 吸湿排汗 速干 超轻 透气尺码: XS（成人） S（成人） M（成人）', '阿迪达斯短袖男三叶草16夏新品男子休闲运动短袖T恤AJ7120 AO0539');

-- ----------------------------
-- Table structure for `goods_sell`
-- ----------------------------
DROP TABLE IF EXISTS `goods_sell`;
CREATE TABLE `goods_sell` (
  `goods_id` int(6) NOT NULL,
  `goods_sells` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`goods_sells`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_sell
-- ----------------------------
INSERT INTO `goods_sell` VALUES ('1', '2147483647');
INSERT INTO `goods_sell` VALUES ('2', '2147483647');
INSERT INTO `goods_sell` VALUES ('3', '35');
INSERT INTO `goods_sell` VALUES ('4', '31');
INSERT INTO `goods_sell` VALUES ('5', '17');
INSERT INTO `goods_sell` VALUES ('6', '14');
INSERT INTO `goods_sell` VALUES ('7', '21');
INSERT INTO `goods_sell` VALUES ('8', '12');
INSERT INTO `goods_sell` VALUES ('9', '7');
INSERT INTO `goods_sell` VALUES ('10', '2');
INSERT INTO `goods_sell` VALUES ('11', '1');
INSERT INTO `goods_sell` VALUES ('12', '24');
INSERT INTO `goods_sell` VALUES ('13', '33');
INSERT INTO `goods_sell` VALUES ('14', '546');
INSERT INTO `goods_sell` VALUES ('15', '1022');
INSERT INTO `goods_sell` VALUES ('16', '68');
INSERT INTO `goods_sell` VALUES ('17', '4');
INSERT INTO `goods_sell` VALUES ('18', '345');
INSERT INTO `goods_sell` VALUES ('19', '15');
INSERT INTO `goods_sell` VALUES ('20', '45');
INSERT INTO `goods_sell` VALUES ('21', '64');
INSERT INTO `goods_sell` VALUES ('22', '34');
INSERT INTO `goods_sell` VALUES ('23', '45');
INSERT INTO `goods_sell` VALUES ('24', '64');
INSERT INTO `goods_sell` VALUES ('25', '65');
INSERT INTO `goods_sell` VALUES ('26', '1');
INSERT INTO `goods_sell` VALUES ('27', '757');
INSERT INTO `goods_sell` VALUES ('28', '46');
INSERT INTO `goods_sell` VALUES ('29', '7576');
INSERT INTO `goods_sell` VALUES ('30', '46');
INSERT INTO `goods_sell` VALUES ('31', '46');
INSERT INTO `goods_sell` VALUES ('32', '1');
INSERT INTO `goods_sell` VALUES ('33', '4');
INSERT INTO `goods_sell` VALUES ('34', '3');
INSERT INTO `goods_sell` VALUES ('35', '4');
INSERT INTO `goods_sell` VALUES ('36', '348');

-- ----------------------------
-- Table structure for `healthy`
-- ----------------------------
DROP TABLE IF EXISTS `healthy`;
CREATE TABLE `healthy` (
  `healthy_id` int(6) NOT NULL AUTO_INCREMENT,
  `healthy_title` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `healthy_content` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `healthy_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`healthy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of healthy
-- ----------------------------
INSERT INTO `healthy` VALUES ('1', '6种微波炉就能做的美味', '赶时间，又不想将就于垃圾食品？来学习如何巧妙利用微波炉制作美食吧！', 'resources/images/jk_1.jpg');
INSERT INTO `healthy` VALUES ('2', '低卡路里的原始人版汉堡', '想吃汉堡又怕热量太高', 'resources/images/jk_2.jpg');
INSERT INTO `healthy` VALUES ('3', '蔬果少不了', '踩着开学的脚步，跟着美小编一起来盘点九月不能错过的蔬菜水果吧。', 'resources/images/jk_3.jpg');
INSERT INTO `healthy` VALUES ('4', '零食，吃or不吃？', '零食，想吃又不敢吃？其实选对零食，吃一点也无妨，更可帮你控制食欲。', 'resources/images/jk_4.jpg');
INSERT INTO `healthy` VALUES ('5', '大腿内侧的赘肉该怎么减', '训练答疑（八）|完成一套训练后，多久可以进行下一次？大腿内侧的赘肉怎么练掉？…又到每日美小编答疑时间', 'resources/images/jk_5.jpg');
INSERT INTO `healthy` VALUES ('6', '为什么腹肌训练时脖子酸痛', '训练答疑（五）|运动后怎么拉伸？练习腹部时，脖子酸痛怎么办？…又到每日问答时间！', 'resources/images/jk_6.jpg');
INSERT INTO `healthy` VALUES ('7', '减脂增肌五问答', '怎样消除腹部顽固脂肪？力量训练的时间该怎么控制？减脂成功后，不想继续减脂和增加肌肉含量该怎么做', 'resources/images/jk_7.jpg');
INSERT INTO `healthy` VALUES ('8', '健身小白如何设立健身目标', '健身小白该如何设立瘦身目标？三点助你轻松瘦身。', 'resources/images/jk_8.jpg');
INSERT INTO `healthy` VALUES ('9', '【运动篇】从215斤瘦到', '减肥不是享受，受累这是肯定的，累的时候告诉自己，坚持下去，我在瘦。', 'resources/images/jk_9.jpg');
INSERT INTO `healthy` VALUES ('10', '每个优秀的人都有一段沉默', '那一段时光里，付出了很多努力，忍受孤独和寂寞，不抱怨不诉苦，只为了日后说起时，连自己都被感动。', 'resources/images/jk_10.jpg');
INSERT INTO `healthy` VALUES ('11', '历程篇 | 熊猫阿宝减掉', '工欲善其事必先利其器，人欲减其膘必先定其心！', 'resources/images/jk_11.jpg');
INSERT INTO `healthy` VALUES ('12', '浅谈健康减脂与增肌', '要想得到梦寐以求的好身材，就必须以改变现有的生活方式为代价。如果没有坚强的意志来驱动，就很可能会失败', 'resources/images/jk_12.jpg');
INSERT INTO `healthy` VALUES ('13', '无肌肉，不男人', '撸铁不腰疼的正确打开方式。', 'resources/images/jk_13.jpg');
INSERT INTO `healthy` VALUES ('14', '拉伸恢复', '放松肌肉，提高身体柔韧性，跟着Lulu一起来拉伸吧！', 'resources/images/jk_15.jpg');
INSERT INTO `healthy` VALUES ('15', '跑步如何不伤膝盖', '四个热身动作让你的膝盖越跑越年轻！趁着阅兵蓝，跑起来吧！', 'resources/images/jk_14.jpg');
INSERT INTO `healthy` VALUES ('16', '小蛮腰是怎样炼成的', '距离平坦小腹，你只差这几步！', 'resources/images/jk_16.jpg');

-- ----------------------------
-- Table structure for `images_big`
-- ----------------------------
DROP TABLE IF EXISTS `images_big`;
CREATE TABLE `images_big` (
  `image_id` int(6) NOT NULL AUTO_INCREMENT,
  `goods_id` int(6) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `mobile_fk1` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of images_big
-- ----------------------------
INSERT INTO `images_big` VALUES ('1', '1', 'resources/images/big/1-1.png');
INSERT INTO `images_big` VALUES ('2', '1', 'resources/images/big/1-2.png');
INSERT INTO `images_big` VALUES ('3', '1', 'resources/images/big/1-3.png');
INSERT INTO `images_big` VALUES ('4', '1', 'resources/images/big/1-4.png');
INSERT INTO `images_big` VALUES ('5', '2', 'resources/images/big/2-1.png');
INSERT INTO `images_big` VALUES ('6', '3', 'resources/images/big/3-1.png');
INSERT INTO `images_big` VALUES ('7', '3', 'resources/images/big/3-2.png');
INSERT INTO `images_big` VALUES ('8', '3', 'resources/images/big/3-3.png');
INSERT INTO `images_big` VALUES ('9', '4', 'resources/images/big/4-1.png');
INSERT INTO `images_big` VALUES ('10', '5', 'resources/images/big/5-1.png');
INSERT INTO `images_big` VALUES ('11', '5', 'resources/images/big/5-2.png');
INSERT INTO `images_big` VALUES ('12', '5', 'resources/images/big/5-3.png');
INSERT INTO `images_big` VALUES ('13', '6', 'resources/images/big/6-1.png');
INSERT INTO `images_big` VALUES ('14', '7', 'resources/images/big/7-1.png');
INSERT INTO `images_big` VALUES ('15', '7', 'resources/images/big/7-2.png');
INSERT INTO `images_big` VALUES ('16', '7', 'resources/images/big/7-3.png');
INSERT INTO `images_big` VALUES ('17', '8', 'resources/images/big/8-1.png');
INSERT INTO `images_big` VALUES ('18', '8', 'resources/images/big/8-2.png');
INSERT INTO `images_big` VALUES ('19', '9', 'resources/images/big/9-1.png');
INSERT INTO `images_big` VALUES ('20', '9', 'resources/images/big/9-2.png');
INSERT INTO `images_big` VALUES ('21', '9', 'resources/images/big/9-3.png');
INSERT INTO `images_big` VALUES ('22', '9', 'resources/images/big/9-4.png');
INSERT INTO `images_big` VALUES ('23', '9', 'resources/images/big/9-5.png');
INSERT INTO `images_big` VALUES ('24', '10', 'resources/images/big/10-1.png');
INSERT INTO `images_big` VALUES ('25', '10', 'resources/images/big/10-2.png');
INSERT INTO `images_big` VALUES ('26', '10', 'resources/images/big/10-3.png');
INSERT INTO `images_big` VALUES ('27', '10', 'resources/images/big/10-4.png');
INSERT INTO `images_big` VALUES ('28', '10', 'resources/images/big/10-5.png');
INSERT INTO `images_big` VALUES ('29', '11', 'resources/images/big/11-1.png');
INSERT INTO `images_big` VALUES ('30', '11', 'resources/images/big/11-2.png');
INSERT INTO `images_big` VALUES ('31', '12', 'resources/images/big/12-1.png');
INSERT INTO `images_big` VALUES ('32', '12', 'resources/images/big/12-2.png');
INSERT INTO `images_big` VALUES ('33', '12', 'resources/images/big/12-3.png');
INSERT INTO `images_big` VALUES ('34', '12', 'resources/images/big/12-4.png');
INSERT INTO `images_big` VALUES ('35', '13', 'resources/images/big/13-1.png');
INSERT INTO `images_big` VALUES ('36', '13', 'resources/images/big/13-2.png');
INSERT INTO `images_big` VALUES ('37', '13', 'resources/images/big/13-3.png');
INSERT INTO `images_big` VALUES ('38', '14', 'resources/images/big/14-1.png');
INSERT INTO `images_big` VALUES ('39', '15', 'resources/images/big/15-1.png');
INSERT INTO `images_big` VALUES ('40', '16', 'resources/images/big/16-1.png');
INSERT INTO `images_big` VALUES ('41', '16', 'resources/images/big/16-2.png');
INSERT INTO `images_big` VALUES ('42', '16', 'resources/images/big/16-3.png');
INSERT INTO `images_big` VALUES ('43', '17', 'resources/images/big/17-1.png');
INSERT INTO `images_big` VALUES ('44', '17', 'resources/images/big/17-2.png');
INSERT INTO `images_big` VALUES ('45', '18', 'resources/images/big/18-1.png');
INSERT INTO `images_big` VALUES ('46', '19', 'resources/images/big/19-1.png');
INSERT INTO `images_big` VALUES ('47', '19', 'resources/images/big/19-2.png');
INSERT INTO `images_big` VALUES ('48', '20', 'resources/images/big/20-1.png');
INSERT INTO `images_big` VALUES ('49', '21', 'resources/images/big/21-1.png');
INSERT INTO `images_big` VALUES ('50', '22', 'resources/images/big/22-1.png');
INSERT INTO `images_big` VALUES ('51', '23', 'resources/images/big/23-1.png');
INSERT INTO `images_big` VALUES ('52', '23', 'resources/images/big/23-2.png');
INSERT INTO `images_big` VALUES ('53', '23', 'resources/images/big/23-3.png');
INSERT INTO `images_big` VALUES ('54', '23', 'resources/images/big/23-4.png');
INSERT INTO `images_big` VALUES ('55', '24', 'resources/images/big/24-1.png');
INSERT INTO `images_big` VALUES ('56', '24', 'resources/images/big/24-2.png');
INSERT INTO `images_big` VALUES ('57', '25', 'resources/images/big/25-1.png');
INSERT INTO `images_big` VALUES ('58', '25', 'resources/images/big/25-2.png');
INSERT INTO `images_big` VALUES ('59', '25', 'resources/images/big/25-3.png');
INSERT INTO `images_big` VALUES ('60', '26', 'resources/images/big/26-1.png');
INSERT INTO `images_big` VALUES ('61', '26', 'resources/images/big/26-2.png');
INSERT INTO `images_big` VALUES ('62', '26', 'resources/images/big/26-3.png');
INSERT INTO `images_big` VALUES ('63', '27', 'resources/images/big/27-1.png');
INSERT INTO `images_big` VALUES ('64', '28', 'resources/images/big/28-1.png');
INSERT INTO `images_big` VALUES ('65', '28', 'resources/images/big/28-2.png');
INSERT INTO `images_big` VALUES ('66', '29', 'resources/images/big/29-1.png');
INSERT INTO `images_big` VALUES ('67', '30', 'resources/images/big/30-1.png');
INSERT INTO `images_big` VALUES ('68', '31', 'resources/images/big/31-1.png');
INSERT INTO `images_big` VALUES ('69', '31', 'resources/images/big/31-2.png');
INSERT INTO `images_big` VALUES ('70', '32', 'resources/images/big/32-1.png');
INSERT INTO `images_big` VALUES ('71', '33', 'resources/images/big/33-1.png');
INSERT INTO `images_big` VALUES ('72', '33', 'resources/images/big/33-2.png');
INSERT INTO `images_big` VALUES ('73', '33', 'resources/images/big/33-3.png');
INSERT INTO `images_big` VALUES ('74', '34', 'resources/images/big/34-1.png');
INSERT INTO `images_big` VALUES ('75', '35', 'resources/images/big/35-1.png');
INSERT INTO `images_big` VALUES ('76', '35', 'resources/images/big/35-2.png');
INSERT INTO `images_big` VALUES ('77', '36', 'resources/images/big/36-1.png');

-- ----------------------------
-- Table structure for `images_mall`
-- ----------------------------
DROP TABLE IF EXISTS `images_mall`;
CREATE TABLE `images_mall` (
  `images_id` int(6) NOT NULL AUTO_INCREMENT,
  `goods_id` int(6) NOT NULL,
  `images_path` varchar(100) NOT NULL,
  `mobile_image_path` varchar(100) NOT NULL,
  PRIMARY KEY (`images_id`),
  KEY `fk_images_l` (`goods_id`),
  CONSTRAINT `fk_images_l` FOREIGN KEY (`goods_id`) REFERENCES `goods_info` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images_mall
-- ----------------------------
INSERT INTO `images_mall` VALUES ('1', '1', '/mall/mall/1-1.jpg', '/mall/mobile/1-1.png');
INSERT INTO `images_mall` VALUES ('2', '2', '/mall/mall/2-1.jpg', '/mall/mobile/2-1.png');
INSERT INTO `images_mall` VALUES ('3', '3', '/mall/mall/3-1.jpg', '/mall/mobile/3-1.png');
INSERT INTO `images_mall` VALUES ('4', '4', '/mall/mall/4-1.jpg', '/mall/mobile/4-1.png');
INSERT INTO `images_mall` VALUES ('5', '5', '/mall/mall/5-1.jpg', '/mall/mobile/5-1.png');
INSERT INTO `images_mall` VALUES ('6', '6', '/mall/mall/6-1.jpg', '/mall/mobile/6-1.png');
INSERT INTO `images_mall` VALUES ('7', '7', '/mall/mall/7-1.jpg', '/mall/mobile/7-1.png');
INSERT INTO `images_mall` VALUES ('8', '8', '/mall/mall/8-1.jpg', '/mall/mobile/8-1.png');
INSERT INTO `images_mall` VALUES ('9', '9', '/mall/mall/9-1.jpg', '/mall/mobile/9-1.png');
INSERT INTO `images_mall` VALUES ('10', '10', '/mall/mall/10-1.jpg', '/mall/mobile/10-1.png');
INSERT INTO `images_mall` VALUES ('11', '11', '/mall/mall/11-1.jpg', '/mall/mobile/11-1.png');
INSERT INTO `images_mall` VALUES ('12', '12', '/mall/mall/12-1.jpg', '/mall/mobile/12-1.png');
INSERT INTO `images_mall` VALUES ('13', '13', '/mall/mall/13-1.jpg', '/mall/mobile/13-1.png');
INSERT INTO `images_mall` VALUES ('14', '14', '/mall/mall/14-1.jpg', '/mall/mobile/14-1.png');
INSERT INTO `images_mall` VALUES ('15', '15', '/mall/mall/15-1.jpg', '/mall/mobile/15-1.png');
INSERT INTO `images_mall` VALUES ('16', '16', '/mall/mall/16-1.jpg', '/mall/mobile/16-1.png');
INSERT INTO `images_mall` VALUES ('17', '17', '/mall/mall/17-1.jpg', '/mall/mobile/17-1.png');
INSERT INTO `images_mall` VALUES ('18', '18', '/mall/mall/18-1.jpg', '/mall/mobile/18-1.png');
INSERT INTO `images_mall` VALUES ('19', '19', '/mall/mall/19-1.jpg', '/mall/mobile/19-1.png');
INSERT INTO `images_mall` VALUES ('20', '20', '/mall/mall/20-1.jpg', '/mall/mobile/20-1.png');
INSERT INTO `images_mall` VALUES ('21', '21', '/mall/mall/21-1.jpg', '/mall/mobile/21-1.png');
INSERT INTO `images_mall` VALUES ('22', '22', '/mall/mall/22-1.jpg', '/mall/mobile/22-1.png');
INSERT INTO `images_mall` VALUES ('23', '23', '/mall/mall/23-1.jpg', '/mall/mobile/23-1.png');
INSERT INTO `images_mall` VALUES ('24', '24', '/mall/mall/24-1.jpg', '/mall/mobile/24-1.png');
INSERT INTO `images_mall` VALUES ('25', '25', '/mall/mall/25-1.jpg', '/mall/mobile/25-1.png');
INSERT INTO `images_mall` VALUES ('26', '26', '/mall/mall/26-1.jpg', '/mall/mobile/26-1.png');
INSERT INTO `images_mall` VALUES ('27', '27', '/mall/mall/27-1.jpg', '/mall/mobile/27-1.png');
INSERT INTO `images_mall` VALUES ('28', '28', '/mall/mall/28-1.jpg', '/mall/mobile/28-1.png');
INSERT INTO `images_mall` VALUES ('29', '29', '/mall/mall/29-1.jpg', '/mall/mobile/29-1.png');
INSERT INTO `images_mall` VALUES ('30', '30', '/mall/mall/30-1.jpg', '/mall/mobile/30-1.png');
INSERT INTO `images_mall` VALUES ('31', '31', '/mall/mall/31-1.jpg', '/mall/mobile/31-1.png');
INSERT INTO `images_mall` VALUES ('32', '32', '/mall/mall/32-1.jpg', '/mall/mobile/32-1.png');
INSERT INTO `images_mall` VALUES ('33', '33', '/mall/mall/33-1.jpg', '/mall/mobile/33-1.png');
INSERT INTO `images_mall` VALUES ('34', '34', '/mall/mall/34-1.jpg', '/mall/mobile/34-1.png');
INSERT INTO `images_mall` VALUES ('35', '35', '/mall/mall/35-1.jpg', '/mall/mobile/35-1.png');
INSERT INTO `images_mall` VALUES ('36', '36', '/mall/mall/36-1.jpg', '/mall/mobile/36-1.png');

-- ----------------------------
-- Table structure for `images_small`
-- ----------------------------
DROP TABLE IF EXISTS `images_small`;
CREATE TABLE `images_small` (
  `images_id` int(6) NOT NULL AUTO_INCREMENT,
  `goods_id` int(6) NOT NULL,
  `images_path` varchar(100) NOT NULL,
  `images_name` varchar(100) NOT NULL,
  PRIMARY KEY (`images_id`),
  KEY `fk_image_big` (`goods_id`) USING BTREE,
  CONSTRAINT `images_small_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_info` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of images_small
-- ----------------------------
INSERT INTO `images_small` VALUES ('1', '1', '/mall/small/1-1.jpg', '1-1');
INSERT INTO `images_small` VALUES ('2', '1', '/mall/small/1-2.jpg', '1-2');
INSERT INTO `images_small` VALUES ('3', '1', '/mall/small/1-3.jpg', '1-3');
INSERT INTO `images_small` VALUES ('4', '1', '/mall/small/1-4.jpg', '1-4');
INSERT INTO `images_small` VALUES ('5', '1', '/mall/small/1-5.jpg', '1-5');
INSERT INTO `images_small` VALUES ('6', '2', '/mall/small/2-1.jpg', '2-1');
INSERT INTO `images_small` VALUES ('7', '2', '/mall/small/2-2.jpg', '2-2');
INSERT INTO `images_small` VALUES ('8', '2', '/mall/small/2-3.jpg', '2-3');
INSERT INTO `images_small` VALUES ('9', '2', '/mall/small/2-4.jpg', '2-4');
INSERT INTO `images_small` VALUES ('10', '2', '/mall/small/2-5.jpg', '2-5');
INSERT INTO `images_small` VALUES ('11', '3', '/mall/small/3-1.jpg', '3-1');
INSERT INTO `images_small` VALUES ('12', '3', '/mall/small/3-2.jpg', '3-2');
INSERT INTO `images_small` VALUES ('13', '3', '/mall/small/3-3.jpg', '3-3');
INSERT INTO `images_small` VALUES ('14', '3', '/mall/small/3-4.jpg', '3-4');
INSERT INTO `images_small` VALUES ('15', '3', '/mall/small/3-5.jpg', '3-5');
INSERT INTO `images_small` VALUES ('16', '4', '/mall/small/4-1.jpg', '4-1');
INSERT INTO `images_small` VALUES ('17', '4', '/mall/small/4-2.jpg', '4-2');
INSERT INTO `images_small` VALUES ('18', '4', '/mall/small/4-3.jpg', '4-3');
INSERT INTO `images_small` VALUES ('19', '4', '/mall/small/4-4.jpg', '4-4');
INSERT INTO `images_small` VALUES ('20', '4', '/mall/small/4-5.jpg', '4-5');
INSERT INTO `images_small` VALUES ('21', '5', '/mall/small/5-1.jpg', '5-1');
INSERT INTO `images_small` VALUES ('22', '5', '/mall/small/5-2.jpg', '5-2');
INSERT INTO `images_small` VALUES ('23', '5', '/mall/small/5-3.jpg', '5-3');
INSERT INTO `images_small` VALUES ('24', '5', '/mall/small/5-4.jpg', '5-4');
INSERT INTO `images_small` VALUES ('25', '5', '/mall/small/5-5.jpg', '5-5');
INSERT INTO `images_small` VALUES ('26', '6', '/mall/small/6-1.jpg', '6-1');
INSERT INTO `images_small` VALUES ('27', '6', '/mall/small/6-2.jpg', '6-2');
INSERT INTO `images_small` VALUES ('28', '6', '/mall/small/6-3.jpg', '6-3');
INSERT INTO `images_small` VALUES ('29', '6', '/mall/small/6-4.jpg', '6-4');
INSERT INTO `images_small` VALUES ('30', '6', '/mall/small/6-5.jpg', '6-5');
INSERT INTO `images_small` VALUES ('31', '7', '/mall/small/7-1.jpg', '7-1');
INSERT INTO `images_small` VALUES ('32', '7', '/mall/small/7-2.jpg', '7-2');
INSERT INTO `images_small` VALUES ('33', '7', '/mall/small/7-3.jpg', '7-3');
INSERT INTO `images_small` VALUES ('34', '7', '/mall/small/7-4.jpg', '7-4');
INSERT INTO `images_small` VALUES ('35', '7', '/mall/small/7-5.jpg', '7-5');
INSERT INTO `images_small` VALUES ('36', '8', '/mall/small/8-1.jpg', '8-1');
INSERT INTO `images_small` VALUES ('37', '8', '/mall/small/8-2.jpg', '8-2');
INSERT INTO `images_small` VALUES ('38', '8', '/mall/small/8-3.jpg', '8-3');
INSERT INTO `images_small` VALUES ('39', '8', '/mall/small/8-4.jpg', '8-4');
INSERT INTO `images_small` VALUES ('40', '8', '/mall/small/8-5.jpg', '8-5');
INSERT INTO `images_small` VALUES ('41', '9', '/mall/small/9-1.jpg', '9-1');
INSERT INTO `images_small` VALUES ('42', '9', '/mall/small/9-2.jpg', '9-2');
INSERT INTO `images_small` VALUES ('43', '9', '/mall/small/9-3.jpg', '9-3');
INSERT INTO `images_small` VALUES ('44', '9', '/mall/small/9-4.jpg', '9-4');
INSERT INTO `images_small` VALUES ('45', '9', '/mall/small/9-5.jpg', '9-5');
INSERT INTO `images_small` VALUES ('46', '10', '/mall/small/10-1.jpg', '10-1');
INSERT INTO `images_small` VALUES ('47', '10', '/mall/small/10-2.jpg', '10-2');
INSERT INTO `images_small` VALUES ('48', '10', '/mall/small/10-3.jpg', '10-3');
INSERT INTO `images_small` VALUES ('49', '10', '/mall/small/10-4.jpg', '10-4');
INSERT INTO `images_small` VALUES ('50', '10', '/mall/small/10-5.jpg', '10-5');
INSERT INTO `images_small` VALUES ('51', '11', '/mall/small/11-1.jpg', '11-1');
INSERT INTO `images_small` VALUES ('52', '11', '/mall/small/11-2.jpg', '11-2');
INSERT INTO `images_small` VALUES ('53', '11', '/mall/small/11-3.jpg', '11-3');
INSERT INTO `images_small` VALUES ('54', '11', '/mall/small/11-4.jpg', '11-4');
INSERT INTO `images_small` VALUES ('55', '11', '/mall/small/11-5.jpg', '11-5');
INSERT INTO `images_small` VALUES ('56', '12', '/mall/small/12-1.jpg', '12-1');
INSERT INTO `images_small` VALUES ('57', '12', '/mall/small/12-2.jpg', '12-2');
INSERT INTO `images_small` VALUES ('58', '12', '/mall/small/12-3.jpg', '12-3');
INSERT INTO `images_small` VALUES ('59', '12', '/mall/small/12-4.jpg', '12-4');
INSERT INTO `images_small` VALUES ('60', '12', '/mall/small/12-5.jpg', '12-5');
INSERT INTO `images_small` VALUES ('61', '13', '/mall/small/13-1.jpg', '13-1');
INSERT INTO `images_small` VALUES ('62', '13', '/mall/small/13-2.jpg', '13-2');
INSERT INTO `images_small` VALUES ('63', '13', '/mall/small/13-3.jpg', '13-3');
INSERT INTO `images_small` VALUES ('64', '13', '/mall/small/13-4.jpg', '13-4');
INSERT INTO `images_small` VALUES ('65', '13', '/mall/small/13-5.jpg', '13-5');
INSERT INTO `images_small` VALUES ('66', '14', '/mall/small/14-1.jpg', '14-1');
INSERT INTO `images_small` VALUES ('67', '14', '/mall/small/14-2.jpg', '14-2');
INSERT INTO `images_small` VALUES ('68', '14', '/mall/small/14-3.jpg', '14-3');
INSERT INTO `images_small` VALUES ('69', '14', '/mall/small/14-4.jpg', '14-4');
INSERT INTO `images_small` VALUES ('70', '14', '/mall/small/14-5.jpg', '14-5');
INSERT INTO `images_small` VALUES ('71', '15', '/mall/small/15-1.jpg', '15-1');
INSERT INTO `images_small` VALUES ('72', '15', '/mall/small/15-2.jpg', '15-2');
INSERT INTO `images_small` VALUES ('73', '15', '/mall/small/15-3.jpg', '15-3');
INSERT INTO `images_small` VALUES ('74', '15', '/mall/small/15-4.jpg', '15-4');
INSERT INTO `images_small` VALUES ('75', '15', '/mall/small/15-5.jpg', '15-5');
INSERT INTO `images_small` VALUES ('76', '16', '/mall/small/16-1.jpg', '16-1');
INSERT INTO `images_small` VALUES ('77', '16', '/mall/small/16-2.jpg', '16-2');
INSERT INTO `images_small` VALUES ('78', '16', '/mall/small/16-3.jpg', '16-3');
INSERT INTO `images_small` VALUES ('79', '16', '/mall/small/16-4.jpg', '16-4');
INSERT INTO `images_small` VALUES ('80', '16', '/mall/small/16-5.jpg', '16-5');
INSERT INTO `images_small` VALUES ('81', '17', '/mall/small/17-1.jpg', '17-1');
INSERT INTO `images_small` VALUES ('82', '17', '/mall/small/17-2.jpg', '17-2');
INSERT INTO `images_small` VALUES ('83', '17', '/mall/small/17-3.jpg', '17-3');
INSERT INTO `images_small` VALUES ('84', '17', '/mall/small/17-4.jpg', '17-4');
INSERT INTO `images_small` VALUES ('85', '17', '/mall/small/17-5.jpg', '17-5');
INSERT INTO `images_small` VALUES ('86', '18', '/mall/small/18-1.jpg', '18-1');
INSERT INTO `images_small` VALUES ('87', '18', '/mall/small/18-2.jpg', '18-2');
INSERT INTO `images_small` VALUES ('88', '18', '/mall/small/18-3.jpg', '18-3');
INSERT INTO `images_small` VALUES ('89', '18', '/mall/small/18-4.jpg', '18-4');
INSERT INTO `images_small` VALUES ('90', '18', '/mall/small/18-5.jpg', '18-5');
INSERT INTO `images_small` VALUES ('91', '19', '/mall/small/19-1.jpg', '19-1');
INSERT INTO `images_small` VALUES ('92', '19', '/mall/small/19-2.jpg', '19-2');
INSERT INTO `images_small` VALUES ('93', '19', '/mall/small/19-3.jpg', '19-3');
INSERT INTO `images_small` VALUES ('94', '19', '/mall/small/19-4.jpg', '19-4');
INSERT INTO `images_small` VALUES ('95', '19', '/mall/small/19-5.jpg', '19-5');
INSERT INTO `images_small` VALUES ('96', '20', '/mall/small/20-1.jpg', '20-1');
INSERT INTO `images_small` VALUES ('97', '20', '/mall/small/20-2.jpg', '20-2');
INSERT INTO `images_small` VALUES ('98', '20', '/mall/small/20-3.jpg', '20-3');
INSERT INTO `images_small` VALUES ('99', '20', '/mall/small/20-4.jpg', '20-4');
INSERT INTO `images_small` VALUES ('100', '20', '/mall/small/20-5.jpg', '20-5');
INSERT INTO `images_small` VALUES ('101', '21', '/mall/small/21-1.jpg', '21-1');
INSERT INTO `images_small` VALUES ('102', '21', '/mall/small/21-2.jpg', '21-2');
INSERT INTO `images_small` VALUES ('103', '21', '/mall/small/21-3.jpg', '21-3');
INSERT INTO `images_small` VALUES ('104', '21', '/mall/small/21-4.jpg', '21-4');
INSERT INTO `images_small` VALUES ('105', '21', '/mall/small/21-5.jpg', '21-5');
INSERT INTO `images_small` VALUES ('106', '22', '/mall/small/22-1.jpg', '22-1');
INSERT INTO `images_small` VALUES ('107', '22', '/mall/small/22-2.jpg', '22-2');
INSERT INTO `images_small` VALUES ('108', '22', '/mall/small/22-3.jpg', '22-3');
INSERT INTO `images_small` VALUES ('109', '22', '/mall/small/22-4.jpg', '22-4');
INSERT INTO `images_small` VALUES ('110', '22', '/mall/small/22-5.jpg', '22-5');
INSERT INTO `images_small` VALUES ('111', '23', '/mall/small/23-1.jpg', '23-1');
INSERT INTO `images_small` VALUES ('112', '23', '/mall/small/23-2.jpg', '23-2');
INSERT INTO `images_small` VALUES ('113', '23', '/mall/small/23-3.jpg', '23-3');
INSERT INTO `images_small` VALUES ('114', '23', '/mall/small/23-4.jpg', '23-4');
INSERT INTO `images_small` VALUES ('115', '23', '/mall/small/23-5.jpg', '23-5');
INSERT INTO `images_small` VALUES ('116', '24', '/mall/small/24-1.jpg', '24-1');
INSERT INTO `images_small` VALUES ('117', '24', '/mall/small/24-2.jpg', '24-2');
INSERT INTO `images_small` VALUES ('118', '24', '/mall/small/24-3.jpg', '24-3');
INSERT INTO `images_small` VALUES ('119', '24', '/mall/small/24-4.jpg', '24-4');
INSERT INTO `images_small` VALUES ('120', '24', '/mall/small/24-5.jpg', '24-5');
INSERT INTO `images_small` VALUES ('121', '25', '/mall/small/25-1.jpg', '25-1');
INSERT INTO `images_small` VALUES ('122', '25', '/mall/small/25-2.jpg', '25-2');
INSERT INTO `images_small` VALUES ('123', '25', '/mall/small/25-3.jpg', '25-3');
INSERT INTO `images_small` VALUES ('124', '25', '/mall/small/25-4.jpg', '25-4');
INSERT INTO `images_small` VALUES ('125', '25', '/mall/small/25-5.jpg', '25-5');
INSERT INTO `images_small` VALUES ('126', '26', '/mall/small/26-1.jpg', '26-1');
INSERT INTO `images_small` VALUES ('127', '26', '/mall/small/26-2.jpg', '26-2');
INSERT INTO `images_small` VALUES ('128', '26', '/mall/small/26-3.jpg', '26-3');
INSERT INTO `images_small` VALUES ('129', '26', '/mall/small/26-4.jpg', '26-4');
INSERT INTO `images_small` VALUES ('130', '26', '/mall/small/26-5.jpg', '26-5');
INSERT INTO `images_small` VALUES ('131', '27', '/mall/small/27-1.jpg', '27-1');
INSERT INTO `images_small` VALUES ('132', '27', '/mall/small/27-2.jpg', '27-2');
INSERT INTO `images_small` VALUES ('133', '27', '/mall/small/27-3.jpg', '27-3');
INSERT INTO `images_small` VALUES ('134', '27', '/mall/small/27-4.jpg', '27-4');
INSERT INTO `images_small` VALUES ('135', '27', '/mall/small/27-5.jpg', '27-5');
INSERT INTO `images_small` VALUES ('136', '28', '/mall/small/28-1.jpg', '28-1');
INSERT INTO `images_small` VALUES ('137', '28', '/mall/small/28-2.jpg', '28-2');
INSERT INTO `images_small` VALUES ('138', '28', '/mall/small/28-3.jpg', '28-3');
INSERT INTO `images_small` VALUES ('139', '28', '/mall/small/28-4.jpg', '28-4');
INSERT INTO `images_small` VALUES ('140', '28', '/mall/small/28-5.jpg', '28-5');
INSERT INTO `images_small` VALUES ('141', '29', '/mall/small/29-1.jpg', '29-1');
INSERT INTO `images_small` VALUES ('142', '29', '/mall/small/29-2.jpg', '29-2');
INSERT INTO `images_small` VALUES ('143', '29', '/mall/small/29-3.jpg', '29-3');
INSERT INTO `images_small` VALUES ('144', '29', '/mall/small/29-4.jpg', '29-4');
INSERT INTO `images_small` VALUES ('145', '29', '/mall/small/29-5.jpg', '29-5');
INSERT INTO `images_small` VALUES ('146', '30', '/mall/small/30-1.jpg', '30-1');
INSERT INTO `images_small` VALUES ('147', '30', '/mall/small/30-2.jpg', '30-2');
INSERT INTO `images_small` VALUES ('148', '30', '/mall/small/30-3.jpg', '30-3');
INSERT INTO `images_small` VALUES ('149', '30', '/mall/small/30-4.jpg', '30-4');
INSERT INTO `images_small` VALUES ('150', '30', '/mall/small/30-5.jpg', '30-5');
INSERT INTO `images_small` VALUES ('151', '31', '/mall/small/31-1.jpg', '31-1');
INSERT INTO `images_small` VALUES ('152', '31', '/mall/small/31-2.jpg', '31-2');
INSERT INTO `images_small` VALUES ('153', '31', '/mall/small/31-3.jpg', '31-3');
INSERT INTO `images_small` VALUES ('154', '31', '/mall/small/31-4.jpg', '31-4');
INSERT INTO `images_small` VALUES ('155', '31', '/mall/small/31-5.jpg', '31-5');
INSERT INTO `images_small` VALUES ('156', '32', '/mall/small/32-1.jpg', '32-1');
INSERT INTO `images_small` VALUES ('157', '32', '/mall/small/32-2.jpg', '32-2');
INSERT INTO `images_small` VALUES ('158', '32', '/mall/small/32-3.jpg', '32-3');
INSERT INTO `images_small` VALUES ('159', '32', '/mall/small/32-4.jpg', '32-4');
INSERT INTO `images_small` VALUES ('160', '32', '/mall/small/32-5.jpg', '32-5');
INSERT INTO `images_small` VALUES ('161', '33', '/mall/small/33-1.jpg', '33-1');
INSERT INTO `images_small` VALUES ('162', '33', '/mall/small/33-2.jpg', '33-2');
INSERT INTO `images_small` VALUES ('163', '33', '/mall/small/33-3.jpg', '33-3');
INSERT INTO `images_small` VALUES ('164', '33', '/mall/small/33-4.jpg', '33-4');
INSERT INTO `images_small` VALUES ('165', '33', '/mall/small/33-5.jpg', '33-5');
INSERT INTO `images_small` VALUES ('166', '34', '/mall/small/34-1.jpg', '34-1');
INSERT INTO `images_small` VALUES ('167', '34', '/mall/small/34-2.jpg', '34-2');
INSERT INTO `images_small` VALUES ('168', '34', '/mall/small/34-3.jpg', '34-3');
INSERT INTO `images_small` VALUES ('169', '34', '/mall/small/34-4.jpg', '34-4');
INSERT INTO `images_small` VALUES ('170', '34', '/mall/small/34-5.jpg', '34-5');
INSERT INTO `images_small` VALUES ('171', '35', '/mall/small/35-1.jpg', '35-1');
INSERT INTO `images_small` VALUES ('172', '35', '/mall/small/35-2.jpg', '35-2');
INSERT INTO `images_small` VALUES ('173', '35', '/mall/small/35-3.jpg', '35-3');
INSERT INTO `images_small` VALUES ('174', '35', '/mall/small/35-4.jpg', '35-4');
INSERT INTO `images_small` VALUES ('175', '35', '/mall/small/35-5.jpg', '35-5');
INSERT INTO `images_small` VALUES ('176', '36', '/mall/small/36-1.jpg', '36-1');
INSERT INTO `images_small` VALUES ('177', '36', '/mall/small/36-2.jpg', '36-2');
INSERT INTO `images_small` VALUES ('178', '36', '/mall/small/36-3.jpg', '36-3');
INSERT INTO `images_small` VALUES ('179', '36', '/mall/small/36-4.jpg', '36-4');
INSERT INTO `images_small` VALUES ('180', '36', '/mall/small/36-5.jpg', '36-5');

-- ----------------------------
-- Table structure for `images_smaller`
-- ----------------------------
DROP TABLE IF EXISTS `images_smaller`;
CREATE TABLE `images_smaller` (
  `images_id` int(6) NOT NULL AUTO_INCREMENT,
  `goods_id` int(6) NOT NULL,
  `images_path` varchar(100) NOT NULL,
  `images_name` varchar(100) NOT NULL,
  PRIMARY KEY (`images_id`),
  KEY `fk_image_big` (`goods_id`) USING BTREE,
  CONSTRAINT `images_smaller_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_info` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of images_smaller
-- ----------------------------
INSERT INTO `images_smaller` VALUES ('1', '1', '/mall/smaller/1-1.jpg', '1-1');
INSERT INTO `images_smaller` VALUES ('2', '1', '/mall/smaller/1-2.jpg', '1-2');
INSERT INTO `images_smaller` VALUES ('3', '1', '/mall/smaller/1-3.jpg', '1-3');
INSERT INTO `images_smaller` VALUES ('4', '1', '/mall/smaller/1-4.jpg', '1-4');
INSERT INTO `images_smaller` VALUES ('5', '1', '/mall/smaller/1-5.jpg', '1-5');
INSERT INTO `images_smaller` VALUES ('6', '2', '/mall/smaller/2-1.jpg', '2-1');
INSERT INTO `images_smaller` VALUES ('7', '2', '/mall/smaller/2-2.jpg', '2-2');
INSERT INTO `images_smaller` VALUES ('8', '2', '/mall/smaller/2-3.jpg', '2-3');
INSERT INTO `images_smaller` VALUES ('9', '2', '/mall/smaller/2-4.jpg', '2-4');
INSERT INTO `images_smaller` VALUES ('10', '2', '/mall/smaller/2-5.jpg', '2-5');
INSERT INTO `images_smaller` VALUES ('11', '3', '/mall/smaller/3-1.jpg', '3-1');
INSERT INTO `images_smaller` VALUES ('12', '3', '/mall/smaller/3-2.jpg', '3-2');
INSERT INTO `images_smaller` VALUES ('13', '3', '/mall/smaller/3-3.jpg', '3-3');
INSERT INTO `images_smaller` VALUES ('14', '3', '/mall/smaller/3-4.jpg', '3-4');
INSERT INTO `images_smaller` VALUES ('15', '3', '/mall/smaller/3-5.jpg', '3-5');
INSERT INTO `images_smaller` VALUES ('16', '4', '/mall/smaller/4-1.jpg', '4-1');
INSERT INTO `images_smaller` VALUES ('17', '4', '/mall/smaller/4-2.jpg', '4-2');
INSERT INTO `images_smaller` VALUES ('18', '4', '/mall/smaller/4-3.jpg', '4-3');
INSERT INTO `images_smaller` VALUES ('19', '4', '/mall/smaller/4-4.jpg', '4-4');
INSERT INTO `images_smaller` VALUES ('21', '5', '/mall/smaller/5-1.jpg', '5-1');
INSERT INTO `images_smaller` VALUES ('22', '5', '/mall/smaller/5-2.jpg', '5-2');
INSERT INTO `images_smaller` VALUES ('23', '5', '/mall/smaller/5-3.jpg', '5-3');
INSERT INTO `images_smaller` VALUES ('24', '5', '/mall/smaller/5-4.jpg', '5-4');
INSERT INTO `images_smaller` VALUES ('25', '5', '/mall/smaller/5-5.jpg', '5-5');
INSERT INTO `images_smaller` VALUES ('26', '6', '/mall/smaller/6-1.jpg', '6-1');
INSERT INTO `images_smaller` VALUES ('27', '6', '/mall/smaller/6-2.jpg', '6-2');
INSERT INTO `images_smaller` VALUES ('31', '7', '/mall/smaller/7-1.jpg', '7-1');
INSERT INTO `images_smaller` VALUES ('32', '7', '/mall/smaller/7-2.jpg', '7-2');
INSERT INTO `images_smaller` VALUES ('33', '7', '/mall/smaller/7-3.jpg', '7-3');
INSERT INTO `images_smaller` VALUES ('36', '8', '/mall/smaller/8-1.jpg', '8-1');
INSERT INTO `images_smaller` VALUES ('37', '8', '/mall/smaller/8-2.jpg', '8-2');
INSERT INTO `images_smaller` VALUES ('38', '8', '/mall/smaller/8-3.jpg', '8-3');
INSERT INTO `images_smaller` VALUES ('39', '8', '/mall/smaller/8-4.jpg', '8-4');
INSERT INTO `images_smaller` VALUES ('40', '8', '/mall/smaller/8-5.jpg', '8-5');
INSERT INTO `images_smaller` VALUES ('41', '9', '/mall/smaller/9-1.jpg', '9-1');
INSERT INTO `images_smaller` VALUES ('42', '9', '/mall/smaller/9-2.jpg', '9-2');
INSERT INTO `images_smaller` VALUES ('43', '9', '/mall/smaller/9-3.jpg', '9-3');
INSERT INTO `images_smaller` VALUES ('44', '9', '/mall/smaller/9-4.jpg', '9-4');
INSERT INTO `images_smaller` VALUES ('45', '9', '/mall/smaller/9-5.jpg', '9-5');
INSERT INTO `images_smaller` VALUES ('46', '10', '/mall/smaller/10-1.jpg', '10-1');
INSERT INTO `images_smaller` VALUES ('47', '10', '/mall/smaller/10-2.jpg', '10-2');
INSERT INTO `images_smaller` VALUES ('48', '10', '/mall/smaller/10-3.jpg', '10-3');
INSERT INTO `images_smaller` VALUES ('49', '10', '/mall/smaller/10-4.jpg', '10-4');
INSERT INTO `images_smaller` VALUES ('50', '10', '/mall/smaller/10-5.jpg', '10-5');
INSERT INTO `images_smaller` VALUES ('51', '11', '/mall/smaller/11-1.jpg', '11-1');
INSERT INTO `images_smaller` VALUES ('52', '11', '/mall/smaller/11-2.jpg', '11-2');
INSERT INTO `images_smaller` VALUES ('53', '11', '/mall/smaller/11-3.jpg', '11-3');
INSERT INTO `images_smaller` VALUES ('54', '11', '/mall/smaller/11-4.jpg', '11-4');
INSERT INTO `images_smaller` VALUES ('56', '12', '/mall/smaller/12-1.jpg', '12-1');
INSERT INTO `images_smaller` VALUES ('57', '12', '/mall/smaller/12-2.jpg', '12-2');
INSERT INTO `images_smaller` VALUES ('58', '12', '/mall/smaller/12-3.jpg', '12-3');
INSERT INTO `images_smaller` VALUES ('59', '12', '/mall/smaller/12-4.jpg', '12-4');
INSERT INTO `images_smaller` VALUES ('60', '12', '/mall/smaller/12-5.jpg', '12-5');
INSERT INTO `images_smaller` VALUES ('61', '13', '/mall/smaller/13-1.jpg', '13-1');
INSERT INTO `images_smaller` VALUES ('62', '13', '/mall/smaller/13-2.jpg', '13-2');
INSERT INTO `images_smaller` VALUES ('63', '13', '/mall/smaller/13-3.jpg', '13-3');
INSERT INTO `images_smaller` VALUES ('66', '14', '/mall/smaller/14-1.jpg', '14-1');
INSERT INTO `images_smaller` VALUES ('67', '14', '/mall/smaller/14-2.jpg', '14-2');
INSERT INTO `images_smaller` VALUES ('71', '15', '/mall/smaller/15-1.jpg', '15-1');
INSERT INTO `images_smaller` VALUES ('72', '15', '/mall/smaller/15-2.jpg', '15-2');
INSERT INTO `images_smaller` VALUES ('73', '15', '/mall/smaller/15-3.jpg', '15-3');
INSERT INTO `images_smaller` VALUES ('74', '15', '/mall/smaller/15-4.jpg', '15-4');
INSERT INTO `images_smaller` VALUES ('75', '15', '/mall/smaller/15-5.jpg', '15-5');
INSERT INTO `images_smaller` VALUES ('76', '16', '/mall/smaller/16-1.jpg', '16-1');
INSERT INTO `images_smaller` VALUES ('77', '16', '/mall/smaller/16-2.jpg', '16-2');
INSERT INTO `images_smaller` VALUES ('78', '16', '/mall/smaller/16-3.jpg', '16-3');
INSERT INTO `images_smaller` VALUES ('81', '17', '/mall/smaller/17-1.jpg', '17-1');
INSERT INTO `images_smaller` VALUES ('82', '17', '/mall/smaller/17-2.jpg', '17-2');
INSERT INTO `images_smaller` VALUES ('83', '17', '/mall/smaller/17-3.jpg', '17-3');
INSERT INTO `images_smaller` VALUES ('84', '17', '/mall/smaller/17-4.jpg', '17-4');
INSERT INTO `images_smaller` VALUES ('85', '17', '/mall/smaller/17-5.jpg', '17-5');
INSERT INTO `images_smaller` VALUES ('86', '18', '/mall/smaller/18-1.jpg', '18-1');
INSERT INTO `images_smaller` VALUES ('91', '19', '/mall/smaller/19-1.jpg', '19-1');
INSERT INTO `images_smaller` VALUES ('92', '19', '/mall/smaller/19-2.jpg', '19-2');
INSERT INTO `images_smaller` VALUES ('93', '19', '/mall/smaller/19-3.jpg', '19-3');
INSERT INTO `images_smaller` VALUES ('94', '19', '/mall/smaller/19-4.jpg', '19-4');
INSERT INTO `images_smaller` VALUES ('96', '20', '/mall/smaller/20-1.jpg', '20-1');
INSERT INTO `images_smaller` VALUES ('111', '23', '/mall/smaller/23-1.jpg', '23-1');
INSERT INTO `images_smaller` VALUES ('112', '23', '/mall/smaller/23-2.jpg', '23-2');
INSERT INTO `images_smaller` VALUES ('113', '23', '/mall/smaller/23-3.jpg', '23-3');
INSERT INTO `images_smaller` VALUES ('114', '23', '/mall/smaller/23-4.jpg', '23-4');
INSERT INTO `images_smaller` VALUES ('115', '23', '/mall/smaller/23-5.jpg', '23-5');
INSERT INTO `images_smaller` VALUES ('116', '24', '/mall/smaller/24-1.jpg', '24-1');
INSERT INTO `images_smaller` VALUES ('117', '24', '/mall/smaller/24-2.jpg', '24-2');
INSERT INTO `images_smaller` VALUES ('118', '24', '/mall/smaller/24-3.jpg', '24-3');
INSERT INTO `images_smaller` VALUES ('119', '24', '/mall/smaller/24-4.jpg', '24-4');
INSERT INTO `images_smaller` VALUES ('120', '24', '/mall/smaller/24-5.jpg', '24-5');
INSERT INTO `images_smaller` VALUES ('121', '25', '/mall/smaller/25-1.jpg', '25-1');
INSERT INTO `images_smaller` VALUES ('122', '25', '/mall/smaller/25-2.jpg', '25-2');
INSERT INTO `images_smaller` VALUES ('123', '25', '/mall/smaller/25-3.jpg', '25-3');
INSERT INTO `images_smaller` VALUES ('124', '25', '/mall/smaller/25-4.jpg', '25-4');
INSERT INTO `images_smaller` VALUES ('125', '25', '/mall/smaller/25-5.jpg', '25-5');
INSERT INTO `images_smaller` VALUES ('126', '26', '/mall/smaller/26-1.jpg', '26-1');
INSERT INTO `images_smaller` VALUES ('127', '26', '/mall/smaller/26-2.jpg', '26-2');
INSERT INTO `images_smaller` VALUES ('128', '26', '/mall/smaller/26-3.jpg', '26-3');
INSERT INTO `images_smaller` VALUES ('131', '27', '/mall/smaller/27-1.jpg', '27-1');
INSERT INTO `images_smaller` VALUES ('132', '27', '/mall/smaller/27-2.jpg', '27-2');
INSERT INTO `images_smaller` VALUES ('133', '27', '/mall/smaller/27-3.jpg', '27-3');
INSERT INTO `images_smaller` VALUES ('134', '27', '/mall/smaller/27-4.jpg', '27-4');
INSERT INTO `images_smaller` VALUES ('135', '27', '/mall/smaller/27-5.jpg', '27-5');
INSERT INTO `images_smaller` VALUES ('136', '28', '/mall/smaller/28-1.jpg', '28-1');
INSERT INTO `images_smaller` VALUES ('137', '28', '/mall/smaller/28-2.jpg', '28-2');
INSERT INTO `images_smaller` VALUES ('141', '30', '/mall/smaller/30-1.jpg', '30-1');
INSERT INTO `images_smaller` VALUES ('142', '30', '/mall/smaller/30-2.jpg', '30-2');
INSERT INTO `images_smaller` VALUES ('143', '30', '/mall/smaller/30-3.jpg', '30-3');
INSERT INTO `images_smaller` VALUES ('146', '31', '/mall/smaller/31-1.jpg', '31-1');
INSERT INTO `images_smaller` VALUES ('147', '31', '/mall/smaller/31-2.jpg', '31-2');
INSERT INTO `images_smaller` VALUES ('150', '32', '/mall/smaller/32-1.jpg', '32-1');
INSERT INTO `images_smaller` VALUES ('151', '32', '/mall/smaller/32-2.jpg', '32-2');
INSERT INTO `images_smaller` VALUES ('152', '33', '/mall/smaller/33-1.jpg', '33-1');
INSERT INTO `images_smaller` VALUES ('153', '33', '/mall/smaller/33-2.jpg', '33-2');
INSERT INTO `images_smaller` VALUES ('154', '33', '/mall/smaller/33-3.jpg', '33-3');
INSERT INTO `images_smaller` VALUES ('155', '33', '/mall/smaller/33-4.jpg', '33-4');
INSERT INTO `images_smaller` VALUES ('156', '34', '/mall/smaller/34-1.jpg', '34-1');
INSERT INTO `images_smaller` VALUES ('161', '35', '/mall/smaller/35-1.jpg', '35-1');
INSERT INTO `images_smaller` VALUES ('162', '35', '/mall/smaller/35-2.jpg', '35-2');
INSERT INTO `images_smaller` VALUES ('163', '35', '/mall/smaller/35-3.jpg', '35-3');
INSERT INTO `images_smaller` VALUES ('164', '35', '/mall/smaller/35-4.jpg', '35-4');
INSERT INTO `images_smaller` VALUES ('165', '35', '/mall/smaller/35-5.jpg', '35-5');
INSERT INTO `images_smaller` VALUES ('166', '36', '/mall/smaller/36-1.jpg', '36-1');
INSERT INTO `images_smaller` VALUES ('167', '36', '/mall/smaller/36-2.jpg', '36-2');
INSERT INTO `images_smaller` VALUES ('168', '36', '/mall/smaller/36-3.jpg', '36-3');
INSERT INTO `images_smaller` VALUES ('169', '36', '/mall/smaller/36-4.jpg', '36-4');
INSERT INTO `images_smaller` VALUES ('170', '36', '/mall/smaller/36-5.jpg', '36-5');
INSERT INTO `images_smaller` VALUES ('186', '29', '/mall/smaller/29-1.jpg', '29-1');
INSERT INTO `images_smaller` VALUES ('187', '22', '/mall/smaller/22-1.jpg', '22-1');
INSERT INTO `images_smaller` VALUES ('188', '21', '/mall/smaller/21-1.jpg', '21-1');

-- ----------------------------
-- Table structure for `judge_info`
-- ----------------------------
DROP TABLE IF EXISTS `judge_info`;
CREATE TABLE `judge_info` (
  `judge_id` int(6) NOT NULL AUTO_INCREMENT,
  `goods_id` int(6) NOT NULL,
  `judge_content` varchar(500) NOT NULL,
  `judge_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(6) NOT NULL,
  `judge_pic` varchar(20) DEFAULT NULL,
  `judge_grade` int(6) NOT NULL,
  PRIMARY KEY (`judge_id`),
  KEY `fk_judge_info1` (`goods_id`),
  KEY `fk_judge_info2` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of judge_info
-- ----------------------------

-- ----------------------------
-- Table structure for `news_info`
-- ----------------------------
DROP TABLE IF EXISTS `news_info`;
CREATE TABLE `news_info` (
  `news_id` int(6) NOT NULL AUTO_INCREMENT,
  `news_content` varchar(500) DEFAULT NULL,
  `news_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_pic` varchar(500) DEFAULT NULL,
  `news_zanall` int(6) DEFAULT '0',
  `news_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=741 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_info
-- ----------------------------
INSERT INTO `news_info` VALUES ('736', '哈哈', '2017-01-01 22:59:36', null, '0', null);
INSERT INTO `news_info` VALUES ('738', '爱生活！爱健身！爱运动！', '2017-04-29 23:35:39', null, '0', null);
INSERT INTO `news_info` VALUES ('739', '爱生活！爱健康！爱运动！', '2017-05-01 17:02:42', null, '0', null);
INSERT INTO `news_info` VALUES ('740', '今天天气真好！', '2017-05-01 17:05:36', null, '0', '郑州市二七区');

-- ----------------------------
-- Table structure for `news_keep`
-- ----------------------------
DROP TABLE IF EXISTS `news_keep`;
CREATE TABLE `news_keep` (
  `user_id` int(6) NOT NULL DEFAULT '0',
  `news_id` int(6) NOT NULL DEFAULT '0',
  `news_keep_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`news_id`),
  KEY `fk_news_keep2` (`news_id`),
  CONSTRAINT `fk_news_keep1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `fk_news_keep2` FOREIGN KEY (`news_id`) REFERENCES `news_info` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_keep
-- ----------------------------
INSERT INTO `news_keep` VALUES ('53', '736', '2017-01-01 22:59:42');
INSERT INTO `news_keep` VALUES ('155', '738', '2017-05-01 17:16:34');
INSERT INTO `news_keep` VALUES ('155', '740', '2017-05-01 17:16:29');

-- ----------------------------
-- Table structure for `news_reply`
-- ----------------------------
DROP TABLE IF EXISTS `news_reply`;
CREATE TABLE `news_reply` (
  `news_reply_id` int(6) NOT NULL AUTO_INCREMENT,
  `news_id` int(6) NOT NULL DEFAULT '0',
  `user_id_self` int(6) NOT NULL DEFAULT '0',
  `user_id_reply` int(6) NOT NULL DEFAULT '0',
  `news_reply_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `news_reply_id_id` int(6) NOT NULL DEFAULT '0',
  `news_reply_content` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`news_reply_id`),
  KEY `fk_news_reply1` (`news_id`),
  KEY `fk_news_reply2` (`user_id_self`),
  KEY `fk_news_reply3` (`user_id_reply`),
  KEY `fk_news_reply5` (`news_reply_id_id`),
  CONSTRAINT `fk_news_reply1` FOREIGN KEY (`news_id`) REFERENCES `news_info` (`news_id`),
  CONSTRAINT `fk_news_reply2` FOREIGN KEY (`user_id_self`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `fk_news_reply3` FOREIGN KEY (`user_id_reply`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=762 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_reply
-- ----------------------------
INSERT INTO `news_reply` VALUES ('756', '740', '155', '156', '2017-05-13 14:24:27', '0', '是啊');
INSERT INTO `news_reply` VALUES ('757', '738', '53', '156', '2017-05-13 14:24:42', '0', '我也爱运动');
INSERT INTO `news_reply` VALUES ('758', '740', '156', '53', '2017-05-13 14:25:42', '756', '11');
INSERT INTO `news_reply` VALUES ('759', '738', '156', '53', '2017-05-13 14:26:03', '757', '咋俩都是健身爱好者');
INSERT INTO `news_reply` VALUES ('760', '740', '155', '157', '2018-10-23 15:14:39', '0', 'hah');
INSERT INTO `news_reply` VALUES ('761', '740', '155', '158', '2018-10-23 15:15:21', '0', 'h\'h\'h');

-- ----------------------------
-- Table structure for `news_zan`
-- ----------------------------
DROP TABLE IF EXISTS `news_zan`;
CREATE TABLE `news_zan` (
  `news_zan_id` int(6) NOT NULL AUTO_INCREMENT,
  `news_id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  PRIMARY KEY (`news_zan_id`),
  KEY `fk_news_zan1` (`news_id`),
  KEY `kf_news_zan2` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=380 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of news_zan
-- ----------------------------
INSERT INTO `news_zan` VALUES ('275', '681', '51');
INSERT INTO `news_zan` VALUES ('305', '690', '53');
INSERT INTO `news_zan` VALUES ('311', '691', '53');
INSERT INTO `news_zan` VALUES ('272', '681', '53');
INSERT INTO `news_zan` VALUES ('239', '587', '51');
INSERT INTO `news_zan` VALUES ('332', '692', '53');
INSERT INTO `news_zan` VALUES ('235', '584', '53');
INSERT INTO `news_zan` VALUES ('268', '681', '52');
INSERT INTO `news_zan` VALUES ('274', '586', '51');
INSERT INTO `news_zan` VALUES ('278', '688', '51');
INSERT INTO `news_zan` VALUES ('284', '690', '51');
INSERT INTO `news_zan` VALUES ('256', '657', '53');
INSERT INTO `news_zan` VALUES ('316', '691', '51');
INSERT INTO `news_zan` VALUES ('333', '692', '51');
INSERT INTO `news_zan` VALUES ('290', '691', '52');
INSERT INTO `news_zan` VALUES ('291', '691', '115');
INSERT INTO `news_zan` VALUES ('292', '691', '124');
INSERT INTO `news_zan` VALUES ('294', '693', '53');
INSERT INTO `news_zan` VALUES ('297', '693', '124');
INSERT INTO `news_zan` VALUES ('298', '690', '124');
INSERT INTO `news_zan` VALUES ('304', '694', '51');
INSERT INTO `news_zan` VALUES ('302', '689', '125');
INSERT INTO `news_zan` VALUES ('303', '688', '125');
INSERT INTO `news_zan` VALUES ('306', '583', '53');
INSERT INTO `news_zan` VALUES ('307', '694', '126');
INSERT INTO `news_zan` VALUES ('308', '695', '126');
INSERT INTO `news_zan` VALUES ('309', '694', '53');
INSERT INTO `news_zan` VALUES ('310', '696', '53');
INSERT INTO `news_zan` VALUES ('335', '718', '129');
INSERT INTO `news_zan` VALUES ('336', '692', '129');
INSERT INTO `news_zan` VALUES ('337', '692', '132');
INSERT INTO `news_zan` VALUES ('338', '717', '132');
INSERT INTO `news_zan` VALUES ('339', '718', '132');
INSERT INTO `news_zan` VALUES ('341', '692', '134');
INSERT INTO `news_zan` VALUES ('345', '586', '136');
INSERT INTO `news_zan` VALUES ('350', '720', '137');
INSERT INTO `news_zan` VALUES ('362', '727', '140');
INSERT INTO `news_zan` VALUES ('363', '728', '140');
INSERT INTO `news_zan` VALUES ('366', '728', '136');
INSERT INTO `news_zan` VALUES ('371', '734', '136');
INSERT INTO `news_zan` VALUES ('377', '734', '153');
INSERT INTO `news_zan` VALUES ('378', '721', '51');

-- ----------------------------
-- Table structure for `one_cat`
-- ----------------------------
DROP TABLE IF EXISTS `one_cat`;
CREATE TABLE `one_cat` (
  `one_catid` int(6) NOT NULL AUTO_INCREMENT,
  `one_catname` varchar(200) NOT NULL,
  PRIMARY KEY (`one_catid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of one_cat
-- ----------------------------
INSERT INTO `one_cat` VALUES ('1', '运动服');
INSERT INTO `one_cat` VALUES ('2', '运动鞋');
INSERT INTO `one_cat` VALUES ('3', '运动器材');
INSERT INTO `one_cat` VALUES ('4', '其他分类');

-- ----------------------------
-- Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `order_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) NOT NULL,
  `goods_id` int(6) NOT NULL,
  `goods_num` int(6) NOT NULL,
  `address_id` int(6) NOT NULL,
  `address_tel` varchar(15) DEFAULT NULL,
  `address_name` varchar(20) DEFAULT NULL,
  `address_area` varchar(200) DEFAULT NULL,
  `address_detail` varchar(500) DEFAULT NULL,
  `goods_pic` varchar(50) DEFAULT NULL,
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_info1` (`user_id`),
  KEY `fk_order_info2` (`goods_id`),
  KEY `fk_order_info3` (`address_id`),
  CONSTRAINT `fk_order_info1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `fk_order_info2` FOREIGN KEY (`goods_id`) REFERENCES `goods_info` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('58', '102', '4', '10', '68', '15538305355', 'kun', '安徽省-蚌埠市-淮上区', 'mmm', '2', '2016-05-16 00:19:33');
INSERT INTO `order_info` VALUES ('67', '103', '1', '20', '69', '15538305555', '阿达', '澳门-澳门-市区', '222为全文', '1', '2016-05-16 17:33:39');
INSERT INTO `order_info` VALUES ('68', '103', '6', '13', '69', '15538305555', '阿达', '澳门-澳门-市区', '222为全文', '2', '2016-05-16 17:36:38');
INSERT INTO `order_info` VALUES ('71', '105', '1', '1', '70', '13333333333', '3321', '澳门-澳门', '321', '2', '2016-05-17 21:41:15');
INSERT INTO `order_info` VALUES ('73', '105', '3', '1', '71', '13333333334', '321', '山东省-烟台市-福山区', '12321321', '1', '2016-05-17 21:44:10');
INSERT INTO `order_info` VALUES ('76', '107', '6', '1', '73', '17839949033', '李刚', '河南省-郑州市-高新区', '河南工业大学', '1', '2016-05-26 20:22:20');
INSERT INTO `order_info` VALUES ('116', '121', '2', '1', '94', '111111', '发顺丰的', '河南省-新乡市-原阳县', '11111', '1', '2016-06-13 14:45:09');
INSERT INTO `order_info` VALUES ('129', '126', '7', '6', '109', '15538797777', 'liugoche', '河南省-新乡市-原阳县', 'jh', '1', '2016-06-16 09:06:19');
INSERT INTO `order_info` VALUES ('135', '140', '7', '8', '112', '18094156111', 'xsfdsf', '江西省-吉安市', '123123123213', '1', '2016-09-08 11:41:09');
INSERT INTO `order_info` VALUES ('136', '140', '3', '8', '112', '18094156111', 'xsfdsf', '江西省-吉安市', '123123123213', '5', '2016-09-08 11:44:20');
INSERT INTO `order_info` VALUES ('137', '149', '15', '1000', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 10:56:15');
INSERT INTO `order_info` VALUES ('138', '149', '1', '999999999', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 10:57:42');
INSERT INTO `order_info` VALUES ('139', '149', '2', '2147483647', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 10:58:38');
INSERT INTO `order_info` VALUES ('140', '149', '1', '0', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 10:59:41');
INSERT INTO `order_info` VALUES ('141', '149', '1', '0', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 11:00:08');
INSERT INTO `order_info` VALUES ('142', '149', '1', '1', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 11:00:24');
INSERT INTO `order_info` VALUES ('143', '149', '1', '10000', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 11:01:06');
INSERT INTO `order_info` VALUES ('144', '149', '1', '2147483647', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 11:01:22');
INSERT INTO `order_info` VALUES ('145', '149', '1', '2147483647', '113', '13675022222', '111', '浙江省-杭州市-江干区', '111111111111', '1', '2016-09-14 11:02:01');
INSERT INTO `order_info` VALUES ('148', '155', '1', '1', '117', '15617678845', '丁朝', '河南省-郑州市-金水区', '郑州航空工业管理学院东校区', '1', '2016-12-29 11:41:57');
INSERT INTO `order_info` VALUES ('149', '53', '1', '1', '67', '15538707633', '丁朝', '安徽省-宿州市-砀山县', '河南工业大学m河南工业大学m河南工业大学', '1', '2017-01-01 22:59:15');
INSERT INTO `order_info` VALUES ('150', '53', '4', '2', '110', '15617678845', '丁朝', '河南省-新乡市-原阳县', '郑州航空工业管理学院', '1', '2017-03-05 12:23:40');
INSERT INTO `order_info` VALUES ('151', '53', '4', '2', '110', '15617678845', '丁朝', '河南省-新乡市-原阳县', '郑州航空工业管理学院', '1', '2017-03-05 12:23:44');
INSERT INTO `order_info` VALUES ('152', '53', '4', '2', '110', '15617678845', '丁朝', '河南省-新乡市-原阳县', '郑州航空工业管理学院', '1', '2017-03-05 12:23:46');
INSERT INTO `order_info` VALUES ('154', '53', '1', '1', '67', '15538707633', '丁朝', '安徽省-宿州市-砀山县', '河南工业大学m河南工业大学m河南工业大学', '1', '2017-04-29 23:18:09');

-- ----------------------------
-- Table structure for `plan_info`
-- ----------------------------
DROP TABLE IF EXISTS `plan_info`;
CREATE TABLE `plan_info` (
  `plan_id` int(6) NOT NULL AUTO_INCREMENT,
  `plan_content` varchar(600) NOT NULL,
  `plan_ext1` varchar(60) DEFAULT NULL,
  `plan_ext2` varchar(600) DEFAULT NULL,
  `plan_ext3` int(6) DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_info
-- ----------------------------

-- ----------------------------
-- Table structure for `sizes`
-- ----------------------------
DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes` (
  `size_id` int(6) NOT NULL AUTO_INCREMENT,
  `goods_id` int(6) NOT NULL,
  `sizes` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`size_id`),
  KEY `sizes_fk1` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sizes
-- ----------------------------
INSERT INTO `sizes` VALUES ('1', '1', 'XS/155');
INSERT INTO `sizes` VALUES ('2', '1', 'S/160');
INSERT INTO `sizes` VALUES ('3', '1', 'M/165');
INSERT INTO `sizes` VALUES ('4', '1', 'L/170');
INSERT INTO `sizes` VALUES ('5', '1', 'XL/175');
INSERT INTO `sizes` VALUES ('6', '2', 'S/160');
INSERT INTO `sizes` VALUES ('7', '2', 'M/165');
INSERT INTO `sizes` VALUES ('8', '2', 'L/170');
INSERT INTO `sizes` VALUES ('9', '2', 'XL/175');
INSERT INTO `sizes` VALUES ('10', '2', 'XXL/180');
INSERT INTO `sizes` VALUES ('11', '3', 'S/160');
INSERT INTO `sizes` VALUES ('12', '3', 'M/165');
INSERT INTO `sizes` VALUES ('13', '3', 'L/170');
INSERT INTO `sizes` VALUES ('14', '3', 'XL/175');
INSERT INTO `sizes` VALUES ('15', '3', 'XXL/180');
INSERT INTO `sizes` VALUES ('16', '4', 'M（薄款）');
INSERT INTO `sizes` VALUES ('17', '4', 'L（薄款）');
INSERT INTO `sizes` VALUES ('18', '4', 'XL（薄款）');
INSERT INTO `sizes` VALUES ('19', '5', 'M(175/96A)');
INSERT INTO `sizes` VALUES ('20', '5', 'L(180/100A)');
INSERT INTO `sizes` VALUES ('21', '5', 'XL(185/105A)');
INSERT INTO `sizes` VALUES ('22', '6', 'L');
INSERT INTO `sizes` VALUES ('23', '6', 'XL');
INSERT INTO `sizes` VALUES ('24', '6', 'XXL');
INSERT INTO `sizes` VALUES ('25', '6', 'XXXL');
INSERT INTO `sizes` VALUES ('26', '7', '40');
INSERT INTO `sizes` VALUES ('27', '7', '41');
INSERT INTO `sizes` VALUES ('28', '7', '42');
INSERT INTO `sizes` VALUES ('29', '7', '43');
INSERT INTO `sizes` VALUES ('30', '7', '44');
INSERT INTO `sizes` VALUES ('31', '7', '45');
INSERT INTO `sizes` VALUES ('32', '8', '41');
INSERT INTO `sizes` VALUES ('33', '8', '42');
INSERT INTO `sizes` VALUES ('34', '8', '42.5');
INSERT INTO `sizes` VALUES ('35', '8', '43');
INSERT INTO `sizes` VALUES ('36', '8', '44');
INSERT INTO `sizes` VALUES ('37', '8', '45');
INSERT INTO `sizes` VALUES ('38', '9', '36');
INSERT INTO `sizes` VALUES ('39', '9', '37');
INSERT INTO `sizes` VALUES ('40', '9', '38');
INSERT INTO `sizes` VALUES ('41', '9', '39');
INSERT INTO `sizes` VALUES ('42', '10', '41');
INSERT INTO `sizes` VALUES ('43', '10', '42');
INSERT INTO `sizes` VALUES ('44', '10', '43');
INSERT INTO `sizes` VALUES ('45', '10', '44');
INSERT INTO `sizes` VALUES ('46', '10', '45');
INSERT INTO `sizes` VALUES ('47', '11', '41');
INSERT INTO `sizes` VALUES ('48', '11', '42');
INSERT INTO `sizes` VALUES ('49', '11', '43');
INSERT INTO `sizes` VALUES ('50', '11', '44');
INSERT INTO `sizes` VALUES ('51', '11', '45');
INSERT INTO `sizes` VALUES ('52', '12', '40');
INSERT INTO `sizes` VALUES ('53', '12', '42');
INSERT INTO `sizes` VALUES ('54', '12', '43');
INSERT INTO `sizes` VALUES ('55', '12', '44');
INSERT INTO `sizes` VALUES ('56', '12', '45');
INSERT INTO `sizes` VALUES ('57', '13', '36');
INSERT INTO `sizes` VALUES ('58', '13', '37');
INSERT INTO `sizes` VALUES ('59', '13', '38');
INSERT INTO `sizes` VALUES ('60', '13', '39');
INSERT INTO `sizes` VALUES ('61', '14', '2M*1.5M');
INSERT INTO `sizes` VALUES ('62', '15', '18cm*18cm');
INSERT INTO `sizes` VALUES ('63', '16', '2.5m');
INSERT INTO `sizes` VALUES ('64', '16', '3m');
INSERT INTO `sizes` VALUES ('65', '16', '5m');
INSERT INTO `sizes` VALUES ('66', '17', '10mm（初学者）');
INSERT INTO `sizes` VALUES ('67', '18', '10KG');
INSERT INTO `sizes` VALUES ('68', '18', '15KG');
INSERT INTO `sizes` VALUES ('69', '18', '20KG');
INSERT INTO `sizes` VALUES ('70', '18', '30KG');
INSERT INTO `sizes` VALUES ('71', '19', '均码');
INSERT INTO `sizes` VALUES ('72', '20', '均码');
INSERT INTO `sizes` VALUES ('73', '21', '10*1');
INSERT INTO `sizes` VALUES ('74', '22', '精确到0.01kg');
INSERT INTO `sizes` VALUES ('75', '23', 'M');
INSERT INTO `sizes` VALUES ('76', '23', 'L');
INSERT INTO `sizes` VALUES ('77', '23', 'XL');
INSERT INTO `sizes` VALUES ('78', '23', 'XXL');
INSERT INTO `sizes` VALUES ('79', '24', 'S');
INSERT INTO `sizes` VALUES ('80', '24', 'M');
INSERT INTO `sizes` VALUES ('81', '24', 'L');
INSERT INTO `sizes` VALUES ('82', '24', 'XL');
INSERT INTO `sizes` VALUES ('83', '24', 'XXL');
INSERT INTO `sizes` VALUES ('84', '25', 'L');
INSERT INTO `sizes` VALUES ('85', '25', 'XL');
INSERT INTO `sizes` VALUES ('86', '25', 'XXL');
INSERT INTO `sizes` VALUES ('87', '26', 'M');
INSERT INTO `sizes` VALUES ('88', '26', 'L');
INSERT INTO `sizes` VALUES ('89', '26', 'XL');
INSERT INTO `sizes` VALUES ('91', '27', 'S');
INSERT INTO `sizes` VALUES ('92', '27', 'M');
INSERT INTO `sizes` VALUES ('93', '27', 'L');
INSERT INTO `sizes` VALUES ('94', '27', 'XL');
INSERT INTO `sizes` VALUES ('95', '27', 'XXL');
INSERT INTO `sizes` VALUES ('96', '27', 'XXXL');
INSERT INTO `sizes` VALUES ('97', '28', 'M');
INSERT INTO `sizes` VALUES ('98', '28', 'L');
INSERT INTO `sizes` VALUES ('99', '28', 'XL');
INSERT INTO `sizes` VALUES ('100', '28', 'XXL');
INSERT INTO `sizes` VALUES ('101', '29', '1斤4个');
INSERT INTO `sizes` VALUES ('102', '30', 'M');
INSERT INTO `sizes` VALUES ('103', '30', 'L');
INSERT INTO `sizes` VALUES ('104', '30', 'XL');
INSERT INTO `sizes` VALUES ('105', '30', 'XXL');
INSERT INTO `sizes` VALUES ('106', '31', 'XS');
INSERT INTO `sizes` VALUES ('107', '31', 'S');
INSERT INTO `sizes` VALUES ('108', '31', 'M');
INSERT INTO `sizes` VALUES ('109', '31', 'L');
INSERT INTO `sizes` VALUES ('110', '31', 'XL');
INSERT INTO `sizes` VALUES ('111', '32', 'M');
INSERT INTO `sizes` VALUES ('112', '32', 'L');
INSERT INTO `sizes` VALUES ('113', '32', 'XL');
INSERT INTO `sizes` VALUES ('114', '32', 'XXL');
INSERT INTO `sizes` VALUES ('115', '33', 'M');
INSERT INTO `sizes` VALUES ('116', '33', 'L');
INSERT INTO `sizes` VALUES ('117', '33', 'XL');
INSERT INTO `sizes` VALUES ('118', '34', 'M');
INSERT INTO `sizes` VALUES ('119', '34', 'L');
INSERT INTO `sizes` VALUES ('120', '34', 'XL');
INSERT INTO `sizes` VALUES ('121', '34', 'XXL');
INSERT INTO `sizes` VALUES ('122', '35', 'M');
INSERT INTO `sizes` VALUES ('123', '35', 'L');
INSERT INTO `sizes` VALUES ('124', '35', 'XL');
INSERT INTO `sizes` VALUES ('125', '35', 'XXL');
INSERT INTO `sizes` VALUES ('126', '36', 'M');
INSERT INTO `sizes` VALUES ('127', '36', 'L');
INSERT INTO `sizes` VALUES ('128', '36', 'XL');
INSERT INTO `sizes` VALUES ('129', '36', 'XXL');

-- ----------------------------
-- Table structure for `slim`
-- ----------------------------
DROP TABLE IF EXISTS `slim`;
CREATE TABLE `slim` (
  `slimer_id` int(6) NOT NULL AUTO_INCREMENT,
  `slim_pic` varchar(100) CHARACTER SET gb2312 NOT NULL,
  `slim_title` varchar(100) CHARACTER SET gb2312 NOT NULL,
  `slim_content1` varchar(100) CHARACTER SET gb2312 NOT NULL,
  `slim_content2` varchar(100) CHARACTER SET gb2312 NOT NULL,
  `slim_date` varchar(100) CHARACTER SET gb2312 NOT NULL,
  PRIMARY KEY (`slimer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slim
-- ----------------------------
INSERT INTO `slim` VALUES ('1', 'resources/images/slim_1.jpg', '开合跳', '保持腰腹收紧', '保持膝盖微曲以缓冲', '周一');
INSERT INTO `slim` VALUES ('2', 'resources/images/slim_2.jpg', '弓步背伸展', '下蹲至大小腿90度', '膝盖与脚尖方向一致朝前', '周二');
INSERT INTO `slim` VALUES ('3', 'resources/images/slim_3.jpg', '提膝抱腿', '双肩与肩同宽', '腰背挺直，腹部收紧', '周三');
INSERT INTO `slim` VALUES ('4', 'resources/images/slim_4.jpg', '蹲起', '收腹挺胸', '下蹲至大腿与地面平行', '周四');
INSERT INTO `slim` VALUES ('5', 'resources/images/slim_5.jpg', '仰卧臀桥', '臀部向上抬至身体呈一条直线', '双臂手掌紧贴地面', '周五');
INSERT INTO `slim` VALUES ('6', 'resources/images/slim_6.jpg', '仰卧卷腹', '下颌内收', '肩胛骨抬离垫子', '周六');
INSERT INTO `slim` VALUES ('7', 'resources/images/slim_7.jpg', '跪姿俯卧撑', '两手打开略比肩宽', '腹部收紧，臀部内收', '周日');

-- ----------------------------
-- Table structure for `slim_info`
-- ----------------------------
DROP TABLE IF EXISTS `slim_info`;
CREATE TABLE `slim_info` (
  `slim_id` int(6) NOT NULL AUTO_INCREMENT,
  `slim_content` varchar(50) DEFAULT '',
  `Monday` varchar(50) DEFAULT '',
  `Tuesday` varchar(50) DEFAULT '',
  `Wednesday` varchar(50) DEFAULT '',
  `Thurday` varchar(50) DEFAULT '',
  `Friday` varchar(50) DEFAULT '',
  `Saturday` varchar(50) DEFAULT '',
  `Sunday` varchar(50) DEFAULT '',
  PRIMARY KEY (`slim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slim_info
-- ----------------------------
INSERT INTO `slim_info` VALUES ('1', '', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日');
INSERT INTO `slim_info` VALUES ('2', '6:20-6:40', '', '中速跑（时速约12公里）', '中速自行车（时速约19公里）', '慢跑（时速约8公里）', '快步走', '', '');
INSERT INTO `slim_info` VALUES ('3', '早饭', '469千卡', '', '469千卡', '', '469千卡', '', '');
INSERT INTO `slim_info` VALUES ('4', '7:10-7:30', '慢走', '爬楼梯', '慢走', '慢走', '慢走', '慢走', '慢走');
INSERT INTO `slim_info` VALUES ('5', '午饭', '486千卡', '', '469千卡', '', '469千卡', '', '469千卡');
INSERT INTO `slim_info` VALUES ('6', '17:00-18:30', '仰泳', '低强度健美操', '瑜伽（中低强度）', '羽毛球双打', '蛙泳', '爬山', '芭蕾');
INSERT INTO `slim_info` VALUES ('7', '晚饭', '469千卡', '469千卡', '', '469千卡', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('8', '21:00-21:30', '呼啦圈', '跳绳（每分钟约150次）', '', '园艺', '', '', '太极拳');
INSERT INTO `slim_info` VALUES ('9', '睡觉前', '', '', '', '', '', '', '');
INSERT INTO `slim_info` VALUES ('10', '', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日');
INSERT INTO `slim_info` VALUES ('11', '6:20-6:40', '中速跑（时速约12公里）', '', '快步走', '', '慢跑（时速约8公里）', '', '');
INSERT INTO `slim_info` VALUES ('12', '早饭', '', '469千卡', '469千卡', '469千卡', '', '', '');
INSERT INTO `slim_info` VALUES ('13', '7:10-7:30', '慢走', '', '爬楼梯', '', '爬楼梯', '', '慢走');
INSERT INTO `slim_info` VALUES ('14', '午饭', '469千卡', '', '469千卡', '', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('15', '17:00-18:30', '低强度健美操', '羽毛球双打', '跳绳（每分钟约150次）', '仰泳', '', '', '爬山');
INSERT INTO `slim_info` VALUES ('16', '晚饭', '469千卡', '469千卡', '', '469千卡', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('17', '21:00-21:30', '呼啦圈', '', '呼啦圈', '', '跳绳（每分钟约150次）', '', '');
INSERT INTO `slim_info` VALUES ('18', '睡觉前', '', '', '', '', '', '', '');
INSERT INTO `slim_info` VALUES ('19', '', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日');
INSERT INTO `slim_info` VALUES ('20', '6:20-6:40', '快步走', '慢跑（时速约8公里）', '快步走', '', '慢跑（时速约8公里）', '', '慢跑（时速约8公里）');
INSERT INTO `slim_info` VALUES ('21', '早饭', '', '469千卡', '', '469千卡', '', '469千卡', '469千卡');
INSERT INTO `slim_info` VALUES ('22', '7:10-7:30', '低强度健美操', '低强度健美操', '跳绳（每分钟约150次）', '', '跳绳（每分钟约150次）', '', '爬山');
INSERT INTO `slim_info` VALUES ('23', '午饭', '469千卡', '', '469千卡', '', '469千卡', '', '469千卡');
INSERT INTO `slim_info` VALUES ('24', '17:00-18:30', '慢走', '爬楼梯', '爬山', '慢走', '爬山', '慢走', '');
INSERT INTO `slim_info` VALUES ('25', '晚饭', '', '469千卡', '', '469千卡', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('26', '21:00-21:30', '469千卡', '469千卡', '469千卡', '', '469千卡', '', '469千卡');
INSERT INTO `slim_info` VALUES ('27', '睡觉前', '', '', '', '', '', '', '');
INSERT INTO `slim_info` VALUES ('28', '', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日');
INSERT INTO `slim_info` VALUES ('29', '6:20-6:40', '中速跑（时速约12公里）', '', '快步走', '', '慢跑（时速约8公里）', '', '');
INSERT INTO `slim_info` VALUES ('30', '早饭', '', '469千卡', '', '469千卡', '', '469千卡', '469千卡');
INSERT INTO `slim_info` VALUES ('31', '7:10-7:30', '慢走', '', '爬楼梯', '', '爬楼梯', '', '慢走');
INSERT INTO `slim_info` VALUES ('32', '午饭', '469千卡', '', '469千卡', '', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('33', '17:00-18:30', '低强度健美操', '羽毛球双打', '跳绳（每分钟约150次）', '仰泳', '', '', '爬山');
INSERT INTO `slim_info` VALUES ('34', '晚饭', '', '469千卡', '', '469千卡', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('35', '21:00-21:30', '慢走', '爬楼梯', '爬山', '慢走', '爬山', '慢走', '');
INSERT INTO `slim_info` VALUES ('36', '睡觉前', '', '', '', '', '', '', '');
INSERT INTO `slim_info` VALUES ('37', '', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日');
INSERT INTO `slim_info` VALUES ('38', '6:20-6:40', '快步走', '慢跑（时速约8公里）', '快步走', '', '慢跑（时速约8公里）', '', '慢跑（时速约8公里）');
INSERT INTO `slim_info` VALUES ('39', '早饭', '', '469千卡', '', '469千卡', '', '469千卡', '469千卡');
INSERT INTO `slim_info` VALUES ('40', '7:10-7:30', '慢走', '', '爬楼梯', '', '爬楼梯', '', '慢走');
INSERT INTO `slim_info` VALUES ('41', '午饭', '469千卡', '', '469千卡', '', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('42', '17:00-18:30', '慢走', '爬楼梯', '爬山', '慢走', '爬山', '慢走', '');
INSERT INTO `slim_info` VALUES ('43', '晚饭', '', '469千卡', '', '469千卡', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('44', '21:00-21:30', '呼啦圈', '', '呼啦圈', '', '跳绳（每分钟约150次）', '', '');
INSERT INTO `slim_info` VALUES ('45', '睡觉前', '', '', '', '', '', '', '');
INSERT INTO `slim_info` VALUES ('46', '', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日');
INSERT INTO `slim_info` VALUES ('47', '6:20-6:40', '中速跑（时速约12公里）', '', '快步走', '', '慢跑（时速约8公里）', '', '');
INSERT INTO `slim_info` VALUES ('48', '早饭', '', '469千卡', '469千卡', '469千卡', '', '', '');
INSERT INTO `slim_info` VALUES ('49', '7:10-7:30', '慢走', '爬楼梯', '慢走', '慢走', '慢走', '慢走', '慢走');
INSERT INTO `slim_info` VALUES ('50', '午饭', '469千卡', '', '469千卡', '', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('51', '17:00-18:30', '低强度健美操', '羽毛球双打', '跳绳（每分钟约150次）', '仰泳', '', '', '爬山');
INSERT INTO `slim_info` VALUES ('52', '晚饭', '', '469千卡', '', '469千卡', '', '469千卡', '');
INSERT INTO `slim_info` VALUES ('53', '21:00-21:30', '呼啦圈', '', '呼啦圈', '', '跳绳（每分钟约150次）', '', '');
INSERT INTO `slim_info` VALUES ('54', '睡觉前', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `sport_info`
-- ----------------------------
DROP TABLE IF EXISTS `sport_info`;
CREATE TABLE `sport_info` (
  `sport_id` int(6) NOT NULL AUTO_INCREMENT,
  `sport_title` varchar(60) NOT NULL,
  `sport_content` varchar(600) NOT NULL,
  `sport_place` varchar(200) NOT NULL,
  `sport_begin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sport_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sport_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sport_tel` varchar(20) NOT NULL,
  `sport_person` int(6) NOT NULL DEFAULT '0',
  `sport_person2` int(6) NOT NULL DEFAULT '0',
  `sport_liulan` int(6) NOT NULL DEFAULT '0',
  `sport_pic` varchar(60) NOT NULL DEFAULT '/userpic/defaultpic.jpg',
  PRIMARY KEY (`sport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sport_info
-- ----------------------------
INSERT INTO `sport_info` VALUES ('22', '李国臣的第一次活动', '运动是非常好的一件事情', '河南省', '2016-05-22 00:59:00', '2016-05-20 22:00:00', '2016-05-14 13:57:08', '15555555555', '2', '0', '68', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('23', '你好', '543543', '123', '2016-05-12 00:59:00', '2016-05-10 00:59:00', '2016-05-14 14:34:30', '16666666666', '6', '0', '31', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('24', '343', '333', 'erwa', '2016-05-12 23:00:00', '2016-05-11 00:59:00', '2016-05-14 14:50:15', '13333333333', '3', '0', '1', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('25', '666', '666', '777', '2016-05-14 00:59:00', '2016-05-12 23:00:00', '2016-05-14 14:50:40', '16666666666', '6', '0', '1', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('26', '666', '6666666', '666', '2016-05-19 00:59:00', '2016-05-12 23:00:00', '2016-05-14 14:51:05', '16666666666', '6', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('27', '6', '8888', '6', '2016-05-10 00:59:00', '2016-05-20 00:59:00', '2016-05-14 14:51:42', '18888888888', '8', '0', '6', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('28', 'a', 'ail o', 'sfss', '2016-05-10 12:22:00', '2016-05-10 23:22:00', '2016-05-14 15:43:10', '12222222222', '200', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('29', 'b', 'asda', 'sd', '2016-05-21 12:22:00', '2016-05-27 23:12:00', '2016-05-14 15:43:53', '11111111111', '345', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('30', 'c', 'sssd', 'sd', '2016-05-17 21:11:00', '2016-05-24 02:23:00', '2016-05-14 15:44:27', '12345566789', '213', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('31', 'wew', 'dt', 'sw', '2016-06-06 09:09:00', '2016-06-11 22:22:00', '2016-05-14 15:45:22', '12323232323', '435', '1', '1', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('32', 'd', 'qq', 'ds', '2016-05-19 22:22:00', '2016-05-22 07:06:00', '2016-05-14 15:46:08', '11223445566', '234', '1', '1', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('33', 'e', 'ssd', '2w', '2016-05-21 23:22:00', '2016-05-31 23:23:00', '2016-05-14 15:46:48', '10967535634', '111', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('34', 'g', 'sdf', 'qq', '2016-05-29 00:00:00', '2016-05-31 23:23:00', '2016-05-14 15:47:27', '11123242352', '234', '0', '2', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('35', 'h', 'sdf', '2', '2016-05-28 22:22:00', '2016-05-30 22:22:00', '2016-05-14 15:47:59', '12567890053', '333', '1', '2', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('36', 'j', 'sdfw', 'sds', '2016-06-10 12:03:00', '2016-06-18 23:32:00', '2016-05-14 15:48:58', '12232221123', '213', '1', '3', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('37', 'k', 'dkgg', 'wee', '2016-05-05 12:22:00', '2016-05-12 21:11:00', '2016-05-14 15:50:14', '11212134421', '222', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('38', 'l', 'sdf w', 'tu', '2016-05-27 07:08:00', '2016-05-28 07:59:00', '2016-05-14 15:50:38', '12321231415', '20', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('39', 'm', '23esfg', 'we', '2016-05-06 03:03:00', '2016-05-20 04:03:00', '2016-05-14 15:51:11', '16532426899', '34', '0', '1', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('40', 'n', 'wqcqq', '123221', '2016-05-18 23:03:00', '2016-05-20 22:04:00', '2016-05-14 15:51:55', '11232424124', '233', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('43', 's', 'wewcw we', 'sw', '2016-05-27 03:32:00', '2016-05-29 23:02:00', '2016-05-14 15:53:39', '12342123141', '35', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('44', 'w', 'wedsfs', '2332', '2016-05-22 14:02:00', '2016-05-28 23:42:00', '2016-05-14 15:56:34', '12324212424', '23', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('45', '34352352', 'fewe w', 'qr', '2016-05-21 23:03:00', '2016-05-28 23:44:00', '2016-05-14 15:58:00', '12242212123', '233', '0', '5', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('46', '为', '方式vav', '32', '2016-05-10 23:03:00', '2016-05-20 23:23:00', '2016-05-14 16:56:15', '12384829344', '50', '0', '3', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('47', '龙子湖骑行', '郑州航院骑行社团于2016年5月11日在龙子湖区举行骑行运动，有意向者可联系我们的社团，公众号为zziariding。具体信息在公众号中公示。', '龙子湖', '2016-05-11 07:30:00', '2016-05-11 09:30:00', '2016-05-14 17:06:33', '15538308902', '50', '1', '5', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('48', '相约月牙湖', '约的就是你，看到我的消息你回来找我吗？联系方式：15538708907.', '郑州航院月牙湖', '2016-06-06 09:00:00', '2016-06-06 11:00:00', '2016-05-14 17:08:10', '15538708907', '2', '1', '2', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('49', '我们一起吃饭吧', '压力大，就化为吃，我们一起聚个餐吧，活动要求两男两女。', '郑州航院田园餐厅', '2016-05-21 07:00:00', '2016-05-21 10:00:00', '2016-05-14 17:09:47', '15538907638', '4', '3', '6', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('50', '3月7号女生节', '郑州航院单身的come on.', '郑州航院', '2016-03-07 00:00:00', '2016-03-07 23:59:00', '2016-05-14 17:11:52', '18969636943', '3', '3', '12', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('51', '英雄联盟', '我们一起开黑吧', '各个宿舍', '2016-05-16 20:30:00', '2016-05-18 00:00:00', '2016-05-14 17:13:09', '12232141414', '2', '2', '29', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('52', '大家一起跑步', '现在不减肥，夏天来了。', '文萃', '2016-05-09 23:59:00', '2016-05-29 00:59:00', '2016-05-15 16:55:47', '15538707666', '7', '2', '37', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('53', 'trtrtt', '晨跑', 'koknnnk', '2015-05-16 07:58:00', '2016-05-12 00:00:00', '2016-05-16 20:01:25', '13771097333', '32', '2', '7', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('54', '好好学习', '大家一起好好学习吧', '整合走势', '2016-05-06 00:59:00', '2016-05-11 23:00:00', '2016-05-16 21:48:42', '18888888888', '6', '3', '9', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('55', '天天向上', '好好学习，天天向上', '你好', '2016-05-06 00:59:00', '2016-05-08 00:59:00', '2016-05-16 21:49:23', '18888888888', '8', '1', '9', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('56', '一定要好好学习', '大家好.', '老地方', '2016-05-14 00:59:00', '2016-05-22 00:59:00', '2016-05-16 23:02:43', '15538707666', '6', '1', '22', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('61', '穿越火线', '大家赶紧来参加啦，这个活动非常好！！！', '中山路', '2016-05-13 05:39:00', '2016-05-22 05:39:00', '2016-05-18 20:22:33', '15538707999', '6', '5', '17', '/upload/1463574153185.jpeg');
INSERT INTO `sport_info` VALUES ('62', '晨跑计划', '晨跑对大家来说相当的重要，一个好的习惯注定会有一个好的健康。', '大家好', '2016-05-12 00:00:00', '2016-05-22 00:55:00', '2016-05-18 20:56:03', '15538707635', '5', '1', '15', '/upload/1463576163216.jpeg');
INSERT INTO `sport_info` VALUES ('63', '奔跑吧', '奔跑吧，兄弟', '郑州', '2016-05-26 09:00:00', '2016-09-09 09:00:00', '2016-05-26 20:15:10', '17839949033', '20', '4', '70', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('64', '毕业旅行', 'gogogo!!!!', '高博国际学院', '2016-07-01 08:00:00', '2016-07-07 17:00:00', '2016-06-14 20:13:21', '11111111111', '1', '1', '22', '/upload/1465906401976.jpeg');
INSERT INTO `sport_info` VALUES ('65', 'LOL', '啦啦啦！德玛西亚', '2#634', '2016-06-01 08:08:00', '2016-06-01 15:15:00', '2016-06-14 20:17:53', '15612341234', '2', '2', '53', '/upload/1465906673498.jpeg');
INSERT INTO `sport_info` VALUES ('66', '环独墅湖晨跑', '让我们感受运动之美', '独墅湖', '2016-06-02 08:08:00', '2016-06-02 09:09:00', '2016-06-14 20:20:49', '15514788520', '2', '2', '148', '/upload/1465906849366.jpeg');
INSERT INTO `sport_info` VALUES ('67', '环郑州航院跑', '爱健身，爱运动！', '郑州航院中心广场', '2017-04-29 08:30:00', '2017-04-29 09:30:00', '2017-04-29 23:40:41', '15617678845', '20', '0', '0', '/userpic/defaultpic.jpg');
INSERT INTO `sport_info` VALUES ('68', '晨跑一小时', '一日之计在于晨，晨跑有助于我们一天清爽，快来加入我们吧！', '郑州航院操场', '2017-05-01 07:00:00', '2017-05-01 08:00:00', '2017-05-01 17:13:11', '15615389524', '20', '0', '4', '/userpic/defaultpic.jpg');

-- ----------------------------
-- Table structure for `sport_sign`
-- ----------------------------
DROP TABLE IF EXISTS `sport_sign`;
CREATE TABLE `sport_sign` (
  `sport_sign` int(6) NOT NULL AUTO_INCREMENT,
  `sport_id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  PRIMARY KEY (`sport_sign`),
  KEY `fk_sport_sign` (`sport_id`),
  KEY `fk_sport_sign1` (`user_id`),
  CONSTRAINT `fk_sport_sign` FOREIGN KEY (`sport_id`) REFERENCES `sport_info` (`sport_id`),
  CONSTRAINT `fk_sport_sign1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sport_sign
-- ----------------------------
INSERT INTO `sport_sign` VALUES ('65', '51', '53');
INSERT INTO `sport_sign` VALUES ('70', '52', '51');
INSERT INTO `sport_sign` VALUES ('72', '51', '102');
INSERT INTO `sport_sign` VALUES ('73', '50', '51');
INSERT INTO `sport_sign` VALUES ('74', '49', '51');
INSERT INTO `sport_sign` VALUES ('75', '48', '51');
INSERT INTO `sport_sign` VALUES ('76', '47', '51');
INSERT INTO `sport_sign` VALUES ('79', '52', '53');
INSERT INTO `sport_sign` VALUES ('81', '50', '53');
INSERT INTO `sport_sign` VALUES ('82', '35', '53');
INSERT INTO `sport_sign` VALUES ('84', '56', '53');
INSERT INTO `sport_sign` VALUES ('85', '55', '53');
INSERT INTO `sport_sign` VALUES ('90', '53', '105');
INSERT INTO `sport_sign` VALUES ('91', '54', '105');
INSERT INTO `sport_sign` VALUES ('94', '54', '51');
INSERT INTO `sport_sign` VALUES ('96', '53', '53');
INSERT INTO `sport_sign` VALUES ('97', '54', '53');
INSERT INTO `sport_sign` VALUES ('98', '49', '53');
INSERT INTO `sport_sign` VALUES ('99', '32', '53');
INSERT INTO `sport_sign` VALUES ('101', '63', '52');
INSERT INTO `sport_sign` VALUES ('106', '64', '53');
INSERT INTO `sport_sign` VALUES ('128', '63', '51');
INSERT INTO `sport_sign` VALUES ('132', '61', '125');
INSERT INTO `sport_sign` VALUES ('135', '65', '126');
INSERT INTO `sport_sign` VALUES ('141', '61', '51');
INSERT INTO `sport_sign` VALUES ('144', '65', '53');
INSERT INTO `sport_sign` VALUES ('145', '66', '51');
INSERT INTO `sport_sign` VALUES ('146', '66', '129');
INSERT INTO `sport_sign` VALUES ('147', '61', '136');
INSERT INTO `sport_sign` VALUES ('148', '63', '136');
INSERT INTO `sport_sign` VALUES ('149', '50', '136');
INSERT INTO `sport_sign` VALUES ('150', '49', '136');
INSERT INTO `sport_sign` VALUES ('153', '36', '136');
INSERT INTO `sport_sign` VALUES ('154', '31', '136');
INSERT INTO `sport_sign` VALUES ('155', '61', '139');
INSERT INTO `sport_sign` VALUES ('156', '63', '139');
INSERT INTO `sport_sign` VALUES ('157', '62', '139');
INSERT INTO `sport_sign` VALUES ('159', '61', '149');

-- ----------------------------
-- Table structure for `two_cat`
-- ----------------------------
DROP TABLE IF EXISTS `two_cat`;
CREATE TABLE `two_cat` (
  `two_catid` int(6) NOT NULL AUTO_INCREMENT,
  `two_catname` varchar(200) NOT NULL,
  `one_catid` int(6) NOT NULL,
  PRIMARY KEY (`two_catid`),
  KEY `fk_two_cat` (`one_catid`),
  CONSTRAINT `fk_two_cat` FOREIGN KEY (`one_catid`) REFERENCES `one_cat` (`one_catid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of two_cat
-- ----------------------------
INSERT INTO `two_cat` VALUES ('1', '运动套装', '1');
INSERT INTO `two_cat` VALUES ('2', '短袖T恤', '1');
INSERT INTO `two_cat` VALUES ('3', '运动长裤', '1');
INSERT INTO `two_cat` VALUES ('4', '运动夹克', '1');
INSERT INTO `two_cat` VALUES ('5', '运动短裤/七分裤', '1');
INSERT INTO `two_cat` VALUES ('6', '休闲鞋/板鞋', '2');
INSERT INTO `two_cat` VALUES ('7', '跑步鞋', '2');
INSERT INTO `two_cat` VALUES ('8', '轻质鞋', '2');
INSERT INTO `two_cat` VALUES ('9', '耐磨鞋', '2');
INSERT INTO `two_cat` VALUES ('10', '缓震鞋', '2');
INSERT INTO `two_cat` VALUES ('11', '透气鞋', '2');
INSERT INTO `two_cat` VALUES ('12', '女子运动', '2');
INSERT INTO `two_cat` VALUES ('13', '健身车', '3');
INSERT INTO `two_cat` VALUES ('14', '健腹轮', '3');
INSERT INTO `two_cat` VALUES ('15', '跳绳', '3');
INSERT INTO `two_cat` VALUES ('16', '瑜伽垫', '3');
INSERT INTO `two_cat` VALUES ('17', '哑铃', '3');
INSERT INTO `two_cat` VALUES ('18', '拉力绳/拉力器', '3');
INSERT INTO `two_cat` VALUES ('19', 'TRX悬挂训练绳', '3');
INSERT INTO `two_cat` VALUES ('20', '减肥茶', '4');
INSERT INTO `two_cat` VALUES ('21', '体重秤', '4');
INSERT INTO `two_cat` VALUES ('22', '健康蔬果', '4');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_number` varchar(20) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_pwd` varchar(600) NOT NULL,
  `user_pic` varchar(300) NOT NULL DEFAULT '/userpic/defaultpic.jpg',
  `user_dou` int(6) NOT NULL DEFAULT '0',
  `user_doutime` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('51', '111111', '李国臣', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '15', '1467006703094');
INSERT INTO `user_info` VALUES ('52', '333333', '陈湘', '1a100d2c0dab19c4430e7d73762b3423', '/userpic/1462419169953.jpeg', '5', '0');
INSERT INTO `user_info` VALUES ('53', '666666', '丁朝', 'f379eaf3c831b04de153469d1bec345e', '/userpic/1494655505557.jpeg', '10', '1465977973352');
INSERT INTO `user_info` VALUES ('102', '110', 'kun', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('103', 'chenxiang1', '陈湘2', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('105', '1234', '1234', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('107', 'LIFENG', '壮壮', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('111', '6666666', '李国臣', 'f379eaf3c831b04de153469d1bec345e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('112', '1', '11', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('113', '22', '222', 'e3ceb5881a0a1fdaad01296d7554868d', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('114', '22', '222', 'e3ceb5881a0a1fdaad01296d7554868d', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('115', '1111111', '李国臣测试', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('116', '666', '李国臣测试', 'f379eaf3c831b04de153469d1bec345e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('117', '888', '丁朝测试', '21218cca77804d2ba1922c33e0151105', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('118', 'lgc', '李国臣A', 'f379eaf3c831b04de153469d1bec345e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('119', '66666666', '坤哥V', '6d2fe1d6f097816949a2f54ed3d986a8', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('120', '9354', '悄悄', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('121', '888888', '测试', '21218cca77804d2ba1922c33e0151105', '/userpic/defaultpic.jpg', '10', '1465973112846');
INSERT INTO `user_info` VALUES ('124', '999999', '隔壁老张头', '52c69e3a57331081823331c4e69d3f2e', '/userpic/defaultpic.jpg', '5', '1466004478456');
INSERT INTO `user_info` VALUES ('125', 'louge', '爱笑的眼睛', '24812762bee214978f234d1e033b71aa', '/upload/1466005625268.png', '5', '1466005630244');
INSERT INTO `user_info` VALUES ('126', '0000000', '测试', '96e79218965eb72c92a549dd5a330112', '/upload/1466038702278.png', '5', '1466038710300');
INSERT INTO `user_info` VALUES ('127', 'qimu_1', 'qimu', 'dc483e80a7a0bd9ef71d8cf973673924', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('128', '222', '333', '1a100d2c0dab19c4430e7d73762b3423', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('129', 'cyh111', 'cyh', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('130', 'cyh', '111', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('131', '123', '155', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('132', 'aaa', 'aaa', '4297f44b13955235245b2497399d7a93', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('133', 'krystal', 'hyx', '7c477d848bfb17993b2758dbb948565c', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('134', 'find', 'find', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('135', 'ooo', 'oo', '9982b2a7fceaaee2c8444b5086aee008', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('136', 'qqq', 'qqq', '343b1c4a3ea721b2d640fc8700db0f36', '/userpic/1473230638064.jpeg', '0', '0');
INSERT INTO `user_info` VALUES ('137', '11', '11', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('138', 'daikon', 'daok', '792aa0c6be3e339be78732f13b430afd', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('139', 'qwe1', 'qwe1', 'efe6398127928f1b2e9ef3207fb82663', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('140', '1321', '12132', '7fa8282ad93047a4d6fe6111c93b308a', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('141', 'zzzzz', 'llll', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('142', 'asdasd', 'asdas', 'a8f5f167f44f4964e6c998dee827110c', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('143', 'nihao', 'afa', '4297f44b13955235245b2497399d7a93', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('144', 'fffff', 'fffff', 'eed8cdc400dfd4ec85dff70a170066b7', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('145', 'opop', 'er', '9982b2a7fceaaee2c8444b5086aee008', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('146', '13212', '11111', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('147', 'wo', '李国臣', '96e79218965eb72c92a549dd5a330112', '/userpic/1473673870426.jpeg', '0', '0');
INSERT INTO `user_info` VALUES ('148', 'xwj', 'xwj', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('149', '1111', '1111', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('150', 'qqqq', 'zzzzz', 'db4a4e379991c868260e0b4b43011102', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('151', 'fd', 'fdaf', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('152', '123123', 'aaaaa', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('153', '111', '111', '96e79218965eb72c92a549dd5a330112', '/userpic/1475046438629.jpeg', '0', '0');
INSERT INTO `user_info` VALUES ('154', '8888888', 'rock', '388ec3e3fa4983032b4f3e7d8fcb65ad', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('155', '88888888', '丁朝', '8ddcff3a80f4189ca1c9d4d902c3c909', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('156', '123456', '恋旧', 'e10adc3949ba59abbe56e057f20f883e', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('157', 'dz', 'dz', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');
INSERT INTO `user_info` VALUES ('158', 'dingzhao', '丁朝', '96e79218965eb72c92a549dd5a330112', '/userpic/defaultpic.jpg', '0', '0');

-- ----------------------------
-- Table structure for `user_news`
-- ----------------------------
DROP TABLE IF EXISTS `user_news`;
CREATE TABLE `user_news` (
  `user_id` int(6) NOT NULL DEFAULT '0',
  `news_id` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`news_id`),
  KEY `fk_user_news2` (`news_id`),
  CONSTRAINT `fk_user_news1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `fk_user_news2` FOREIGN KEY (`news_id`) REFERENCES `news_info` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_news
-- ----------------------------
INSERT INTO `user_news` VALUES ('53', '736');
INSERT INTO `user_news` VALUES ('53', '738');
INSERT INTO `user_news` VALUES ('155', '739');
INSERT INTO `user_news` VALUES ('155', '740');

-- ----------------------------
-- Table structure for `user_sport`
-- ----------------------------
DROP TABLE IF EXISTS `user_sport`;
CREATE TABLE `user_sport` (
  `user_id` int(6) NOT NULL,
  `sport_id` int(6) NOT NULL,
  PRIMARY KEY (`user_id`,`sport_id`),
  KEY `fk_user_sport2` (`sport_id`),
  CONSTRAINT `fk_user_sport1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `fk_user_sport2` FOREIGN KEY (`sport_id`) REFERENCES `sport_info` (`sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_sport
-- ----------------------------
INSERT INTO `user_sport` VALUES ('52', '22');
INSERT INTO `user_sport` VALUES ('52', '23');
INSERT INTO `user_sport` VALUES ('52', '24');
INSERT INTO `user_sport` VALUES ('52', '25');
INSERT INTO `user_sport` VALUES ('52', '26');
INSERT INTO `user_sport` VALUES ('52', '27');
INSERT INTO `user_sport` VALUES ('52', '28');
INSERT INTO `user_sport` VALUES ('52', '29');
INSERT INTO `user_sport` VALUES ('52', '30');
INSERT INTO `user_sport` VALUES ('52', '31');
INSERT INTO `user_sport` VALUES ('52', '32');
INSERT INTO `user_sport` VALUES ('52', '33');
INSERT INTO `user_sport` VALUES ('52', '34');
INSERT INTO `user_sport` VALUES ('52', '35');
INSERT INTO `user_sport` VALUES ('52', '36');
INSERT INTO `user_sport` VALUES ('52', '37');
INSERT INTO `user_sport` VALUES ('52', '38');
INSERT INTO `user_sport` VALUES ('52', '39');
INSERT INTO `user_sport` VALUES ('52', '40');
INSERT INTO `user_sport` VALUES ('52', '43');
INSERT INTO `user_sport` VALUES ('52', '44');
INSERT INTO `user_sport` VALUES ('52', '45');
INSERT INTO `user_sport` VALUES ('52', '46');
INSERT INTO `user_sport` VALUES ('52', '47');
INSERT INTO `user_sport` VALUES ('52', '48');
INSERT INTO `user_sport` VALUES ('52', '49');
INSERT INTO `user_sport` VALUES ('52', '50');
INSERT INTO `user_sport` VALUES ('52', '51');
INSERT INTO `user_sport` VALUES ('53', '52');
INSERT INTO `user_sport` VALUES ('53', '53');
INSERT INTO `user_sport` VALUES ('53', '54');
INSERT INTO `user_sport` VALUES ('53', '55');
INSERT INTO `user_sport` VALUES ('51', '56');
INSERT INTO `user_sport` VALUES ('51', '61');
INSERT INTO `user_sport` VALUES ('51', '62');
INSERT INTO `user_sport` VALUES ('107', '63');
INSERT INTO `user_sport` VALUES ('53', '64');
INSERT INTO `user_sport` VALUES ('53', '65');
INSERT INTO `user_sport` VALUES ('53', '66');
INSERT INTO `user_sport` VALUES ('53', '67');
INSERT INTO `user_sport` VALUES ('155', '68');
