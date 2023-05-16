/*
 Navicat Premium Data Transfer

 Source Server         : iissMysql
 Source Server Type    : MySQL
 Source Server Version : 50740 (5.7.40-log)
 Source Host           : 175.24.167.229:3306
 Source Schema         : iiss-cloud

 Target Server Type    : MySQL
 Target Server Version : 50740 (5.7.40-log)
 File Encoding         : 65001

 Date: 16/05/2023 15:31:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for asset
-- ----------------------------
DROP TABLE IF EXISTS `asset`;
CREATE TABLE `asset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `warehouse_id` bigint(20) NOT NULL,
  `warehouse_name` varchar(100) DEFAULT NULL,
  `create_user_id` bigint(20) NOT NULL,
  `create_user_name` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `batch_no` varchar(100) NOT NULL,
  `in_out_biz_type` enum('PRODUCT_WAREHOUSE','PURCHASE_WAREHOUSE','WAREHOUSE_SALES','WAREHOUSE_REVIEW','WAREHOUSE_ADJUST_POSiTION','WAREHOUSE_ADJUST_OUT','WAREHOUSE_ADJUST_IN','WAREHOUSE_OUTSOURCING') NOT NULL,
  `in_out_type` enum('IN','OUT') NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1658108312051494914 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of asset
-- ----------------------------
BEGIN;
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1652984267207278594, 13, '集美理工仓', 1, 'admin', 2600000.00, '100023', 'PURCHASE_WAREHOUSE', 'IN', '2023-05-01 18:32:15', '2023-05-01 18:32:15');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1654046046934962177, 14, '曾厝垵食品仓', 1, 'admin', 2091000.00, '199321', 'PURCHASE_WAREHOUSE', 'IN', '2023-05-04 16:51:23', '2023-05-04 16:51:23');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1654046374631739394, 13, '集美理工仓', 1, 'admin', 0.00, '12323', 'WAREHOUSE_SALES', 'OUT', '2023-05-04 16:52:41', '2023-05-04 16:52:41');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1654046524594884610, 13, '集美理工仓', 1, 'admin', 0.00, '123123', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-04 16:53:17', '2023-05-04 16:53:17');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1654046525446328321, 15, '深圳大学粤海校区仓', 1, 'admin', 0.00, '123123', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-04 16:53:17', '2023-05-04 16:53:17');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1654078334024491009, 13, '集美理工仓', 1, 'admin', 0.00, '1654078329167515648', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-04 18:59:41', '2023-05-04 18:59:41');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1654078335538634754, 17, '湖南卫视节目制作中心(北仓）', 1, 'admin', 0.00, '1654078329167515648', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-04 18:59:41', '2023-05-04 18:59:41');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657578474504884225, 17, '湖南卫视节目制作中心(北仓）', 1, 'admin', 1000.00, '130000', 'PRODUCT_WAREHOUSE', 'IN', '2023-05-14 10:47:59', '2023-05-14 10:47:59');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657578826868363265, 17, '湖南卫视节目制作中心(北仓）', 1, 'admin', 0.00, '123', 'WAREHOUSE_SALES', 'OUT', '2023-05-14 10:49:23', '2023-05-14 10:49:23');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657579098776702977, 13, '集美理工仓', 1, 'admin', 0.00, '1657579092380393472', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-14 10:50:28', '2023-05-14 10:50:28');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657579101670772737, 14, '曾厝垵食品仓', 1, 'admin', 0.00, '1657579092380393472', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-14 10:50:29', '2023-05-14 10:50:29');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657579539275091969, 13, '集美理工仓', 1, 'admin', 0.00, '1657579531754708992', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-14 10:52:13', '2023-05-14 10:52:13');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657579542143995905, 14, '曾厝垵食品仓', 1, 'admin', 0.00, '1657579531754708992', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-14 10:52:14', '2023-05-14 10:52:14');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657579619872837634, 13, '集美理工仓', 1, 'admin', 0.00, '1657579616227991552', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-14 10:52:32', '2023-05-14 10:52:32');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657579622540414978, 14, '曾厝垵食品仓', 1, 'admin', 0.00, '1657579616227991552', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-14 10:52:33', '2023-05-14 10:52:33');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657933144503009282, 13, '集美理工仓', 1, 'admin', 0.00, '212121', 'PURCHASE_WAREHOUSE', 'IN', '2023-05-15 10:17:19', '2023-05-15 10:17:19');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657940226832777217, 14, '曾厝垵食品仓', 1, 'admin', 1078.00, '13004568', 'PRODUCT_WAREHOUSE', 'IN', '2023-05-15 10:45:28', '2023-05-15 10:45:28');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657940629532098562, 14, '曾厝垵食品仓', 1, 'admin', 0.00, '1657940617993564160', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-15 10:47:04', '2023-05-15 10:47:04');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657940635693531137, 13, '集美理工仓', 1, 'admin', 0.00, '1657940617993564160', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-15 10:47:05', '2023-05-15 10:47:05');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657943335680311297, 13, '集美理工仓', 1, 'admin', 0.00, '1657943323391012864', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-15 10:57:49', '2023-05-15 10:57:49');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657943341535559682, 14, '曾厝垵食品仓', 1, 'admin', 0.00, '1657943323391012864', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-15 10:57:50', '2023-05-15 10:57:50');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657943748416602114, 14, '曾厝垵食品仓', 1, 'admin', 0.00, '1657943737704361984', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-15 10:59:27', '2023-05-15 10:59:27');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657943754330570753, 15, '深圳大学粤海校区仓', 1, 'admin', 0.00, '1657943737704361984', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-15 10:59:29', '2023-05-15 10:59:29');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657946893049905153, 14, '曾厝垵食品仓', 1, 'admin', 0.00, '1657946838444265472', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-15 11:11:57', '2023-05-15 11:11:57');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1657946899307806721, 13, '集美理工仓', 1, 'admin', 0.00, '1657946838444265472', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-15 11:11:59', '2023-05-15 11:11:59');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658012040632127489, 14, '曾厝垵食品仓', 1, 'admin', 2313.00, '1233', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-15 15:30:50', '2023-05-15 15:30:50');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658012614006067202, 17, '湖南卫视节目制作中心(北仓）', 1, 'admin', 0.00, '12332', 'WAREHOUSE_SALES', 'OUT', '2023-05-15 15:33:06', '2023-05-15 15:33:06');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658012984019177474, 15, '深圳大学粤海校区仓', 1, 'admin', 0.00, '1658012977140551680', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-15 15:34:34', '2023-05-15 15:34:34');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658012986804195329, 16, '上海东方明珠仓', 1, 'admin', 0.00, '1658012977140551680', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-15 15:34:35', '2023-05-15 15:34:35');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658023042228604929, 13, '集美理工仓', 1, 'admin', 44.00, '122332', 'PURCHASE_WAREHOUSE', 'IN', '2023-05-15 16:14:33', '2023-05-15 16:14:33');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658077186926796801, 16, '上海东方明珠仓', 1, 'admin', 0.00, '1658077175023398912', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-15 19:49:42', '2023-05-15 19:49:42');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658077190395486210, 15, '深圳大学粤海校区仓', 1, 'admin', 0.00, '1658077175023398912', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-15 19:49:42', '2023-05-15 19:49:42');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658080171077623810, 17, '湖南卫视节目制作中心(北仓）', 1, 'admin', 6472.00, '1221', 'PURCHASE_WAREHOUSE', 'IN', '2023-05-15 20:01:33', '2023-05-15 20:01:33');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658080352741318657, 15, '深圳大学粤海校区仓', 1, 'admin', 0.00, '12321', 'WAREHOUSE_SALES', 'OUT', '2023-05-15 20:02:16', '2023-05-15 20:02:16');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658108196775243778, 16, '上海东方明珠仓', 1, 'admin', 0.00, '433', 'PURCHASE_WAREHOUSE', 'IN', '2023-05-15 21:52:55', '2023-05-15 21:52:55');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658108309635575809, 16, '上海东方明珠仓', 1, 'admin', 0.00, '1658108305843904512', 'WAREHOUSE_ADJUST_OUT', 'OUT', '2023-05-15 21:53:22', '2023-05-15 21:53:22');
INSERT INTO `asset` (`id`, `warehouse_id`, `warehouse_name`, `create_user_id`, `create_user_name`, `amount`, `batch_no`, `in_out_biz_type`, `in_out_type`, `create_time`, `update_time`) VALUES (1658108312051494913, 13, '集美理工仓', 1, 'admin', 0.00, '1658108305843904512', 'WAREHOUSE_ADJUST_IN', 'IN', '2023-05-15 21:53:22', '2023-05-15 21:53:22');
COMMIT;

-- ----------------------------
-- Table structure for asset_lifecycle
-- ----------------------------
DROP TABLE IF EXISTS `asset_lifecycle`;
CREATE TABLE `asset_lifecycle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `warehouse_asset_id` bigint(20) NOT NULL,
  `warehouse_name` varchar(100) DEFAULT NULL,
  `product_img` varchar(1000) DEFAULT NULL,
  `product_code` varchar(20) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `warehouse_asset_biz_type` enum('CONSUMABLE','MAIN_INGREDiENT','PRODUCT','REPAIR_PARTS','PRODUCT_SALES','INGREDIENTS') NOT NULL,
  `product_specification` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `product_num` bigint(10) NOT NULL,
  `operate_user` varchar(20) DEFAULT NULL,
  `batch_no` varchar(20) NOT NULL,
  `in_out_biz_type` enum('PRODUCT_WAREHOUSE','PURCHASE_WAREHOUSE','WAREHOUSE_SALES','WAREHOUSE_REVIEW','WAREHOUSE_ADJUST_POSiTION','WAREHOUSE_ADJUST_OUT','WAREHOUSE_ADJUST_IN','WAREHOUSE_OUTSOURCING') NOT NULL,
  `in_out_type` enum('IN','OUT') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of asset_lifecycle
-- ----------------------------
BEGIN;
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (39, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', 8000.00, 80.00, 100.00, 800000.00, 100, 'admin', '100023', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (40, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', 15000.00, 150.00, 100.00, 1500000.00, 100, 'admin', '100023', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (41, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'CONSUMABLE', '16G/32G', 3000.00, 30.00, 100.00, 300000.00, 100, 'admin', '100023', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (42, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 9000.00, NULL, 10.00, 1107000.00, 123, 'admin', '199321', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (43, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 8000.00, NULL, 10.00, 984000.00, 123, 'admin', '199321', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (44, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 10, 'admin', '12323', 'WAREHOUSE_SALES', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (45, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 10, 'admin', '123123', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (46, 16, '深圳大学粤海校区仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 10, 'admin', '123123', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (47, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1654078329167515648', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (48, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1654078329167515648', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (49, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1654078329167515648', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (50, 17, '湖南卫视节目制作中心(北仓）', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1654078329167515648', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (51, 18, '湖南卫视节目制作中心(北仓）', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1654078329167515648', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (52, 19, '湖南卫视节目制作中心(北仓）', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1654078329167515648', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (53, 18, '湖南卫视节目制作中心(北仓）', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', 100.00, 10.00, 10.00, 1000.00, 10, 'admin', '130000', 'PRODUCT_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (54, 17, '湖南卫视节目制作中心(北仓）', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 9, 'admin', '123', 'WAREHOUSE_SALES', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (55, 18, '湖南卫视节目制作中心(北仓）', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', NULL, NULL, NULL, 0.00, 15, 'admin', '123', 'WAREHOUSE_SALES', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (56, 19, '湖南卫视节目制作中心(北仓）', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'CONSUMABLE', '16G/32G', NULL, NULL, NULL, 0.00, 4, 'admin', '123', 'WAREHOUSE_SALES', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (57, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1657579092380393472', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (58, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1657579092380393472', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (59, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 'admin', '1657579092380393472', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (60, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1657579092380393472', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (61, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1657579092380393472', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (62, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 'admin', '1657579092380393472', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (63, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1657579531754708992', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (64, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1657579531754708992', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (65, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 'admin', '1657579531754708992', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (66, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1657579531754708992', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (67, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1657579531754708992', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (68, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 'admin', '1657579531754708992', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (69, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1657579616227991552', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (70, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1657579616227991552', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (71, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 'admin', '1657579616227991552', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (72, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 'admin', '1657579616227991552', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (73, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1657579616227991552', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (74, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 'admin', '1657579616227991552', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (75, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT', '8G/16G', NULL, NULL, NULL, 0.00, 1, 'admin', '212121', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (76, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'CONSUMABLE', '16G/32G', 22.00, 323.00, 23.00, 286.00, 13, 'admin', '13004568', 'PRODUCT_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (77, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 33.00, 23.00, 23.00, 396.00, 12, 'admin', '13004568', 'PRODUCT_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (78, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'MAIN_INGREDiENT', 'M,XL', 33.00, 23.00, 23.00, 396.00, 12, 'admin', '13004568', 'PRODUCT_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (79, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657940617993564160', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (80, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657940617993564160', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (81, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 40, 'admin', '1657940617993564160', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (82, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657940617993564160', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (83, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657940617993564160', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (84, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 40, 'admin', '1657940617993564160', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (87, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 70, 'admin', '1657943323391012864', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (88, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 131, 'admin', '1657943323391012864', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (89, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657943323391012864', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (90, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 70, 'admin', '1657943323391012864', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (91, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 131, 'admin', '1657943323391012864', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (92, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657943323391012864', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (93, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 2, 'admin', '1657943737704361984', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (94, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 2, 'admin', '1657943737704361984', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (95, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 2, 'admin', '1657943737704361984', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (96, 21, '深圳大学粤海校区仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 2, 'admin', '1657943737704361984', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (97, 22, '深圳大学粤海校区仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 2, 'admin', '1657943737704361984', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (98, 16, '深圳大学粤海校区仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 2, 'admin', '1657943737704361984', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (99, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657946838444265472', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (100, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657946838444265472', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (101, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1657946838444265472', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (102, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657946838444265472', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (103, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 100, 'admin', '1657946838444265472', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (104, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 20, 'admin', '1657946838444265472', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (105, 15, '曾厝垵食品仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', 12.00, 12.00, 23.00, 144.00, 12, 'admin', '1233', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (106, 14, '曾厝垵食品仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'REPAIR_PARTS', '16G/32G', 123.00, 23.00, 23.00, 1476.00, 12, 'admin', '1233', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (107, 20, '曾厝垵食品仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'MAIN_INGREDiENT', 'M,XL', 33.00, 23.00, 23.00, 693.00, 21, 'admin', '1233', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (108, 17, '湖南卫视节目制作中心(北仓）', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 7, 'admin', '12332', 'WAREHOUSE_SALES', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (109, 18, '湖南卫视节目制作中心(北仓）', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', NULL, NULL, NULL, 0.00, 4, 'admin', '12332', 'WAREHOUSE_SALES', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (110, 16, '深圳大学粤海校区仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 11, 'admin', '1658012977140551680', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (111, 21, '深圳大学粤海校区仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658012977140551680', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (112, 22, '深圳大学粤海校区仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658012977140551680', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (113, 23, '上海东方明珠仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 11, 'admin', '1658012977140551680', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (114, 24, '上海东方明珠仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658012977140551680', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (115, 25, '上海东方明珠仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658012977140551680', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (116, 12, '集美理工仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', 21.00, 12.00, 12.00, 21.00, 1, 'admin', '122332', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (117, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'MAIN_INGREDiENT', '16G/32G', 23.00, 12.00, 12.00, 23.00, 1, 'admin', '122332', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (118, 23, '上海东方明珠仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658077175023398912', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (119, 24, '上海东方明珠仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658077175023398912', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (120, 25, '上海东方明珠仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658077175023398912', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (121, 16, '深圳大学粤海校区仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658077175023398912', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (122, 21, '深圳大学粤海校区仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658077175023398912', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (123, 22, '深圳大学粤海校区仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 1, 'admin', '1658077175023398912', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (125, 17, '湖南卫视节目制作中心(北仓）', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'MAIN_INGREDiENT', 'M,XL', 334.00, 323.00, 43.00, 6346.00, 19, 'admin', '1221', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (126, 18, '湖南卫视节目制作中心(北仓）', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT', '8G/16G', NULL, NULL, NULL, 0.00, 18, 'admin', '1221', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (127, 19, '湖南卫视节目制作中心(北仓）', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'MAIN_INGREDiENT', '16G/32G', 7.00, 8.00, 7.00, 126.00, 18, 'admin', '1221', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (128, 16, '深圳大学粤海校区仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 2, 'admin', '12321', 'WAREHOUSE_SALES', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (129, 21, '深圳大学粤海校区仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'CONSUMABLE', '16G/32G', NULL, NULL, NULL, 0.00, 2, 'admin', '12321', 'WAREHOUSE_SALES', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (130, 25, '上海东方明珠仓', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT', '8G/16G', NULL, NULL, NULL, 0.00, 1787, 'admin', '433', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (131, 24, '上海东方明珠仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT', '16G/32G', NULL, NULL, NULL, 0.00, 188, 'admin', '433', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (132, 23, '上海东方明珠仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT', 'M,XL', NULL, NULL, NULL, 0.00, 881, 'admin', '433', 'PURCHASE_WAREHOUSE', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (133, 23, '上海东方明珠仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 891, 'admin', '1658108305843904512', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (134, 24, '上海东方明珠仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 188, 'admin', '1658108305843904512', 'WAREHOUSE_ADJUST_OUT', 'OUT');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (135, 11, '集美理工仓', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 891, 'admin', '1658108305843904512', 'WAREHOUSE_ADJUST_IN', 'IN');
INSERT INTO `asset_lifecycle` (`id`, `warehouse_asset_id`, `warehouse_name`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `operate_user`, `batch_no`, `in_out_biz_type`, `in_out_type`) VALUES (136, 13, '集美理工仓', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 188, 'admin', '1658108305843904512', 'WAREHOUSE_ADJUST_IN', 'IN');
COMMIT;

-- ----------------------------
-- Table structure for asset_record
-- ----------------------------
DROP TABLE IF EXISTS `asset_record`;
CREATE TABLE `asset_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `valid_status` enum('VALID','INVALID') DEFAULT 'VALID',
  `warehouse_id` bigint(20) NOT NULL,
  `warehouse_name` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_img` varchar(1000) DEFAULT NULL,
  `product_code` varchar(20) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `warehouse_asset_biz_type` enum('CONSUMABLE','MAIN_INGREDiENT','PRODUCT','REPAIR_PARTS','PRODUCT_SALES','INGREDIENTS') NOT NULL,
  `product_specification` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `product_num` bigint(10) NOT NULL,
  `asset_id` bigint(20) NOT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `operate_user` varchar(20) DEFAULT NULL,
  `in_out_type` enum('IN','OUT') NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1658108312294764546 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of asset_record
-- ----------------------------
BEGIN;
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1652984267853201409, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', 8000.00, 80.00, 100.00, 800000.00, 100, 1652984267207278594, '100023', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1652984267861590017, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', 15000.00, 150.00, 100.00, 1500000.00, 100, 1652984267207278594, '100023', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1652984267890950146, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'CONSUMABLE', '16G/32G', 3000.00, 30.00, 100.00, 300000.00, 100, 1652984267207278594, '100023', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654046047174037506, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 9000.00, NULL, 10.00, 1107000.00, 123, 1654046046934962177, '199321', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654046047182426113, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 8000.00, NULL, 10.00, 984000.00, 123, 1654046046934962177, '199321', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654046374770151425, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 10, 1654046374631739394, '12323', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654046524984954881, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 10, 1654046524594884610, '123123', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654046525559574529, 'INVALID', 15, '深圳大学粤海校区仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 10, 1654046525446328321, '123123', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654078334230011905, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 20, 1654078334024491009, '1654078329167515648', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654078334238400514, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 10, 1654078334024491009, '1654078329167515648', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654078334242594818, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 10, 1654078334024491009, '1654078329167515648', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654078335664463873, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 20, 1654078335538634754, '1654078329167515648', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654078335668658178, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 10, 1654078335538634754, '1654078329167515648', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1654078335677046786, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 10, 1654078335538634754, '1654078329167515648', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657578475104669698, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', 100.00, 10.00, 10.00, 1000.00, 10, 1657578474504884225, '130000', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657578827262627842, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 9, 1657578826868363265, '123', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657578827271016449, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', NULL, NULL, NULL, 0.00, 15, 1657578826868363265, '123', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657578827275210753, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'CONSUMABLE', '16G/32G', NULL, NULL, NULL, 0.00, 4, 1657578826868363265, '123', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579099108052993, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 1657579098776702977, '1657579092380393472', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579099120635906, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 1657579098776702977, '1657579092380393472', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579099124830209, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 1657579098776702977, '1657579092380393472', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579101918236674, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 1657579101670772737, '1657579092380393472', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579101922430977, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 1657579101670772737, '1657579092380393472', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579101926625282, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 1657579101670772737, '1657579092380393472', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579539551916034, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 1657579539275091969, '1657579531754708992', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579539556110337, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 1657579539275091969, '1657579531754708992', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579539560304642, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 1657579539275091969, '1657579531754708992', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579542370488321, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 1657579542143995905, '1657579531754708992', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579542370488322, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 1657579542143995905, '1657579531754708992', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579542374682626, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 1657579542143995905, '1657579531754708992', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579620099330049, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 1657579619872837634, '1657579616227991552', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579620103524353, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 1657579619872837634, '1657579616227991552', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579620103524354, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 1657579619872837634, '1657579616227991552', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579622779490305, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 10, 1657579622540414978, '1657579616227991552', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579622787878913, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 20, 1657579622540414978, '1657579616227991552', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657579622796267522, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 30, 1657579622540414978, '1657579616227991552', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657933145006325761, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT', '8G/16G', NULL, NULL, NULL, 0.00, 1, 1657933144503009282, '212121', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940227407396866, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'CONSUMABLE', '16G/32G', 22.00, 323.00, 23.00, 286.00, 13, 1657940226832777217, '13004568', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940227440951298, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 33.00, 23.00, 23.00, 396.00, 12, 1657940226832777217, '13004568', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940227449339905, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'MAIN_INGREDiENT', 'M,XL', 33.00, 23.00, 23.00, 396.00, 12, 1657940226832777217, '13004568', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940630282878978, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 1657940629532098562, '1657940617993564160', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940630291267585, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 100, 1657940629532098562, '1657940617993564160', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940630295461889, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 40, 1657940629532098562, '1657940617993564160', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940636188459009, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 1657940635693531137, '1657940617993564160', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940636196847617, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 100, 1657940635693531137, '1657940617993564160', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657940636201041922, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 40, 1657940635693531137, '1657940617993564160', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943336250736641, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 70, 1657943335680311297, '1657943323391012864', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943336263319553, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 131, 1657943335680311297, '1657943323391012864', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943336267513857, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 1657943335680311297, '1657943323391012864', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943342013710338, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 70, 1657943341535559682, '1657943323391012864', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943342022098946, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 131, 1657943341535559682, '1657943323391012864', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943342043070465, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 1657943341535559682, '1657943323391012864', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943748924112898, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 2, 1657943748416602114, '1657943737704361984', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943748932501505, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 2, 1657943748416602114, '1657943737704361984', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943748936695809, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 2, 1657943748416602114, '1657943737704361984', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943754838081538, 'INVALID', 15, '深圳大学粤海校区仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 2, 1657943754330570753, '1657943737704361984', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943754842275841, 'INVALID', 15, '深圳大学粤海校区仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 2, 1657943754330570753, '1657943737704361984', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657943754842275842, 'INVALID', 15, '深圳大学粤海校区仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 2, 1657943754330570753, '1657943737704361984', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657946893821657090, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 1657946893049905153, '1657946838444265472', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657946893834240002, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 100, 1657946893049905153, '1657946838444265472', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657946893834240003, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 20, 1657946893049905153, '1657946838444265472', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657946899840483329, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 100, 1657946899307806721, '1657946838444265472', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657946899853066242, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 100, 1657946899307806721, '1657946838444265472', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1657946899874037762, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 20, 1657946899307806721, '1657946838444265472', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012040997031937, 'INVALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', 12.00, 12.00, 23.00, 144.00, 12, 1658012040632127489, '1233', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012041009614850, 'INVALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'REPAIR_PARTS', '16G/32G', 123.00, 23.00, 23.00, 1476.00, 12, 1658012040632127489, '1233', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012041009614851, 'INVALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'MAIN_INGREDiENT', 'M,XL', 33.00, 23.00, 23.00, 693.00, 21, 1658012040632127489, '1233', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012614266114049, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 7, 1658012614006067202, '12332', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012614282891266, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', NULL, NULL, NULL, 0.00, 4, 1658012614006067202, '12332', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012984283418625, 'INVALID', 15, '深圳大学粤海校区仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 11, 1658012984019177474, '1658012977140551680', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012984291807234, 'INVALID', 15, '深圳大学粤海校区仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 1, 1658012984019177474, '1658012977140551680', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012984296001537, 'INVALID', 15, '深圳大学粤海校区仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 1, 1658012984019177474, '1658012977140551680', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012987047464961, 'INVALID', 16, '上海东方明珠仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 11, 1658012986804195329, '1658012977140551680', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012987055853569, 'INVALID', 16, '上海东方明珠仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 1, 1658012986804195329, '1658012977140551680', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658012987060047874, 'INVALID', 16, '上海东方明珠仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 1, 1658012986804195329, '1658012977140551680', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658023042480263170, 'INVALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'CONSUMABLE', '8G/16G', 21.00, 12.00, 12.00, 21.00, 1, 1658023042228604929, '122332', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658023042484457474, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'MAIN_INGREDiENT', '16G/32G', 23.00, 12.00, 12.00, 23.00, 1, 1658023042228604929, '122332', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658077187312672770, 'INVALID', 16, '上海东方明珠仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 1, 1658077186926796801, '1658077175023398912', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658077187321061378, 'INVALID', 16, '上海东方明珠仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 1, 1658077186926796801, '1658077175023398912', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658077187321061379, 'INVALID', 16, '上海东方明珠仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 1, 1658077186926796801, '1658077175023398912', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658077190722641922, 'INVALID', 15, '深圳大学粤海校区仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 1, 1658077190395486210, '1658077175023398912', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658077190726836226, 'INVALID', 15, '深圳大学粤海校区仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 1, 1658077190395486210, '1658077175023398912', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658077190726836227, 'INVALID', 15, '深圳大学粤海校区仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT_SALES', '8G/16G', 0.00, 0.00, 0.00, 0.00, 1, 1658077190395486210, '1658077175023398912', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658080171576745986, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'MAIN_INGREDiENT', 'M,XL', 334.00, 323.00, 43.00, 6346.00, 19, 1658080171077623810, '1221', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658080171593523202, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT', '8G/16G', NULL, NULL, NULL, 0.00, 18, 1658080171077623810, '1221', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658080171601911809, 'INVALID', 17, '湖南卫视节目制作中心(北仓）', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'MAIN_INGREDiENT', '16G/32G', 7.00, 8.00, 7.00, 126.00, 18, 1658080171077623810, '1221', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658080353114611714, 'INVALID', 15, '深圳大学粤海校区仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'CONSUMABLE', 'M,XL', NULL, NULL, NULL, 0.00, 2, 1658080352741318657, '12321', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658080353127194626, 'INVALID', 15, '深圳大学粤海校区仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'CONSUMABLE', '16G/32G', NULL, NULL, NULL, 0.00, 2, 1658080352741318657, '12321', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658108197333086209, 'INVALID', 16, '上海东方明珠仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 'PRODUCT', '8G/16G', NULL, NULL, NULL, 0.00, 1787, 1658108196775243778, '433', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658108197345669121, 'INVALID', 16, '上海东方明珠仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT', '16G/32G', NULL, NULL, NULL, 0.00, 188, 1658108196775243778, '433', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658108197349863425, 'INVALID', 16, '上海东方明珠仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT', 'M,XL', NULL, NULL, NULL, 0.00, 881, 1658108196775243778, '433', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658108310075977729, 'INVALID', 16, '上海东方明珠仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 891, 1658108309635575809, '1658108305843904512', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658108310101143553, 'INVALID', 16, '上海东方明珠仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 188, 1658108309635575809, '1658108305843904512', 'admin', 'OUT');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658108312277987329, 'INVALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'PRODUCT_SALES', 'M,XL', 0.00, 0.00, 0.00, 0.00, 891, 1658108312051494913, '1658108305843904512', 'admin', 'IN');
INSERT INTO `asset_record` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `warehouse_asset_biz_type`, `product_specification`, `price`, `tax`, `tax_rate`, `amount`, `product_num`, `asset_id`, `batch_no`, `operate_user`, `in_out_type`) VALUES (1658108312294764545, 'INVALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 'PRODUCT_SALES', '16G/32G', 0.00, 0.00, 0.00, 0.00, 188, 1658108312051494913, '1658108305843904512', 'admin', 'IN');
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `cat_level` bigint(5) DEFAULT '1',
  `parent_id` bigint(20) DEFAULT '0',
  `delete_flag` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (3, '服装', 1, 0, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (4, '短袖', 1, 5, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (5, '男装', 1, 3, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (6, '女装', 1, 3, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (7, '连衣裙', 1, 6, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (8, 'POLO衫', 1, 5, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (9, '西服', 1, 5, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (10, '产成品', 1, 0, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (11, '布条', 1, 10, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (12, '原木', 1, 10, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (13, '电脑办公', 1, 0, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (14, '笔记本', 1, 13, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (15, '台式机', 1, 13, 0);
INSERT INTO `category` (`id`, `name`, `cat_level`, `parent_id`, `delete_flag`) VALUES (16, '服务器/工作站', 1, 13, 0);
COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for logistics_info
-- ----------------------------
DROP TABLE IF EXISTS `logistics_info`;
CREATE TABLE `logistics_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` bigint(10) NOT NULL,
  `updated_at` bigint(10) NOT NULL,
  `version` int(10) NOT NULL DEFAULT '0',
  `flow_no` bigint(20) NOT NULL,
  `logistics_status` int(4) NOT NULL DEFAULT '1',
  `arrive_time` bigint(10) DEFAULT NULL,
  `freight` decimal(10,2) DEFAULT NULL,
  `ship_warehouse_id` bigint(20) NOT NULL,
  `consignee_warehouse_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `asset_id` bigint(20) NOT NULL,
  `ship_warehouse_name` varchar(100) DEFAULT NULL,
  `consignee_warehouse_name` varchar(100) DEFAULT NULL,
  `products` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of logistics_info
-- ----------------------------
BEGIN;
INSERT INTO `logistics_info` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `logistics_status`, `arrive_time`, `freight`, `ship_warehouse_id`, `consignee_warehouse_id`, `order_id`, `asset_id`, `ship_warehouse_name`, `consignee_warehouse_name`, `products`) VALUES (6, 1683197983, 1683197983, 2, 1654078329167515648, 3, 0, 100.00, 13, 17, 19, 1654078335538634754, '集美理工仓', '湖南卫视节目制作中心(北仓）', '[{\"v\":\"3\",\"k\":\"productId\",\"l\":\"20\"},{\"v\":\"1652917666017648641\",\"k\":\"productId\",\"l\":\"10\"},{\"v\":\"1652918567692345345\",\"k\":\"productId\",\"l\":\"10\"}]');
INSERT INTO `logistics_info` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `logistics_status`, `arrive_time`, `freight`, `ship_warehouse_id`, `consignee_warehouse_id`, `order_id`, `asset_id`, `ship_warehouse_name`, `consignee_warehouse_name`, `products`) VALUES (7, 1684032755, 1684032755, 0, 1657579616227991552, 1, NULL, 100.00, 13, 14, 1, 1657579622540414978, '集美理工仓', '曾厝垵食品仓', '[{\"k\":\"productId\",\"l\":\"10\",\"v\":\"3\"},{\"k\":\"productId\",\"l\":\"20\",\"v\":\"1652917666017648641\"},{\"k\":\"productId\",\"l\":\"30\",\"v\":\"1652918567692345345\"}]');
INSERT INTO `logistics_info` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `logistics_status`, `arrive_time`, `freight`, `ship_warehouse_id`, `consignee_warehouse_id`, `order_id`, `asset_id`, `ship_warehouse_name`, `consignee_warehouse_name`, `products`) VALUES (11, 1684120322, 1684120322, 2, 1657946838444265472, 3, 0, 100.00, 14, 13, 24, 1657946899307806721, '曾厝垵食品仓', '集美理工仓', '[{\"v\":\"1652918567692345345\",\"k\":\"productId\",\"l\":\"100\"},{\"v\":\"1652917666017648641\",\"k\":\"productId\",\"l\":\"100\"},{\"v\":\"3\",\"k\":\"productId\",\"l\":\"20\"}]');
INSERT INTO `logistics_info` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `logistics_status`, `arrive_time`, `freight`, `ship_warehouse_id`, `consignee_warehouse_id`, `order_id`, `asset_id`, `ship_warehouse_name`, `consignee_warehouse_name`, `products`) VALUES (12, 1684136078, 1684136078, 2, 1658012977140551680, 3, 0, 1333.00, 15, 16, 25, 1658012986804195329, '深圳大学粤海校区仓', '上海东方明珠仓', '[{\"v\":\"3\",\"k\":\"productId\",\"l\":\"11\"},{\"v\":\"1652918567692345345\",\"k\":\"productId\",\"l\":\"1\"},{\"v\":\"1652917666017648641\",\"k\":\"productId\",\"l\":\"1\"}]');
INSERT INTO `logistics_info` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `logistics_status`, `arrive_time`, `freight`, `ship_warehouse_id`, `consignee_warehouse_id`, `order_id`, `asset_id`, `ship_warehouse_name`, `consignee_warehouse_name`, `products`) VALUES (13, 1684151384, 1684151384, 0, 1658077175023398912, 1, NULL, 100.00, 16, 15, 26, 1658077190395486210, '上海东方明珠仓', '深圳大学粤海校区仓', '[{\"k\":\"productId\",\"l\":\"1\",\"v\":\"3\"},{\"k\":\"productId\",\"l\":\"1\",\"v\":\"1652918567692345345\"},{\"k\":\"productId\",\"l\":\"1\",\"v\":\"1652917666017648641\"}]');
INSERT INTO `logistics_info` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `logistics_status`, `arrive_time`, `freight`, `ship_warehouse_id`, `consignee_warehouse_id`, `order_id`, `asset_id`, `ship_warehouse_name`, `consignee_warehouse_name`, `products`) VALUES (14, 1684158804, 1684158804, 0, 1658108305843904512, 1, NULL, 10.00, 16, 13, 27, 1658108312051494913, '上海东方明珠仓', '集美理工仓', '[{\"k\":\"productId\",\"l\":\"891\",\"v\":\"3\"},{\"k\":\"productId\",\"l\":\"188\",\"v\":\"1652918567692345345\"}]');
COMMIT;

-- ----------------------------
-- Table structure for open_ai_user_info
-- ----------------------------
DROP TABLE IF EXISTS `open_ai_user_info`;
CREATE TABLE `open_ai_user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` bigint(10) NOT NULL,
  `updated_at` bigint(10) NOT NULL,
  `version` int(10) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `is_user` tinyint(1) NOT NULL DEFAULT '1',
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of open_ai_user_info
-- ----------------------------
BEGIN;
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (1, 1681522751, 1681522751, 1, 1, 0, '你好我是IISS仓库管理机器人');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (2, 1681522752, 1681522752, 0, 1, 1, '目前市面上还有什么开放了接口的聊天试对话机器人可以使用');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (3, 1681524961, 1681524961, 0, 1, 0, '目前市面上有很多开放了接口的聊天机器人，以下是一些例子：\n\nMicrosoft Bot Framework：微软提供的聊天机器人框架，可用于构建自己的聊天机器人，并集成到各种平台上。\n\nDialogflow：Google 提供的自然语言处理平台，可以用于构建聊天机器人和语音助手，并与 Google Assistant、Facebook Messenger、Slack 等第三方平台集成。\n\nIBM Watson Assistant：IBM 提供的聊天机器人平台，可用于构建自己的聊天机器人，并与多种平台集成。\n\nWit.ai：Facebook 提供的聊天机器人平台，可用于构建自己的聊天机器人，并与 Facebook Messenger、Slack 等第三方平台集成。\n\nBotpress：开源的聊天机器人框架，可用于构建自己的聊天机器人，并与多种平台集成。\n\n以上是一些常见的开放了接口的聊天机器人，你可以根据自己的需求选择适合自己的平台。');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (6, 1681524999, 1681525000, 0, 1, 1, '请问仓储领域有什么新的知识吗');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (7, 1681526000, 1681526001, 0, 1, 0, '\n当然，以下是仓储领域最近的一些新知识：\n# 机器人技术在仓储中的应用\n近年来，随着机器人技术的不断发展，越来越多的仓储企业开始尝试在其仓库中使用机器人。这些机器人可以自主地在仓库内移动，执行各种任务，如货物搬运和分拣。这不仅提高了仓储的效率，还减少了人为因素对仓储作业的干扰。\n# 人工智能在仓储中的应用\n除了机器人技术，人工智能也正在逐渐渗透到仓储领域。例如，通过使用深度学习算法，可以对仓库内的货物进行智能化管理和监控，从而实现更高效的仓储管理。\n# 无人驾驶技术在物流中的应用\n随着无人驾驶技术的不断发展，越来越多的物流企业开始尝试在其物流运输中使用无人驾驶车辆。这些车辆可以自动驾驶，在不需要人为干预的情况下完成货物的运输和交付，提高了物流运输的效率和安全性。\n# 区块链技术在仓储中的应用\n区块链技术可以提供更高效、更安全的仓储管理方案。例如，通过使用区块链技术，可以实现对货物的全程追踪，从而减少货物的丢失和损坏。此外，区块链技术还可以在仓储业务中实现智能合约，自动化地处理各种仓储合同和交易。\n以上是近年来仓储领域的一些新知识，希望能对您有所帮助。\n\n');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (23, 1683451229, 1683451229, 0, 1, 1, '你是谁');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (24, 1683451231, 1683451231, 0, 1, 0, '和管理需求，提高了物流仓储系统的效率和准确性，为企业带来了更多的利润和竞争力。');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (25, 1683451269, 1683451269, 0, 1, 1, '你在说什么？');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (26, 1683451272, 1683451272, 0, 1, 0, '抱歉，我之前的回答可能有些冗长和不太相关。我是一个AI语言模型，可以回答你的问题和提供帮助。请问有什么我可以帮你解答的问题吗？');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (28, 1683451363, 1683451363, 0, 1, 1, '你是谁');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (29, 1683451364, 1683451364, 0, 1, 0, '好的，我可以回答关于物流仓储管理系统的问题。请问您有什么需要了解的吗？');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (30, 1684135025, 1684135025, 0, 1, 1, '仓库适合什么公司业务');
INSERT INTO `open_ai_user_info` (`id`, `created_at`, `updated_at`, `version`, `user_id`, `is_user`, `content`) VALUES (31, 1684135033, 1684135033, 0, 1, 0, '仓库适合以下类型的公司业务：\n\n1. 零售商：仓库可以用于存储商品，以便在需要时快速发货。\n\n2. 制造商：仓库可以用于存储原材料和成品，以便在需要时进行生产和发货。\n\n3. 批发商：仓库可以用于存储大量的商品，以便在需要时快速发货给零售商。\n\n4. 物流公司：仓库可以用于存储和分拣货物，以便在需要时进行配送。\n\n5. 电商平台：仓库可以用于存储卖家的商品，以便在需要时进行发货。\n\n总之，任何需要存储和管理大量商品或货物的公司都可以使用仓库来支持其业务。');
COMMIT;

-- ----------------------------
-- Table structure for order_base
-- ----------------------------
DROP TABLE IF EXISTS `order_base`;
CREATE TABLE `order_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` bigint(10) NOT NULL,
  `updated_at` bigint(10) NOT NULL,
  `version` int(10) NOT NULL DEFAULT '0',
  `flow_no` bigint(20) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `account_id` bigint(20) NOT NULL,
  `order_type` int(4) DEFAULT NULL,
  `pay_list` varchar(255) NOT NULL,
  `wait_pay` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_time` bigint(10) DEFAULT NULL,
  `order_state` int(4) NOT NULL DEFAULT '1',
  `valid_status` int(4) DEFAULT '1',
  `attrs` varchar(255) DEFAULT NULL,
  `invoice_flag` int(4) DEFAULT '0',
  PRIMARY KEY (`id`,`flow_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_base
-- ----------------------------
BEGIN;
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (19, 1683197982, 1683198248, 1, 1654078342639517696, 100.00, 1, 4, '[{\"money\":100.00,\"payGroup\":\"THIRD_PAY\",\"payType\":\"COIN\"}]', 100.00, 1683198248, 2, 1, '[]', 0);
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (20, 1684032754, 1684032754, 0, 1657579629553315840, 100.00, 1, 4, '[]', 100.00, NULL, 1, 1, '[]', 0);
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (21, 1684118829, 1684118829, 0, 1657940653200556032, 10.00, 1, 4, '[]', 10.00, NULL, 1, 1, '[]', 0);
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (22, 1684119473, 1684119473, 0, 1657943354462355456, 100.00, 1, 4, '[]', 100.00, NULL, 1, 1, '[]', 0);
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (23, 1684119571, 1684119571, 0, 1657943766787604480, 100.00, 1, 4, '[]', 100.00, NULL, 1, 1, '[]', 0);
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (24, 1684120322, 1684120346, 1, 1657946914432421888, 100.00, 1, 4, '[{\"money\":100.00,\"payGroup\":\"THIRD_PAY\",\"payType\":\"COIN\"}]', 100.00, 1684120346, 2, 1, '[]', 0);
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (25, 1684136077, 1684136114, 1, 1658012998070128640, 1333.00, 1, 4, '[{\"money\":1333.00,\"payGroup\":\"THIRD_PAY\",\"payType\":\"COIN\"}]', 1333.00, 1684136114, 2, 1, '[]', 0);
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (26, 1684151384, 1684151406, 1, 1658077198205292544, 100.00, 1, 4, '[{\"money\":100.00,\"payGroup\":\"THIRD_PAY\",\"payType\":\"COIN\"}]', 100.00, 1684151406, 2, 1, '[]', 0);
INSERT INTO `order_base` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `total_amount`, `account_id`, `order_type`, `pay_list`, `wait_pay`, `pay_time`, `order_state`, `valid_status`, `attrs`, `invoice_flag`) VALUES (27, 1684158804, 1684158821, 1, 1658108319886467072, 10.00, 1, 4, '[{\"money\":10.00,\"payGroup\":\"THIRD_PAY\",\"payType\":\"COIN\"}]', 10.00, 1684158821, 2, 1, '[]', 0);
COMMIT;

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` bigint(10) NOT NULL,
  `updated_at` bigint(10) NOT NULL,
  `version` int(10) NOT NULL DEFAULT '0',
  `order_id` bigint(20) NOT NULL,
  `flow_no` bigint(20) NOT NULL,
  `real_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_count` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sku_id` varchar(20) DEFAULT NULL,
  `item_unit` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) NOT NULL,
  `fee_remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_item
-- ----------------------------
BEGIN;
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (15, 1683197982, 1683197982, 0, 19, 1654078342639517696, 100.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (16, 1684032754, 1684032754, 0, 20, 1657579629553315840, 100.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (17, 1684118829, 1684118829, 0, 21, 1657940653200556032, 10.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (18, 1684119473, 1684119473, 0, 22, 1657943354462355456, 100.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (19, 1684119571, 1684119571, 0, 23, 1657943766787604480, 100.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (20, 1684120322, 1684120322, 0, 24, 1657946914432421888, 100.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (21, 1684136078, 1684136078, 0, 25, 1658012998070128640, 1333.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (22, 1684151384, 1684151384, 0, 26, 1658077198205292544, 100.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
INSERT INTO `order_item` (`id`, `created_at`, `updated_at`, `version`, `order_id`, `flow_no`, `real_amount`, `item_count`, `sku_id`, `item_unit`, `product_name`, `fee_remark`) VALUES (23, 1684158804, 1684158804, 0, 27, 1658108319886467072, 10.00, 0.00, NULL, NULL, '物流转仓', '物流转仓费用');
COMMIT;

-- ----------------------------
-- Table structure for order_lifecycle
-- ----------------------------
DROP TABLE IF EXISTS `order_lifecycle`;
CREATE TABLE `order_lifecycle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` bigint(10) NOT NULL,
  `updated_at` bigint(10) NOT NULL,
  `version` int(10) NOT NULL DEFAULT '0',
  `flow_no` bigint(20) NOT NULL,
  `operate_type` int(4) NOT NULL DEFAULT '1',
  `remark` varchar(200) DEFAULT NULL,
  `operate_user` varchar(100) DEFAULT NULL,
  `valid_status` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_lifecycle
-- ----------------------------
BEGIN;
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (19, 1683197982, 1683197982, 0, 1654078342639517696, 2, '订单创建成功', 'admin', 1);
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (20, 1684032754, 1684032754, 0, 1657579629553315840, 2, '订单创建成功', 'admin', 1);
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (21, 1684118829, 1684118829, 0, 1657940653200556032, 2, '订单创建成功', 'admin', 1);
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (22, 1684119473, 1684119473, 0, 1657943354462355456, 2, '订单创建成功', 'admin', 1);
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (23, 1684119572, 1684119572, 0, 1657943766787604480, 2, '订单创建成功', 'admin', 1);
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (24, 1684120322, 1684120322, 0, 1657946914432421888, 2, '订单创建成功', 'admin', 1);
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (25, 1684136077, 1684136077, 0, 1658012998070128640, 2, '订单创建成功', 'admin', 1);
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (26, 1684151384, 1684151384, 0, 1658077198205292544, 2, '订单创建成功', 'admin', 1);
INSERT INTO `order_lifecycle` (`id`, `created_at`, `updated_at`, `version`, `flow_no`, `operate_type`, `remark`, `operate_user`, `valid_status`) VALUES (27, 1684158804, 1684158804, 0, 1658108319886467072, 2, '订单创建成功', 'admin', 1);
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(20) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `product_specification` varchar(2000) DEFAULT NULL,
  `model` varchar(10) DEFAULT NULL,
  `unit` varchar(10) NOT NULL,
  `product_img` varchar(1000) DEFAULT 'https://photo.16pic.com/00/20/02/16pic_2002642_b.jpg',
  `category_name` varchar(10) DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` (`id`, `product_code`, `product_name`, `category_id`, `brand`, `note`, `product_specification`, `model`, `unit`, `product_img`, `category_name`, `purchase_price`, `selling_price`) VALUES ('1652917666017648641', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', 14, 'Apple', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片(8核+10核图形处理器) 8G 256G 深空灰 笔记本 MNEH3CH/A', '8G/16G', 'M2', '台', 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '笔记本', 7700.00, 8000.00);
INSERT INTO `product` (`id`, `product_code`, `product_name`, `category_id`, `brand`, `note`, `product_specification`, `model`, `unit`, `product_img`, `category_name`, `purchase_price`, `selling_price`) VALUES ('1652918567692345345', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', 14, '华硕', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 i9-12900H RTX3070Ti 2.5K 16G 1TB 标配', '16G/32G', 'i9', '台', 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '笔记本', 12800.00, 15000.00);
INSERT INTO `product` (`id`, `product_code`, `product_name`, `category_id`, `brand`, `note`, `product_specification`, `model`, `unit`, `product_img`, `category_name`, `purchase_price`, `selling_price`) VALUES ('3', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 4, 'BEZORDUN', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'M,XL', '白灰黑', '件', 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '短袖', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for revise_record
-- ----------------------------
DROP TABLE IF EXISTS `revise_record`;
CREATE TABLE `revise_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` bigint(10) NOT NULL,
  `update_at` bigint(10) NOT NULL,
  `version` int(10) NOT NULL,
  `flow_no` bigint(20) NOT NULL,
  `operate_user` varchar(100) DEFAULT NULL,
  `valid_status` int(4) NOT NULL DEFAULT '1',
  `revise_before` varchar(255) NOT NULL,
  `revise_after` varchar(255) NOT NULL,
  `diff` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `revise_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of revise_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_auth_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_user`;
CREATE TABLE `sys_auth_user` (
  `auth_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '授权ID',
  `uuid` varchar(500) NOT NULL COMMENT '第三方平台用户唯一ID',
  `user_id` bigint(20) NOT NULL COMMENT '系统用户ID',
  `user_name` varchar(30) NOT NULL COMMENT '登录账号',
  `nick_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `avatar` varchar(500) DEFAULT '' COMMENT '头像地址',
  `email` varchar(255) DEFAULT '' COMMENT '用户邮箱',
  `source` varchar(255) DEFAULT '' COMMENT '用户来源',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COMMENT='第三方授权表';

-- ----------------------------
-- Records of sys_auth_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_auth_user` (`auth_id`, `uuid`, `user_id`, `user_name`, `nick_name`, `avatar`, `email`, `source`, `create_time`) VALUES (100, 'gitee5589546', 1, 'liu_yong_qiee', 'LYQ', 'https://foruda.gitee.com/avatar/1677060156210020701/5589546_liu_yong_qiee_1608556546.png', '', 'gitee', '2023-03-20 11:47:20');
INSERT INTO `sys_auth_user` (`auth_id`, `uuid`, `user_id`, `user_name`, `nick_name`, `avatar`, `email`, `source`, `create_time`) VALUES (101, 'github51525402', 1, '245938767', 'Xiao', 'https://avatars.githubusercontent.com/u/51525402?v=4', '', 'github', '2023-03-20 13:30:13');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-02-07 13:39:55', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-02-07 13:39:55', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-02-07 13:39:55', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-02-07 13:39:55', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (100, 0, '0', '品橙管理有限公司', 0, '刘咏其', '18960809762', 'pc@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', 'admin', '2023-03-23 12:12:50');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (101, 100, '0,100', '深圳总公司', 1, '刘咏其', '18960809762', 'pc@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', 'admin', '2023-03-23 12:12:37');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (102, 100, '0,100', '长沙分公司', 2, '刘咏其', '18960809762', 'pc@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', 'admin', '2023-03-23 12:12:54');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-02-07 13:39:53', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '性别男');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '性别女');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '通知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '公告');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-02-07 13:39:55', '', NULL, '停用状态');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-02-07 13:39:54', '', NULL, '登录状态列表');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-02-07 13:39:55', '', NULL, '');
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-02-07 13:39:55', '', NULL, '');
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-02-07 13:39:55', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示信息',
  `access_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (100, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:29:06');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (101, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:33:37');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (102, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:36:39');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (103, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:36:47');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (104, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:38:15');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (105, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:39:36');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (106, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:46:48');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (107, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:49:42');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (108, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:51:33');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (109, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 20:52:29');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (110, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-05 23:58:14');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (111, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-06 00:22:11');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (112, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-06 00:46:02');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (113, 'admin', '127.0.0.1', '0', '退出成功', '2023-03-06 00:46:03');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (114, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-06 15:31:38');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (115, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-12 13:14:58');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (116, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-12 14:37:31');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (117, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-12 14:38:08');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (118, 'admin', '36.248.247.254', '0', '登录成功', '2023-03-12 17:03:55');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (119, 'admin', '36.248.247.254', '0', '登录成功', '2023-03-12 19:34:33');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (120, 'admin', '140.243.42.101', '0', '登录成功', '2023-03-14 14:57:38');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (121, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-14 16:55:17');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (122, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-14 16:56:46');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (123, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-14 16:57:06');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (124, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-15 09:37:06');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (125, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-15 13:48:32');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (126, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-16 12:56:58');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (127, 'admin', '127.0.0.1', '1', '登录用户不存在', '2023-03-16 16:47:54');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (128, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-16 16:52:22');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (129, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-17 15:31:42');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (130, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-17 23:03:11');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (131, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-19 16:38:13');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (132, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-19 16:38:39');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (133, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-19 16:45:39');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (134, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-19 16:47:48');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (135, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-19 17:32:43');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (136, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-20 09:37:33');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (137, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-20 09:38:35');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (138, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-20 11:11:37');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (139, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-23 12:07:09');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (140, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-23 12:15:55');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (141, 'admin', '127.0.0.1', '0', '登录成功', '2023-03-31 19:14:01');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (142, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-01 13:35:02');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (143, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-02 14:44:14');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (144, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-03 10:09:31');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (145, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-08 19:33:46');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (146, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-09 09:05:49');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (147, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-09 11:13:32');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (148, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-09 11:54:38');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (149, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-10 17:01:05');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (150, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-10 20:00:54');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (151, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-10 20:09:59');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (152, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-11 09:34:38');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (153, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-11 09:35:47');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (154, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-12 09:39:49');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (155, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-12 18:29:58');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (156, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-12 21:22:38');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (157, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-12 21:22:47');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (158, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-12 21:23:02');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (159, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-13 09:25:32');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (160, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-16 14:51:43');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (161, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-17 13:09:19');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (162, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-18 09:56:14');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (163, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-21 15:59:15');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (164, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-23 11:41:49');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (165, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-24 17:03:03');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (166, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-24 21:10:35');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (167, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-26 15:07:31');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (168, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-26 21:16:53');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (169, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-27 15:30:42');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (170, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-27 21:39:18');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (171, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-27 22:23:46');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (172, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-27 22:25:06');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (173, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-28 10:20:54');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (174, 'admin', '127.0.0.1', '0', '登录成功', '2023-04-28 15:44:10');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (175, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-01 09:31:38');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (176, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-04 16:37:54');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (177, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-06 09:50:52');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (178, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-06 14:40:25');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (179, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-07 15:36:31');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (180, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-07 16:01:38');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (181, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-07 16:25:31');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (182, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-11 16:02:02');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (183, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-14 10:43:52');
INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES (184, 'admin', '127.0.0.1', '0', '登录成功', '2023-05-15 10:16:52');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2021 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '系统管理', 0, 10, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-02-07 13:39:53', 'admin', '2023-03-12 15:11:12', '系统管理目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '系统监控', 0, 11, 'monitor', NULL, '', 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2023-02-07 13:39:53', 'admin', '2023-05-04 19:07:50', '系统监控目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统工具', 0, 13, 'tool', NULL, '', 1, 0, 'M', '1', '0', '', 'tool', 'admin', '2023-02-07 13:39:53', 'admin', '2023-03-17 23:33:39', '系统工具目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-02-07 13:39:53', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-02-07 13:39:53', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-02-07 13:39:53', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-02-07 13:39:53', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-02-07 13:39:53', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-02-07 13:39:53', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-02-07 13:39:53', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-02-07 13:39:53', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-02-07 13:39:53', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-02-07 13:39:53', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-02-07 13:39:53', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (111, 'Sentinel控制台', 2, 3, 'http://localhost:8718', '', '', 0, 0, 'C', '0', '0', 'monitor:sentinel:list', 'sentinel', 'admin', '2023-02-07 13:39:53', '', NULL, '流量控制菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (112, 'Nacos控制台', 2, 4, 'http://localhost:8848/nacos', '', '', 0, 0, 'C', '0', '0', 'monitor:nacos:list', 'nacos', 'admin', '2023-02-07 13:39:53', '', NULL, '服务治理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (113, 'Admin控制台', 2, 5, 'http://localhost:9100/login', '', '', 0, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-02-07 13:39:53', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-02-07 13:39:53', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-02-07 13:39:53', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (116, '系统接口', 3, 3, 'http://localhost:8080/swagger-ui/index.html', '', '', 0, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-02-07 13:39:53', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (500, '操作日志', 108, 1, 'operlog', 'system/operlog/index', '', 1, 0, 'C', '0', '0', 'system:operlog:list', 'form', 'admin', '2023-02-07 13:39:53', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (501, '登录日志', 108, 2, 'logininfor', 'system/logininfor/index', '', 1, 0, 'C', '0', '0', 'system:logininfor:list', 'logininfor', 'admin', '2023-02-07 13:39:53', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:export', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:export', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:unlock', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-02-07 13:39:54', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2000, '仓库模块', 0, 2, 'warehouse', '', NULL, 1, 0, 'M', '0', '0', '', 'PicRightOutlined', 'admin', '2023-03-06 15:37:42', 'admin', '2023-03-06 15:39:22', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2001, '商品', 2000, 3, 'products', NULL, NULL, 1, 0, 'M', '0', '0', '', 'TaobaoCircleOutlined', 'admin', '2023-03-12 15:06:22', 'admin', '2023-03-15 11:13:49', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2002, '资产', 2000, 1, 'warehouseasset', NULL, NULL, 1, 0, 'C', '0', '0', '', 'AccountBookOutlined', 'admin', '2023-03-12 15:07:08', 'admin', '2023-03-17 23:05:13', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2003, '仓库', 2000, 2, 'warehouse', NULL, NULL, 1, 0, 'C', '0', '0', '', 'DropboxOutlined', 'admin', '2023-03-12 15:07:32', 'admin', '2023-03-17 23:05:19', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2004, '物流模块', 0, 0, 'logistics', NULL, '', 1, 0, 'M', '0', '0', '', 'CarOutlined', 'admin', '2023-03-12 15:08:33', 'admin', '2023-04-11 17:43:41', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2005, '仓库机器人', 0, 3, 'bot', NULL, NULL, 1, 0, 'M', '0', '0', '', 'AndroidOutlined', 'admin', '2023-03-12 15:09:08', 'admin', '2023-03-12 15:11:00', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2006, '录入', 2000, 0, 'asset', NULL, NULL, 1, 0, 'M', '0', '0', '', 'PieChartOutlined', 'admin', '2023-03-14 19:46:08', 'admin', '2023-03-16 14:55:55', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2007, '分类', 2001, 0, 'category', 'product/category/index', '', 1, 0, 'C', '0', '0', 'product:category:list', 'PieChartOutlined', 'admin', '2023-03-15 11:12:19', 'admin', '2023-03-15 17:28:15', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2008, '商品', 2001, 1, 'product', 'product/goods/index', NULL, 1, 0, 'C', '0', '0', 'product:goods:list', '#', 'admin', '2023-03-15 11:12:39', 'admin', '2023-03-15 17:30:11', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2009, '删除', 2007, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'product:category:remove', '#', 'admin', '2023-03-15 11:26:33', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2010, '添加', 2007, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'product:category:add', '#', 'admin', '2023-03-15 11:27:09', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2011, '查询单个', 2007, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'product:category:query', '#', 'admin', '2023-03-15 17:28:52', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2012, '修改', 2007, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'product:category:edit', '#', 'admin', '2023-03-15 17:29:31', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2013, '商品查询', 2008, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'product:goods:query', '#', 'admin', '2023-03-15 17:30:39', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2014, '添加商品', 2008, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'product:goods:add', '#', 'admin', '2023-03-15 17:31:04', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2015, '编辑商品', 2008, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'product:goods:edit', '#', 'admin', '2023-03-15 17:31:23', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2016, '删除商品', 2008, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'product:goods:remove', '#', 'admin', '2023-03-15 17:31:47', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2017, '入库', 2006, 0, 'warehousing', NULL, NULL, 1, 0, 'C', '0', '0', '', '#', 'admin', '2023-03-16 14:57:29', 'admin', '2023-03-16 16:54:28', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2018, '出库', 2006, 0, 'exwarehouse', NULL, NULL, 1, 0, 'C', '0', '0', NULL, '#', 'admin', '2023-03-16 14:58:06', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2020, '转仓', 2006, 0, 'adjustment', NULL, NULL, 1, 0, 'C', '0', '0', '', '#', 'admin', '2023-04-23 14:32:26', 'admin', '2023-04-23 14:33:48', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (100, '菜单管理', 3, 'cn.iiss.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/4', '127.0.0.1', '', NULL, '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2023-03-06 15:35:06');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (101, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-06 15:35:23');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (102, '菜单管理', 3, 'cn.iiss.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/4', '127.0.0.1', '', NULL, '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2023-03-06 15:35:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (103, '角色管理', 2, 'cn.iiss.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[111,112,113,114,116,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1058,1057,1059,1060,1039,1040,1041,1042,1043,1044,1045],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-06 15:36:52');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (104, '菜单管理', 3, 'cn.iiss.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/4', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-06 15:36:56');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (105, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"PicRightOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"仓库模块\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"/dd\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-06 15:37:43');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (106, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"PicRightOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"仓库模块\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"warehouse\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-06 15:39:23');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (107, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"product\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:06:22');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (108, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"资产\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"asset\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:07:08');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (109, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"仓库\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"warehouse\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:07:32');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (110, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"物流模块\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"wl\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:08:33');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (111, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"仓库机器人\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"bot\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:09:08');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (112, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"AndroidOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2005,\"menuName\":\"仓库机器人\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"bot\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:11:00');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (113, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:11:13');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (114, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":11,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:11:20');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (115, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":13,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:11:28');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (116, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"CarOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2004,\"menuName\":\"物流模块\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"wl\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-12 15:12:04');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (117, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"资产\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"warehosueasset\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:45:01');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (118, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"录入\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"warehouseasset\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:46:08');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (119, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"录入\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"asset\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:46:46');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (120, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"DropboxOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"仓库\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"warehouse\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:47:08');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (121, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"AccountBookOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"资产\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"warehouseasset\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:47:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (122, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"TaobaoCircleOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"product\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:47:48');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (123, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"DropboxOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"仓库\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"warehouse\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:48:02');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (124, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"AccountBookOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"资产\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"warehouseasset\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:48:09');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (125, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"TaobaoCircleOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"product\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-14 19:48:15');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (126, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"TaobaoCircleOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"商品\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"product\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:11:29');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (127, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"分类\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2001,\"path\":\"category\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:12:19');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (128, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2001,\"path\":\"product\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:12:39');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (129, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"product\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:12:47');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (130, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"TaobaoCircleOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"商品\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"products\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:13:49');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (131, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2007,\"perms\":\"product:category:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:26:33');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (132, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2007,\"perms\":\"product:category:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"新增菜单\'删除\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2023-03-15 11:26:47');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (133, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2007,\"perms\":\"product:category:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:27:09');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (134, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"product/goods/index\",\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"分类\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2001,\"path\":\"category\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:28:47');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (135, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"product/category/index\",\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"分类\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2001,\"path\":\"category\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:29:04');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (136, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"product/goods/index\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"product\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 11:29:08');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (137, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"\",\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"分类\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2001,\"path\":\"category\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 13:59:02');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (138, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"product\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 13:59:08');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (139, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"product/category/index\",\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"分类\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2001,\"path\":\"category\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:07:05');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (140, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"product/goods/index\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"product\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:07:23');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (141, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"product/category/index\",\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"分类\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2001,\"path\":\"category\",\"perms\":\"product:category:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:28:15');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (142, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询单个\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2007,\"perms\":\"product:category:query\",\"query\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:28:52');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (143, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2007,\"perms\":\"product:category:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:29:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (144, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"product/goods/index\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"商品\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"product\",\"perms\":\"product:goods:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:30:11');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (145, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"商品查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2008,\"perms\":\"product:goods:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:30:39');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (146, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加商品\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2008,\"perms\":\"product:goods:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:31:04');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (147, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"编辑商品\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2008,\"perms\":\"product:goods:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:31:23');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (148, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除商品\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":2008,\"perms\":\"product:goods:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 17:31:47');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (149, '角色管理', 2, 'cn.iiss.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"admin\":true,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2004,2000,2005,1,2,3],\"params\":{},\"remark\":\"超级管理员\",\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":\"1\",\"status\":\"0\"}', NULL, 1, '不允许操作超级管理员角色', '2023-03-15 17:39:55');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (150, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"鞋子\",\"parentId\":0}', NULL, 1, 'Invalid bound statement (not found): cn.iiss.products.category.mapper.CategoryMapper.insertCategory', '2023-03-15 18:30:13');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (151, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"耐克\",\"categoryId\":1,\"model\":\"耐克1299\",\"productCode\":\"123\",\"productName\":\"耐克鞋子\",\"unit\":\"双\"}', NULL, 1, 'Invalid bound statement (not found): cn.iiss.products.product.mapper.ProductMapper.insertGoods', '2023-03-15 18:32:10');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (152, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"拖鞋\",\"parentId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 20:54:51');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (153, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"衣服\",\"parentId\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 20:54:59');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (154, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"耐克\",\"categoryId\":2,\"model\":\"奶剋\",\"productCode\":\"1234\",\"productName\":\"耐克拖鞋\",\"unit\":\"1kg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 20:56:00');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (155, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"耐克\",\"categoryId\":2,\"model\":\"2k\",\"productCode\":\"1234\",\"productName\":\"耐克\",\"unit\":\"12kg\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-15 20:56:50');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (156, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"PieChartOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"录入\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":2000,\"path\":\"asset\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-16 14:55:55');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (157, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"入库\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"path\":\"warehosing\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-16 14:57:29');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (158, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"出库\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"path\":\"exwarehouse\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-16 14:58:06');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (159, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"转仓\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"path\":\"exwarehouse\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-16 14:58:35');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (160, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"转仓\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"path\":\"adjustment\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-16 16:53:36');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (161, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"入库\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"path\":\"warehousing\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-16 16:54:28');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (162, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"AccountBookOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"资产\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"warehouseasset\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-17 23:05:13');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (163, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"DropboxOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"仓库\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"warehouse\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-17 23:05:19');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (164, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":13,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-17 23:33:40');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (165, '部门管理', 2, 'cn.iiss.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"品橙管理有限公司\",\"email\":\"pc@qq.com\",\"leader\":\"刘咏其\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-23 12:12:00');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (166, '部门管理', 2, 'cn.iiss.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"深圳总公司\",\"email\":\"pc@qq.com\",\"leader\":\"刘咏其\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-23 12:12:15');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (167, '部门管理', 2, 'cn.iiss.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"长沙分公司\",\"email\":\"pc@qq.com\",\"leader\":\"刘咏其\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-23 12:12:27');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (168, '部门管理', 2, 'cn.iiss.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"深圳总公司\",\"email\":\"pc@qq.com\",\"leader\":\"刘咏其\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"phone\":\"18960809762\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-23 12:12:37');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (169, '部门管理', 2, 'cn.iiss.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"品橙管理有限公司\",\"email\":\"pc@qq.com\",\"leader\":\"刘咏其\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"18960809762\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-23 12:12:50');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (170, '部门管理', 2, 'cn.iiss.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"长沙分公司\",\"email\":\"pc@qq.com\",\"leader\":\"刘咏其\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"phone\":\"18960809762\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-23 12:12:54');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (171, '用户管理', 2, 'cn.iiss.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":true,\"deptId\":103,\"email\":\"ry@163.com\",\"nickName\":\"刘咏其\",\"params\":{},\"phonenumber\":\"15888888888\",\"postIds\":[1],\"remark\":\"管理员\",\"roleIds\":[1],\"sex\":\"1\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', NULL, 1, '不允许操作超级管理员用户', '2023-03-23 12:13:11');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (172, '用户管理', 3, 'cn.iiss.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/2', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-23 12:13:15');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (173, '用户管理', 2, 'cn.iiss.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"admin\":true,\"deptId\":103,\"email\":\"pc@163.com\",\"nickName\":\"刘咏其\",\"params\":{},\"phonenumber\":\"15888888888\",\"postIds\":[1],\"remark\":\"管理员\",\"roleIds\":[1],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', NULL, 1, '不允许操作超级管理员用户', '2023-03-23 12:13:30');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (174, '菜单管理', 3, 'cn.iiss.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2019', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-01 13:46:02');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (175, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"CarOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2004,\"menuName\":\"物流模块\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"logistics\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-11 17:43:42');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (176, '通知公告', 3, 'cn.iiss.system.controller.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/notice/1,2', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 14:49:55');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (177, '用户头像', 2, 'cn.iiss.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2023-04-21 16:01:30');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (178, '用户头像', 2, 'cn.iiss.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2023-04-21 16:01:34');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (179, '菜单管理', 1, 'cn.iiss.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"转仓\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"path\":\"/adjust\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-23 14:32:26');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (180, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"转仓\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"path\":\"adjust\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-23 14:32:35');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (181, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"转仓\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2006,\"path\":\"adjustment\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-23 14:33:48');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (182, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"短袖\",\"parentId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:16:30');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (183, '分类crud', 2, 'cn.iiss.products.controller.CategoryController.edit()', 'PUT', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"catLevel\":1,\"deleteFlag\":0,\"id\":3,\"name\":\"服装\",\"parentId\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:20:49');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (184, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"男装\",\"parentId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:21:00');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (185, '分类crud', 2, 'cn.iiss.products.controller.CategoryController.edit()', 'PUT', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"catLevel\":1,\"deleteFlag\":0,\"id\":4,\"name\":\"短袖\",\"parentId\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:21:09');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (186, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"女装\",\"parentId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:21:22');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (187, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"连衣裙\",\"parentId\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:21:41');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (188, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"POLO衫\",\"parentId\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:22:21');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (189, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"西服\",\"parentId\":5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:22:46');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (190, '分类crud', 3, 'cn.iiss.products.controller.CategoryController.remove()', 'DELETE', 1, 'admin', NULL, '/product/category/1', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:22:56');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (191, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"产成品\",\"parentId\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:23:33');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (192, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"布条\",\"parentId\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:23:47');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (193, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"原木\",\"parentId\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:24:04');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (194, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"电脑办公\",\"parentId\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:25:01');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (195, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"笔记本\",\"parentId\":13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:25:20');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (196, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"台式机\",\"parentId\":13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:25:43');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (197, '分类crud', 1, 'cn.iiss.products.controller.CategoryController.add()', 'POST', 1, 'admin', NULL, '/product/category', '127.0.0.1', '', '{\"name\":\"服务器/工作站\",\"parentId\":13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:26:31');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (198, '商品管理', 3, 'cn.iiss.products.controller.ProductController.remove()', 'DELETE', 1, 'admin', NULL, '/product/v1/2', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:26:42');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (199, '商品管理', 3, 'cn.iiss.products.controller.ProductController.remove()', 'DELETE', 1, 'admin', NULL, '/product/v1/1', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:26:44');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (200, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"BEZORDUN\",\"categoryId\":4,\"id\":1652878516430258178,\"model\":\"白灰黑\",\"note\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌 \",\"productCode\":\"1001\",\"productName\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"unit\":\"件\"}', NULL, 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'product_name\' at row 1\n### The error may exist in file [/Users/lyq/Desktop/IntelligentLogisticsStorageSystem/iss-center/iiss-modules/iiss-product/target/classes/mapper/product/ProductMapper.xml]\n### The error may involve cn.iiss.products.product.mapper.ProductMapper.insertGoods-Inline\n### The error occurred while setting parameters\n### SQL: insert into product          ( product_code,             product_name,             category_id,             brand,             note,                          model,             unit )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'product_name\' at row 1\n; Data truncation: Data too long for column \'product_name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'product_name\' at row 1', '2023-05-01 11:32:04');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (201, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"BEZORDUN\",\"categoryId\":4,\"id\":1652878971130560514,\"model\":\"白灰黑\",\"note\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"productCode\":\"10001\",\"productName\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"unit\":\"件\"}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'product_specification\' doesn\'t have a default value\n### The error may exist in file [/Users/lyq/Desktop/IntelligentLogisticsStorageSystem/iss-center/iiss-modules/iiss-product/target/classes/mapper/product/ProductMapper.xml]\n### The error may involve cn.iiss.products.product.mapper.ProductMapper.insertGoods-Inline\n### The error occurred while setting parameters\n### SQL: insert into product          ( product_code,             product_name,             category_id,             brand,             note,                          model,             unit )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ? )\n### Cause: java.sql.SQLException: Field \'product_specification\' doesn\'t have a default value\n; Field \'product_specification\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'product_specification\' doesn\'t have a default value', '2023-05-01 11:33:51');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (202, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"BEZORDUN\",\"categoryId\":4,\"id\":1652879262735351809,\"model\":\"白灰黑\",\"note\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"productCode\":\"10001\",\"productName\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"unit\":\"件\"}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'product_specification\' doesn\'t have a default value\n### The error may exist in file [/Users/lyq/Desktop/IntelligentLogisticsStorageSystem/iss-center/iiss-modules/iiss-product/target/classes/mapper/product/ProductMapper.xml]\n### The error may involve cn.iiss.products.product.mapper.ProductMapper.insertGoods-Inline\n### The error occurred while setting parameters\n### SQL: insert into product          ( product_code,             product_name,             category_id,             brand,             note,                          model,             unit )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ? )\n### Cause: java.sql.SQLException: Field \'product_specification\' doesn\'t have a default value\n; Field \'product_specification\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'product_specification\' doesn\'t have a default value', '2023-05-01 11:35:01');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (203, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"BEZORDUN\",\"categoryId\":4,\"id\":1652879563097849858,\"model\":\"白灰黑\",\"note\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"productCode\":\"10001\",\"productName\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"unit\":\"件\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 11:36:13');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (204, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"1\",\"categoryId\":3,\"categoryName\":\"服装\",\"id\":1652912813824483330,\"model\":\"4\",\"note\":\"1\",\"productCode\":\"1002\",\"productName\":\"1\",\"unit\":\"5\"}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n### The error may exist in file [/Users/lyq/Desktop/IntelligentLogisticsStorageSystem/iss-center/iiss-modules/iiss-product/target/classes/mapper/product/ProductMapper.xml]\n### The error may involve cn.iiss.products.product.mapper.ProductMapper.insertGoods-Inline\n### The error occurred while setting parameters\n### SQL: insert into product          ( product_code,             product_name,             category_id,             category_name,             brand,             note,                          model,             model,             unit )           values ( ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ? )\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2023-05-01 13:48:21');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (205, '商品管理', 2, 'cn.iiss.products.controller.ProductController.edit()', 'PUT', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"BEZORDUN\",\"categoryId\":4,\"categoryName\":\"短袖\",\"id\":3,\"model\":\"白灰黑\",\"note\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"productCode\":\"10001\",\"productImg\":\"https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif\",\"productName\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"unit\":\"件\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 13:54:55');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (206, '商品管理', 2, 'cn.iiss.products.controller.ProductController.edit()', 'PUT', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"BEZORDUN\",\"categoryId\":4,\"categoryName\":\"短袖\",\"id\":3,\"model\":\"白灰黑\",\"note\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"productCode\":\"10001\",\"productImg\":\"https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif\",\"productName\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"unit\":\"件\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 14:02:29');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (207, '商品管理', 2, 'cn.iiss.products.controller.ProductController.edit()', 'PUT', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"BEZORDUN\",\"categoryId\":4,\"categoryName\":\"短袖\",\"id\":3,\"model\":\"白灰黑\",\"note\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"productCode\":\"10001\",\"productImg\":\"https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif\",\"productName\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"unit\":\"件\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 14:02:48');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (208, '商品管理', 2, 'cn.iiss.products.controller.ProductController.edit()', 'PUT', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"BEZORDUN\",\"categoryId\":4,\"categoryName\":\"短袖\",\"id\":3,\"model\":\"白灰黑\",\"note\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"productCode\":\"10001\",\"productImg\":\"https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif\",\"productName\":\"BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌\",\"productSpecification\":\"M,XL\",\"unit\":\"件\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 14:03:34');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (209, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"Apple\",\"categoryId\":14,\"categoryName\":\"笔记本\",\"id\":1652917666017648641,\"model\":\"M2芯片\",\"note\":\"Apple【超值补贴】MacBook Pro 13英寸 M2 芯片(8核+10核图形处理器) 8G 256G 深空灰 笔记本 MNEH3CH/A\",\"productCode\":\"10002\",\"productName\":\"Apple【超值补贴】MacBook Pro 13英寸 M2 芯片\",\"productSpecification\":\"8G/16G\",\"purchasePrice\":7700,\"sellingPrice\":8000,\"unit\":\"台\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 14:07:37');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (210, '商品管理', 1, 'cn.iiss.products.controller.ProductController.add()', 'POST', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"华硕\",\"categoryId\":14,\"categoryName\":\"笔记本\",\"id\":1652918567692345345,\"model\":\"i9\",\"note\":\"华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 i9-12900H RTX3070Ti 2.5K 16G 1TB 标配\",\"productCode\":\"10003\",\"productName\":\"华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 \",\"productSpecification\":\"16G/32G\",\"purchasePrice\":12800,\"sellingPrice\":15000,\"unit\":\"台\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 14:11:12');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (211, '商品管理', 2, 'cn.iiss.products.controller.ProductController.edit()', 'PUT', 1, 'admin', NULL, '/product/v1', '127.0.0.1', '', '{\"brand\":\"Apple\",\"categoryId\":14,\"categoryName\":\"笔记本\",\"id\":\"1652917666017648641\",\"model\":\"M2\",\"note\":\"Apple【超值补贴】MacBook Pro 13英寸 M2 芯片(8核+10核图形处理器) 8G 256G 深空灰 笔记本 MNEH3CH/A\",\"productCode\":\"10002\",\"productImg\":\"https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif\",\"productName\":\"Apple【超值补贴】MacBook Pro 13英寸 M2 芯片\",\"productSpecification\":\"8G/16G\",\"purchasePrice\":7700,\"sellingPrice\":8000,\"unit\":\"台\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 14:23:24');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (212, '分类crud', 3, 'cn.iiss.products.controller.CategoryController.remove()', 'DELETE', 1, 'admin', NULL, '/product/category/2', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-01 14:43:50');
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES (213, '菜单管理', 2, 'cn.iiss.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":11,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-04 19:07:50');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-02-07 13:39:53', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-02-07 13:39:53', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-02-07 13:39:53', '', NULL, '超级管理员');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '普通角色', 'common', 2, '2', 0, 0, '0', '0', 'admin', '2023-02-07 13:39:53', 'admin', '2023-03-06 15:36:52', '普通角色');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 100);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 101);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 111);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 112);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 113);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 114);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 116);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1000);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1001);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1002);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1003);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1004);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1005);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1006);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1007);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1008);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1009);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1010);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1011);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1012);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1013);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1014);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1015);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1016);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1017);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1018);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1019);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1020);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1021);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1022);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1023);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1024);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1025);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1026);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1027);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1028);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1029);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1030);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1031);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1032);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1033);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1034);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1035);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1036);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1037);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1038);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1039);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1040);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1041);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1042);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1043);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1044);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1045);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1046);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1047);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1048);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1049);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1050);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1051);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1052);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1053);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1054);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1055);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1056);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1057);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1058);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1059);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1060);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 103, 'admin', '刘咏其', '00', 'cp@163.com', '18960809762', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-02-07 13:39:53', 'admin', '2023-02-07 13:39:53', '', NULL, '管理员');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2023-02-07 13:39:53', 'admin', '2023-02-07 13:39:53', '', NULL, '测试员');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(100) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `warehouse_address` varchar(100) DEFAULT NULL,
  `is_data_info` enum('VALID','INVALID') DEFAULT 'INVALID',
  `valid_status` enum('VALID','INVALID') DEFAULT 'VALID',
  `code` varchar(20) DEFAULT NULL,
  `warehouse_admin_id` bigint(20) DEFAULT NULL,
  `warehouse_admin_user` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `ware_house_level` int(5) DEFAULT '0',
  `lang` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
BEGIN;
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (3, '福建省', 0, '福建省', 'INVALID', 'VALID', '20001', NULL, NULL, NULL, 0, NULL);
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (8, '广东省', 0, '广东省', 'INVALID', 'VALID', '20002', NULL, NULL, NULL, 0, NULL);
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (9, '江苏省', 0, '江苏省', 'INVALID', 'VALID', '20003', NULL, NULL, NULL, 0, NULL);
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (10, '湖南省', 0, '湖南省', 'INVALID', 'VALID', '20004', NULL, NULL, NULL, 0, NULL);
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (11, '江西省', 0, '江西省', 'INVALID', 'VALID', '20005', NULL, NULL, NULL, 0, NULL);
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (12, '厦门市', 3, '福建省厦门市', 'INVALID', 'VALID', '20020', NULL, NULL, '18960809762', 1, NULL);
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (13, '集美理工仓', 12, '福建省厦门市集美区理工路600号', 'VALID', 'VALID', '20200', NULL, NULL, '18960809762', 2, '[118.087898,24.623911]');
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (14, '曾厝垵食品仓', 12, '福建省厦门市曾厝垵国办街旁', 'VALID', 'VALID', '202002', NULL, NULL, '18960809762', 2, '[118.125368,24.425082]');
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (15, '深圳大学粤海校区仓', 8, '广东省深圳市粤海街道深大社区南海大道3688号', 'VALID', 'VALID', '20032', NULL, NULL, '18960809762', 1, '[113.936683,22.532681]');
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (16, '上海东方明珠仓', 9, '上海市浦东新区14号线;2号线旁', 'VALID', 'VALID', '20034', NULL, NULL, '18960809762', 1, '[121.502129,31.238259]');
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (17, '湖南卫视节目制作中心(北仓）', 10, '湖南广播电视台', 'VALID', 'VALID', '200321', NULL, NULL, '18960809762', 1, '[113.045134,28.239155]');
INSERT INTO `warehouse` (`id`, `warehouse_name`, `parent_id`, `warehouse_address`, `is_data_info`, `valid_status`, `code`, `warehouse_admin_id`, `warehouse_admin_user`, `phone`, `ware_house_level`, `lang`) VALUES (18, '南昌画院仓', 11, '南湖路南昌美术馆(墩子塘地铁站3号口步行410米)', 'VALID', 'VALID', '20231', NULL, NULL, '18960809762', 1, '[115.895049,28.682241]');
COMMIT;

-- ----------------------------
-- Table structure for warehouse_asset
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_asset`;
CREATE TABLE `warehouse_asset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `valid_status` enum('VALID','INVALID') DEFAULT 'INVALID',
  `warehouse_id` bigint(20) NOT NULL,
  `warehouse_name` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_img` varchar(200) DEFAULT NULL,
  `product_code` varchar(20) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_specification` varchar(200) DEFAULT NULL,
  `product_num` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of warehouse_asset
-- ----------------------------
BEGIN;
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (11, 'VALID', 13, '集美理工仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'M,XL', '911');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (12, 'VALID', 13, '集美理工仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', '8G/16G', '101');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (13, 'VALID', 13, '集美理工仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', '16G/32G', '289');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (14, 'VALID', 14, '曾厝垵食品仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', '16G/32G', '136');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (15, 'VALID', 14, '曾厝垵食品仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', '8G/16G', '136');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (16, 'VALID', 15, '深圳大学粤海校区仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'M,XL', '0');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (17, 'VALID', 17, '湖南卫视节目制作中心(北仓）', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'M,XL', '23');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (18, 'VALID', 17, '湖南卫视节目制作中心(北仓）', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', '8G/16G', '19');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (19, 'VALID', 17, '湖南卫视节目制作中心(北仓）', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', '16G/32G', '24');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (20, 'VALID', 14, '曾厝垵食品仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'M,XL', '71');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (21, 'VALID', 15, '深圳大学粤海校区仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', '16G/32G', '0');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (22, 'VALID', 15, '深圳大学粤海校区仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', '8G/16G', '2');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (23, 'VALID', 16, '上海东方明珠仓', 3, 'https://img14.360buyimg.com/n0/jfs/t1/58430/8/27080/58786/644a2294F911a97af/257250ca55f3f1a5.jpg.avif', '10001', 'BEZORDUN轻奢品牌短袖T恤男高端夏季薄款修身圆领G字刺绣丝光棉半袖潮牌', 'M,XL', '0');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (24, 'VALID', 16, '上海东方明珠仓', 1652918567692345345, 'https://img11.360buyimg.com/n1/jfs/t1/136073/35/34312/102399/6449d123F1b30334f/181e3392e6decc6b.jpg.avif', '10003', '华硕ProArt创16 酷睿i9高性能轻薄笔记本电脑16英寸设计师本 ', '16G/32G', '0');
INSERT INTO `warehouse_asset` (`id`, `valid_status`, `warehouse_id`, `warehouse_name`, `product_id`, `product_img`, `product_code`, `product_name`, `product_specification`, `product_num`) VALUES (25, 'VALID', 16, '上海东方明珠仓', 1652917666017648641, 'https://img12.360buyimg.com/n1/s450x450_jfs/t1/35753/6/19644/13278/63da3984F134b7655/cf895ac0cbbf8a3c.jpg.avif', '10002', 'Apple【超值补贴】MacBook Pro 13英寸 M2 芯片', '8G/16G', '1787');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
