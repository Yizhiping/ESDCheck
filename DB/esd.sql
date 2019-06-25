/*
Navicat MySQL Data Transfer

Source Server         : 172.22.255.125
Source Server Version : 50096
Source Host           : 172.22.255.125:3306
Source Database       : esd

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-06-25 19:51:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `devlst`
-- ----------------------------
DROP TABLE IF EXISTS `devlst`;
CREATE TABLE `devlst` (
  `id` int(11) NOT NULL auto_increment,
  `factory` varchar(11) default NULL,
  `factoryCode` char(255) default NULL,
  `floor` varchar(11) default NULL,
  `floorCode` char(255) default NULL,
  `Line` varchar(150) default NULL,
  `idx` int(11) default NULL,
  `Station_Name` longtext,
  `Dev_Addr` int(11) default NULL,
  `Dev_Sta` int(11) default NULL,
  `Enable` int(11) default NULL,
  `remark` varchar(150) default NULL,
  `lastupdatetime` datetime default NULL,
  `LastUpdateUnixTime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=958031 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devlst
-- ----------------------------
INSERT INTO `devlst` VALUES ('419844', '五廠', 'F001', '三樓', 'F003', '2Z', '1', '聆彸_04', '4', '1', '1', null, null, '1522050752');
INSERT INTO `devlst` VALUES ('419845', '五廠', 'F001', '三樓', 'F003', '2Z', '3', '聆彸_09', '9', '1', '1', null, null, '1522050752');
INSERT INTO `devlst` VALUES ('419846', '五廠', 'F001', '三樓', 'F003', '2Z', '2', '聆彸_05', '15', '1', '1', null, null, '1522050752');
INSERT INTO `devlst` VALUES ('419847', '五廠', 'F001', '三樓', 'F003', '2Z', '4', '聆彸_10', '11', '1', '1', null, null, '1522050752');
INSERT INTO `devlst` VALUES ('419848', '五廠', 'F001', '三樓', 'F003', '2Z', '5', '聆彸_09', '18', '1', '1', null, null, '1522050752');
INSERT INTO `devlst` VALUES ('666535', '五廠', 'F001', '三樓', 'F003', '3N', '1', '測2', '2', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666536', '五廠', 'F001', '三樓', 'F003', '3N', '5', '組7', '7', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666537', '五廠', 'F001', '三樓', 'F003', '3N', '2', '組4', '4', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666538', '五廠', 'F001', '三樓', 'F003', '3N', '6', '組8', '8', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666539', '五廠', 'F001', '三樓', 'F003', '3N', '3', '組5', '5', '2', '1', null, null, '1532678223');
INSERT INTO `devlst` VALUES ('666540', '五廠', 'F001', '三樓', 'F003', '3N', '7', '組9', '9', '1', '1', null, null, '1532678206');
INSERT INTO `devlst` VALUES ('666541', '五廠', 'F001', '三樓', 'F003', '3N', '4', '組6', '6', '2', '1', null, null, '1532678221');
INSERT INTO `devlst` VALUES ('666542', '五廠', 'F001', '三樓', 'F003', '3N', '8', '組10右3', '10', '2', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666543', '五廠', 'F001', '三樓', 'F003', '3N', '10', '組12左5', '12', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666544', '五廠', 'F001', '三樓', 'F003', '3N', '9', '組11右4', '11', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666545', '五廠', 'F001', '三樓', 'F003', '3N', '11', '組13右5', '13', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666546', '五廠', 'F001', '三樓', 'F003', '3N', '12', '組14右6', '14', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666547', '五廠', 'F001', '三樓', 'F003', '3N', '13', '組19右8', '19', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666548', '五廠', 'F001', '三樓', 'F003', '3N', '14', '組19右8', '19', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666549', '五廠', 'F001', '三樓', 'F003', '3N', '15', '組19右8', '19', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('666550', '五廠', 'F001', '三樓', 'F003', '3N', '16', '組19右8', '19', '1', '1', null, null, '1532678199');
INSERT INTO `devlst` VALUES ('734411', '五廠', 'F001', '三樓', 'F003', '3M', '1', '投板_1', '13', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734412', '五廠', 'F001', '三樓', 'F003', '3M', '3', 'POWER_2', '2', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734413', '五廠', 'F001', '三樓', 'F003', '3M', '2', 'NVM', '7', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734414', '五廠', 'F001', '三樓', 'F003', '3M', '4', 'WifiCal_1', '6', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734415', '五廠', 'F001', '三樓', 'F003', '3M', '5', 'WifiCal_2', '4', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734416', '五廠', 'F001', '三樓', 'F003', '3M', '6', '條碼列印_2', '12', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734417', '五廠', 'F001', '三樓', 'F003', '3M', '7', '放上下蓋_2', '9', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734418', '五廠', 'F001', '三樓', 'F003', '3M', '8', '貼label', '10', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734419', '五廠', 'F001', '三樓', 'F003', '3M', '9', '鎖PCBA', '20', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('734420', '五廠', 'F001', '三樓', 'F003', '3M', '10', '鎖上下蓋_1', '3', '0', '1', null, null, '1536625921');
INSERT INTO `devlst` VALUES ('760973', '五廠', 'F001', '二樓', 'F002', 'Test', '1', '', '1', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760974', '五廠', 'F001', '二樓', 'F002', 'Test', '2', '', '2', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760975', '五廠', 'F001', '二樓', 'F002', 'Test', '3', '', '3', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760976', '五廠', 'F001', '二樓', 'F002', 'Test', '4', '', '4', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760977', '五廠', 'F001', '二樓', 'F002', 'Test', '5', '', '5', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760978', '五廠', 'F001', '二樓', 'F002', 'Test', '6', '', '6', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760979', '五廠', 'F001', '二樓', 'F002', 'Test', '7', '', '7', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760980', '五廠', 'F001', '二樓', 'F002', 'Test', '8', '', '8', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760981', '五廠', 'F001', '二樓', 'F002', 'Test', '9', '', '9', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760982', '五廠', 'F001', '二樓', 'F002', 'Test', '10', '', '10', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760983', '五廠', 'F001', '二樓', 'F002', 'Test', '11', '', '11', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760984', '五廠', 'F001', '二樓', 'F002', 'Test', '12', '', '12', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760985', '五廠', 'F001', '二樓', 'F002', 'Test', '13', '', '13', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760986', '五廠', 'F001', '二樓', 'F002', 'Test', '14', '', '14', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760987', '五廠', 'F001', '二樓', 'F002', 'Test', '15', '', '15', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760988', '五廠', 'F001', '二樓', 'F002', 'Test', '16', '', '16', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760989', '五廠', 'F001', '二樓', 'F002', 'Test', '17', '', '19', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760990', '五廠', 'F001', '二樓', 'F002', 'Test', '18', '', '20', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760991', '五廠', 'F001', '二樓', 'F002', 'Test', '19', '', '21', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760992', '五廠', 'F001', '二樓', 'F002', 'Test', '20', '', '22', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760993', '五廠', 'F001', '二樓', 'F002', 'Test', '21', '', '23', '2', '1', null, null, '1539322667');
INSERT INTO `devlst` VALUES ('760994', '五廠', 'F001', '二樓', 'F002', 'Test', '22', '', '24', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760995', '五廠', 'F001', '二樓', 'F002', 'Test', '23', '', '25', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760996', '五廠', 'F001', '二樓', 'F002', 'Test', '24', '', '26', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760997', '五廠', 'F001', '二樓', 'F002', 'Test', '25', '', '27', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760998', '五廠', 'F001', '二樓', 'F002', 'Test', '26', '', '28', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('760999', '五廠', 'F001', '二樓', 'F002', 'Test', '27', '', '29', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('761000', '五廠', 'F001', '二樓', 'F002', 'Test', '28', '', '30', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('761001', '五廠', 'F001', '二樓', 'F002', 'Test', '29', '', '31', '2', '1', null, null, '1539322648');
INSERT INTO `devlst` VALUES ('770683', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '1', 'FCT(R1)', '1', '3', '1', null, null, '1540080362');
INSERT INTO `devlst` VALUES ('770684', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '2', '蓋鐵蓋（R3）', '3', '3', '1', null, null, '1540080362');
INSERT INTO `devlst` VALUES ('770685', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '3', '卡天線（R4）', '4', '3', '1', null, null, '1540080362');
INSERT INTO `devlst` VALUES ('770686', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '4', '卡燈罩（R5）', '5', '3', '1', null, null, '1540080362');
INSERT INTO `devlst` VALUES ('770687', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '5', '組天線（R6）', '6', '3', '1', null, null, '1540080362');
INSERT INTO `devlst` VALUES ('770688', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '6', '列印Lable（R7）', '7', '3', '1', null, null, '1540080363');
INSERT INTO `devlst` VALUES ('770689', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '7', 'WIFI-PCB1(L2)', '9', '3', '1', null, null, '1540080363');
INSERT INTO `devlst` VALUES ('770690', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '8', '組天線（L4）', '11', '3', '1', null, null, '1540080363');
INSERT INTO `devlst` VALUES ('770691', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '9', '貼散熱塊（L5）', '12', '3', '1', null, null, '1540080363');
INSERT INTO `devlst` VALUES ('770692', '五廠', 'F001', '三樓', 'F003', 'DIP-20', '10', '鎖鐵蓋（L6)', '13', '3', '1', null, null, '1540080364');
INSERT INTO `devlst` VALUES ('788394', '五廠', 'F001', '三樓', 'F003', '3J', '1', '投板', '1', '0', '1', null, null, '1541510663');
INSERT INTO `devlst` VALUES ('788395', '五廠', 'F001', '三樓', 'F003', '3J', '4', 'POWER', '4', '3', '1', null, null, '1541509252');
INSERT INTO `devlst` VALUES ('788396', '五廠', 'F001', '三樓', 'F003', '3J', '2', 'NVM', '2', '0', '1', null, null, '1541510663');
INSERT INTO `devlst` VALUES ('788397', '五廠', 'F001', '三樓', 'F003', '3J', '5', 'WIFI', '5', '3', '1', null, null, '1541509252');
INSERT INTO `devlst` VALUES ('788398', '五廠', 'F001', '三樓', 'F003', '3J', '3', 'NVM', '3', '3', '1', null, null, '1541509252');
INSERT INTO `devlst` VALUES ('788399', '五廠', 'F001', '三樓', 'F003', '3J', '6', 'Wifi', '9', '3', '1', null, null, '1541509253');
INSERT INTO `devlst` VALUES ('788400', '五廠', 'F001', '三樓', 'F003', '3J', '8', 'Wifi', '10', '3', '1', null, null, '1541509253');
INSERT INTO `devlst` VALUES ('788401', '五廠', 'F001', '三樓', 'F003', '3J', '7', 'Wifi', '7', '3', '1', null, null, '1541509253');
INSERT INTO `devlst` VALUES ('788402', '五廠', 'F001', '三樓', 'F003', '3J', '9', 'Wifi', '8', '3', '1', null, null, '1541509253');
INSERT INTO `devlst` VALUES ('788403', '五廠', 'F001', '三樓', 'F003', '3J', '10', 'Wifi', '11', '3', '1', null, null, '1541509254');
INSERT INTO `devlst` VALUES ('788404', '五廠', 'F001', '三樓', 'F003', '3J', '11', 'Wifi', '12', '3', '1', null, null, '1541509254');
INSERT INTO `devlst` VALUES ('788405', '五廠', 'F001', '三樓', 'F003', '3J', '12', 'Beamforming', '13', '3', '1', null, null, '1541509254');
INSERT INTO `devlst` VALUES ('788406', '五廠', 'F001', '三樓', 'F003', '3J', '13', 'Beamforming', '14', '3', '1', null, null, '1541509254');
INSERT INTO `devlst` VALUES ('845367', '康二', null, '一樓', 'F001', 'UC01', '1', 'BT', '1', '3', '1', null, null, '1544943405');
INSERT INTO `devlst` VALUES ('845368', '康二', null, '一樓', 'F001', 'UC01', '3', 'FCT', '12', '3', '1', null, null, '1544943406');
INSERT INTO `devlst` VALUES ('845369', '康二', null, '一樓', 'F001', 'UC01', '2', '裁板', '15', '3', '1', null, null, '1544943406');
INSERT INTO `devlst` VALUES ('845370', '康二', null, '一樓', 'F001', 'UC01', '4', '組裝主板鍵', '2', '3', '1', null, null, '1544943406');
INSERT INTO `devlst` VALUES ('845371', '康二', null, '一樓', 'F001', 'UC01', '5', '組LCD屏', '3', '3', '1', null, null, '1544943406');
INSERT INTO `devlst` VALUES ('845372', '康二', null, '一樓', 'F001', 'UC01', '6', '組喇叭', '17', '3', '1', null, null, '1544943407');
INSERT INTO `devlst` VALUES ('845373', '康二', null, '一樓', 'F001', 'UC01', '7', '列印label', '19', '3', '1', null, null, '1544943407');
INSERT INTO `devlst` VALUES ('845374', '康二', null, '一樓', 'F001', 'UC01', '8', '組麥克風', '6', '3', '1', null, null, '1544943407');
INSERT INTO `devlst` VALUES ('845375', '康二', null, '一樓', 'F001', 'UC01', '9', '點膠', '7', '3', '1', null, null, '1544943407');
INSERT INTO `devlst` VALUES ('845376', '康二', null, '一樓', 'F001', 'UC01', '10', '外觀總檢', '5', '3', '1', null, null, '1544943408');
INSERT INTO `devlst` VALUES ('854517', '六廠', 'F002', '四樓', 'F004', '4F10', '1', 'RF', '1', '1', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854518', '六廠', 'F002', '四樓', 'F004', '4F10', '2', 'RF', '2', '1', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854519', '六廠', 'F002', '四樓', 'F004', '4F10', '3', '组天线', '5', '2', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854520', '六廠', 'F002', '四樓', 'F004', '4F10', '4', '贴机台LABEI', '7', '0', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854521', '六廠', 'F002', '四樓', 'F004', '4F10', '5', '投板', '13', '1', '1', null, null, '1545660992');
INSERT INTO `devlst` VALUES ('854522', '六廠', 'F002', '四樓', 'F004', '4F10', '6', 'WIFI', '14', '1', '1', null, null, '1545661042');
INSERT INTO `devlst` VALUES ('854523', '六廠', 'F002', '四樓', 'F004', '4F10', '7', 'WIFI', '15', '1', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854524', '六廠', 'F002', '四樓', 'F004', '4F10', '8', '组上盖', '17', '1', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854525', '六廠', 'F002', '四樓', 'F004', '4F10', '9', '组天线', '18', '1', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854526', '六廠', 'F002', '四樓', 'F004', '4F10', '10', '组天线', '19', '1', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854527', '六廠', 'F002', '四樓', 'F004', '4F10', '11', '刷机台label', '20', '1', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('854528', '六廠', 'F002', '四樓', 'F004', '4F10', '12', '贴机台label', '22', '0', '1', null, null, '1545660982');
INSERT INTO `devlst` VALUES ('855758', '五廠', 'F001', '二樓', 'F002', '2K', '1', 'FCT(R1)', '1', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855759', '五廠', 'F001', '二樓', 'F002', '2K', '2', 'PCB(R2)', '2', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855760', '五廠', 'F001', '二樓', 'F002', '2K', '3', '組天線1(R3)', '3', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855761', '五廠', 'F001', '二樓', 'F002', '2K', '4', '組天線2(R4)', '4', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855762', '五廠', 'F001', '二樓', 'F002', '2K', '5', '扣天線(R5)', '5', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855763', '五廠', 'F001', '二樓', 'F002', '2K', '6', '組上蓋(R6)', '6', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855764', '五廠', 'F001', '二樓', 'F002', '2K', '7', 'FCT(L1)', '7', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855765', '五廠', 'F001', '二樓', 'F002', '2K', '8', 'PCB(L2)', '8', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855766', '五廠', 'F001', '二樓', 'F002', '2K', '9', '投板(L3)', '9', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855767', '五廠', 'F001', '二樓', 'F002', '2K', '10', '貼膠膜(L4)', '10', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855768', '五廠', 'F001', '二樓', 'F002', '2K', '11', '扣燈罩(L5)', '11', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855769', '五廠', 'F001', '二樓', 'F002', '2K', '12', '扣天線(L6)', '12', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855770', '五廠', 'F001', '二樓', 'F002', '2K', '13', '自動螺絲機(L7)', '13', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('855771', '五廠', 'F001', '二樓', 'F002', '2K', '14', '組上蓋(L8)', '14', '0', '1', null, null, '1546347185');
INSERT INTO `devlst` VALUES ('872783', '五廠', 'F001', '三樓', 'F003', '3W', '5', '組MB板(L5)', '31', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872784', '五廠', 'F001', '三樓', 'F003', '3W', '1', '投板（L1）', '7', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872785', '五廠', 'F001', '三樓', 'F003', '3W', '6', '鎖MB板(L6)', '9', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872786', '五廠', 'F001', '三樓', 'F003', '3W', '2', 'AIOPlus(L2)', '23', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872787', '五廠', 'F001', '三樓', 'F003', '3W', '7', '卡天線(L7)', '10', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872788', '五廠', 'F001', '三樓', 'F003', '3W', '3', 'RF(L3)', '4', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872789', '五廠', 'F001', '三樓', 'F003', '3W', '8', '鎖螺母(L8)', '11', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872790', '五廠', 'F001', '三樓', 'F003', '3W', '4', '(L4)', '30', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872791', '五廠', 'F001', '三樓', 'F003', '3W', '9', '列印label(l9)', '13', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872792', '五廠', 'F001', '三樓', 'F003', '3W', '10', 'Download（R1）', '19', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872793', '五廠', 'F001', '三樓', 'F003', '3W', '12', 'WIFI（R3)', '5', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872794', '五廠', 'F001', '三樓', 'F003', '3W', '11', 'AIOPlus(R2)', '37', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872795', '五廠', 'F001', '三樓', 'F003', '3W', '13', 'CS(R4)', '16', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872796', '五廠', 'F001', '三樓', 'F003', '3W', '14', '鎖HDD支架(R5)', '24', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872797', '五廠', 'F001', '三樓', 'F003', '3W', '15', '鎖HDD(R6)', '20', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872798', '五廠', 'F001', '三樓', 'F003', '3W', '16', '插黑天線(R7)', '8', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872799', '五廠', 'F001', '三樓', 'F003', '3W', '17', '插M卡(R8)', '28', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('872800', '五廠', 'F001', '三樓', 'F003', '3W', '18', '鎖上蓋(R9)', '27', '0', '1', null, null, '1547645651');
INSERT INTO `devlst` VALUES ('878126', '六廠', 'F002', '四樓', 'F004', '4F010', '1', '1', '1', '1', '1', null, null, '1547874588');
INSERT INTO `devlst` VALUES ('878127', '六廠', 'F002', '四樓', 'F004', '4F010', '2', '2', '2', '1', '1', null, null, '1547874799');
INSERT INTO `devlst` VALUES ('878128', '六廠', 'F002', '四樓', 'F004', '4F010', '3', '7', '7', '0', '1', null, null, '1547874588');
INSERT INTO `devlst` VALUES ('878129', '六廠', 'F002', '四樓', 'F004', '4F010', '4', '13', '13', '0', '1', null, null, '1547874588');
INSERT INTO `devlst` VALUES ('878130', '六廠', 'F002', '四樓', 'F004', '4F010', '5', '14', '14', '0', '1', null, null, '1547874588');
INSERT INTO `devlst` VALUES ('878131', '六廠', 'F002', '四樓', 'F004', '4F010', '6', '19', '19', '0', '1', null, null, '1547874588');
INSERT INTO `devlst` VALUES ('878132', '六廠', 'F002', '四樓', 'F004', '4F010', '7', '20', '20', '0', '1', null, null, '1547874588');
INSERT INTO `devlst` VALUES ('882348', '五廠', 'F001', '二樓', 'F002', '2O', '1', 'Station03', '3', '1', '1', null, null, '1548735478');
INSERT INTO `devlst` VALUES ('882349', '五廠', 'F001', '二樓', 'F002', '2O', '2', 'Station04', '1', '2', '1', null, null, '1548735478');
INSERT INTO `devlst` VALUES ('882350', '五廠', 'F001', '二樓', 'F002', '2O', '3', 'Station05', '36', '2', '1', null, null, '1548735478');
INSERT INTO `devlst` VALUES ('882351', '五廠', 'F001', '二樓', 'F002', '2O', '4', 'Station07', '6', '2', '1', null, null, '1548735478');
INSERT INTO `devlst` VALUES ('882352', '五廠', 'F001', '二樓', 'F002', '2O', '5', 'Station09', '26', '2', '1', null, null, '1548735478');
INSERT INTO `devlst` VALUES ('885391', '五廠', 'F001', '二樓', 'F002', '2M', '1', '鎖螺絲-R2', '66', '1', '1', null, null, '1548653105');
INSERT INTO `devlst` VALUES ('885392', '五廠', 'F001', '二樓', 'F002', '2M', '2', '鎖螺絲-R4', '33', '1', '1', null, null, '1548653105');
INSERT INTO `devlst` VALUES ('885393', '五廠', 'F001', '二樓', 'F002', '2M', '3', '?桴_8', '20', '0', '1', null, null, '1548653105');
INSERT INTO `devlst` VALUES ('885394', '五廠', 'F001', '二樓', 'F002', '2M', '4', '鎖螺絲-L1', '7', '1', '1', null, null, '1548653105');
INSERT INTO `devlst` VALUES ('885395', '五廠', 'F001', '二樓', 'F002', '2M', '5', '7', '6', '1', '1', null, null, '1548653105');
INSERT INTO `devlst` VALUES ('893354', '五廠', 'F001', '三樓', 'F003', '3H', '1', 'R_POWER01', '2', '0', '1', null, null, '1550646421');
INSERT INTO `devlst` VALUES ('893355', '五廠', 'F001', '三樓', 'F003', '3H', '2', 'R_組裝01', '4', '0', '1', null, null, '1550646421');
INSERT INTO `devlst` VALUES ('894384', '六廠', 'F002', '四樓', 'F004', '4F14', '1', '投板', '1', '1', '1', null, null, '1550018767');
INSERT INTO `devlst` VALUES ('894385', '六廠', 'F002', '四樓', 'F004', '4F14', '2', '投板', '2', '1', '1', null, null, '1550018740');
INSERT INTO `devlst` VALUES ('894386', '六廠', 'F002', '四樓', 'F004', '4F14', '3', 'BOARD', '3', '1', '1', null, null, '1550018248');
INSERT INTO `devlst` VALUES ('894387', '六廠', 'F002', '四樓', 'F004', '4F14', '4', 'BOARD', '4', '1', '1', null, null, '1550018279');
INSERT INTO `devlst` VALUES ('894388', '六廠', 'F002', '四樓', 'F004', '4F14', '5', 'UPS', '5', '1', '1', null, null, '1550018248');
INSERT INTO `devlst` VALUES ('894389', '六廠', 'F002', '四樓', 'F004', '4F14', '6', 'WIFI', '6', '2', '1', null, null, '1550018717');
INSERT INTO `devlst` VALUES ('894390', '六廠', 'F002', '四樓', 'F004', '4F14', '7', 'WIFI', '7', '1', '1', null, null, '1550018309');
INSERT INTO `devlst` VALUES ('894391', '六廠', 'F002', '四樓', 'F004', '4F14', '8', '散h', '9', '1', '1', null, null, '1550018248');
INSERT INTO `devlst` VALUES ('894392', '六廠', 'F002', '四樓', 'F004', '4F14', '9', '下盖天线', '10', '1', '1', null, null, '1550018436');
INSERT INTO `devlst` VALUES ('894393', '六廠', 'F002', '四樓', 'F004', '4F14', '10', '组下盖天线', '11', '1', '1', null, null, '1550018480');
INSERT INTO `devlst` VALUES ('894394', '六廠', 'F002', '四樓', 'F004', '4F14', '11', '组下盖天线', '12', '1', '1', null, null, '1550018312');
INSERT INTO `devlst` VALUES ('894395', '六廠', 'F002', '四樓', 'F004', '4F14', '12', '刷机台label', '16', '1', '1', null, null, '1550018248');
INSERT INTO `devlst` VALUES ('894396', '六廠', 'F002', '四樓', 'F004', '4F14', '13', '组上盖', '17', '1', '1', null, null, '1550018248');
INSERT INTO `devlst` VALUES ('894397', '六廠', 'F002', '四樓', 'F004', '4F14', '14', '组上盖', '18', '1', '1', null, null, '1550018580');
INSERT INTO `devlst` VALUES ('894398', '六廠', 'F002', '四樓', 'F004', '4F14', '15', '拆解区', '19', '1', '1', null, null, '1550018319');
INSERT INTO `devlst` VALUES ('897559', '五廠', 'F001', '三樓', 'F003', '3F21', '1', '測1', '1', '3', '1', null, null, '1550466512');
INSERT INTO `devlst` VALUES ('897560', '五廠', 'F001', '三樓', 'F003', '3F21', '2', '組5', '5', '3', '1', null, null, '1550466512');
INSERT INTO `devlst` VALUES ('897561', '五廠', 'F001', '三樓', 'F003', '3F21', '3', '組6', '6', '3', '1', null, null, '1550466513');
INSERT INTO `devlst` VALUES ('897562', '五廠', 'F001', '三樓', 'F003', '3F21', '4', '組7', '7', '3', '1', null, null, '1550466513');
INSERT INTO `devlst` VALUES ('897563', '五廠', 'F001', '三樓', 'F003', '3F21', '5', '組8', '8', '3', '1', null, null, '1550466513');
INSERT INTO `devlst` VALUES ('897564', '五廠', 'F001', '三樓', 'F003', '3F21', '6', '組9', '9', '3', '1', null, null, '1550466513');
INSERT INTO `devlst` VALUES ('902901', '五廠', 'F001', '二樓', 'F002', '2B', '1', '?桴_2', '1', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902902', '五廠', 'F001', '二樓', 'F002', '2B', '2', '?桴_3', '69', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902903', '五廠', 'F001', '二樓', 'F002', '2B', '3', '?桴_5', '27', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902904', '五廠', 'F001', '二樓', 'F002', '2B', '4', '?桴_6', '28', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902905', '五廠', 'F001', '二樓', 'F002', '2B', '5', '?桴_7', '30', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902906', '五廠', 'F001', '二樓', 'F002', '2B', '6', '?桴_8', '31', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902907', '五廠', 'F001', '二樓', 'F002', '2B', '7', '?桴_9', '33', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902908', '五廠', 'F001', '二樓', 'F002', '2B', '8', '?桴_10', '38', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902909', '五廠', 'F001', '二樓', 'F002', '2B', '9', '?桴_11', '39', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902910', '五廠', 'F001', '二樓', 'F002', '2B', '10', '?桴_12', '40', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902911', '五廠', 'F001', '二樓', 'F002', '2B', '11', '?桴_13', '41', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902912', '五廠', 'F001', '二樓', 'F002', '2B', '12', '?桴_14', '49', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902913', '五廠', 'F001', '二樓', 'F002', '2B', '13', '?桴_15', '56', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902914', '五廠', 'F001', '二樓', 'F002', '2B', '14', '16', '66', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('902915', '五廠', 'F001', '二樓', 'F002', '2B', '15', '', '67', '1', '1', null, null, '1551144495');
INSERT INTO `devlst` VALUES ('910188', '五廠', 'F001', '三樓', 'F003', '3K', '1', '投板', '3', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('910189', '五廠', 'F001', '三樓', 'F003', '3K', '2', 'NVM', '8', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('910190', '五廠', 'F001', '三樓', 'F003', '3K', '3', 'Power-1', '4', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('910191', '五廠', 'F001', '三樓', 'F003', '3K', '4', 'Power-2', '9', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('910192', '五廠', 'F001', '三樓', 'F003', '3K', '5', 'WIFICal-1', '1', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('910193', '五廠', 'F001', '三樓', 'F003', '3K', '6', 'WIFICal-2', '13', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('910194', '五廠', 'F001', '三樓', 'F003', '3K', '3', 'Power-1', '4', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('910195', '五廠', 'F001', '三樓', 'F003', '3K', '7', '卡上下蓋', '14', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('910196', '五廠', 'F001', '三樓', 'F003', '3K', '8', '鎖上下蓋', '7', '1', '1', null, null, '1551927447');
INSERT INTO `devlst` VALUES ('920079', '五廠', 'F001', '三樓', 'F003', '3I', '1', '投板', '1', '1', '1', null, null, '1553039152');
INSERT INTO `devlst` VALUES ('920080', '五廠', 'F001', '三樓', 'F003', '3I', '2', 'NVM', '3', '1', '1', null, null, '1553039152');
INSERT INTO `devlst` VALUES ('920081', '五廠', 'F001', '三樓', 'F003', '3I', '3', 'Power-01', '2', '1', '1', null, null, '1553039152');
INSERT INTO `devlst` VALUES ('920082', '五廠', 'F001', '三樓', 'F003', '3I', '4', 'WIFICal-01', '6', '1', '1', null, null, '1553039210');
INSERT INTO `devlst` VALUES ('920083', '五廠', 'F001', '三樓', 'F003', '3I', '5', 'WIFICal-02', '26', '1', '1', null, null, '1553039152');
INSERT INTO `devlst` VALUES ('920084', '五廠', 'F001', '三樓', 'F003', '3I', '6', 'BF/M', '19', '1', '1', null, null, '1553039152');
INSERT INTO `devlst` VALUES ('921974', '五廠', 'F001', '三樓', 'F003', '3J', '1', 'NVM', '2', '2', '1', null, null, '1554145120');
INSERT INTO `devlst` VALUES ('921975', '五廠', 'F001', '三樓', 'F003', '3J', '2', 'POWER', '3', '2', '1', null, null, '1554145120');
INSERT INTO `devlst` VALUES ('921976', '五廠', 'F001', '三樓', 'F003', '3J', '3', 'WIFI-3', '9', '1', '1', null, null, '1554145120');
INSERT INTO `devlst` VALUES ('921977', '五廠', 'F001', '三樓', 'F003', '3J', '4', 'ZUZHUANG-1', '7', '0', '1', null, null, '1554145120');
INSERT INTO `devlst` VALUES ('921978', '五廠', 'F001', '三樓', 'F003', '3J', '5', 'ZUZHUANG-2', '10', '0', '1', null, null, '1554145120');
INSERT INTO `devlst` VALUES ('921979', '五廠', 'F001', '三樓', 'F003', '3J', '6', 'ZUZHUANG-3', '8', '0', '1', null, null, '1554145120');
INSERT INTO `devlst` VALUES ('924627', '五廠', 'F001', '三樓', 'F003', '3L', '1', '貼SN1', '15', '1', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924628', '五廠', 'F001', '三樓', 'F003', '3L', '2', 'POWER1', '18', '1', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924629', '五廠', 'F001', '三樓', 'F003', '3L', '3', 'WIFI1', '5', '1', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924630', '五廠', 'F001', '三樓', 'F003', '3L', '4', 'NVM', '20', '2', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924631', '五廠', 'F001', '三樓', 'F003', '3L', '5', '貼SN1', '1', '0', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924632', '五廠', 'F001', '三樓', 'F003', '3L', '6', '上下蓋1', '9', '1', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924633', '五廠', 'F001', '三樓', 'F003', '3L', '7', '鎖螺絲', '11', '1', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924634', '五廠', 'F001', '三樓', 'F003', '3L', '8', 'BACK', '2', '1', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924635', '五廠', 'F001', '三樓', 'F003', '3L', '9', 'BACK', '16', '1', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924636', '五廠', 'F001', '三樓', 'F003', '3L', '10', '貼SN2', '6', '1', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('924637', '五廠', 'F001', '三樓', 'F003', '3L', '11', '鎖上下蓋1', '7', '0', '1', null, null, '1553686465');
INSERT INTO `devlst` VALUES ('932651', '五廠', 'F001', '三樓', 'F003', '3O', '1', 'L_投板1', '13', '3', '1', null, null, '1555286931');
INSERT INTO `devlst` VALUES ('932652', '五廠', 'F001', '三樓', 'F003', '3O', '2', 'L_NVM', '7', '3', '1', null, null, '1555286931');
INSERT INTO `devlst` VALUES ('932653', '五廠', 'F001', '三樓', 'F003', '3O', '3', 'L_Power01', '8', '3', '1', null, null, '1555286932');
INSERT INTO `devlst` VALUES ('934026', '五廠', 'F001', '二樓', 'F002', '2M', '1', '組鐵蓋R2', '30', '3', '1', null, null, '0');
INSERT INTO `devlst` VALUES ('934027', '五廠', 'F001', '二樓', 'F002', '2M', '2', '組下蓋R5', '14', '3', '1', null, null, '0');
INSERT INTO `devlst` VALUES ('934028', '五廠', 'F001', '二樓', 'F002', '2M', '3', '組天線R7', '20', '3', '1', null, null, '0');
INSERT INTO `devlst` VALUES ('934029', '五廠', 'F001', '二樓', 'F002', '2M', '4', '組上蓋R10', '1', '3', '1', null, null, '0');
INSERT INTO `devlst` VALUES ('934030', '五廠', 'F001', '二樓', 'F002', '2M', '5', '組散熱快L1', '10', '3', '1', null, null, '0');
INSERT INTO `devlst` VALUES ('942858', '五廠', 'F001', '二樓', 'F002', '2H', '1', 'Code (R1)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942859', '五廠', 'F001', '二樓', 'F002', '2H', '2', '列印MAIDlabel（R4)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942860', '五廠', 'F001', '二樓', 'F002', '2H', '3', 'FP(R5)', '5', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942861', '五廠', 'F001', '二樓', 'F002', '2H', '4', '登工單(R6)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942862', '五廠', 'F001', '二樓', 'F002', '2H', '5', '組MB板(R7)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942863', '五廠', 'F001', '二樓', 'F002', '2H', '6', '多餘(R8)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942864', '五廠', 'F001', '二樓', 'F002', '2H', '7', '鎖MB板(R9)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942865', '五廠', 'F001', '二樓', 'F002', '2H', '8', '貼label(R10)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942866', '五廠', 'F001', '二樓', 'F002', '2H', '9', '鎖FP板(R11)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942867', '五廠', 'F001', '二樓', 'F002', '2H', '10', '組上蓋(R12)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942868', '五廠', 'F001', '二樓', 'F002', '2H', '11', 'FT(L1)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942869', '五廠', 'F001', '二樓', 'F002', '2H', '12', 'BT(L2)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942870', '五廠', 'F001', '二樓', 'F002', '2H', '13', '鎖MB板(L3)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942871', '五廠', 'F001', '二樓', 'F002', '2H', '14', 'CS(L4)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942872', '五廠', 'F001', '二樓', 'F002', '2H', '15', '貼泡棉(L5)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942873', '五廠', 'F001', '二樓', 'F002', '2H', '16', '組HD(L6)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942874', '五廠', 'F001', '二樓', 'F002', '2H', '17', '鎖HD(L7)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942875', '五廠', 'F001', '二樓', 'F002', '2H', '18', '組按鍵(L9)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942876', '五廠', 'F001', '二樓', 'F002', '2H', '19', '揭雙面皎(L10)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942877', '五廠', 'F001', '二樓', 'F002', '2H', '20', '鎖下蓋(L11)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('942878', '五廠', 'F001', '二樓', 'F002', '2H', '21', '鎖下蓋(L12)', '1', '1', '1', null, null, '1556671881');
INSERT INTO `devlst` VALUES ('952224', '五廠', 'F001', '二樓', 'F002', '2J', '1', 'FCT(L2)', '3', '1', '1', null, null, '1558346782');
INSERT INTO `devlst` VALUES ('952225', '五廠', 'F001', '二樓', 'F002', '2J', '2', ' 燈工單（L4)', '4', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952226', '五廠', 'F001', '二樓', 'F002', '2J', '3', '鎖小鐵蓋(L11)', '19', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952227', '五廠', 'F001', '二樓', 'F002', '2J', '4', ' FCT1(R1)', '31', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952228', '五廠', 'F001', '二樓', 'F002', '2J', '5', ' FCT2(R2)', '10', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952229', '五廠', 'F001', '二樓', 'F002', '2J', '6', ' WIFI(R3)', '29', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952230', '五廠', 'F001', '二樓', 'F002', '2J', '7', ' 蓋大鐵蓋(R4)', '34', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952231', '五廠', 'F001', '二樓', 'F002', '2J', '8', ' 灰天線(R5)', '15', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952232', '五廠', 'F001', '二樓', 'F002', '2J', '9', ' 藍天線(R6)', '11', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952233', '五廠', 'F001', '二樓', 'F002', '2J', '10', ' 貼散熱片(R7)', '32', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952234', '五廠', 'F001', '二樓', 'F002', '2J', '11', ' 組MB板(R8)', '23', '1', '1', null, null, '1558346583');
INSERT INTO `devlst` VALUES ('952885', '五廠', 'F001', '二樓', 'F002', '2F', '1', 'WIFI', '11', '1', '1', null, null, '1558517898');
INSERT INTO `devlst` VALUES ('952886', '五廠', 'F001', '二樓', 'F002', '2F', '3', '灰天線', '16', '1', '1', null, null, '1558517898');
INSERT INTO `devlst` VALUES ('952887', '五廠', 'F001', '二樓', 'F002', '2F', '2', '藍天線', '15', '1', '1', null, null, '1558517898');
INSERT INTO `devlst` VALUES ('952888', '五廠', 'F001', '二樓', 'F002', '2F', '4', 'HDD', '19', '1', '1', null, null, '1558517898');
INSERT INTO `devlst` VALUES ('952889', '五廠', 'F001', '二樓', 'F002', '2F', '5', '全檢', '8', '1', '1', null, null, '1558517898');
INSERT INTO `devlst` VALUES ('956742', '五廠', 'F001', '三樓', 'F003', '3Y', '1', 'R1', '2', '1', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956743', '五廠', 'F001', '三樓', 'F003', '3Y', '2', 'R2', '3', '1', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956744', '五廠', 'F001', '三樓', 'F003', '3Y', '3', 'R4', '8', '2', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956745', '五廠', 'F001', '三樓', 'F003', '3Y', '4', 'R5', '13', '2', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956746', '五廠', 'F001', '三樓', 'F003', '3Y', '5', 'R6', '66', '2', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956747', '五廠', 'F001', '三樓', 'F003', '3Y', '6', 'R3', '16', '2', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956748', '五廠', 'F001', '三樓', 'F003', '3Y', '7', 'L1', '17', '2', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956749', '五廠', 'F001', '三樓', 'F003', '3Y', '8', 'L2', '18', '2', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956750', '五廠', 'F001', '三樓', 'F003', '3Y', '9', 'L3', '19', '1', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('956751', '五廠', 'F001', '三樓', 'F003', '3Y', '10', 'L4', '28', '1', '1', null, null, '1561032456');
INSERT INTO `devlst` VALUES ('957512', '五廠', 'F001', '二樓', 'F002', '2G', '1', 'L1投板', '13', '2', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957513', '五廠', 'F001', '二樓', 'F002', '2G', '2', 'L2FCT', '14', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957514', '五廠', 'F001', '二樓', 'F002', '2G', '3', 'L3WIFI', '16', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957515', '五廠', 'F001', '二樓', 'F002', '2G', '4', 'L4登工單', '11', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957516', '五廠', 'F001', '二樓', 'F002', '2G', '5', 'L5白天縣', '20', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957517', '五廠', 'F001', '二樓', 'F002', '2G', '6', 'L6鎖散熱片', '15', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957518', '五廠', 'F001', '二樓', 'F002', '2G', '7', 'L7鎖HDD', '12', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957519', '五廠', 'F001', '二樓', 'F002', '2G', '8', 'L8連HDD', '1', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957520', '五廠', 'F001', '二樓', 'F002', '2G', '9', 'R1FCT', '25', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957521', '五廠', 'F001', '二樓', 'F002', '2G', '10', 'R2貼LEBE', '24', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957522', '五廠', 'F001', '二樓', 'F002', '2G', '11', 'R4藍天線', '3', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957523', '五廠', 'F001', '二樓', 'F002', '2G', '12', 'R5鎖後視板', '6', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957524', '五廠', 'F001', '二樓', 'F002', '2G', '13', 'R6組FP板', '17', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957525', '五廠', 'F001', '二樓', 'F002', '2G', '14', 'R7全檢', '2', '1', '1', null, null, '1561463218');
INSERT INTO `devlst` VALUES ('957843', '五廠', 'F001', '三樓', 'F003', '3X', '1', 'CS站(L4)', '41', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957844', '五廠', 'F001', '三樓', 'F003', '3X', '2', '組USB模組(L5)', '16', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957845', '五廠', 'F001', '三樓', 'F003', '3X', '3', '組FP板(L6)', '3', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957846', '五廠', 'F001', '三樓', 'F003', '3X', '4', '鎖MB板(L8)', '11', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957847', '五廠', 'F001', '三樓', 'F003', '3X', '5', 'link HDD(L11)', '44', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957848', '五廠', 'F001', '三樓', 'F003', '3X', '6', '鎖後視板接口(L13)', '55', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957849', '五廠', 'F001', '三樓', 'F003', '3X', '7', '投板站(R1)', '7', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957850', '五廠', 'F001', '三樓', 'F003', '3X', '8', 'Down load(R2)', '53', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957851', '五廠', 'F001', '三樓', 'F003', '3X', '9', 'FT站(R3)', '43', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957852', '五廠', 'F001', '三樓', 'F003', '3X', '10', 'FT站1(R4)', '13', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957853', '五廠', 'F001', '三樓', 'F003', '3X', '11', 'CS站(R5)', '32', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957854', '五廠', 'F001', '三樓', 'F003', '3X', '12', '登工單(R6)', '1', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957855', '五廠', 'F001', '三樓', 'F003', '3X', '13', '鎖HD支架1(R8)', '52', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957856', '五廠', 'F001', '三樓', 'F003', '3X', '14', '組後視板(R10)', '8', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957857', '五廠', 'F001', '三樓', 'F003', '3X', '15', '檢查電源(R11)', '6', '1', '1', null, null, '1561463480');
INSERT INTO `devlst` VALUES ('957858', '五廠', 'F001', '二樓', 'F002', '2K', '1', '投板站（L1）', '18', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957859', '五廠', 'F001', '二樓', 'F002', '2K', '2', 'download站（L2）', '30', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957860', '五廠', 'F001', '二樓', 'F002', '2K', '3', 'wifi站（L3）', '24', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957861', '五廠', 'F001', '二樓', 'F002', '2K', '4', 'battery站（L4)', '20', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957862', '五廠', 'F001', '二樓', 'F002', '2K', '5', '登工單站（L5）', '12', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957863', '五廠', 'F001', '二樓', 'F002', '2K', '6', '（L7)', '15', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957864', '五廠', 'F001', '二樓', 'F002', '2K', '7', ' (L8)', '1', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957865', '五廠', 'F001', '二樓', 'F002', '2K', '8', 'FT站（R1)', '33', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957866', '五廠', 'F001', '二樓', 'F002', '2K', '9', 'CS站（R2)', '28', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957867', '五廠', 'F001', '二樓', 'F002', '2K', '10', '組hdd站（R4）', '6', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957868', '五廠', 'F001', '二樓', 'F002', '2K', '11', ' (R6)', '7', '1', '1', null, null, '1561444953');
INSERT INTO `devlst` VALUES ('957869', '五廠', 'F001', '二樓', 'F002', '2J', '1', 'R1', '31', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957870', '五廠', 'F001', '二樓', 'F002', '2J', '2', 'R2', '10', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957871', '五廠', 'F001', '二樓', 'F002', '2J', '3', 'R3', '29', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957872', '五廠', 'F001', '二樓', 'F002', '2J', '4', 'R4', '34', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957873', '五廠', 'F001', '二樓', 'F002', '2J', '5', 'R5', '15', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957874', '五廠', 'F001', '二樓', 'F002', '2J', '6', 'R6', '11', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957875', '五廠', 'F001', '二樓', 'F002', '2J', '7', 'R7', '32', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957876', '五廠', 'F001', '二樓', 'F002', '2J', '8', 'R8', '23', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957877', '五廠', 'F001', '二樓', 'F002', '2J', '9', 'R9', '8', '1', '1', null, null, '1561444971');
INSERT INTO `devlst` VALUES ('957982', null, 'F001', null, 'F003', '3Z', '1', '1', '1', null, null, null, null, '0');
INSERT INTO `devlst` VALUES ('957983', null, 'F001', null, 'F003', '3Z', '2', '2', '2', null, null, null, null, '0');
INSERT INTO `devlst` VALUES ('957984', null, 'F001', null, 'F003', '3Z', '3', '3', '3', null, null, null, null, '0');
INSERT INTO `devlst` VALUES ('957985', '五廠', null, '二樓', null, '2J', '1', 'R1', '31', '1', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('957986', '五廠', null, '二樓', null, '2J', '2', 'R2', '10', '2', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('957987', '五廠', null, '二樓', null, '2J', '3', 'R3', '29', '1', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('957988', '五廠', null, '二樓', null, '2J', '4', 'R4', '34', '1', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('957989', '五廠', null, '二樓', null, '2J', '5', 'R5', '15', '1', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('957990', '五廠', null, '二樓', null, '2J', '6', 'R6', '11', '1', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('957991', '五廠', null, '二樓', null, '2J', '7', 'R7', '32', '1', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('957992', '五廠', null, '二樓', null, '2J', '8', 'R8', '23', '1', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('957993', '五廠', null, '二樓', null, '2J', '9', 'R9', '8', '1', '1', null, null, '1561462968');
INSERT INTO `devlst` VALUES ('958002', '五廠', null, '二樓', null, '2K', '1', '投板站（L1）', '18', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958003', '五廠', null, '二樓', null, '2K', '2', 'download站（L2）', '30', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958004', '五廠', null, '二樓', null, '2K', '3', 'wifi站（L3）', '24', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958005', '五廠', null, '二樓', null, '2K', '4', 'battery站（L4)', '20', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958006', '五廠', null, '二樓', null, '2K', '5', '登工單站（L5）', '12', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958007', '五廠', null, '二樓', null, '2K', '6', '（L7)', '15', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958008', '五廠', null, '二樓', null, '2K', '7', ' (L8)', '1', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958009', '五廠', null, '二樓', null, '2K', '8', 'FT站（R1)', '33', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958010', '五廠', null, '二樓', null, '2K', '9', 'CS站（R2)', '28', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958011', '五廠', null, '二樓', null, '2K', '10', '組hdd站（R4）', '6', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958012', '五廠', null, '二樓', null, '2K', '11', ' (R6)', '7', '1', '1', null, null, '1561463114');
INSERT INTO `devlst` VALUES ('958030', '五廠', null, '三樓', null, '3P', '1', '投板', '16', '1', '1', null, null, '1561463475');

-- ----------------------------
-- Table structure for `events`
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `optype` varchar(50) default NULL,
  `act` varchar(50) default NULL,
  `ip` varchar(50) default NULL,
  `user` varchar(50) default NULL,
  `timestr` varchar(50) default NULL,
  `event` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('1', 'loginOut', 'login', '127.0.0.1', 'test1', '2019-06-25 11:11:24', 'login success');
INSERT INTO `events` VALUES ('2', 'loginOut', 'login', '127.0.0.1', 'test1', '2019-06-25 11:12:35', 'login success');
INSERT INTO `events` VALUES ('3', 'loginOut', 'login', '127.0.0.1', 'test1', '2019-06-25 11:12:36', 'login success');
INSERT INTO `events` VALUES ('4', 'DevOPByLine', 'MultiUpdate', '127.0.0.1', '', '2019-06-25 15:35:38', '1|1,2|2,3|3');
INSERT INTO `events` VALUES ('5', 'DevOPByLine', 'MultiUpdate', '127.0.0.1', '', '2019-06-25 15:43:32', '1|1,2|2,3|3');
INSERT INTO `events` VALUES ('6', 'DevOPByLine', 'MultiUpdate', '127.0.0.1', '', '2019-06-25 15:44:09', '1|1,2|2,3|3');
INSERT INTO `events` VALUES ('7', 'DevOPByLine', 'MultiUpdate', '127.0.0.1', '', '2019-06-25 15:44:11', '1|1,2|2,3|3');
INSERT INTO `events` VALUES ('8', 'Loginout', 'Login', '172.22.72.82', 's16011197', '2019-06-25 17:53:16', 'Login Success');
INSERT INTO `events` VALUES ('9', 'Loginout', 'Login', '172.22.72.82', 's16011197', '2019-06-25 17:53:37', 'Login Success');

-- ----------------------------
-- Table structure for `factorycode`
-- ----------------------------
DROP TABLE IF EXISTS `factorycode`;
CREATE TABLE `factorycode` (
  `code` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  UNIQUE KEY `facId` USING BTREE (`code`),
  UNIQUE KEY `facName` USING BTREE (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factorycode
-- ----------------------------
INSERT INTO `factorycode` VALUES ('F001', 'Fac5');
INSERT INTO `factorycode` VALUES ('F002', 'Fac6');

-- ----------------------------
-- Table structure for `floorcode`
-- ----------------------------
DROP TABLE IF EXISTS `floorcode`;
CREATE TABLE `floorcode` (
  `code` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  UNIQUE KEY `floId` USING BTREE (`code`),
  UNIQUE KEY `floName` USING BTREE (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floorcode
-- ----------------------------
INSERT INTO `floorcode` VALUES ('F001', '1st');
INSERT INTO `floorcode` VALUES ('F002', '2nd');
INSERT INTO `floorcode` VALUES ('F003', '3rd');
INSERT INTO `floorcode` VALUES ('F004', '4th');

-- ----------------------------
-- Table structure for `linestatus`
-- ----------------------------
DROP TABLE IF EXISTS `linestatus`;
CREATE TABLE `linestatus` (
  `id` int(11) NOT NULL auto_increment,
  `factory` varchar(11) default NULL,
  `factoryCode` varchar(255) default NULL,
  `floor` varchar(11) default NULL,
  `floorCode` varchar(255) default NULL,
  `Line` varchar(50) default NULL,
  `Model` varchar(50) default '',
  `Dev_sl` int(11) default NULL,
  `Line_Sta` int(11) default NULL,
  `LastUpdateUnixTime` int(11) default NULL,
  `LastUpdateTime` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DatavalidTime` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89257 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of linestatus
-- ----------------------------
INSERT INTO `linestatus` VALUES ('60063', '五廠', 'F001', '三樓', 'F003', '3N', 'TG3482', '0', '0', '1537317822', null, null);
INSERT INTO `linestatus` VALUES ('66306', '五廠', 'F001', '三樓', 'F003', '3M', 'TG2492', '0', '0', '1537317822', null, null);
INSERT INTO `linestatus` VALUES ('70214', '五廠', 'F001', '三樓', 'F003', 'DIP-20', 'C61W', '0', '0', '1540080364', null, null);
INSERT INTO `linestatus` VALUES ('72138', '五廠', 'F001', '三樓', 'F003', '3J', 'TG862', '0', '1', '1541510663', null, null);
INSERT INTO `linestatus` VALUES ('78080', '康二', null, '一樓', 'F001', 'UC01', 'SAKE', '0', '0', null, null, null);
INSERT INTO `linestatus` VALUES ('79139', '五廠', 'F001', '二樓', 'F002', '2K', 'C61W', '0', '1', '1545730465', null, null);
INSERT INTO `linestatus` VALUES ('80716', '五廠', 'F001', '三樓', 'F003', '3W', 'AllON', '0', '0', '1555092481', null, null);
INSERT INTO `linestatus` VALUES ('81701', '五廠', 'F001', '二樓', 'F002', '2O', 'DCX3520', '0', '1', '1548167913', null, null);
INSERT INTO `linestatus` VALUES ('81972', '五廠', 'F001', '二樓', 'F002', '2M', 'DCX3520', '0', '0', '1560947873', null, null);
INSERT INTO `linestatus` VALUES ('82623', '五廠', 'F001', '三樓', 'F003', '3H', 'AllON', '0', '1', '1550637070', null, null);
INSERT INTO `linestatus` VALUES ('83536', '五廠', 'F001', '二樓', 'F002', '2B', 'IPC4100', '0', '0', '1561366819', null, null);
INSERT INTO `linestatus` VALUES ('84244', '五廠', 'F001', '三樓', 'F003', '3K', 'TG1682', '0', '0', '1551927468', null, null);
INSERT INTO `linestatus` VALUES ('85262', '五廠', 'F001', '三樓', 'F003', '3I', '2482', '0', '1', '1553037853', null, null);
INSERT INTO `linestatus` VALUES ('85440', '五廠', 'F001', '三樓', 'F003', '3J', 'TG862', '0', '0', '1558149034', null, null);
INSERT INTO `linestatus` VALUES ('85737', '五廠', 'F001', '三樓', 'F003', '3L', 'AllON', '0', '0', '1553686480', null, null);
INSERT INTO `linestatus` VALUES ('86523', '五廠', 'F001', '三樓', 'F003', '3O', 'AllON', '0', '0', '1555286936', null, null);
INSERT INTO `linestatus` VALUES ('86664', '五廠', null, '二樓', 'F002', '2M', 'DCX3520', '0', '0', '1555413759', '2019-06-25 16:40:11', null);
INSERT INTO `linestatus` VALUES ('87541', '五廠', 'F001', '二樓', 'F002', '2H', 'Spectrum', '0', '1', '1556596925', null, null);
INSERT INTO `linestatus` VALUES ('87671', '五廠', 'F001', '三樓', 'F003', '3M', '', '0', '0', '1560226807', null, null);
INSERT INTO `linestatus` VALUES ('88463', '五廠', 'F001', '二樓', 'F002', '2J', 'F098', '0', '1', '1558345347', null, null);
INSERT INTO `linestatus` VALUES ('88533', '五廠', 'F001', '二樓', 'F002', '2F', 'HR54', '0', '1', '1558517898', null, null);
INSERT INTO `linestatus` VALUES ('88818', '五廠', 'F001', '二樓', 'F002', '2H', 'TG2492', '0', '1', '1560039769', null, null);
INSERT INTO `linestatus` VALUES ('89004', '五廠', 'F001', '二樓', 'F002', '2C', 'E314', '0', '1', '1560771701', null, null);
INSERT INTO `linestatus` VALUES ('89056', '五廠', 'F001', '三樓', 'F003', '3Y', 'DCX3520', '0', '1', '1560913729', null, null);
INSERT INTO `linestatus` VALUES ('89155', '五廠', 'F001', '二樓', 'F002', '2G', 'HR54-R1', '0', '1', '1561204411', null, null);
INSERT INTO `linestatus` VALUES ('89198', '五廠', 'F001', '二樓', 'F002', '2J', 'E990', '0', '1', '1561443645', null, null);
INSERT INTO `linestatus` VALUES ('89200', '五廠', 'F001', '三樓', 'F003', '3X', 'DCX900', '0', '1', '1561453558', '2019-06-25 17:06:20', null);
INSERT INTO `linestatus` VALUES ('89201', '五廠', 'F001', '二樓', 'F002', '2K', 'DSR830', '0', '1', '1561444483', null, null);
INSERT INTO `linestatus` VALUES ('89246', null, 'F001', null, 'F003', '3Z', 'TG2492', null, '0', null, '2019-06-25 16:53:14', null);
INSERT INTO `linestatus` VALUES ('89247', '五廠', null, '二樓', null, '2J', 'E990', '0', '1', '1561456668', '2019-06-25 18:01:55', null);
INSERT INTO `linestatus` VALUES ('89250', '五廠', null, '二樓', null, '2K', 'DSR830', '0', '0', '1561463355', '2019-06-25 19:49:15', null);
INSERT INTO `linestatus` VALUES ('89256', '五廠', null, '三樓', null, '3P', 'SB8200', '0', '1', '1561463475', '2019-06-25 19:51:15', '0');

-- ----------------------------
-- Table structure for `settingfile`
-- ----------------------------
DROP TABLE IF EXISTS `settingfile`;
CREATE TABLE `settingfile` (
  `id` int(11) NOT NULL auto_increment,
  `factory` varchar(255) character set utf8 NOT NULL,
  `floor` varchar(255) character set utf8 NOT NULL,
  `line` varchar(255) character set utf8 NOT NULL,
  `settingFile_Base64` text NOT NULL,
  `lastUpdateTime` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settingfile
-- ----------------------------
INSERT INTO `settingfile` VALUES ('11', '五廠', '二樓', '2C', 'W4Lk1F1dCiMgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCiMgfLj31E/Wwz /ydDeuMTG5Na1xWPD 7dRLCC1q7K7xNy4xD/Ou9bDLiDH0D/H0D8uIHwKIyArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKI0ZhY3RvcnkgICAgj1OEZdDFz6Isv8nKudPD1tDOxC4gyr7A/TogzuWPUwojRmxvb3IgIAmYx4zT0MXPoiwgv8nKudPD1tDOxC4gyr7A/Togtv6YxwojVGVzdEFkZHIgICCceT 12Na3LCDM7j /ydPDtcTRYtbDtdjWtyzTw y219SE04yk1dJDb22/2i4KI1ZlcmlmeVRpbWVzCZl6sum0zpS1LCDI55l6sulGYWlstcS0zpS1tPPstrXI7LY/1rUsIIR0uMQ/oO6RQi4gyOc/83c/tqi9qNdo1E/Ww57pMSwgsrs/tqgsuPfVvs67P7Ojlf7T0MjLhlS5pNf30OjSqrbMlbo/63gsIL2o12jUT9bDnukyu/K4/LbgLiAgCiNDb21Qb3J0IAkJv9jWxkNvbb/aLCDNqN9e1E C5LncwO3G97Lpv7S688zuPy4KI1JldHJ5CQnWuMHuiMzQ0MqnlKGVctbYP7XEtM6UtSwgvajXaNa1MrvyMy4gCSAgICAKI0RlbGF5Rm9yUmVhZCAgINa4we7Pwt9fuvPXeMihtcTR05VylXLpZywghs7Ou7rBw ssIL2o12jWtTEwMCwgsrs/tqiVcr/J320/vNO08y4gICAgCiNXYXJuaW5nTEVEQWRkciCI876vn/S1xLXY1rcszO4/MjU0LCAjIyMjsru/ydDeuMQjIyMjIyAgICAKI0xpbmUgCQk/83fD 7dRLCDKvsD9OiAyQSwgjKaRqs/Ct70/83fQxc iCiNNb2RlbAkJyfquYZlDt07D 7dRLCDKvsD9OiBFNDYxICi0yz/Tw y21E 2qNd4yKHRYtbDtcTpX pQKSwgjKaRqs/Ct70/83fQxc i1tC1xNRPtqguCiNBdXRvUnVuCbmmxNzpX pQLCDKx7fxuPmT/lRpbWVSYW5nZdRPtqi1xJVy6WcsID/zd9fUhNPpX pQLiAgICAKI0RhdGFVcmwgCZS1k/7Jz4L3tdjWtywgIyMjI7K7v8nQ3rjEIyMjIyMKI0RldGVjdFN0YXR1c1doZW5Qb3dlck9OCbmmxNzpX pQLCDKx7fx1Nqz9cq8u6 Vcrj5k/6g7pFC1E/Ww4jzvq f9C4oxWaw5szuMSwg0MKw5szuMCkKI0lnbm9yZVNlbmRDaGFyYWN0ZXIJCbmmxNzpX pQLCDKx7fxuvbC1LBsy821xNfWt/suKFRYL1JYv8nX1ITTx9CTUbXEUlM0ODXM7jAsILK7v8nX1ITTx9CTUbXEzO4xKQojU3RhdHVzQWZ0ZXJJbml0CQkJ6V Gorrz19SE095EyOu1xKDukUIsIL/JvdPK3Na1IE51bGw6v9XpZiwgSW5pdDqz9cq8u68sIElkbGU6v9XpZiwgU3RvcDog6lDpXdFi1sMKI1t0aW1lUmFuZ2VdIwoj1WbD9zoKI0F1dG9SdW65psTctPLpX5VyLCDI5z/HsJVy6We1vd9f6V/KvJVy6WcsINfUhNPNo9a5LCA/317UT7aolXLpTLrzLCDX1ITT6V Goi4KI7jxyr06CiM/xL/D 7dRID0g6V/KvJVy6Wd8fJVy6Uwohs7Ouzq31j8pfHyC5NRdCiNbP/N30MXPol0ouPHKvTogTGluZS0/w/u3USkjCiPS1ERldulf7l61xJ7p0WLWw9DFz6IsILjxyr0gID/D yA9ILXY1rd8fNW zrvD 7dRCiPG5Mv7nunUT7aoPywKIzo6Ojo6Ojo6Ojo6Otei0uI6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6OiMKIzo6OtFi1sPQxc iP9DoxcXB0NTay/nT0NRPtqg/x7A6OjojCiM6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6OjojCgpbU2V0dGluZ10KRmFjdG9yeSA9pK28dApGbG9vciA9pEe80wpUZXN0QWRkciA9IDEKVmVyaWZ5VGltZXMgPSAyCkNvbVBvcnQgPSBDT00zClJldHJ5ID0gMgpEZWxheUZvclJlYWQgPSAxMDAgICAgCldhcm5pbmdMRURBZGRyID0gMjU0ICAgIApMaW5lID0gMkMKTW9kZWwgPSBFMzE0CkF1dG9SdW4gPSAwICAgCkRhdGFVcmwgPSBodHRwOi8vMTcyLjIyLjI1NS4xMjUvZXNkY2hlY2tfcGhwc2NyaXB0L0RhdGFJbk91dC8KRGV0ZWN0U3RhdHVzV2hlblBvd2VyT04gPSAxCklnbm9yZVNlbmRDaGFyYWN0ZXIgPSAwClN0YXR1c0FmdGVySW5pdCA9IE51bGwKCltUaW1lUmFuZ2VdClJhbmdlMDAgPSAwNzozMHx8MzB8fNK5sOC9u7DgClJhbmdlMDEgPSAxMTo0NXx8NDB8fM7nss0KUmFuZ2UwMiA9IDE0OjMwfHwyMHx8z8LO59Ddz6IKUmFuZ2UwMyA9IDE1OjU0fHwzMHx8ze2yzQpSYW5nZTA0ID0gMjA6MzB8fDMwfHyw17Dgvbu90wpSYW5nZTA1ID0gMjM6NDV8fDQwfHyw69K5ss0KUmFuZ2UwNiA9IDAyOjMwfHwyMHx80rm85NDdz6IKUmFuZ2UwNyA9IDEzOjI3fHwxfHzU57LNCgpbTGluZS0yQ10KRGV2MDA9MDF8fEZDVDFfUjEKRGV2MDE9MDJ8fEZDVDJfUjIKRGV2MDI9MDN8fEZDVDNfUjMKRGV2MDM9MDR8fLLVRlCqT19SNApEZXYwND0wNXx8stWk0b11X1I1CkRldjE5PTA2fHzC6k1Cqk9fUjYKRGV2MDU9MDh8fKX wMtfUjgKRGV2MDY9MDl8fMLqTUKqT19SOQpEZXYwNz0xMHx8stW0srz2tvRfUjEwCkRldjA4PTExfHyn66pPX0wxCkRldjA5PTEyfHxGQ1Q0X0wyCkRldjEwPTEzfHxGQ1Q1X0wzCkRldjExPTE0fHxGQ1Q2X0w0CkRldjEyPTE1fHxGQ1Q3X0w1CkRldjEzPTI0fHyy1bSyvPa29F9MNgpEZXYxND0yMHx8tku yblxqne01l9MNwpEZXYxNT0yM3x8wupNQqpPX0w4CkRldjE2PTIxfHzC6q23rrBfTDkKRGV2MTg9MTZ8fLLVtLK89rb0X0wxMQpBbGxPTj0xMTExMTExMTExMTExMTExMTExCkUzMTQ9MTExMTExMTExMTExMTExMTExMQoKCltFcnJvckNvZGVdCjUwMDEgPSBXZWIgUmVxdWVzdCBzdGF0dXMgZXJyb3Iobm90IDIwMCkKNTAwMSA9IFdlYiByZXNwb25zZSBmb3JtYXQgZXJyb3IoTm90IGZvdW5kIERhdGFCb2R5IGFuZCBTdGF0dXMgS2V5KQo1MDAzID0gV2ViIFN0YXR1cyBjb2RlIGNoZWNrIGVycm9yCjUwMDQgPSBMb2dpbiBGYWlsKHVzZXIgaWQgb3IgcGFzc3dvcmQgZXJyb3IpCjUwMDUgPSB1c2VyIGlkIGlzIGRpc2FibGVk', '2017-10-24 09:35:24');
INSERT INTO `settingfile` VALUES ('12', '五廠', '二樓', '2A', 'W1NldHRpbmddCkZhY3RvcnkgPSCkrbx0CkZsb29yID0gpEe80wpUZXN0QWRkciA9IDEKVmVyaWZ5VGltZXMgPSAxICAgIApDb21Qb3J0ID0gQ09NNQpSZXRyeSA9IDMgICAgCkRlbGF5Rm9yUmVhZCA9IDEwMCAgICAKV2FybmluZ0xFREFkZHIgPSAyNTQgICAgCkxpbmUgPSAyQQpNb2RlbCA9IEU0NjEKQXV0b1J1biA9IDAgICAKRGF0YVVybCA9IGh0dHA6Ly8xNzIuMjIuMjU1LjEyNS9lc2RjaGVja19waHBzY3JpcHQvRGF0YUluT3V0LwpEZXRlY3RTdGF0dXNXaGVuUG93ZXJPTiA9IDEKSWdub3JlU2VuZENoYXJhY3RlciA9IDAKU3RhdHVzQWZ0ZXJJbml0ID0gTnVsbAoKW1RpbWVSYW5nZV0KUmFuZ2UwMCA9IDA3OjMwfHwzMHx80rmw4L27sOAKUmFuZ2UwMSA9IDExOjQ1fHw0MHx8zueyzQpSYW5nZTAyID0gMTQ6MzB8fDIwfHzPws7n0N3PogpSYW5nZTAzID0gMTU6NTR8fDMwfHzN7bLNClJhbmdlMDQgPSAyMDozMHx8MzB8fLDXsOC9u73TClJhbmdlMDUgPSAyMzo0NXx8NDB8fLDr0rmyzQpSYW5nZTA2ID0gMDI6MzB8fDIwfHzSubzk0N3PogpSYW5nZTA3ID0gMTM6Mjd8fDF8fNTnss0KCltMaW5lLTJBXQpEZXYwMCA9IDAxfHyn66pPX1IxCkRldjAxID0gMjF8fEZDVDFfUjIKRGV2MDIgPSAwM3x8RkNUMl9SMwpEZXYwMyA9IDE4fHxGQ1QzX1I0CkRldjA0ID0gMDd8fLtcxUu7XF9SNQpEZXYwNSA9IDIyfHy2S7SyvPak TFfUjYKRGV2MDYgPSAwMnx8tku0srz2pPkyX1I3CkRldjA3ID0gMTJ8fLSmvaa9pF9SOApEZXYwOCA9IDA0fHyy1UZQqk8xX1I5CkRldjA5ID0gMDl8fLZLTGFiZWxfUjEwCkRldjEwID0gMDh8fMLqTUKqTzFfUjExCkRldjExID0gMTF8fMLqTUKqTzJfUjEyCkRldjEyID0gMTV8fMLqpFW7XDFfUjEzCkRldjEzID0gMjN8fMLqpFW7XDJfUjE0CkRldjE0ID0gMTZ8fLZLrUm9pl9MMQpEZXYxNSA9IDIwfHy0oUZQsca9dV9MMgpEZXYxNiA9IDI2fHy4YLZLvaRfTDMKRGV2MTcgPSAwNnx8stVGUKpPMl9MNApEZXYxOCA9IDEwfHyy1UZQqk8zX0w1CkRldjE5ID0gMTR8fLVMpEhfTDYKRGV2MjAgPSAxN3x8stVTRKVkX0w3CkRldjIxID0gMTl8fLLVU0SlZDJfTDgKRGV2MjIgPSAwNXx8wupNQqpPM19MOQpEZXYyMyA9IDEzfHzC6k1Cqk80X0wxMApEZXYyNCA9IDI0fHzC6qRVu1wzX0wxMQpBbGxPTiA9IDExMTExMTExMTExMTExMTExMTExMTExMTEKRTQ2MSA9IDExMTExMTAxMTExMDAxMTExMTEwMTExMTEKCgpbRXJyb3JDb2RlXQo1MDAxID0gV2ViIFJlcXVlc3Qgc3RhdHVzIGVycm9yKG5vdCAyMDApCjUwMDEgPSBXZWIgcmVzcG9uc2UgZm9ybWF0IGVycm9yKE5vdCBmb3VuZCBEYXRhQm9keSBhbmQgU3RhdHVzIEtleSkKNTAwMyA9IFdlYiBTdGF0dXMgY29kZSBjaGVjayBlcnJvcgo1MDA0ID0gTG9naW4gRmFpbCh1c2VyIGlkIG9yIHBhc3N3b3JkIGVycm9yKQo1MDA1ID0gdXNlciBpZCBpcyBkaXNhYmxlZA==', '2017-10-24 10:14:33');
INSERT INTO `settingfile` VALUES ('13', '五廠', '三樓', '3N', 'W4Lk1F1dCiMgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCiMgfLj31E/Wwz /ydDeuMTG5Na1xWPD 7dRLCC1q7K7xNy4xD/Ou9bDLiDH0D/H0D8uIHwKIyArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKI0ZhY3RvcnkgICAgj1OEZdDFz6Isv8nKudPD1tDOxC4gyr7A/TogzuWPUwojRmxvb3IgIAmYx4zT0MXPoiwgv8nKudPD1tDOxC4gyr7A/Togtv6YxwojVGVzdEFkZHIgICCceT 12Na3LCDM7j /ydPDtcTRYtbDtdjWtyzTw y219SE04yk1dJDb22/2i4KI1ZlcmlmeVRpbWVzCZl6sum0zpS1LCDI55l6sulGYWlstcS0zpS1tPPstrXI7LY/1rUsIIR0uMQ/oO6RQi4gyOc/83c/tqi9qNdo1E/Ww57pMSwgsrs/tqgsuPfVvs67P7Ojlf7T0MjLhlS5pNf30OjSqrbMlbo/63gsIL2o12jUT9bDnukyu/K4/LbgLiAgCiNDb21Qb3J0IAkJv9jWxkNvbb/aLCDNqN9e1E C5LncwO3G97Lpv7S688zuPy4KI1JldHJ5CQnWuMHuiMzQ0MqnlKGVctbYP7XEtM6UtSwgvajXaNa1MrvyMy4gCSAgICAKI0RlbGF5Rm9yUmVhZCAgINa4we7Pwt9fuvPXeMihtcTR05VylXLpZywghs7Ou7rBw ssIL2o12jWtTEwMCwgsrs/tqiVcr/J320/vNO08y4gICAgCiNXYXJuaW5nTEVEQWRkciCI876vn/S1xLXY1rcszO4/MjU0LCAjIyMjsru/ydDeuMQjIyMjIyAgICAKI0xpbmUgCQk/83fD 7dRLCDKvsD9OiAyQSwgjKaRqs/Ct70/83fQxc iCiNNb2RlbAkJyfquYZlDt07D 7dRLCDKvsD9OiBFNDYxICi0yz/Tw y21E 2qNd4yKHRYtbDtcTpX pQKSwgjKaRqs/Ct70/83fQxc i1tC1xNRPtqguCiNBdXRvUnVuCbmmxNzpX pQLCDKx7fxuPmT/lRpbWVSYW5nZdRPtqi1xJVy6WcsID/zd9fUhNPpX pQLiAgICAKI0RhdGFVcmwgCZS1k/7Jz4L3tdjWtywgIyMjI7K7v8nQ3rjEIyMjIyMKI0RldGVjdFN0YXR1c1doZW5Qb3dlck9OCbmmxNzpX pQLCDKx7fx1Nqz9cq8u6 Vcrj5k/6g7pFC1E/Ww4jzvq f9C4oxWaw5szuMSwg0MKw5szuMCkKI0lnbm9yZVNlbmRDaGFyYWN0ZXIJCbmmxNzpX pQLCDKx7fxuvbC1LBsy821xNfWt/suKFRYL1JYv8nX1ITTx9CTUbXEUlM0ODXM7jAsILK7v8nX1ITTx9CTUbXEzO4xKQojU3RhdHVzQWZ0ZXJJbml0CQkJ6V Gorrz19SE095EyOu1xKDukUIsIL/JvdPK3Na1IE51bGw6v9XpZiwgSW5pdDqz9cq8u68sIElkbGU6v9XpZiwgU3RvcDog6lDpXdFi1sMKI1t0aW1lUmFuZ2VdIwoj1WbD9zoKI0F1dG9SdW65psTctPLpX5VyLCDI5z/HsJVy6We1vd9f6V/KvJVy6WcsINfUhNPNo9a5LCA/317UT7aolXLpTLrzLCDX1ITT6V Goi4KI7jxyr06CiM/xL/D 7dRID0g6V/KvJVy6Wd8fJVy6Uwohs7Ouzq31j8pfHyC5NRdCiNbP/N30MXPol0ouPHKvTogTGluZS0/w/u3USkjCiPS1ERldulf7l61xJ7p0WLWw9DFz6IsILjxyr0gID/D yA9ILXY1rd8fNW zrvD 7dRCiPG5Mv7nunUT7aoPywKIzo6Ojo6Ojo6Ojo6Otei0uI6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6OiMKIzo6OtFi1sPQxc iP9DoxcXB0NTay/nT0NRPtqg/x7A6OjojCiM6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6OjojCgpbU2V0dGluZ10KRmFjdG9yeSA9IKStvHQKRmxvb3IgPSCkVLzTClRlc3RBZGRyID0gMQpWZXJpZnlUaW1lcyA9IDIgICAgCkNvbVBvcnQgPSBDT00zClJldHJ5ID0gMiAgICAKRGVsYXlGb3JSZWFkID0gMTAwICAgIApXYXJuaW5nTEVEQWRkciA9IDI1NCAgICAKTGluZSA9IDNOCk1vZGVsID0gVEczNDgyCkF1dG9SdW4gPSBGQUxTRSAgICAKRGF0YVVybCA9IGh0dHA6Ly8xNzIuMjIuMjU1LjEyNS9lc2RjaGVja19waHBzY3JpcHQvRGF0YUluT3V0LwpEZXRlY3RTdGF0dXNXaGVuUG93ZXJPTiA9IDAKSWdub3JlU2VuZENoYXJhY3RlciA9IDAKU3RhdHVzQWZ0ZXJJbml0ID0gTnVsbApEYXRhVXBsb2FkRnVuY3Rpb249IDEKCltUaW1lUmFuZ2VdClJhbmdlMDAgPSAwNzozMHx8MzB8fNK5sOC9u7DgClJhbmdlMDEgPSAxMTo0NXx8NDB8fM7nss0KUmFuZ2UwMiA9IDE0OjMwfHwyMHx8z8LO59Ddz6IKUmFuZ2UwMyA9IDE1OjU0fHwzMHx8ze2yzQpSYW5nZTA0ID0gMjA6MzB8fDMwfHyw17Dgvbu90wpSYW5nZTA1ID0gMjM6NDV8fDQwfHyw69K5ss0KUmFuZ2UwNiA9IDAyOjMwfHwyMHx80rm85NDdz6IKUmFuZ2UwNyA9IDEzOjI3fHwxfHzU57LNCgpbTGluZS0zTl0KRGV2MDAgPSAwMXx8tPoxCkRldjAxID0gMDJ8fLT6MgpEZXYwMiA9IDAzfHy0 jMKRGV2MDMgPSAwNHx8stU0IKWqMQpEZXYwNCA9IDA1fHyy1TUgpWsxCkRldjA1ID0gMDZ8fLLVNiClazIKRGV2MDYgPSAwN3x8stU3IKWqMgpEZXYwNyA9IDA4fHyy1TggpaozCkRldjA4ID0gMDl8fLLVOSClqjQKRGV2MDkgPSAxMHx8stUxMKVrMwpEZXYxMCA9IDExfHyy1TExpWs0CkRldjExID0gMTJ8fLLVMTKlqjUKRGV2MTIgPSAxM3x8stUxM6VrNQpEZXYxMyA9IDE0fHyy1TE0pWs2CkRldjE0ID0gMTV8fLLVMTWlqjYKRGV2MTUgPSAxNnx8stUxNqWqNwpEZXYxNiA9IDE3fHyy1TE3pWs3CkRldjE3ID0gMTh8fLLVMTilqjgKRGV2MTggPSAxOXx8stUxOaVrOApBbGxPTiA9IDExMTExMTExMTExMTExMTExMTEKVEczNDgyID0gMDAwMTExMTAxMTExMTEwMTEwMQoKW0Vycm9yQ29kZV0KNTAwMSA9IFdlYiBSZXF1ZXN0IHN0YXR1cyBlcnJvcihub3QgMjAwKQo1MDAxID0gV2ViIHJlc3BvbnNlIGZvcm1hdCBlcnJvcihOb3QgZm91bmQgRGF0YUJvZHkgYW5kIFN0YXR1cyBLZXkpCjUwMDMgPSBXZWIgU3RhdHVzIGNvZGUgY2hlY2sgZXJyb3IKNTAwNCA9IExvZ2luIEZhaWwodXNlciBpZCBvciBwYXNzd29yZCBlcnJvcikKNTAwNSA9IHVzZXIgaWQgaXMgZGlzYWJsZWQ=', '2017-11-14 14:43:52');
INSERT INTO `settingfile` VALUES ('14', '五廠', '二樓', '2D', 'W4Lk1F1dCiMgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCiMgfLj31E/Wwz /ydDeuMTG5Na1xWPD 7dRLCC1q7K7xNy4xD/Ou9bDLiDH0D/H0D8uIHwKIyArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKI0ZhY3RvcnkgICAgj1OEZdDFz6Isv8nKudPD1tDOxC4gyr7A/TogzuWPUwojRmxvb3IgIAmYx4zT0MXPoiwgv8nKudPD1tDOxC4gyr7A/Togtv6YxwojVGVzdEFkZHIgICCceT 12Na3LCDM7j /ydPDtcTRYtbDtdjWtyzTw y219SE04yk1dJDb22/2i4KI1ZlcmlmeVRpbWVzCZl6sum0zpS1LCDI55l6sulGYWlstcS0zpS1tPPstrXI7LY/1rUsIIR0uMQ/oO6RQi4gyOc/83c/tqi9qNdo1E/Ww57pMSwgsrs/tqgsuPfVvs67P7Ojlf7T0MjLhlS5pNf30OjSqrbMlbo/63gsIL2o12jUT9bDnukyu/K4/LbgLiAgCiNDb21Qb3J0IAkJv9jWxkNvbb/aLCDNqN9e1E C5LncwO3G97Lpv7S688zuPy4KI1JldHJ5CQnWuMHuiMzQ0MqnlKGVctbYP7XEtM6UtSwgvajXaNa1MrvyMy4gCSAgICAKI0RlbGF5Rm9yUmVhZCAgINa4we7Pwt9fuvPXeMihtcTR05VylXLpZywghs7Ou7rBw ssIL2o12jWtTEwMCwgsrs/tqiVcr/J320/vNO08y4gICAgCiNXYXJuaW5nTEVEQWRkciCI876vn/S1xLXY1rcszO4/MjU0LCAjIyMjsru/ydDeuMQjIyMjIyAgICAKI0xpbmUgCQk/83fD 7dRLCDKvsD9OiAyQSwgjKaRqs/Ct70/83fQxc iCiNNb2RlbAkJyfquYZlDt07D 7dRLCDKvsD9OiBFNDYxICi0yz/Tw y21E 2qNd4yKHRYtbDtcTpX pQKSwgjKaRqs/Ct70/83fQxc i1tC1xNRPtqguCiNBdXRvUnVuCbmmxNzpX pQLCDKx7fxuPmT/lRpbWVSYW5nZdRPtqi1xJVy6WcsID/zd9fUhNPpX pQLiAgICAKI0RhdGFVcmwgCZS1k/7Jz4L3tdjWtywgIyMjI7K7v8nQ3rjEIyMjIyMKI0RldGVjdFN0YXR1c1doZW5Qb3dlck9OCbmmxNzpX pQLCDKx7fx1Nqz9cq8u6 Vcrj5k/6g7pFC1E/Ww4jzvq f9C4oxWaw5szuMSwg0MKw5szuMCkKI0lnbm9yZVNlbmRDaGFyYWN0ZXIJCbmmxNzpX pQLCDKx7fxuvbC1LBsy821xNfWt/suKFRYL1JYv8nX1ITTx9CTUbXEUlM0ODXM7jAsILK7v8nX1ITTx9CTUbXEzO4xKQojU3RhdHVzQWZ0ZXJJbml0CQkJ6V Gorrz19SE095EyOu1xKDukUIsIL/JvdPK3Na1IE51bGw6v9XpZiwgSW5pdDqz9cq8u68sIElkbGU6v9XpZiwgU3RvcDog6lDpXdFi1sMKI1t0aW1lUmFuZ2VdIwoj1WbD9zoKI0F1dG9SdW65psTctPLpX5VyLCDI5z/HsJVy6We1vd9f6V/KvJVy6WcsINfUhNPNo9a5LCA/317UT7aolXLpTLrzLCDX1ITT6V Goi4KI7jxyr06CiM/xL/D 7dRID0g6V/KvJVy6Wd8fJVy6Uwohs7Ouzq31j8pfHyC5NRdCiNbP/N30MXPol0ouPHKvTogTGluZS0/w/u3USkjCiPS1ERldulf7l61xJ7p0WLWw9DFz6IsILjxyr0gID/D yA9ILXY1rd8fNW zrvD 7dRCiPG5Mv7nunUT7aoPywKIzo6Ojo6Ojo6Ojo6Otei0uI6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6OiMKIzo6OtFi1sPQxc iP9DoxcXB0NTay/nT0NRPtqg/x7A6OjojCiM6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6OjojCgpbU2V0dGluZ10KRmFjdG9yeSA9IKStvHQKRmxvb3IgPSCkR7zTClRlc3RBZGRyID0gMQpWZXJpZnlUaW1lcyA9IDEgICAgCkNvbVBvcnQgPSBDT00zClJldHJ5ID0gMyAgICAKRGVsYXlGb3JSZWFkID0gMTAwICAgIApXYXJuaW5nTEVEQWRkciA9IDI1NCAgICAKTGluZSA9IDJECk1vZGVsID0gRTkxNgpBdXRvUnVuID0gRkFMU0UgICAgCkRhdGFVcmwgPSBodHRwOi8vMTcyLjIyLjI1NS4xMjUvZXNkY2hlY2tfcGhwc2NyaXB0L0RhdGFJbk91dC8KRGV0ZWN0U3RhdHVzV2hlblBvd2VyT04gPSAxCklnbm9yZVNlbmRDaGFyYWN0ZXIgPSAwClN0YXR1c0FmdGVySW5pdCA9IE51bGwKRGF0YVVwbG9hZEZ1bmN0aW9uPSAxCgpbVGltZVJhbmdlXQpSYW5nZTAwID0gMDc6MzB8fDMwfHzSubDgvbuw4ApSYW5nZTAxID0gMTE6NDV8fDQwfHzO57LNClJhbmdlMDIgPSAxNDozMHx8MjB8fM/CzufQ3c iClJhbmdlMDMgPSAxNTo1NHx8MzB8fM3tss0KUmFuZ2UwNCA9IDIwOjMwfHwzMHx8sNew4L27vdMKUmFuZ2UwNSA9IDIzOjQ1fHw0MHx8sOvSubLNClJhbmdlMDYgPSAwMjozMHx8MjB8fNK5vOTQ3c iClJhbmdlMDcgPSAxMzoyN3x8MXx81OeyzQoKW0xpbmUtMkRdCkRldjAwID0gMDJ8fKfrqk9fTDEKRGV2MDEgPSAxNnx8RkNUMV9MMgpEZXYwMiA9IDExfHxGQ1QyX0wzCkRldjAzID0gMDN8fMLqwbOlwKFdTDQpCkRldjA0ID0gMTB8fMCjU0Ok5KxbX0w1CkRldjA1ID0gMDd8fLLVTUKqT19MNgpEZXYwNiA9IDE0fHxGQ1QoUjEpCkRldjA3ID0gMTN8fLtcpHDFS7tcoV1SMikKRGV2MDggPSAwNHx8wurBs6xXoV1SMykKRGV2MDkgPSAxMnx8wurFS6T5oV1SNCkKRGV2MTAgPSAwNnx8u1ykV7tcoV1SNSkKRGV2MTEgPSAwNXx8wuqkVbtcoV1MN6FeCkRldjEyID0gMDZ8fMLqq G1 KpPX1I1CkFsbE9OID0gMTExMTExMTExMTExMQpFOTE2ID0gMTEwMTExMTEwMTEwCgpbRXJyb3JDb2RlXQo1MDAxID0gV2ViIFJlcXVlc3Qgc3RhdHVzIGVycm9yKG5vdCAyMDApCjUwMDEgPSBXZWIgcmVzcG9uc2UgZm9ybWF0IGVycm9yKE5vdCBmb3VuZCBEYXRhQm9keSBhbmQgU3RhdHVzIEtleSkKNTAwMyA9IFdlYiBTdGF0dXMgY29kZSBjaGVjayBlcnJvcgo1MDA0ID0gTG9naW4gRmFpbCh1c2VyIGlkIG9yIHBhc3N3b3JkIGVycm9yKQo1MDA1ID0gdXNlciBpZCBpcyBkaXNhYmxlZA==', '2017-11-14 15:36:20');
INSERT INTO `settingfile` VALUES ('15', '五廠', '二樓', '2I', 'W1NldHRpbmddCkZhY3RvcnkgPSCkrbx0CkZsb29yID0gpEe80wpUZXN0QWRkciA9IDEKVmVyaWZ5VGltZXMgPSAxICAgIApDb21Qb3J0ID0gQ09NMwpSZXRyeSA9IDMgICAgCkRlbGF5Rm9yUmVhZCA9IDEwMCAgICAKV2FybmluZ0xFREFkZHIgPSAyNTQgICAgCkxpbmUgPSAySQpNb2RlbCA9IFNwZWN0cnVtMTEwCkF1dG9SdW4gPSBGQUxTRSAgICAKRGF0YVVybCA9IGh0dHA6Ly8xNzIuMjIuMjU1LjEyNS9lc2RjaGVja19waHBzY3JpcHQvRGF0YUluT3V0LwpEZXRlY3RTdGF0dXNXaGVuUG93ZXJPTiA9IDEKSWdub3JlU2VuZENoYXJhY3RlciA9IDAKU3RhdHVzQWZ0ZXJJbml0ID0gTnVsbApEYXRhVXBsb2FkRnVuY3Rpb24gPSAxCgpbVGltZVJhbmdlXQpSYW5nZTAwID0gMDc6MzB8fDMwfHzSubDgvbuw4ApSYW5nZTAxID0gMTE6NDV8fDQwfHzO57LNClJhbmdlMDIgPSAxNDozMHx8MjB8fM/CzufQ3c iClJhbmdlMDMgPSAxNTo1NHx8MzB8fM3tss0KUmFuZ2UwNCA9IDIwOjMwfHwzMHx8sNew4L27vdMKUmFuZ2UwNSA9IDIzOjQ1fHw0MHx8sOvSubLNClJhbmdlMDYgPSAwMjozMHx8MjB8fNK5vOTQ3c iClJhbmdlMDcgPSAxMzoyN3x8MXx81OeyzQoKW0xpbmUtMkldCkRldjAwID0gMTB8fEZUr7goUjEpCkRldjAxID0gMTR8fLtcpHDFS7tcKFIyKQpEZXYwMiA9IDExfHymQ6ZMTUJJRExhYmVsKFIzKQpEZXYwMyA9IDE1fHxGUK 4KFI0KQpEZXYwNCA9IDIxfHy7XL/8rbHFS7tcKFI1KQpEZXYwNSA9IDI4fHyy1U1CKFI2KQpEZXYwNiA9IDE4fHy2S8L5rbG9pihSNykKRGV2MDcgPSAxN3x8stVGUKpPKFI4KQpEZXYwOCA9IDIyfHy2S6RXu1yzwanUKFI5KQpEZXYwOSA9IDAzfHyy1UZQqk9SMTApCkRldjEwID0gMDR8fMLqRlCqTyhSMTEpCkRldjExID0gMDh8fExpbmtGUChSMTIpCkRldjEyID0gMDZ8fMLqpFW7XChSMTMpCkRldjEzID0gMjB8fEJUKEwxKQpEZXYxNCA9IDI1fHyy1bSyvPa29ChMMikKRGV2MTUgPSAyNHx8Q1MoTDMpCkRldjE2ID0gMjd8fLtcv/ytscVLu1woTDQpCkRldjE3ID0gMTN8fLLVRlCqT6FdTDUpCkRldjE4ID0gMTl8fLZLRlChXUw2KQpEZXYxOSA9IDI5fHzC6kZQKEw3KQpEZXYyMCA9IDAxfHzC6qRXu1yk5KxbKEw4KQpEZXYyMSA9IDAyfHyy1aRXu1woTDkpCkFsbE9OID0gMTExMTExMDExMDExMTExMTExMTExMQpTcGVjdHJ1bTExMCA9IDExMTExMTExMTEwMDAxMTExMTExMDAKCltFcnJvckNvZGVdCjUwMDEgPSBXZWIgUmVxdWVzdCBzdGF0dXMgZXJyb3Iobm90IDIwMCkKNTAwMSA9IFdlYiByZXNwb25zZSBmb3JtYXQgZXJyb3IoTm90IGZvdW5kIERhdGFCb2R5IGFuZCBTdGF0dXMgS2V5KQo1MDAzID0gV2ViIFN0YXR1cyBjb2RlIGNoZWNrIGVycm9yCjUwMDQgPSBMb2dpbiBGYWlsKHVzZXIgaWQgb3IgcGFzc3dvcmQgZXJyb3IpCjUwMDUgPSB1c2VyIGlkIGlzIGRpc2FibGVk', '2017-11-15 17:03:42');
INSERT INTO `settingfile` VALUES ('16', '五廠', '三樓', 'DIP-20', 'NoResultFounLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKI0ZhY3RvcnkgICAgj1OEZdDFz6Isv8nKudPD1tDOxC4gyr7A/TogzuWPUwojRmxvb3IgIAmYx4zT0MXPoiwgv8nKudPD1tDOxC4gyr7A/Togtv6YxwojVGVzdEFkZHIgICCceT 12Na3LCDM7j /ydPDtcTRYtbDtdjWtyzTw y219SE04yk1dJDb22/2i4KI1ZlcmlmeVRpbWVzCZl6sum0zpS1LCDI55l6sulGYWlstcS0zpS1tPP//7XI7LY/1rUsIIR0uMQ/oO6RQi4gyOc/83c/tqi9qNdo1E/Ww57pMSwgsrs/tqgsuPfVvs67P7Ojlf7T0MjLhlS5pNf30OjSqrbMlbo/63gsIL2o12jUT9bDnukyu/K4/LbgLiAgCiNDb21Qb3J0IAkJv9jWxkNvbb/aLCDNqN9e1E//5LncwO3G97Lpv7S688w/PwojUmV0cnkJCda4we6IzNDQyqeUoZVy1tg/tcS0zpS1LCC9qNdo1rUyu/IzLiAJICAgIAojRGVsYXlGb3JSZWFkICAg1rjB7s/C31//89d4yKG1xNHTlXKVculnLCCGzs67usHD6ywgvajXaNa1MTAwLCCyuz 2qJVyv8nfbT 807TzLiAgICAKI1dhcm5pbmdMRURBZGRyIIjzv6 f9LXEtdjWtyzM7j8yNTQsICMjIyOyu7/J0N64xCMjIyMjICAgIAojTGluZSAJCT/zdz///ywgyr7A/TogMkEsIIymkarPwre9P/N30MXPogojTW9kZWwJCcn6rmGZQ7dOw/u3USwgyr7A/TogRTQ2MSAotMs/08PsttRPtqjXeMih0WLWw7XE6V/qUCksIIymkarPwre9P/N30MU/1tC1xNRPtqguCiNBdXRvUnVuCbmmxNzpX///LCDKx7fxuPmT/lRpbWVSYW5nZdRPtqi1xJVy6WcsID/zd9fUhNPpX pQLiAgICAKI0RhdGFVcmwgCZS1P8nP//e12NY/ICMjIyOyu7/J0N64xCMjIyMjCiNEZXRlY3RTdGF0dXNXaGVuUG93ZXJPTgm5psTc6V/qUCwgyse38dTas/XKvLuvlXI/// g7pFC1E/Ww4jzvq f9C4oxWaw5szuMSwg0MKw5szuMCkKI0lnbm9yZVNlbmRDaGFyYWN0ZXIJCbmmxNzpX pQLCDKx7fxuvbC1LBsy821xNfWt/suKFRYL1JYv8nX1ITTx9CTUbXEUlM0ODXM7jAsILK7v8nX1ITTx9CTUbXEzO4xKQojU3RhdHVzQWZ0ZXJJbml0CQkJ6V Gorrz19SE095EyOu1xKDukUIsIL/JvdPK3Na1IE51bGw6v9XpZiwgSW5pdDqz9cq8u68sIElkbGU6v9XpZiwgU3RvcDog6lDpXdFi1sMKI1t0aW1lUmFuZ2VdIwoj1WbD9zoKI0F1dG9SdW65psTctPLpX/9yLCDI5z/HsJVy6We1vd9f6V/KvJVy6WcsINfUhNPNo9a5LCA/317UT7aolXLpTLrzLCDX1ITT6V//PwojuPHKvToKIz/Ev8P7t1EgPSDpX8q8lXLpZ3x8lXLpTCiGzs67OrfWPyl8fILk1F0KI1s/83fQxc iXSi48cq9OiBMaW5lLT/D 7dRKSMKI9LURGV26V///7XEnunRYtbD0MU/LCC48cq9ICA/w/sgPSC12Na3fHzVvs67w/u3UQojxuTL 57p1E 2qD8sCiM6Ojo6Ojo6Ojo6OjrXotLiOjo6Ojo6Ojo6Ojo6Ojo6Ojo6OjojCiM6OjrRYtbD0MU/P9DoxcXB0NTay/nT0NRPtqg/x7A6OjojCiM6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6Ojo6OjojCgpbU2V0dGluZ10KRmFjdG9yeSA9IKStvHQKRmxvb3IgPSCkVLzTClRlc3RBZGRyID0gMQpWZXJpZnlUaW1lcyA9IDIgICAgCkNvbVBvcnQgPSBDT000ClJldHJ5ID0gMiAgICAKRGVsYXlGb3JSZWFkID0gMTAwICAgIApXYXJuaW5nTEVEQWRkciA9IDI1NCAgICAKTGluZSA9IERJUC0yMApNb2RlbCA9IEM2MVcKQXV0b1J1biA9IEZBTFNFICAgIApEYXRhVXJsID0gaHR0cDovLzE3Mi4yMi4yNTUuMTI1L2VzZGNoZWNrX3BocHNjcmlwdC9EYXRhSW5PdXQvCkRldGVjdFN0YXR1c1doZW5Qb3dlck9OID0gMApJZ25vcmVTZW5kQ2hhcmFjdGVyID0gMApTdGF0dXNBZnRlckluaXQgPSBOdWxsCkRhdGFVcGxvYWRGdW5jdGlvbiA9IDEKCltUaW1lUmFuZ2VdClJhbmdlMDAgPSAwNzozMHx8MzB8fNK5sOC9u7DgClJhbmdlMDEgPSAxMTo0NXx8NDB8fM7nss0KUmFuZ2UwMiA9IDE0OjMwfHwyMHx8z8LO59Ddz6IKUmFuZ2UwMyA9IDE1OjU0fHwzMHx8ze2yzQpSYW5nZTA0ID0gMjA6MzB8fDMwfHyw17Dgvbu90wpSYW5nZTA1ID0gMjM6NDV8fDQwfHyw69K5ss0KUmFuZ2UwNiA9IDAyOjMwfHwyMHx80rm85NDdz6IKUmFuZ2UwNyA9IDEzOjI3fHwxfHzU57LNCgpbTGluZS1ESVAtMjBdCkRldjAwID0gMDF8fEZDVChSMSkKRGV2MDEgPSAwMnx8V0lGSShSMikKRGV2MDIgPSAwM3x8u1zFS7tcoV1SM6FeCkRldjAzID0gMDR8fKVkpNG9daFdUjShXgpEZXYwNCA9IDA1fHylZL9PuG6hXVI1oV4KRGV2MDUgPSAwNnx8stWk0b11oV1SNqFeCkRldjA2ID0gMDd8fKZDpkxMYWJsZaFdUjehXgpEZXYwNyA9IDA4fHxXSUZJLVRSVE0oTDEpCkRldjA4ID0gMDl8fFdJRkktUENCMShMMikKRGV2MDkgPSAxMHx8V0lGSS1QQ0IyKEwzKQpEZXYxMCA9IDExfHyy1aTRvXWhXUw0oV4KRGV2MTEgPSAxMnx8tku0srz2tvShXUw1oV4KRGV2MTIgPSAxM3x8wurFS7tcoV1MNikKQWxsT04gPSAxMTExMTExMTExMTExCkM2MVcgPSAxMDExMTExMDExMTAxCgpbRXJyb3JDb2RlXQo1MDAxID0gV2ViIFJlcXVlc3Qgc3RhdHVzIGVycm9yKG5vdCAyMDApCjUwMDEgPSBXZWIgcmVzcG9uc2UgZm9ybWF0IGVycm9yKE5vdCBmb3VuZCBEYXRhQm9keSBhbmQgU3RhdHVzIEtleSkKNTAwMyA9IFdlYiBTdGF0dXMgY29kZSBjaGVjayBlcnJvcgo1MDA0ID0gTG9naW4gRmFpbCh1c2VyIGlkIG9yIHBhc3N3b3JkIGVycm9yKQo1MDA1ID0gdXNlciBpZCBpcyBkaXNhYmxlZA==', '2018-06-01 09:49:18');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `usr` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `usr_name` varchar(50) default NULL,
  `qx` int(11) default NULL,
  `enable` int(11) default NULL,
  `lastlogintime` datetime default NULL,
  `loginTimes` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '9', '1', '2019-06-25 10:55:38', '0');
INSERT INTO `users` VALUES ('2', 'test1', '5a105e8b9d40e1329780d62ea2265d8a', '权限1', '1', '1', '2019-06-25 11:12:36', '19');
INSERT INTO `users` VALUES ('3', 'test2', 'ad0234829205b9033196ba818f7a872b', '权限2', '2', '1', '2019-06-25 10:55:38', '0');
INSERT INTO `users` VALUES ('4', 'test3', '8ad8757baa8564dc136c1e07507f4a98', '权限3', '3', '1', '2019-06-25 10:55:38', '0');
INSERT INTO `users` VALUES ('5', 'Ping_yi', '01f40840e2f16ded1072a20329219fb1', '易志平', '9', '1', '2019-06-25 10:55:38', '0');
INSERT INTO `users` VALUES ('6', 'S16011197', 'e10adc3949ba59abbe56e057f20f883e', '王小六', '3', '1', '2019-06-25 17:53:37', '0');
INSERT INTO `users` VALUES ('7', 'S11003609', '01f40840e2f16ded1072a20329219fb1', '仇振華', '9', '1', '2019-06-25 10:55:38', '0');

-- ----------------------------
-- Table structure for `vars`
-- ----------------------------
DROP TABLE IF EXISTS `vars`;
CREATE TABLE `vars` (
  `id` int(11) NOT NULL auto_increment,
  `idx` int(11) NOT NULL,
  `vKey` char(255) character set utf8 NOT NULL,
  `vVal` char(255) character set utf8 NOT NULL,
  `vCode` char(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vars
-- ----------------------------
INSERT INTO `vars` VALUES ('1', '1', 'Fac', '五廠', 'FAC01');
INSERT INTO `vars` VALUES ('2', '2', 'Fac', '六廠', 'FAC02');
INSERT INTO `vars` VALUES ('3', '1', 'Floor', '一樓', 'FLO01');
INSERT INTO `vars` VALUES ('4', '2', 'Floor', '二樓', 'FLO02');
INSERT INTO `vars` VALUES ('5', '3', 'Floor', '三樓', 'FLO03');
INSERT INTO `vars` VALUES ('6', '4', 'Floor', '四樓', 'FLO04');
