/*
Navicat MySQL Data Transfer

Source Server         : lianjie
Source Server Version : 50525
Source Host           : 127.0.0.1:3306
Source Database       : mydb61

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-10-24 23:31:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bumen_test
-- ----------------------------
DROP TABLE IF EXISTS `bumen_test`;
CREATE TABLE `bumen_test` (
  `id` int(5) NOT NULL,
  `mingcheng` varchar(3) DEFAULT NULL,
  `renshu` int(2) NOT NULL,
  `biaoqian` varchar(100) NOT NULL,
  `shijian` varchar(300) NOT NULL,
  `yipipei` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bumen_test
-- ----------------------------
INSERT INTO `bumen_test` VALUES ('0', 'D1', '15', 'dance,read,paint', 'Thu:10:20-12:00,Fri:14:00-15:40,Mon:19:00-21:00', '170320196,170320199,170320246,170320030,170320035,170320075,170320132,170320140,170320195,170320257,170320036,170320052,170320062,170320074,170320096,');
INSERT INTO `bumen_test` VALUES ('1', 'D2', '13', 'swim,write', 'Mon:14:00-15:40', '170320241,170320163,170320248,170320257,170320018,170320139,170320159,170320161,170320104,170320117,170320244,170320060,170320253,');
INSERT INTO `bumen_test` VALUES ('2', 'D3', '15', 'swim', 'Sat:16:00-17:40,Wen:14:00-15:40', '170320150,170320190,170320203,170320228,170320097,170320124,170320005,170320043,170320107,170320149,170320156,170320211,170320277,170320092,170320230,');
INSERT INTO `bumen_test` VALUES ('3', 'D4', '12', 'dance,sing,basketball', 'Tue:19:00-21:00,Thu:16:00-17:40,Wen:16:00-17:40', '170320143,170320189,170320226,170320256,170320090,170320169,170320200,170320237,170320250,170320023,170320031,170320289,');
INSERT INTO `bumen_test` VALUES ('4', 'D5', '13', 'read', 'Mon:10:20-12:00', '170320164,170320201,170320235,170320178,170320111,170320244,170320006,170320263,170320177,170320004,170320261,170320021,170320288,');
INSERT INTO `bumen_test` VALUES ('5', 'D6', '12', 'write,cook,paint,ride,swim', 'Sat:10:20-12:00', '170320197,170320157,170320003,170320264,170320285,170320293,170320146,170320072,');
INSERT INTO `bumen_test` VALUES ('6', 'D7', '10', 'ride,basketball,sing,swim', 'Mon:10:20-12:00,Fri:14:00-15:40', '170320144,170320164,170320181,170320196,170320201,170320235,170320017,170320035,170320055,170320178,');
INSERT INTO `bumen_test` VALUES ('7', 'D8', '12', 'dance', 'Sat:19:00-21:00,Fri:10:20-12:00', '170320130,170320179,170320180,170320204,170320015,170320274,170320056,170320099,170320100,170320137,170320142,170320178,');
INSERT INTO `bumen_test` VALUES ('8', 'D9', '11', 'swim,basketball,computer', 'Wen:8:20-10:00,Thu:8:20-10:00', '170320191,170320131,170320155,170320171,170320173,170320194,170320195,170320252,170320076,170320010,170320119,');
INSERT INTO `bumen_test` VALUES ('9', 'D10', '12', 'basketball,computer,dance', 'Sat:10:20-12:00', '170320197,170320279,170320287,170320129,170320281,170320145,');
INSERT INTO `bumen_test` VALUES ('10', 'D11', '10', 'paint,ride', 'Tue:10:20-12:00,Sat:10:20-12:00,Tue:19:00-21:00', '170320144,170320189,170320197,170320228,170320256,170320054,170320080,170320129,170320214,170320224,');
INSERT INTO `bumen_test` VALUES ('11', 'D12', '15', 'sing,swim,paint,basketball', 'Fri:16:00-17:40', '170320046,170320009,170320120,170320292,170320041,170320119,170320172,170320057,170320064,170320088,170320210,170320033,170320040,');
INSERT INTO `bumen_test` VALUES ('12', 'D13', '10', 'paint', 'Sun:19:00-21:00,Sat:19:00-21:00', '170320180,170320015,170320271,170320034,170320058,170320082,170320236,170320029,170320295,170320084,');
INSERT INTO `bumen_test` VALUES ('13', 'D14', '13', 'write,paint', 'Mon:16:00-17:40', '170320256,170320136,170320183,170320231,170320238,170320019,170320086,170320141,170320160,170320260,170320066,170320094,170320098,');
INSERT INTO `bumen_test` VALUES ('14', 'D15', '12', 'basketball,swim,cook,sing,write', 'Tue:14:00-15:40,Wen:16:00-17:40', '170320199,170320242,170320090,170320148,170320169,170320243,170320250,170320106,170320107,170320127,170320152,170320170,');
INSERT INTO `bumen_test` VALUES ('15', 'D16', '11', 'paint,cook,read,ride', 'Sun:10:20-12:00,Thu:10:20-12:00', '170320187,170320247,170320259,170320275,170320297,170320067,170320091,170320194,170320265,170320036,170320236,');
INSERT INTO `bumen_test` VALUES ('16', 'D17', '15', 'paint,swim,cook,computer,dance', 'Sun:10:20-12:00', '170320247,170320268,170320297,170320091,170320278,170320024,170320119,170320209,170320234,170320002,170320011,170320016,170320039,170320175,170320069,');
INSERT INTO `bumen_test` VALUES ('17', 'D18', '11', 'sing,computer,paint', 'Fri:14:00-15:40,Sun:16:00-17:40,Sat:19:00-21:00', '170320167,170320180,170320196,170320204,170320269,170320015,170320017,170320109,170320195,170320240,170320266,');
INSERT INTO `bumen_test` VALUES ('18', 'D19', '10', 'ride,write,cook,paint,read', 'Sun:8:20-10:00,Sat:14:00-15:40', '170320189,170320199,170320212,170320220,170320228,170320267,170320270,170320282,170320294,170320085,');
INSERT INTO `bumen_test` VALUES ('19', 'D20', '13', 'swim,computer,paint,sing,basketball', 'Tue:14:00-15:40,Tue:16:00-17:40', '170320199,170320105,170320109,170320147,170320148,170320155,170320082,170320182,170320188,170320221,170320296,170320273,170320038,');

-- ----------------------------
-- Table structure for stu_test
-- ----------------------------
DROP TABLE IF EXISTS `stu_test`;
CREATE TABLE `stu_test` (
  `xuehao` int(10) NOT NULL,
  `jidian` float(3,1) DEFAULT NULL,
  `xingqu` varchar(100) DEFAULT NULL,
  `zhiyuan` varchar(50) NOT NULL,
  `kongxian` varchar(100) DEFAULT NULL,
  `yipipei` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`xuehao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_test
-- ----------------------------
INSERT INTO `stu_test` VALUES ('170320000', '1.0', 'dance,cook', 'D2,D11,D20,D16', 'Sat:16:00-17:40,Wen:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320001', '1.0', 'write,computer,paint,read,basketball', 'D6,D9,D14', 'Sun:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320002', '2.0', 'basketball', 'D1,D2', 'Wen:14:00-15:40,Thu:14:00-15:40,Sun:10:20-12:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320003', '2.0', 'swim,ride', 'D7,D19,D12,D4', 'Sat:10:20-12:00', 'D6,');
INSERT INTO `stu_test` VALUES ('170320004', '1.0', 'basketball,write', 'D10,D14,D7,D1,D15', 'Mon:10:20-12:00,Tue:16:00-17:40,Mon:8:20-10:00', 'D5,');
INSERT INTO `stu_test` VALUES ('170320005', '4.0', 'cook,read', 'D2,D11,D6,D4,D12', 'Wen:14:00-15:40,Tue:8:20-10:00,Thu:14:00-15:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320006', '2.0', 'sing,paint,cook,read,basketball', 'D15,D1,D10', 'Tue:8:20-10:00,Mon:10:20-12:00', 'D5,');
INSERT INTO `stu_test` VALUES ('170320007', '1.0', 'ride,computer,paint', 'D19,D3,D2', 'Sun:16:00-17:40,Tue:16:00-17:40,Fri:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320008', '3.0', 'cook,basketball,write,ride,computer', 'D6,D19,D5,D17,D9', 'Sun:8:20-10:00,Thu:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320009', '4.0', 'paint', 'D1,D4', 'Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320010', '3.0', 'ride,dance,sing,paint,cook', 'D5,D8', 'Wen:8:20-10:00,Thu:8:20-10:00', 'D9,');
INSERT INTO `stu_test` VALUES ('170320011', '2.0', 'sing,ride,computer', 'D12,D10', 'Sun:10:20-12:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320012', '1.0', 'swim,paint,sing,read', 'D10,D13,D18,D7,D6', 'Wen:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320013', '2.0', 'paint,swim,read,ride,computer', 'D7,D18', 'Thu:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320014', '4.0', 'read,computer,ride,sing', 'D14,D7,D16,D8', 'Wen:19:00-21:00,Tue:10:20-12:00,Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320015', '5.0', 'basketball,dance,swim,cook,paint', 'D20', 'Tue:8:20-10:00,Thu:14:00-15:40,Sat:19:00-21:00', 'D8,D13,D18,');
INSERT INTO `stu_test` VALUES ('170320016', '2.0', 'ride,read', 'D14,D16,D1,D13,D15', 'Sun:10:20-12:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320017', '5.0', 'swim,computer,basketball', 'D13,D3,D17,D4,D15', 'Fri:14:00-15:40', 'D18,D7,');
INSERT INTO `stu_test` VALUES ('170320018', '4.0', 'write,computer,ride', 'D15,D14,D3,D2', 'Mon:14:00-15:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320019', '4.0', 'read', 'D7,D10,D16,D9', 'Mon:16:00-17:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320020', '1.0', 'write,read', 'D7,D19,D17', 'Fri:8:20-10:00,Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320021', '1.0', 'computer', 'D10,D2', 'Mon:10:20-12:00', 'D5,');
INSERT INTO `stu_test` VALUES ('170320022', '4.0', 'dance,basketball', 'D11', 'Tue:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320023', '4.0', 'cook', 'D20,D19,D14,D16,D2', 'Tue:10:20-12:00,Tue:19:00-21:00', 'D4,');
INSERT INTO `stu_test` VALUES ('170320024', '3.0', 'sing', 'D5,D9,D10,D8', 'Wen:10:20-12:00,Sun:10:20-12:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320025', '1.0', 'computer,ride', 'D5,D17', 'Fri:10:20-12:00,Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320026', '4.0', 'ride,basketball', 'D3', 'Thu:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320027', '2.0', 'read,ride,computer,write,basketball', 'D7,D4,D15,D20', 'Wen:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320028', '5.0', 'cook', 'D5,D15,D1', 'Wen:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320029', '3.0', 'computer', 'D15,D11,D8,D3,D13', 'Sun:19:00-21:00', 'D13,');
INSERT INTO `stu_test` VALUES ('170320030', '5.0', 'paint,read,ride,basketball,dance', 'D1,D14', 'Wen:8:20-10:00,Mon:10:20-12:00,Thu:10:20-12:00', 'D1,');
INSERT INTO `stu_test` VALUES ('170320031', '4.0', 'cook,write,computer,swim', 'D8,D15', 'Tue:19:00-21:00,Sun:16:00-17:40', 'D4,');
INSERT INTO `stu_test` VALUES ('170320032', '1.0', 'ride,computer,cook,read', 'D10,D5,D16,D1', 'Wen:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320033', '1.0', 'read,paint', 'D5,D19,D8,D7,D9', 'Thu:19:00-21:00,Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320034', '5.0', 'dance,basketball,cook,paint', 'D2,D4', 'Sun:19:00-21:00', 'D13,');
INSERT INTO `stu_test` VALUES ('170320035', '5.0', 'ride,swim', 'D7,D1,D14', 'Sat:8:20-10:00,Fri:14:00-15:40,Sun:14:00-15:40', 'D7,D1,');
INSERT INTO `stu_test` VALUES ('170320036', '4.0', 'write,swim', 'D14,D10', 'Thu:10:20-12:00,Sun:16:00-17:40,Thu:14:00-15:40', 'D1,D16,');
INSERT INTO `stu_test` VALUES ('170320037', '2.0', 'cook,ride,sing,dance,basketball', 'D18,D8,D19,D7,D17', 'Tue:19:00-21:00,Mon:19:00-21:00,Fri:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320038', '2.0', 'ride,read,basketball', 'D13,D16,D10,D20,D5', 'Mon:19:00-21:00,Tue:14:00-15:40', 'D20,');
INSERT INTO `stu_test` VALUES ('170320039', '2.0', 'ride', 'D6,D13,D3,D12,D5', 'Sun:10:20-12:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320040', '1.0', 'read,ride,write', 'D9,D14,D19,D5,D6', 'Fri:16:00-17:40,Sat:14:00-15:40,Fri:19:00-21:00', 'D12,');
INSERT INTO `stu_test` VALUES ('170320041', '3.0', 'dance,basketball,computer', 'D4,D17', 'Mon:16:00-17:40,Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320042', '1.0', 'computer,read,paint', 'D18,D1,D15', 'Thu:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320043', '4.0', 'ride,dance', 'D17,D16,D12', 'Wen:14:00-15:40,Fri:10:20-12:00,Sun:16:00-17:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320044', '1.0', 'sing,cook,ride,paint,read', 'D1,D20,D2', 'Sun:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320045', '2.0', 'computer,read,dance', 'D20,D19', 'Sun:8:20-10:00,Wen:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320046', '5.0', 'dance', 'D8,D14', 'Wen:10:20-12:00,Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320047', '2.0', 'paint,read,write', 'D12,D7,D8,D13,D10', 'Wen:14:00-15:40,Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320048', '2.0', 'ride,swim,sing,paint', 'D17', 'Fri:19:00-21:00,Thu:19:00-21:00,Tue:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320049', '1.0', 'sing,read,dance,computer,ride', 'D19,D3,D18,D14', 'Tue:10:20-12:00,Thu:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320050', '3.0', 'read,write', 'D5,D4,D9', 'Tue:19:00-21:00,Fri:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320051', '5.0', 'computer', 'D14,D18,D4', 'Wen:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320052', '4.0', 'write,sing', 'D13,D17,D18,D3,D7', 'Mon:19:00-21:00', 'D1,');
INSERT INTO `stu_test` VALUES ('170320053', '3.0', 'read,ride,sing,dance', 'D7', 'Thu:14:00-15:40,Tue:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320054', '5.0', 'cook,paint,basketball,read', 'D11', 'Tue:10:20-12:00', 'D11,');
INSERT INTO `stu_test` VALUES ('170320055', '5.0', 'ride,sing,computer,paint', 'D4', 'Mon:10:20-12:00,Sat:8:20-10:00', 'D7,');
INSERT INTO `stu_test` VALUES ('170320056', '5.0', 'cook', 'D1,D2,D8,D7,D3', 'Tue:19:00-21:00,Fri:10:20-12:00', 'D8,');
INSERT INTO `stu_test` VALUES ('170320057', '2.0', 'read', 'D5,D8,D6,D4,D12', 'Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320058', '4.0', 'basketball,sing,write,read,swim', 'D1,D18', 'Sat:19:00-21:00,Fri:10:20-12:00', 'D13,');
INSERT INTO `stu_test` VALUES ('170320059', '3.0', 'sing', 'D8,D7,D6,D11', 'Mon:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320060', '2.0', 'read,cook,write', 'D6', 'Mon:14:00-15:40,Tue:16:00-17:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320061', '2.0', 'basketball,computer,dance', 'D2,D14,D18', 'Sun:19:00-21:00,Tue:10:20-12:00,Wen:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320062', '4.0', 'write', 'D1,D19,D2,D12,D5', 'Fri:14:00-15:40,Mon:19:00-21:00,Wen:10:20-12:00', 'D1,');
INSERT INTO `stu_test` VALUES ('170320063', '1.0', 'dance,write,read,ride,sing', 'D5,D10,D1', 'Sat:8:20-10:00,Thu:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320064', '2.0', 'swim', 'D13', 'Fri:16:00-17:40,Fri:14:00-15:40,Wen:8:20-10:00', 'D12,');
INSERT INTO `stu_test` VALUES ('170320065', '2.0', 'swim,dance,ride,paint,computer', 'D5', 'Sat:8:20-10:00,Sat:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320066', '1.0', 'read,write', 'D2,D14', 'Fri:10:20-12:00,Mon:16:00-17:40,Sun:10:20-12:00', 'D14,');
INSERT INTO `stu_test` VALUES ('170320067', '5.0', 'computer,sing,cook,paint,read', 'D2,D6', 'Thu:10:20-12:00', 'D16,');
INSERT INTO `stu_test` VALUES ('170320068', '4.0', 'swim', 'D4,D13,D20,D16', 'Fri:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320069', '1.0', 'basketball', 'D3', 'Mon:19:00-21:00,Sun:10:20-12:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320070', '1.0', 'dance', 'D10', 'Tue:14:00-15:40,Sun:16:00-17:40,Sun:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320071', '4.0', 'ride', 'D11,D19,D14,D18,D5', 'Tue:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320072', '1.0', 'write', 'D6', 'Sat:10:20-12:00,Wen:19:00-21:00', 'D6,');
INSERT INTO `stu_test` VALUES ('170320073', '1.0', 'read,sing,basketball,write', 'D19,D16', 'Tue:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320074', '4.0', 'sing,read', 'D14,D18,D7', 'Mon:19:00-21:00', 'D1,');
INSERT INTO `stu_test` VALUES ('170320075', '5.0', 'paint,write,swim', 'D7,D11,D9', 'Fri:8:20-10:00,Mon:19:00-21:00', 'D1,');
INSERT INTO `stu_test` VALUES ('170320076', '4.0', 'basketball,ride', 'D6,D14,D8,D10,D7', 'Thu:8:20-10:00', 'D9,');
INSERT INTO `stu_test` VALUES ('170320077', '1.0', 'basketball,sing,ride,cook,swim', 'D13,D19,D6,D5', 'Thu:8:20-10:00,Fri:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320078', '2.0', 'ride,write,computer', 'D20,D16,D19,D11,D17', 'Sat:8:20-10:00,Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320079', '1.0', 'read,paint', 'D13', 'Mon:8:20-10:00,Sun:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320080', '5.0', 'basketball,cook,write,paint,swim', 'D16,D5,D6,D12', 'Sat:16:00-17:40,Tue:10:20-12:00,Mon:8:20-10:00', 'D11,');
INSERT INTO `stu_test` VALUES ('170320081', '4.0', 'cook,write', 'D7,D4,D12,D11,D8', 'Tue:10:20-12:00,Thu:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320082', '4.0', 'paint,basketball', 'D2', 'Tue:14:00-15:40,Sat:19:00-21:00,Sun:19:00-21:00', 'D13,D20,');
INSERT INTO `stu_test` VALUES ('170320083', '5.0', 'swim', 'D11,D16,D4,D1', 'Wen:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320084', '3.0', 'read,dance,basketball', 'D11', 'Sun:19:00-21:00', 'D13,');
INSERT INTO `stu_test` VALUES ('170320085', '5.0', 'computer,ride,basketball', 'D3,D9', 'Sat:14:00-15:40,Sun:8:20-10:00,Thu:14:00-15:40', 'D19,');
INSERT INTO `stu_test` VALUES ('170320086', '4.0', 'paint,write,cook,dance,ride', 'D18,D20', 'Mon:16:00-17:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320087', '4.0', 'read,ride', 'D20', 'Thu:19:00-21:00,Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320088', '2.0', 'basketball,computer', 'D1,D5,D7,D12', 'Tue:16:00-17:40,Fri:16:00-17:40,Wen:14:00-15:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320089', '2.0', 'cook,paint', 'D3,D4,D16,D2', 'Tue:14:00-15:40,Thu:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320090', '5.0', 'swim,computer,sing,basketball', 'D19,D16', 'Thu:14:00-15:40,Wen:8:20-10:00,Wen:16:00-17:40', 'D15,D4,');
INSERT INTO `stu_test` VALUES ('170320091', '5.0', 'dance,sing,cook', 'D11,D4', 'Sun:10:20-12:00,Fri:19:00-21:00', 'D16,D17,');
INSERT INTO `stu_test` VALUES ('170320092', '3.0', 'cook', 'D7,D11', 'Sun:16:00-17:40,Wen:14:00-15:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320093', '2.0', 'paint,basketball', 'D12', 'Fri:8:20-10:00,Thu:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320094', '1.0', 'ride,cook', 'D13,D8', 'Mon:16:00-17:40,Sun:16:00-17:40,Thu:19:00-21:00', 'D14,');
INSERT INTO `stu_test` VALUES ('170320095', '1.0', 'paint', 'D9', 'Thu:16:00-17:40,Thu:14:00-15:40,Fri:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320096', '4.0', 'dance', 'D15,D8,D2,D7', 'Thu:10:20-12:00', 'D1,');
INSERT INTO `stu_test` VALUES ('170320097', '5.0', 'ride,basketball,computer', 'D3,D18,D15,D9', 'Tue:16:00-17:40,Wen:14:00-15:40,Mon:10:20-12:00', 'D3,');
INSERT INTO `stu_test` VALUES ('170320098', '1.0', 'write,computer,swim', 'D12', 'Sat:14:00-15:40,Mon:16:00-17:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320099', '5.0', 'sing,swim,cook,paint,write', 'D9,D20,D10', 'Fri:10:20-12:00', 'D8,');
INSERT INTO `stu_test` VALUES ('170320100', '5.0', 'sing', 'D14,D4,D7', 'Fri:10:20-12:00', 'D8,');
INSERT INTO `stu_test` VALUES ('170320101', '1.0', 'cook,read,sing', 'D6,D11', 'Tue:19:00-21:00,Sun:16:00-17:40,Tue:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320102', '1.0', 'computer', 'D16', 'Sat:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320103', '2.0', 'swim,computer,read,dance,write', 'D7,D6,D9,D5', 'Sat:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320104', '3.0', 'sing,read,dance', 'D18,D13,D7,D19,D11', 'Mon:14:00-15:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320105', '5.0', 'ride,sing,basketball', 'D8', 'Tue:16:00-17:40,Wen:19:00-21:00', 'D20,');
INSERT INTO `stu_test` VALUES ('170320106', '4.0', 'sing,paint,computer,basketball,cook', 'D13,D8,D19', 'Wen:16:00-17:40', 'D15,');
INSERT INTO `stu_test` VALUES ('170320107', '4.0', 'dance,ride,read,write', 'D2', 'Wen:14:00-15:40,Wen:16:00-17:40', 'D3,D15,');
INSERT INTO `stu_test` VALUES ('170320108', '3.0', 'swim', 'D14,D13,D16', 'Thu:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320109', '5.0', 'paint,cook,computer', 'D13,D7', 'Tue:14:00-15:40,Fri:19:00-21:00,Sun:16:00-17:40', 'D18,D20,');
INSERT INTO `stu_test` VALUES ('170320110', '2.0', 'write,computer', 'D20,D3,D10', 'Sun:16:00-17:40,Thu:10:20-12:00,Wen:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320111', '3.0', 'computer,read,paint,cook,sing', 'D17', 'Fri:14:00-15:40,Mon:10:20-12:00', 'D5,');
INSERT INTO `stu_test` VALUES ('170320112', '4.0', 'sing,cook', 'D16', 'Thu:14:00-15:40,Mon:19:00-21:00,Sun:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320113', '3.0', 'dance,read,computer,cook', 'D10,D20,D4,D18,D13', 'Thu:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320114', '5.0', 'read,computer', 'D16,D10,D14,D12,D17', 'Sat:14:00-15:40,Thu:14:00-15:40,Fri:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320115', '1.0', 'dance,read', 'D4,D12,D5,D10', 'Fri:19:00-21:00,Thu:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320116', '2.0', 'basketball,read', 'D7,D14,D5,D10', 'Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320117', '3.0', 'read,cook', 'D14,D20,D10,D13', 'Mon:14:00-15:40,Wen:10:20-12:00', 'D2,');
INSERT INTO `stu_test` VALUES ('170320118', '2.0', 'computer,sing', 'D3,D19,D16', 'Tue:8:20-10:00,Sun:19:00-21:00,Tue:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320119', '3.0', 'read,dance,write,ride,sing', 'D16,D6,D8,D3', 'Wen:8:20-10:00,Fri:16:00-17:40,Sun:10:20-12:00', 'D9,D12,D17,');
INSERT INTO `stu_test` VALUES ('170320120', '4.0', 'swim,dance', 'D1', 'Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320121', '4.0', 'paint,sing,swim,cook', 'D8,D12,D11,D13', 'Sun:16:00-17:40,Thu:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320122', '2.0', 'sing,paint,swim,cook,basketball', 'D14', 'Tue:14:00-15:40,Sun:8:20-10:00,Sun:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320123', '4.0', 'sing', 'D10', 'Sat:8:20-10:00,Sun:16:00-17:40,Mon:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320124', '5.0', 'computer', 'D20,D17,D2,D3', 'Fri:14:00-15:40,Sat:16:00-17:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320125', '1.0', 'read,dance', 'D19,D4,D6,D11,D9', 'Mon:16:00-17:40,Thu:14:00-15:40,Tue:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320126', '1.0', 'ride,sing,cook,basketball', 'D10,D4,D20,D18', 'Wen:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320127', '4.0', 'ride,computer,write', 'D1,D6', 'Sun:16:00-17:40,Wen:16:00-17:40,Sun:14:00-15:40', 'D15,');
INSERT INTO `stu_test` VALUES ('170320128', '3.0', 'cook', 'D2,D1,D9,D10', 'Fri:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320129', '4.0', 'paint,cook,computer', 'D12', 'Sat:10:20-12:00', 'D11,D10,');
INSERT INTO `stu_test` VALUES ('170320130', '5.0', 'dance,ride,swim', 'D3,D1,D17,D9', 'Sat:19:00-21:00,Fri:19:00-21:00', 'D8,');
INSERT INTO `stu_test` VALUES ('170320131', '4.0', 'sing,read', 'D13,D9,D19', 'Thu:8:20-10:00,Wen:19:00-21:00', 'D9,');
INSERT INTO `stu_test` VALUES ('170320132', '4.0', 'sing,write,cook,computer,paint', 'D15,D10,D11,D1,D3', 'Mon:19:00-21:00', 'D1,');
INSERT INTO `stu_test` VALUES ('170320133', '1.0', 'ride,computer,write,cook,read', 'D1,D20,D5,D2,D15', 'Thu:8:20-10:00,Fri:14:00-15:40,Mon:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320134', '3.0', 'dance,computer,write', 'D12,D13,D4,D11', 'Mon:19:00-21:00,Sun:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320135', '5.0', 'sing,dance,cook,basketball,write', 'D4,D3,D13,D2', 'Sat:8:20-10:00,Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320136', '4.0', 'dance', 'D14,D3,D4,D1,D16', 'Tue:16:00-17:40,Sat:14:00-15:40,Mon:16:00-17:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320137', '4.0', 'ride,dance,sing,swim', 'D10,D6,D17,D15,D9', 'Fri:10:20-12:00', 'D8,');
INSERT INTO `stu_test` VALUES ('170320138', '1.0', 'paint,sing', 'D4', 'Fri:19:00-21:00,Tue:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320139', '3.0', 'sing,write,ride,cook,basketball', 'D2,D10,D15,D18', 'Mon:14:00-15:40,Thu:16:00-17:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320140', '4.0', 'dance', 'D14,D11,D13,D8,D10', 'Tue:16:00-17:40,Mon:19:00-21:00,Sun:14:00-15:40', 'D1,');
INSERT INTO `stu_test` VALUES ('170320141', '2.0', 'computer,read,dance,basketball,ride', 'D16,D7', 'Mon:16:00-17:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320142', '4.0', 'read,write,paint,sing,swim', 'D5,D6,D8,D10,D3', 'Fri:10:20-12:00', 'D8,');
INSERT INTO `stu_test` VALUES ('170320143', '5.0', 'read,computer,basketball,write', 'D8,D10,D18,D12,D2', 'Thu:19:00-21:00,Tue:19:00-21:00', 'D4,');
INSERT INTO `stu_test` VALUES ('170320144', '5.0', 'basketball,computer,ride,cook,read', 'D2,D14,D16,D19', 'Tue:10:20-12:00,Fri:14:00-15:40', 'D11,D7,');
INSERT INTO `stu_test` VALUES ('170320145', '1.0', 'swim,paint,dance,sing', 'D10,D17', 'Sat:10:20-12:00,Wen:14:00-15:40,Tue:10:20-12:00', 'D10,');
INSERT INTO `stu_test` VALUES ('170320146', '1.0', 'swim,sing,paint,ride', 'D6,D15,D11,D16,D8', 'Wen:8:20-10:00,Sat:10:20-12:00,Fri:19:00-21:00', 'D6,');
INSERT INTO `stu_test` VALUES ('170320147', '4.0', 'cook,ride,computer,swim', 'D2,D4,D10,D8,D17', 'Sun:16:00-17:40,Tue:16:00-17:40,Mon:16:00-17:40', 'D20,');
INSERT INTO `stu_test` VALUES ('170320148', '4.0', 'sing', 'D5,D10,D16,D18', 'Tue:19:00-21:00,Tue:14:00-15:40,Thu:8:20-10:00', 'D15,D20,');
INSERT INTO `stu_test` VALUES ('170320149', '3.0', 'ride,computer', 'D14,D18', 'Sat:16:00-17:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320150', '5.0', 'sing,read,swim', 'D3,D12,D10,D6', 'Wen:16:00-17:40,Mon:19:00-21:00,Sat:16:00-17:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320151', '2.0', 'computer,write,dance,paint', 'D9,D20,D1,D15', 'Wen:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320152', '3.0', 'cook,basketball', 'D2,D4,D12', 'Tue:19:00-21:00,Wen:16:00-17:40', 'D15,');
INSERT INTO `stu_test` VALUES ('170320153', '1.0', 'read,write,paint', 'D2,D20,D11,D7', 'Sun:8:20-10:00,Sat:16:00-17:40,Thu:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320154', '3.0', 'read,sing', 'D11,D14,D18,D15', 'Sat:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320155', '4.0', 'basketball,dance,read', 'D5,D12', 'Tue:16:00-17:40,Wen:10:20-12:00,Thu:8:20-10:00', 'D9,D20,');
INSERT INTO `stu_test` VALUES ('170320156', '3.0', 'paint', 'D8,D11,D5,D20', 'Mon:8:20-10:00,Wen:14:00-15:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320157', '3.0', 'sing,computer,ride,read', 'D6,D16,D13', 'Mon:8:20-10:00,Tue:19:00-21:00,Sat:10:20-12:00', 'D6,');
INSERT INTO `stu_test` VALUES ('170320158', '1.0', 'write,cook', 'D1,D12', 'Sun:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320159', '3.0', 'write,cook,sing,computer,basketball', 'D20,D10,D19', 'Mon:10:20-12:00,Mon:14:00-15:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320160', '2.0', 'cook,computer,dance,read,ride', 'D2,D4,D17,D18', 'Fri:14:00-15:40,Mon:16:00-17:40,Sun:14:00-15:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320161', '3.0', 'paint,cook', 'D20,D19', 'Mon:14:00-15:40,Fri:14:00-15:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320162', '1.0', 'write', 'D11', 'Wen:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320163', '4.0', 'write,cook,ride,swim,computer', 'D19,D12,D16', 'Sun:19:00-21:00,Mon:14:00-15:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320164', '5.0', 'paint,ride,read', 'D4', 'Tue:10:20-12:00,Mon:14:00-15:40,Mon:10:20-12:00', 'D5,D7,');
INSERT INTO `stu_test` VALUES ('170320165', '1.0', 'sing,read,write', 'D17,D3', 'Tue:10:20-12:00,Mon:8:20-10:00,Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320166', '1.0', 'read,basketball', 'D6,D3,D2', 'Wen:16:00-17:40,Sun:19:00-21:00,Thu:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320167', '5.0', 'computer', 'D9,D10', 'Sun:16:00-17:40,Fri:8:20-10:00', 'D18,');
INSERT INTO `stu_test` VALUES ('170320168', '1.0', 'dance,swim', 'D6,D9,D7', 'Sun:8:20-10:00,Fri:8:20-10:00,Thu:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320169', '4.0', 'paint,ride,read', 'D1', 'Wen:19:00-21:00,Wen:10:20-12:00,Wen:16:00-17:40', 'D4,D15,');
INSERT INTO `stu_test` VALUES ('170320170', '3.0', 'dance,ride,swim,sing', 'D4,D19,D17', 'Wen:16:00-17:40,Thu:19:00-21:00', 'D15,');
INSERT INTO `stu_test` VALUES ('170320171', '4.0', 'paint,read,ride,cook', 'D16,D9,D18', 'Thu:8:20-10:00,Thu:14:00-15:40', 'D9,');
INSERT INTO `stu_test` VALUES ('170320172', '2.0', 'basketball', 'D12,D19,D8,D9', 'Wen:19:00-21:00,Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320173', '4.0', 'write,paint,sing,read,computer', 'D12', 'Sun:8:20-10:00,Wen:8:20-10:00', 'D9,');
INSERT INTO `stu_test` VALUES ('170320174', '2.0', 'sing,ride,swim,basketball,computer', 'D17,D2', 'Sat:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320175', '1.0', 'ride,computer', 'D7,D11,D5,D9,D18', 'Sun:16:00-17:40,Sun:10:20-12:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320176', '3.0', 'sing,ride,dance,computer,paint', 'D2,D7,D19', 'Sat:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320177', '1.0', 'sing,read,dance', 'D14,D8,D4,D9', 'Mon:10:20-12:00', 'D5,');
INSERT INTO `stu_test` VALUES ('170320178', '4.0', 'swim,read,computer', 'D9,D14,D15,D10', 'Fri:10:20-12:00,Mon:10:20-12:00', 'D5,D7,D8,');
INSERT INTO `stu_test` VALUES ('170320179', '5.0', 'cook,computer,basketball,ride,sing', 'D19,D1,D11,D3', 'Fri:10:20-12:00,Thu:14:00-15:40', 'D8,');
INSERT INTO `stu_test` VALUES ('170320180', '5.0', 'swim,cook,write', 'D11,D7', 'Sat:19:00-21:00,Mon:8:20-10:00', 'D8,D13,D18,');
INSERT INTO `stu_test` VALUES ('170320181', '5.0', 'paint', 'D7', 'Thu:10:20-12:00,Mon:10:20-12:00', 'D7,');
INSERT INTO `stu_test` VALUES ('170320182', '3.0', 'swim,ride', 'D14,D3,D6,D2,D10', 'Wen:19:00-21:00,Tue:16:00-17:40', 'D20,');
INSERT INTO `stu_test` VALUES ('170320183', '4.0', 'write,basketball,dance,paint,sing', 'D1', 'Wen:14:00-15:40,Mon:16:00-17:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320184', '2.0', 'computer,sing,dance,swim', 'D10,D18,D14', 'Mon:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320185', '1.0', 'write,paint,dance', 'D9,D17,D12', 'Sun:16:00-17:40,Fri:10:20-12:00,Wen:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320186', '1.0', 'swim,sing,cook', 'D16,D7,D6,D10,D5', 'Wen:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320187', '5.0', 'ride,paint,write', 'D12,D6,D15', 'Sun:10:20-12:00', 'D16,');
INSERT INTO `stu_test` VALUES ('170320188', '3.0', 'dance,basketball', 'D16,D4,D5,D12,D1', 'Tue:16:00-17:40', 'D20,');
INSERT INTO `stu_test` VALUES ('170320189', '5.0', 'cook,computer', 'D1,D14,D13,D5', 'Sat:14:00-15:40,Tue:19:00-21:00', 'D4,D11,D19,');
INSERT INTO `stu_test` VALUES ('170320190', '5.0', 'read,swim,cook', 'D20,D6,D10,D2,D3', 'Wen:14:00-15:40,Sat:14:00-15:40,Mon:19:00-21:00', 'D3,');
INSERT INTO `stu_test` VALUES ('170320191', '5.0', 'paint', 'D6,D20', 'Wen:8:20-10:00', 'D9,');
INSERT INTO `stu_test` VALUES ('170320192', '2.0', 'dance,swim,ride,cook', 'D2,D3,D1,D16,D11', 'Wen:19:00-21:00,Mon:19:00-21:00,Tue:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320193', '1.0', 'ride', 'D16,D17', 'Wen:19:00-21:00,Sun:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320194', '4.0', 'paint,write,cook,ride,computer', 'D3', 'Wen:8:20-10:00,Thu:10:20-12:00', 'D16,D9,');
INSERT INTO `stu_test` VALUES ('170320195', '4.0', 'sing', 'D5,D15,D17', 'Thu:8:20-10:00,Fri:14:00-15:40,Thu:14:00-15:40', 'D1,D9,D18,');
INSERT INTO `stu_test` VALUES ('170320196', '5.0', 'cook', 'D3,D10,D11', 'Fri:8:20-10:00,Fri:14:00-15:40,Thu:14:00-15:40', 'D1,D7,D18,');
INSERT INTO `stu_test` VALUES ('170320197', '5.0', 'ride,swim,dance,paint', 'D2', 'Sat:10:20-12:00', 'D6,D11,D10,');
INSERT INTO `stu_test` VALUES ('170320198', '5.0', 'ride,dance,sing', 'D2,D4', 'Thu:19:00-21:00,Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320199', '5.0', 'swim,paint,write,read', 'D2,D3,D13,D11,D5', 'Fri:14:00-15:40,Sat:14:00-15:40,Tue:14:00-15:40', 'D1,D19,D20,D15,');
INSERT INTO `stu_test` VALUES ('170320200', '4.0', 'basketball,sing,computer', 'D16,D8,D9,D7', 'Thu:16:00-17:40,Sun:14:00-15:40', 'D4,');
INSERT INTO `stu_test` VALUES ('170320201', '5.0', 'paint', 'D15,D14,D2,D11,D12', 'Mon:8:20-10:00,Mon:10:20-12:00', 'D5,D7,');
INSERT INTO `stu_test` VALUES ('170320202', '3.0', 'write,paint', 'D4,D3,D16,D20', 'Wen:16:00-17:40,Sat:14:00-15:40,Mon:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320203', '5.0', 'ride,computer', 'D19,D18,D11,D2,D12', 'Sat:16:00-17:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320204', '5.0', 'dance,paint,basketball,sing', 'D10', 'Sun:14:00-15:40,Sat:19:00-21:00,Fri:19:00-21:00', 'D8,D18,');
INSERT INTO `stu_test` VALUES ('170320205', '2.0', 'sing,write,cook', 'D16,D18,D12,D15', 'Sun:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320206', '2.0', 'paint,ride,basketball', 'D1,D6', 'Thu:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320207', '2.0', 'swim,paint,sing,dance', 'D14,D18', 'Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320208', '2.0', 'computer,paint', 'D6,D3,D11,D1', 'Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320209', '2.0', 'computer,swim', 'D5,D7', 'Sat:16:00-17:40,Sun:10:20-12:00,Fri:8:20-10:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320210', '1.0', 'basketball,ride,sing', 'D11,D4', 'Sat:19:00-21:00,Sun:8:20-10:00,Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320211', '3.0', 'sing,cook,ride', 'D10,D15,D1', 'Sun:8:20-10:00,Sat:16:00-17:40,Sun:16:00-17:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320212', '5.0', 'read,write,swim,dance,paint', 'D16,D14,D2,D13', 'Mon:8:20-10:00,Fri:19:00-21:00,Sun:8:20-10:00', 'D19,');
INSERT INTO `stu_test` VALUES ('170320213', '1.0', 'computer,dance', 'D10,D20,D19,D15', 'Fri:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320214', '4.0', 'read,cook', 'D16,D1', 'Tue:10:20-12:00', 'D11,');
INSERT INTO `stu_test` VALUES ('170320215', '5.0', 'swim,dance', 'D9,D4,D1,D17,D11', 'Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320216', '2.0', 'ride,cook,paint,basketball', 'D18,D8,D11,D3,D12', 'Sun:16:00-17:40,Wen:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320217', '3.0', 'paint,swim,dance,sing', 'D11,D9,D2,D1,D4', 'Sun:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320218', '1.0', 'computer,sing,dance,basketball,ride', 'D19,D10,D9,D7', 'Fri:10:20-12:00,Wen:14:00-15:40,Tue:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320219', '2.0', 'dance,sing,paint,write', 'D17,D16', 'Tue:10:20-12:00,Sat:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320220', '5.0', 'ride,read', 'D8,D4,D14', 'Sun:8:20-10:00,Sun:19:00-21:00', 'D19,');
INSERT INTO `stu_test` VALUES ('170320221', '3.0', 'read,dance,write', 'D17,D5,D20', 'Tue:14:00-15:40', 'D20,');
INSERT INTO `stu_test` VALUES ('170320222', '1.0', 'cook,swim,sing,basketball', 'D18,D10', 'Sun:16:00-17:40,Sat:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320223', '3.0', 'write,ride', 'D10,D9,D12,D13', 'Sat:8:20-10:00,Wen:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320224', '4.0', 'dance', 'D11', 'Tue:10:20-12:00,Fri:8:20-10:00', 'D11,');
INSERT INTO `stu_test` VALUES ('170320225', '4.0', 'cook,paint,swim', 'D4,D6,D15', 'Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320226', '5.0', 'ride,cook,swim', 'D17', 'Thu:16:00-17:40,Wen:19:00-21:00', 'D4,');
INSERT INTO `stu_test` VALUES ('170320227', '2.0', 'sing,computer', 'D16,D1,D14', 'Thu:10:20-12:00,Fri:14:00-15:40,Thu:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320228', '5.0', 'dance,sing', 'D20', 'Tue:10:20-12:00,Sat:14:00-15:40,Wen:14:00-15:40', 'D3,D11,D19,');
INSERT INTO `stu_test` VALUES ('170320229', '1.0', 'ride', 'D17,D18', 'Fri:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320230', '2.0', 'ride,cook', 'D8,D15,D14', 'Wen:14:00-15:40,Wen:19:00-21:00', 'D3,');
INSERT INTO `stu_test` VALUES ('170320231', '4.0', 'paint,cook,read,ride', 'D3', 'Sun:14:00-15:40,Wen:10:20-12:00,Mon:16:00-17:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320232', '4.0', 'basketball', 'D10,D14,D16,D19,D6', 'Tue:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320233', '1.0', 'dance,write,cook,paint', 'D15,D2', 'Mon:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320234', '2.0', 'swim,dance,ride,write', 'D7', 'Sun:10:20-12:00,Mon:19:00-21:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320235', '5.0', 'cook,write,swim', 'D10,D5,D19,D7,D15', 'Mon:10:20-12:00,Tue:19:00-21:00', 'D7,D5,');
INSERT INTO `stu_test` VALUES ('170320236', '3.0', 'basketball,swim', 'D10', 'Sun:19:00-21:00,Thu:10:20-12:00', 'D13,D16,');
INSERT INTO `stu_test` VALUES ('170320237', '4.0', 'dance,computer,write', 'D18,D20,D10', 'Tue:19:00-21:00,Fri:8:20-10:00,Thu:19:00-21:00', 'D4,');
INSERT INTO `stu_test` VALUES ('170320238', '4.0', 'sing,computer,ride', 'D15', 'Mon:16:00-17:40,Sat:14:00-15:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320239', '2.0', 'sing,ride', 'D10', 'Mon:19:00-21:00,Thu:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320240', '4.0', 'swim', 'D6,D18,D12,D14', 'Sat:14:00-15:40,Fri:14:00-15:40', 'D18,');
INSERT INTO `stu_test` VALUES ('170320241', '5.0', 'cook', 'D6,D2,D17,D16,D20', 'Mon:14:00-15:40,Sun:14:00-15:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320242', '5.0', 'cook', 'D8,D7', 'Sun:16:00-17:40,Wen:16:00-17:40', 'D15,');
INSERT INTO `stu_test` VALUES ('170320243', '4.0', 'paint,swim', 'D11,D15,D8', 'Wen:19:00-21:00,Tue:14:00-15:40,Wen:10:20-12:00', 'D15,');
INSERT INTO `stu_test` VALUES ('170320244', '2.0', 'computer,swim,read,write', 'D11,D3,D4,D6,D1', 'Mon:14:00-15:40,Thu:19:00-21:00,Mon:10:20-12:00', 'D5,D2,');
INSERT INTO `stu_test` VALUES ('170320245', '2.0', 'swim,basketball,dance,ride', 'D19,D7,D12,D13,D5', 'Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320246', '5.0', 'swim', 'D12,D13,D14,D11,D15', 'Mon:19:00-21:00', 'D1,');
INSERT INTO `stu_test` VALUES ('170320247', '5.0', 'read,dance,computer,cook', 'D4', 'Thu:14:00-15:40,Fri:16:00-17:40,Sun:10:20-12:00', 'D16,D17,');
INSERT INTO `stu_test` VALUES ('170320248', '4.0', 'swim,paint', 'D7,D10,D2,D15', 'Mon:14:00-15:40,Sat:16:00-17:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320249', '2.0', 'paint,basketball,write', 'D17,D16,D1', 'Wen:19:00-21:00,Wen:16:00-17:40', '');
INSERT INTO `stu_test` VALUES ('170320250', '4.0', 'basketball,cook,read,sing', 'D6,D16,D18', 'Wen:16:00-17:40,Sat:16:00-17:40', 'D15,D4,');
INSERT INTO `stu_test` VALUES ('170320251', '1.0', 'ride,read,write,basketball', 'D8,D3,D7,D19,D5', 'Thu:8:20-10:00,Thu:10:20-12:00', '');
INSERT INTO `stu_test` VALUES ('170320252', '4.0', 'cook,dance,basketball,swim,read', 'D7,D11', 'Thu:8:20-10:00,Mon:14:00-15:40,Fri:10:20-12:00', 'D9,');
INSERT INTO `stu_test` VALUES ('170320253', '1.0', 'dance,paint,sing,computer', 'D9,D1,D8', 'Wen:10:20-12:00,Mon:14:00-15:40', 'D2,');
INSERT INTO `stu_test` VALUES ('170320254', '3.0', 'read,paint', 'D15,D11,D10,D19', 'Fri:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320255', '1.0', 'write', 'D18', 'Mon:19:00-21:00,Fri:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320256', '5.0', 'ride', 'D20,D16,D12', 'Tue:19:00-21:00,Mon:16:00-17:40', 'D4,D11,D14,');
INSERT INTO `stu_test` VALUES ('170320257', '4.0', 'cook,computer,write,dance,swim', 'D16,D13,D3', 'Mon:14:00-15:40,Wen:10:20-12:00,Mon:19:00-21:00', 'D2,D1,');
INSERT INTO `stu_test` VALUES ('170320258', '2.0', 'swim,basketball,write', 'D9', 'Sat:19:00-21:00,Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320259', '5.0', 'cook,write,computer', 'D2,D16,D18,D7,D17', 'Thu:10:20-12:00,Tue:16:00-17:40', 'D16,');
INSERT INTO `stu_test` VALUES ('170320260', '2.0', 'sing', 'D10,D9,D5', 'Wen:8:20-10:00,Mon:8:20-10:00,Mon:16:00-17:40', 'D14,');
INSERT INTO `stu_test` VALUES ('170320261', '1.0', 'write,swim,computer,cook,dance', 'D17,D9,D7', 'Sun:16:00-17:40,Mon:10:20-12:00,Tue:16:00-17:40', 'D5,');
INSERT INTO `stu_test` VALUES ('170320262', '3.0', 'cook,computer,dance,sing,basketball', 'D13,D20,D5,D16,D19', 'Fri:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320263', '2.0', 'read,ride,write,basketball', 'D18', 'Mon:10:20-12:00,Fri:14:00-15:40,Thu:14:00-15:40', 'D5,');
INSERT INTO `stu_test` VALUES ('170320264', '2.0', 'paint', 'D6', 'Fri:10:20-12:00,Sat:10:20-12:00,Fri:8:20-10:00', 'D6,');
INSERT INTO `stu_test` VALUES ('170320265', '4.0', 'read,swim,cook,dance,write', 'D9,D10', 'Sat:16:00-17:40,Sun:10:20-12:00', 'D16,');
INSERT INTO `stu_test` VALUES ('170320266', '4.0', 'sing,ride', 'D17,D15,D7', 'Sun:19:00-21:00,Sat:19:00-21:00', 'D18,');
INSERT INTO `stu_test` VALUES ('170320267', '5.0', 'ride,dance', 'D18,D3,D11,D4,D15', 'Sat:14:00-15:40,Fri:19:00-21:00', 'D19,');
INSERT INTO `stu_test` VALUES ('170320268', '5.0', 'dance,sing,write,swim', 'D8,D11,D17', 'Sun:10:20-12:00,Tue:14:00-15:40', 'D17,');
INSERT INTO `stu_test` VALUES ('170320269', '5.0', 'dance,computer,cook,swim,read', 'D16', 'Mon:8:20-10:00,Wen:19:00-21:00,Sun:16:00-17:40', 'D18,');
INSERT INTO `stu_test` VALUES ('170320270', '5.0', 'ride,paint,write,basketball', 'D11,D2', 'Sun:8:20-10:00', 'D19,');
INSERT INTO `stu_test` VALUES ('170320271', '5.0', 'ride,paint,cook,computer', 'D19,D13', 'Sun:19:00-21:00,Thu:10:20-12:00,Tue:19:00-21:00', 'D13,');
INSERT INTO `stu_test` VALUES ('170320272', '4.0', 'computer', 'D16', 'Sun:14:00-15:40,Mon:8:20-10:00,Sat:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320273', '2.0', 'sing', 'D10,D13', 'Tue:14:00-15:40', 'D20,');
INSERT INTO `stu_test` VALUES ('170320274', '5.0', 'sing,basketball,read,swim', 'D5,D18,D8,D12,D17', 'Fri:10:20-12:00,Tue:8:20-10:00', 'D8,');
INSERT INTO `stu_test` VALUES ('170320275', '5.0', 'ride,read,computer', 'D14,D5,D19,D12', 'Sun:10:20-12:00,Tue:14:00-15:40,Wen:16:00-17:40', 'D16,');
INSERT INTO `stu_test` VALUES ('170320276', '2.0', 'write,sing,swim', 'D19,D9,D11,D2', 'Wen:8:20-10:00,Tue:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320277', '3.0', 'read,ride', 'D2,D17', 'Sat:16:00-17:40', 'D3,');
INSERT INTO `stu_test` VALUES ('170320278', '3.0', 'read', 'D9', 'Sun:10:20-12:00', 'D17,');
INSERT INTO `stu_test` VALUES ('170320279', '5.0', 'read,sing,computer', 'D9,D8', 'Sat:10:20-12:00,Thu:14:00-15:40,Thu:10:20-12:00', 'D10,');
INSERT INTO `stu_test` VALUES ('170320280', '3.0', 'paint,cook', 'D10,D13', 'Thu:14:00-15:40', '');
INSERT INTO `stu_test` VALUES ('170320281', '2.0', 'basketball,sing,computer', 'D10,D1', 'Sat:10:20-12:00,Mon:16:00-17:40,Sun:19:00-21:00', 'D10,');
INSERT INTO `stu_test` VALUES ('170320282', '5.0', 'write,ride,paint,computer', 'D13,D1,D16,D11', 'Sat:16:00-17:40,Sat:14:00-15:40,Wen:10:20-12:00', 'D19,');
INSERT INTO `stu_test` VALUES ('170320283', '3.0', 'read,cook,ride,swim', 'D13,D17,D5,D12,D18', 'Tue:10:20-12:00,Mon:8:20-10:00,Tue:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320284', '3.0', 'basketball,swim,write', 'D17,D5', 'Thu:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320285', '2.0', 'paint,read,cook', 'D4,D2,D12', 'Sat:10:20-12:00,Sat:14:00-15:40', 'D6,');
INSERT INTO `stu_test` VALUES ('170320286', '1.0', 'sing,computer,cook,write,read', 'D8,D16,D1,D7,D18', 'Fri:14:00-15:40,Thu:14:00-15:40,Fri:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320287', '5.0', 'basketball,swim,write,read,ride', 'D16,D20,D10,D5', 'Sat:10:20-12:00', 'D10,');
INSERT INTO `stu_test` VALUES ('170320288', '1.0', 'paint', 'D16,D11,D2,D13', 'Mon:19:00-21:00,Sun:16:00-17:40,Mon:10:20-12:00', 'D5,');
INSERT INTO `stu_test` VALUES ('170320289', '4.0', 'sing,dance,computer,paint,read', 'D16,D15,D12', 'Thu:16:00-17:40', 'D4,');
INSERT INTO `stu_test` VALUES ('170320290', '4.0', 'sing,swim,paint,basketball', 'D14,D11,D6', 'Tue:8:20-10:00,Wen:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320291', '2.0', 'sing,read,write,ride', 'D5,D14', 'Sun:16:00-17:40,Thu:10:20-12:00,Thu:8:20-10:00', '');
INSERT INTO `stu_test` VALUES ('170320292', '3.0', 'swim,paint,computer,read,ride', 'D19,D12,D6,D4,D20', 'Tue:8:20-10:00,Mon:19:00-21:00,Fri:16:00-17:40', 'D12,');
INSERT INTO `stu_test` VALUES ('170320293', '2.0', 'read,sing,basketball', 'D5,D4,D6', 'Sat:10:20-12:00', 'D6,');
INSERT INTO `stu_test` VALUES ('170320294', '5.0', 'basketball,computer', 'D5,D9,D19,D18,D2', 'Tue:14:00-15:40,Sat:14:00-15:40', 'D19,');
INSERT INTO `stu_test` VALUES ('170320295', '3.0', 'cook,basketball,ride,paint', 'D3,D12,D14,D6', 'Fri:14:00-15:40,Sun:19:00-21:00', 'D13,');
INSERT INTO `stu_test` VALUES ('170320296', '3.0', 'dance,swim', 'D13,D10,D1', 'Tue:16:00-17:40,Wen:10:20-12:00', 'D20,');
INSERT INTO `stu_test` VALUES ('170320297', '5.0', 'swim,sing', 'D15,D6,D19', 'Sun:10:20-12:00,Tue:8:20-10:00', 'D16,D17,');
INSERT INTO `stu_test` VALUES ('170320298', '3.0', 'basketball,ride,cook,computer,write', 'D4,D9,D1,D16,D19', 'Wen:19:00-21:00', '');
INSERT INTO `stu_test` VALUES ('170320299', '2.0', 'read,paint,write', 'D14,D6,D12,D18', 'Thu:16:00-17:40,Wen:14:00-15:40,Fri:10:20-12:00', '');
