SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `betakeys`
-- ----------------------------
DROP TABLE IF EXISTS `betakeys`;
CREATE TABLE `betakeys` (
  `key` varchar(70) NOT NULL,
  `used` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `bout_channels`
-- ----------------------------
DROP TABLE IF EXISTS `bout_channels`;
CREATE TABLE `bout_channels` (
  `id` tinyint(225) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `minlevel` int(3) NOT NULL,
  `maxlevel` int(3) NOT NULL,
  `players` int(3) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bout_channels
-- ----------------------------
INSERT INTO `bout_channels` VALUES ('1', 'Alpha Test', '1', '255', '0', '1');

-- ----------------------------
-- Table structure for `bout_characters`
-- ----------------------------
DROP TABLE IF EXISTS `bout_characters`;
CREATE TABLE `bout_characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `bot` int(3) NOT NULL DEFAULT '1',
  `exp` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `hp` int(11) NOT NULL DEFAULT '1000',
  `gigas` int(11) NOT NULL DEFAULT '500',
  `attmin` int(11) NOT NULL DEFAULT '30',
  `attmax` int(11) NOT NULL DEFAULT '35',
  `attmintrans` int(11) NOT NULL DEFAULT '90',
  `attmaxtrans` int(11) NOT NULL DEFAULT '105',
  `transgauge` int(11) NOT NULL DEFAULT '1000',
  `crit` int(11) NOT NULL DEFAULT '0',
  `evade` int(11) NOT NULL DEFAULT '0',
  `specialtrans` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '1000',
  `transdef` int(11) NOT NULL DEFAULT '0',
  `transbotatt` int(11) NOT NULL DEFAULT '1000',
  `transspeed` int(11) NOT NULL DEFAULT '0',
  `rangeatt` int(11) NOT NULL DEFAULT '1000',
  `luk` int(11) NOT NULL DEFAULT '0',
  `botstract` int(11) NOT NULL DEFAULT '0',
  `equiphead` int(25) NOT NULL DEFAULT '0',
  `equipbody` int(25) NOT NULL DEFAULT '0',
  `equiparm` int(25) NOT NULL DEFAULT '0',
  `equipminibot` int(25) NOT NULL DEFAULT '0',
  `equipgun` int(25) NOT NULL DEFAULT '0',
  `equipefield` int(25) NOT NULL DEFAULT '0',
  `equipwing` int(25) NOT NULL DEFAULT '0',
  `equipshield` int(25) NOT NULL DEFAULT '0',
  `equiparmpart` int(25) NOT NULL DEFAULT '0',
  `equipflag1` int(25) NOT NULL DEFAULT '0',
  `equipflag2` int(25) NOT NULL DEFAULT '0',
  `equippassivskill` int(25) NOT NULL DEFAULT '0',
  `equipaktivskill` int(25) NOT NULL DEFAULT '0',
  `equippack` int(25) NOT NULL DEFAULT '0',
  `equiptransbot` int(25) NOT NULL DEFAULT '0',
  `equipmerc` int(25) NOT NULL DEFAULT '0',
  `equipmerc2` int(25) NOT NULL DEFAULT '0',
  `equipheadcoin` int(25) NOT NULL DEFAULT '0',
  `equipminibotcoin` int(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bout_characters
-- ----------------------------

-- ----------------------------
-- Table structure for `bout_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `bout_inventory`;
CREATE TABLE `bout_inventory` (
  `name` varchar(25) NOT NULL,
  `item1` int(25) NOT NULL DEFAULT '0',
  `item2` int(25) NOT NULL DEFAULT '0',
  `item3` int(25) NOT NULL DEFAULT '0',
  `item4` int(25) NOT NULL DEFAULT '0',
  `item5` int(25) NOT NULL DEFAULT '0',
  `item6` int(25) NOT NULL DEFAULT '0',
  `item7` int(25) NOT NULL DEFAULT '0',
  `item8` int(25) NOT NULL DEFAULT '0',
  `item9` int(25) NOT NULL DEFAULT '0',
  `item10` int(25) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bout_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `bout_items`
-- ----------------------------
DROP TABLE IF EXISTS `bout_items`;
CREATE TABLE `bout_items` (
  `id` int(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `reqlevel` int(2) NOT NULL,
  `buyable` int(1) NOT NULL DEFAULT '0',
  `buy` int(14) NOT NULL,
  `sell` int(14) NOT NULL,
  `coins` int(25) NOT NULL DEFAULT '0',
  `days` int(5) NOT NULL DEFAULT '0',
  `bot` int(1) NOT NULL,
  `part` int(3) NOT NULL,
  `script` text,
  PRIMARY KEY (`id`),
  KEY `buyable` (`buyable`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bout_items
-- ----------------------------
INSERT INTO `bout_items` VALUES ('1110100', 'Hammer-Head', '1', '1', '500', '250', '0', '0', '1', '1', 'hpp,66; ');
INSERT INTO `bout_items` VALUES ('1110101', 'Hammer-HeadCRT(+1)', '1', '0', '600', '150', '0', '0', '1', '1', 'hpp,66; crit,5; ');
INSERT INTO `bout_items` VALUES ('1110102', 'Hammer-HeadCRT(+2)', '1', '0', '700', '175', '0', '0', '1', '1', 'hpp,66; crit,25; ');
INSERT INTO `bout_items` VALUES ('1110103', 'Hammer-HeadCRT(+3)', '1', '0', '1200', '300', '0', '0', '1', '1', 'hpp,66; crit,75; ');
INSERT INTO `bout_items` VALUES ('1110104', 'Hammer-HeadCRT(+4)', '1', '0', '1300', '325', '0', '0', '1', '1', 'hpp,66; crit,86; ');
INSERT INTO `bout_items` VALUES ('1110105', 'Hammer-HeadCRT(+5)', '1', '0', '1400', '350', '0', '0', '1', '1', 'hpp,66; crit,95; ');
INSERT INTO `bout_items` VALUES ('1110200', 'C.A.T.', '8', '1', '2200', '1100', '0', '0', '1', '1', 'hpp,131; ');
INSERT INTO `bout_items` VALUES ('1110201', 'C.A.T.CRT(+1)', '4', '0', '1300', '325', '0', '0', '1', '1', 'hpp,131; crit,30; ');
INSERT INTO `bout_items` VALUES ('1110202', 'C.A.T.CRT(+2)', '5', '0', '1400', '350', '0', '0', '1', '1', 'hpp,131; crit,50; ');
INSERT INTO `bout_items` VALUES ('1110203', 'C.A.T.CRT(+3)', '6', '0', '1900', '475', '0', '0', '1', '1', 'hpp,131; crit,100; ');
INSERT INTO `bout_items` VALUES ('1110204', 'C.A.T.CRT(+4)', '7', '0', '2100', '525', '0', '0', '1', '1', 'hpp,131; crit,115; ');
INSERT INTO `bout_items` VALUES ('1110205', 'C.A.T.CRT(+5)', '8', '0', '2300', '575', '0', '0', '1', '1', 'hpp,131; crit,127; ');
INSERT INTO `bout_items` VALUES ('1110300', 'Hazard-Hex', '18', '1', '8300', '4150', '0', '0', '1', '1', 'hpp,196; ');
INSERT INTO `bout_items` VALUES ('1110301', 'Hazard-HexCRT(+1)', '14', '0', '5600', '1400', '0', '0', '1', '1', 'hpp,196; crit,55; ');
INSERT INTO `bout_items` VALUES ('1110302', 'Hazard-HexCRT(+2)', '15', '0', '8200', '2050', '0', '0', '1', '1', 'hpp,196; crit,75; ');
INSERT INTO `bout_items` VALUES ('1110303', 'Hazard-HexCRT(+3)', '16', '0', '13000', '3250', '0', '0', '1', '1', 'hpp,196; crit,125; ');
INSERT INTO `bout_items` VALUES ('1110304', 'Hazard-HexCRT(+4)', '17', '0', '14000', '3500', '0', '0', '1', '1', 'hpp,131; crit,144; ');
INSERT INTO `bout_items` VALUES ('1110305', 'Hazard-HexCRT(+5)', '18', '0', '15000', '3750', '0', '0', '1', '1', 'hpp,131; crit,158; ');
INSERT INTO `bout_items` VALUES ('1110400', 'Crash-Bolt', '28', '1', '20000', '10000', '0', '0', '1', '1', 'hpp,261; ');
INSERT INTO `bout_items` VALUES ('1110401', 'Crash-BoltCRT(+1)', '24', '0', '18000', '4500', '0', '0', '1', '1', 'hpp,261; crit,80; ');
INSERT INTO `bout_items` VALUES ('1110402', 'Crash-BoltCRT(+2)', '25', '0', '22000', '5500', '0', '0', '1', '1', 'hpp,261; crit,100; ');
INSERT INTO `bout_items` VALUES ('1110403', 'Crash-BoltCRT(+3)', '26', '0', '28000', '7000', '0', '0', '1', '1', 'hpp,261; crit,150; ');
INSERT INTO `bout_items` VALUES ('1110404', 'Crash-BoltCRT(+4)', '27', '0', '31000', '7750', '0', '0', '1', '1', 'hpp,261; crit,173; ');
INSERT INTO `bout_items` VALUES ('1110405', 'Crash-BoltCRT(+5)', '28', '0', '34000', '8500', '0', '0', '1', '1', 'hpp,261; crit,190; ');
INSERT INTO `bout_items` VALUES ('1110500', 'LykanLauncher', '38', '1', '80000', '40000', '0', '0', '1', '1', 'hpp,326; ');
INSERT INTO `bout_items` VALUES ('1110501', 'LykanLauncherCRT(+1)', '34', '0', '40000', '10000', '0', '0', '1', '1', 'hpp,326; crit,105; ');
INSERT INTO `bout_items` VALUES ('1110502', 'LykanLauncherCRT(+2)', '35', '0', '46000', '11500', '0', '0', '1', '1', 'hpp,326; crit,125; ');
INSERT INTO `bout_items` VALUES ('1110503', 'LykanLauncherCRT(+3)', '36', '0', '55000', '13750', '0', '0', '1', '1', 'hpp,326; crit,175; ');
INSERT INTO `bout_items` VALUES ('1110504', 'LykanLauncherCRT(+4)', '37', '0', '61000', '15250', '0', '0', '1', '1', 'hpp,326; crit,201; ');
INSERT INTO `bout_items` VALUES ('1110505', 'LykanLauncherCRT(+5)', '38', '0', '67000', '16750', '0', '0', '1', '1', 'hpp,326; crit,221; ');
INSERT INTO `bout_items` VALUES ('1110600', 'Hyperbore', '48', '1', '98000', '49000', '0', '0', '1', '1', 'hpp,391; ');
INSERT INTO `bout_items` VALUES ('1110601', 'HyperboreCRT(+1)', '44', '0', '64000', '16000', '0', '0', '1', '1', 'hpp,391; crit,130; ');
INSERT INTO `bout_items` VALUES ('1110602', 'HyperboreCRT(+2)', '45', '0', '68000', '17000', '0', '0', '1', '1', 'hpp,391; crit,150; ');
INSERT INTO `bout_items` VALUES ('1110603', 'HyperboreCRT(+3)', '46', '0', '75000', '18750', '0', '0', '1', '1', 'hpp,391; crit,200; ');
INSERT INTO `bout_items` VALUES ('1110604', 'HyperboreCRT(+4)', '47', '0', '83000', '20750', '0', '0', '1', '1', 'hpp,391; crit,230; ');
INSERT INTO `bout_items` VALUES ('1110605', 'HyperboreCRT(+5)', '48', '0', '91000', '22750', '0', '0', '1', '1', 'hpp,391; crit,253; ');
INSERT INTO `bout_items` VALUES ('1110700', 'Firewall', '58', '1', '110000', '55000', '0', '0', '1', '1', 'hpp,456; ');
INSERT INTO `bout_items` VALUES ('1110701', 'FirewallCRT(+1)', '54', '0', '78000', '19500', '0', '0', '1', '1', 'hpp,456; crit,155; ');
INSERT INTO `bout_items` VALUES ('1110702', 'FirewallCRT(+2)', '55', '0', '82000', '20500', '0', '0', '1', '1', 'hpp,456; crit,175; ');
INSERT INTO `bout_items` VALUES ('1110703', 'FirewallCRT(+3)', '56', '0', '89000', '22250', '0', '0', '1', '1', 'hpp,456; crit,225; ');
INSERT INTO `bout_items` VALUES ('1110704', 'FirewallCRT(+4)', '57', '0', '98000', '24500', '0', '0', '1', '1', 'hpp,456; crit,259; ');
INSERT INTO `bout_items` VALUES ('1110705', 'FirewallCRT(+5)', '58', '0', '108000', '27000', '0', '0', '1', '1', 'hpp,456; crit,285; ');
INSERT INTO `bout_items` VALUES ('1110800', 'Blazer', '68', '1', '210000', '105000', '0', '0', '1', '1', 'hpp,521; ');
INSERT INTO `bout_items` VALUES ('1110801', 'BlazerCRT(+1)', '64', '0', '91000', '22750', '0', '0', '1', '1', 'hpp,521; crit,180; ');
INSERT INTO `bout_items` VALUES ('1110802', 'BlazerCRT(+2)', '65', '0', '94000', '23500', '0', '0', '1', '1', 'hpp,521; crit,200; ');
INSERT INTO `bout_items` VALUES ('1110803', 'BlazerCRT(+3)', '66', '0', '101000', '25250', '0', '0', '1', '1', 'hpp,521; crit,250; ');
INSERT INTO `bout_items` VALUES ('1110804', 'BlazerCRT(+4)', '67', '0', '111000', '27750', '0', '0', '1', '1', 'hpp,521; crit,288; ');
INSERT INTO `bout_items` VALUES ('1110805', 'BlazerCRT(+5)', '68', '0', '122000', '30500', '0', '0', '1', '1', 'hpp,521; crit,316; ');
INSERT INTO `bout_items` VALUES ('1110900', 'Ultrabash', '78', '1', '315000', '157500', '0', '0', '1', '1', 'hpp,586; ');
INSERT INTO `bout_items` VALUES ('1110901', 'UltrabashCRT(+1)', '74', '0', '107000', '26750', '0', '0', '1', '1', 'hpp,586; crit,205; ');
INSERT INTO `bout_items` VALUES ('1110902', 'UltrabashCRT(+2)', '75', '0', '110000', '27500', '0', '0', '1', '1', 'hpp,586; crit,225; ');
INSERT INTO `bout_items` VALUES ('1110903', 'UltrabashCRT(+3)', '76', '0', '119000', '29750', '0', '0', '1', '1', 'hpp,586; crit,285; ');
INSERT INTO `bout_items` VALUES ('1110904', 'UltrabashCRT(+4)', '77', '0', '131000', '32750', '0', '0', '1', '1', 'hpp,586; crit,328; ');
INSERT INTO `bout_items` VALUES ('1110905', 'UltrabashCRT(+5)', '78', '0', '144000', '36000', '0', '0', '1', '1', 'hpp,586; crit,361; ');
INSERT INTO `bout_items` VALUES ('1111000', 'CGS', '88', '1', '472500', '236250', '0', '0', '1', '1', 'hpp,651; ');
INSERT INTO `bout_items` VALUES ('1111001', 'CGS-CRT(+1)', '84', '0', '98000', '24500', '0', '0', '1', '1', 'hpp,651; crit,250; ');
INSERT INTO `bout_items` VALUES ('1111002', 'CGS-CRT(+2)', '85', '0', '136000', '34000', '0', '0', '1', '1', 'hpp,651; crit,280; ');
INSERT INTO `bout_items` VALUES ('1111003', 'CGS-CRT(+3)', '86', '0', '102000', '25500', '0', '0', '1', '1', 'hpp,651; crit,320; ');
INSERT INTO `bout_items` VALUES ('1111004', 'CGS-CRT(+4)', '87', '0', '112000', '28000', '0', '0', '1', '1', 'hpp,651; crit,368; ');
INSERT INTO `bout_items` VALUES ('1111005', 'CGS-CRT(+5)', '88', '0', '123000', '30750', '0', '0', '1', '1', 'hpp,651; crit,405; ');
INSERT INTO `bout_items` VALUES ('1111100', 'Plasmodium', '98', '1', '722500', '361250', '0', '0', '1', '1', 'hpp,720; ');
INSERT INTO `bout_items` VALUES ('1111101', 'PlasmodiumCRT(+1)', '94', '0', '152000', '38000', '0', '0', '1', '1', 'hpp,720; crit,278; ');
INSERT INTO `bout_items` VALUES ('1111102', 'PlasmodiumCRT(+2)', '95', '0', '157000', '39250', '0', '0', '1', '1', 'hpp,720; crit,310; ');
INSERT INTO `bout_items` VALUES ('1111103', 'PlasmodiumCRT(+3)', '96', '0', '164000', '41000', '0', '0', '1', '1', 'hpp,720; crit,350; ');
INSERT INTO `bout_items` VALUES ('1111104', 'PlasmodiumCRT(+4)', '97', '0', '180000', '45000', '0', '0', '1', '1', 'hpp,720; crit,403; ');
INSERT INTO `bout_items` VALUES ('1111105', 'PlasmodiumCRT(+5)', '98', '0', '198000', '49500', '0', '0', '1', '1', 'hpp,720; crit,443; ');
INSERT INTO `bout_items` VALUES ('1111200', 'SantaHelmet', '1', '0', '100', '100', '0', '10', '1', '1', 'hpp,196; transspeed,312; ');
INSERT INTO `bout_items` VALUES ('1111400', 'PatchMark', '1', '0', '100', '100', '0', '5', '1', '1', 'hpp,196; transspeed,312; ');
INSERT INTO `bout_items` VALUES ('1120100', 'Hammer-Head', '1', '1', '700', '350', '0', '0', '1', '2', 'atttransmin,18; atttransmax,21; ');
INSERT INTO `bout_items` VALUES ('1120101', 'Hammer-HeadTA(+1)', '1', '0', '1100', '275', '0', '0', '1', '2', 'atttransmin,18; atttransmax,21; transbotatt,19; ');
INSERT INTO `bout_items` VALUES ('1120102', 'Hammer-HeadTA(+2)', '1', '0', '1700', '425', '0', '0', '1', '2', 'atttransmin,18; atttransmax,21; transbotatt,55; ');
INSERT INTO `bout_items` VALUES ('1120103', 'Hammer-HeadTA(+3)', '1', '0', '3300', '825', '0', '0', '1', '2', 'atttransmin,18; atttransmax,21; transbotatt,145; ');
INSERT INTO `bout_items` VALUES ('1120104', 'Hammer-HeadTA(+4)', '1', '0', '3600', '900', '0', '0', '1', '2', 'atttransmin,18; atttransmax,21; transbotatt,160; ');
INSERT INTO `bout_items` VALUES ('1120105', 'Hammer-HeadTA(+5)', '1', '0', '4000', '1000', '0', '0', '1', '2', 'atttransmin,18; atttransmax,21; transbotatt,175; ');
INSERT INTO `bout_items` VALUES ('1120200', 'C.A.T.', '8', '1', '2900', '1450', '0', '0', '1', '2', 'atttransmin,28; atttransmax,42; ');
INSERT INTO `bout_items` VALUES ('1120201', 'C.A.T.TA(+1)', '4', '0', '2400', '600', '0', '0', '1', '2', 'atttransmin,28; atttransmax,42; transbotatt,64; ');
INSERT INTO `bout_items` VALUES ('1120202', 'C.A.T.TA(+2)', '5', '0', '3100', '775', '0', '0', '1', '2', 'atttransmin,28; atttransmax,42; transbotatt,100; ');
INSERT INTO `bout_items` VALUES ('1120203', 'C.A.T.TA(+3)', '6', '0', '4600', '1150', '0', '0', '1', '2', 'atttransmin,28; atttransmax,42; transbotatt,190; ');
INSERT INTO `bout_items` VALUES ('1120204', 'C.A.T.TA(+4)', '7', '0', '5100', '1275', '0', '0', '1', '2', 'atttransmin,28; atttransmax,42; transbotatt,209; ');
INSERT INTO `bout_items` VALUES ('1120205', 'C.A.T.TA(+5)', '8', '0', '5600', '1400', '0', '0', '1', '2', 'atttransmin,28; atttransmax,42; transbotatt,230; ');
INSERT INTO `bout_items` VALUES ('1120300', 'Hazard-Hex', '18', '1', '10000', '5000', '0', '0', '1', '2', 'atttransmin,38; atttransmax,63; ');
INSERT INTO `bout_items` VALUES ('1120301', 'Hazard-HexTA(+1)', '14', '0', '10600', '2650', '0', '0', '1', '2', 'atttransmin,38; atttransmax,63; transbotatt,109; ');
INSERT INTO `bout_items` VALUES ('1120302', 'Hazard-HexTA(+2)', '15', '0', '17000', '4250', '0', '0', '1', '2', 'atttransmin,38; atttransmax,63; transbotatt,145; ');
INSERT INTO `bout_items` VALUES ('1120303', 'Hazard-HexTA(+3)', '16', '0', '29000', '7250', '0', '0', '1', '2', 'atttransmin,38; atttransmax,63; transbotatt,235; ');
INSERT INTO `bout_items` VALUES ('1120304', 'Hazard-HexTA(+4)', '17', '0', '32000', '8000', '0', '0', '1', '2', 'atttransmin,28; atttransmax,42; transbotatt,259; ');
INSERT INTO `bout_items` VALUES ('1120305', 'Hazard-HexTA(+5)', '18', '0', '35000', '8750', '0', '0', '1', '2', 'atttransmin,28; atttransmax,42; transbotatt,284; ');
INSERT INTO `bout_items` VALUES ('1120400', 'Crash-Bolt', '28', '1', '25000', '12500', '0', '0', '1', '2', 'atttransmin,48; atttransmax,84; ');
INSERT INTO `bout_items` VALUES ('1120401', 'Crash-BoltTA(+1)', '24', '0', '34000', '8500', '0', '0', '1', '2', 'atttransmin,48; atttransmax,84; transbotatt,154; ');
INSERT INTO `bout_items` VALUES ('1120402', 'Crash-BoltTA(+2)', '25', '0', '43000', '10750', '0', '0', '1', '2', 'atttransmin,48; atttransmax,84; transbotatt,190; ');
INSERT INTO `bout_items` VALUES ('1120403', 'Crash-BoltTA(+3)', '26', '0', '63000', '15750', '0', '0', '1', '2', 'atttransmin,48; atttransmax,84; transbotatt,280; ');
INSERT INTO `bout_items` VALUES ('1120404', 'Crash-BoltTA(+4)', '27', '0', '69000', '17250', '0', '0', '1', '2', 'atttransmin,48; atttransmax,84; transbotatt,308; ');
INSERT INTO `bout_items` VALUES ('1120405', 'Crash-BoltTA(+5)', '28', '0', '76000', '19000', '0', '0', '1', '2', 'atttransmin,48; atttransmax,84; transbotatt,339; ');
INSERT INTO `bout_items` VALUES ('1120500', 'LykanLauncher', '38', '1', '91000', '45500', '0', '0', '1', '2', 'atttransmin,58; atttransmax,105; ');
INSERT INTO `bout_items` VALUES ('1120501', 'LykanLauncherTA(+1)', '34', '0', '76000', '19000', '0', '0', '1', '2', 'atttransmin,58; atttransmax,105; transbotatt,199; ');
INSERT INTO `bout_items` VALUES ('1120502', 'LykanLauncherTA(+2)', '35', '0', '91000', '22750', '0', '0', '1', '2', 'atttransmin,58; atttransmax,105; transbotatt,235; ');
INSERT INTO `bout_items` VALUES ('1120503', 'LykanLauncherTA(+3)', '36', '0', '120000', '30000', '0', '0', '1', '2', 'atttransmin,58; atttransmax,105; transbotatt,325; ');
INSERT INTO `bout_items` VALUES ('1120504', 'LykanLauncherTA(+4)', '37', '0', '132000', '33000', '0', '0', '1', '2', 'atttransmin,58; atttransmax,105; transbotatt,358; ');
INSERT INTO `bout_items` VALUES ('1120505', 'LykanLauncherTA(+5)', '38', '0', '145000', '36250', '0', '0', '1', '2', 'atttransmin,58; atttransmax,105; transbotatt,393; ');
INSERT INTO `bout_items` VALUES ('1120600', 'Hyperbore', '48', '1', '102000', '51000', '0', '0', '1', '2', 'atttransmin,68; atttransmax,126; ');
INSERT INTO `bout_items` VALUES ('1120601', 'HyperboreTA(+1)', '44', '0', '122000', '30500', '0', '0', '1', '2', 'atttransmin,68; atttransmax,126; transbotatt,244; ');
INSERT INTO `bout_items` VALUES ('1120602', 'HyperboreTA(+2)', '45', '0', '133000', '33250', '0', '0', '1', '2', 'atttransmin,68; atttransmax,126; transbotatt,280; ');
INSERT INTO `bout_items` VALUES ('1120603', 'HyperboreTA(+3)', '46', '0', '158000', '39500', '0', '0', '1', '2', 'atttransmin,68; atttransmax,126; transbotatt,370; ');
INSERT INTO `bout_items` VALUES ('1120604', 'HyperboreTA(+4)', '47', '0', '174000', '43500', '0', '0', '1', '2', 'atttransmin,68; atttransmax,126; transbotatt,407; ');
INSERT INTO `bout_items` VALUES ('1120605', 'HyperboreTA(+5)', '48', '0', '191000', '47750', '0', '0', '1', '2', 'atttransmin,68; atttransmax,126; transbotatt,448; ');
INSERT INTO `bout_items` VALUES ('1120700', 'Firewall', '58', '1', '130000', '65000', '0', '0', '1', '2', 'atttransmin,78; atttransmax,147; ');
INSERT INTO `bout_items` VALUES ('1120701', 'FirewallTA(+1)', '54', '0', '149000', '37250', '0', '0', '1', '2', 'atttransmin,78; atttransmax,147; transbotatt,289; ');
INSERT INTO `bout_items` VALUES ('1120702', 'FirewallTA(+2)', '55', '0', '160000', '40000', '0', '0', '1', '2', 'atttransmin,78; atttransmax,147; transbotatt,325; ');
INSERT INTO `bout_items` VALUES ('1120703', 'FirewallTA(+3)', '56', '0', '186000', '46500', '0', '0', '1', '2', 'atttransmin,78; atttransmax,147; transbotatt,415; ');
INSERT INTO `bout_items` VALUES ('1120704', 'FirewallTA(+4)', '57', '0', '205000', '51250', '0', '0', '1', '2', 'atttransmin,78; atttransmax,147; transbotatt,457; ');
INSERT INTO `bout_items` VALUES ('1120705', 'FirewallTA(+5)', '58', '0', '226000', '56500', '0', '0', '1', '2', 'atttransmin,78; atttransmax,147; transbotatt,502; ');
INSERT INTO `bout_items` VALUES ('1120800', 'Blazer', '68', '1', '247000', '123500', '0', '0', '1', '2', 'atttransmin,88; atttransmax,168; ');
INSERT INTO `bout_items` VALUES ('1120801', 'BlazerTA(+1)', '64', '0', '173000', '43250', '0', '0', '1', '2', 'atttransmin,88; atttransmax,168; transbotatt,334; ');
INSERT INTO `bout_items` VALUES ('1120802', 'BlazerTA(+2)', '65', '0', '184000', '46000', '0', '0', '1', '2', 'atttransmin,88; atttransmax,168; transbotatt,370; ');
INSERT INTO `bout_items` VALUES ('1120803', 'BlazerTA(+3)', '66', '0', '209000', '52250', '0', '0', '1', '2', 'atttransmin,88; atttransmax,168; transbotatt,460; ');
INSERT INTO `bout_items` VALUES ('1120804', 'BlazerTA(+4)', '67', '0', '230000', '57500', '0', '0', '1', '2', 'atttransmin,88; atttransmax,168; transbotatt,506; ');
INSERT INTO `bout_items` VALUES ('1120805', 'BlazerTA(+5)', '68', '0', '253000', '63250', '0', '0', '1', '2', 'atttransmin,88; atttransmax,168; transbotatt,557; ');
INSERT INTO `bout_items` VALUES ('1120900', 'Ultrabash', '78', '1', '370000', '185000', '0', '0', '1', '2', 'atttransmin,98; atttransmax,189; ');
INSERT INTO `bout_items` VALUES ('1120901', 'UltrabashTA(+1)', '74', '0', '204000', '51000', '0', '0', '1', '2', 'atttransmin,98; atttransmax,189; transbotatt,379; ');
INSERT INTO `bout_items` VALUES ('1120902', 'UltrabashTA(+2)', '75', '0', '215000', '53750', '0', '0', '1', '2', 'atttransmin,98; atttransmax,189; transbotatt,415; ');
INSERT INTO `bout_items` VALUES ('1120903', 'UltrabashTA(+3)', '76', '0', '241000', '60250', '0', '0', '1', '2', 'atttransmin,98; atttransmax,189; transbotatt,505; ');
INSERT INTO `bout_items` VALUES ('1120904', 'UltrabashTA(+4)', '77', '0', '265000', '66250', '0', '0', '1', '2', 'atttransmin,98; atttransmax,189; transbotatt,556; ');
INSERT INTO `bout_items` VALUES ('1120905', 'UltrabashTA(+5)', '78', '0', '292000', '73000', '0', '0', '1', '2', 'atttransmin,98; atttransmax,189; transbotatt,611; ');
INSERT INTO `bout_items` VALUES ('1121000', 'CGS', '88', '1', '555000', '277500', '0', '0', '1', '2', 'atttransmin,108; atttransmax,210; ');
INSERT INTO `bout_items` VALUES ('1121001', 'CGS-TA(+1)', '84', '0', '241000', '60250', '0', '0', '1', '2', 'atttransmin,108; atttransmax,210; transbotatt,424; ');
INSERT INTO `bout_items` VALUES ('1121002', 'CGS-TA(+2)', '85', '0', '252000', '63000', '0', '0', '1', '2', 'atttransmin,108; atttransmax,210; transbotatt,460; ');
INSERT INTO `bout_items` VALUES ('1121003', 'CGS-TA(+3)', '86', '0', '280000', '70000', '0', '0', '1', '2', 'atttransmin,108; atttransmax,210; transbotatt,550; ');
INSERT INTO `bout_items` VALUES ('1121004', 'CGS-TA(+4)', '87', '0', '308000', '77000', '0', '0', '1', '2', 'atttransmin,108; atttransmax,210; transbotatt,605; ');
INSERT INTO `bout_items` VALUES ('1121005', 'CGS-TA(+5)', '88', '0', '339000', '84750', '0', '0', '1', '2', 'atttransmin,108; atttransmax,210; transbotatt,666; ');
INSERT INTO `bout_items` VALUES ('1121100', 'Plasmodium', '98', '1', '855000', '427500', '0', '0', '1', '2', 'atttransmin,120; atttransmax,250; ');
INSERT INTO `bout_items` VALUES ('1121101', 'PlasmodiumTA(+1)', '94', '0', '304000', '76000', '0', '0', '1', '2', 'atttransmin,120; atttransmax,250; transbotatt,520; ');
INSERT INTO `bout_items` VALUES ('1121102', 'PlasmodiumTA(+2)', '95', '0', '324000', '81000', '0', '0', '1', '2', 'atttransmin,120; atttransmax,250; transbotatt,580; ');
INSERT INTO `bout_items` VALUES ('1121103', 'PlasmodiumTA(+3)', '96', '0', '341000', '85250', '0', '0', '1', '2', 'atttransmin,120; atttransmax,250; transbotatt,630; ');
INSERT INTO `bout_items` VALUES ('1121104', 'PlasmodiumTA(+4)', '97', '0', '375000', '93750', '0', '0', '1', '2', 'atttransmin,120; atttransmax,250; transbotatt,693; ');
INSERT INTO `bout_items` VALUES ('1121105', 'PlasmodiumTA(+5)', '98', '0', '413000', '103250', '0', '0', '1', '2', 'atttransmin,120; atttransmax,250; transbotatt,762; ');
INSERT INTO `bout_items` VALUES ('1130100', 'Hammer-Head', '1', '1', '400', '200', '0', '0', '1', '3', 'attmin,9; attmax,13; ');
INSERT INTO `bout_items` VALUES ('1130101', 'Hammer-HeadTD(+1)', '1', '0', '700', '175', '0', '0', '1', '3', 'attmin,9; attmax,13; transbotdef,21; ');
INSERT INTO `bout_items` VALUES ('1130102', 'Hammer-HeadTD(+2)', '1', '0', '800', '200', '0', '0', '1', '3', 'attmin,9; attmax,13; transbotdef,45; ');
INSERT INTO `bout_items` VALUES ('1130103', 'Hammer-HeadTD(+3)', '1', '0', '900', '225', '0', '0', '1', '3', 'attmin,9; attmax,13; transbotdef,105; ');
INSERT INTO `bout_items` VALUES ('1130104', 'Hammer-HeadTD(+4)', '1', '0', '1000', '250', '0', '0', '1', '3', 'attmin,9; attmax,13; transbotdef,121; ');
INSERT INTO `bout_items` VALUES ('1130105', 'Hammer-HeadTD(+5)', '1', '0', '1100', '275', '0', '0', '1', '3', 'attmin,9; attmax,13; transbotdef,133; ');
INSERT INTO `bout_items` VALUES ('1130200', 'C.A.T.', '8', '1', '2000', '1000', '0', '0', '1', '3', 'attmin,12; attmax,17; ');
INSERT INTO `bout_items` VALUES ('1130201', 'C.A.T.TD(+1)', '4', '0', '1000', '250', '0', '0', '1', '3', 'attmin,12; attmax,17; transbotdef,51; ');
INSERT INTO `bout_items` VALUES ('1130202', 'C.A.T.TD(+2)', '5', '0', '1100', '275', '0', '0', '1', '3', 'attmin,12; attmax,17; transbotdef,75; ');
INSERT INTO `bout_items` VALUES ('1130203', 'C.A.T.TD(+3)', '6', '0', '1200', '300', '0', '0', '1', '3', 'attmin,12; attmax,17; transbotdef,135; ');
INSERT INTO `bout_items` VALUES ('1130204', 'C.A.T.TD(+4)', '7', '0', '1300', '325', '0', '0', '1', '3', 'attmin,12; attmax,17; transbotdef,155; ');
INSERT INTO `bout_items` VALUES ('1130205', 'C.A.T.TD(+5)', '8', '0', '1400', '350', '0', '0', '1', '3', 'attmin,12; attmax,17; transbotdef,171; ');
INSERT INTO `bout_items` VALUES ('1130300', 'Hazard-Hex', '18', '1', '6300', '3150', '0', '0', '1', '3', 'attmin,15; attmax,21; ');
INSERT INTO `bout_items` VALUES ('1130301', 'Hazard-HexTD(+1)', '14', '0', '3700', '925', '0', '0', '1', '3', 'attmin,15; attmax,21; transbotdef,81; ');
INSERT INTO `bout_items` VALUES ('1130302', 'Hazard-HexTD(+2)', '15', '0', '5200', '1300', '0', '0', '1', '3', 'attmin,15; attmax,21; transbotdef,105; ');
INSERT INTO `bout_items` VALUES ('1130303', 'Hazard-HexTD(+3)', '16', '0', '7000', '1750', '0', '0', '1', '3', 'attmin,15; attmax,21; transbotdef,165; ');
INSERT INTO `bout_items` VALUES ('1130304', 'Hazard-HexTD(+4)', '17', '0', '8000', '2000', '0', '0', '1', '3', 'attmin,12; attmax,17; transbotdef,190; ');
INSERT INTO `bout_items` VALUES ('1130305', 'Hazard-HexTD(+5)', '18', '0', '9000', '2250', '0', '0', '1', '3', 'attmin,12; attmax,17; transbotdef,209; ');
INSERT INTO `bout_items` VALUES ('1130400', 'Crash-Bolt', '28', '1', '14000', '7000', '0', '0', '1', '3', 'attmin,18; attmax,25; ');
INSERT INTO `bout_items` VALUES ('1130401', 'Crash-BoltTD(+1)', '24', '0', '10000', '2500', '0', '0', '1', '3', 'attmin,18; attmax,25; transbotdef,111; ');
INSERT INTO `bout_items` VALUES ('1130402', 'Crash-BoltTD(+2)', '25', '0', '12000', '3000', '0', '0', '1', '3', 'attmin,18; attmax,25; transbotdef,135; ');
INSERT INTO `bout_items` VALUES ('1130403', 'Crash-BoltTD(+3)', '26', '0', '15000', '3750', '0', '0', '1', '3', 'attmin,18; attmax,25; transbotdef,195; ');
INSERT INTO `bout_items` VALUES ('1130404', 'Crash-BoltTD(+4)', '27', '0', '17000', '4250', '0', '0', '1', '3', 'attmin,18; attmax,25; transbotdef,224; ');
INSERT INTO `bout_items` VALUES ('1130405', 'Crash-BoltTD(+5)', '28', '0', '19000', '4750', '0', '0', '1', '3', 'attmin,18; attmax,25; transbotdef,247; ');
INSERT INTO `bout_items` VALUES ('1130500', 'LykanLauncher', '38', '1', '57000', '28500', '0', '0', '1', '3', 'attmin,21; attmax,29; ');
INSERT INTO `bout_items` VALUES ('1130501', 'LykanLauncherTD(+1)', '34', '0', '22000', '5500', '0', '0', '1', '3', 'attmin,21; attmax,29; transbotdef,141; ');
INSERT INTO `bout_items` VALUES ('1130502', 'LykanLauncherTD(+2)', '35', '0', '25000', '6250', '0', '0', '1', '3', 'attmin,21; attmax,29; transbotdef,165; ');
INSERT INTO `bout_items` VALUES ('1130503', 'LykanLauncherTD(+3)', '36', '0', '29000', '7250', '0', '0', '1', '3', 'attmin,21; attmax,29; transbotdef,225; ');
INSERT INTO `bout_items` VALUES ('1130504', 'LykanLauncherTD(+4)', '37', '0', '32000', '8000', '0', '0', '1', '3', 'attmin,21; attmax,29; transbotdef,259; ');
INSERT INTO `bout_items` VALUES ('1130505', 'LykanLauncherTD(+5)', '38', '0', '35000', '8750', '0', '0', '1', '3', 'attmin,21; attmax,29; transbotdef,285; ');
INSERT INTO `bout_items` VALUES ('1130600', 'Hyperbore', '48', '1', '75000', '37500', '0', '0', '1', '3', 'attmin,24; attmax,33; ');
INSERT INTO `bout_items` VALUES ('1130601', 'HyperboreTD(+1)', '44', '0', '34000', '8500', '0', '0', '1', '3', 'attmin,24; attmax,33; transbotdef,171; ');
INSERT INTO `bout_items` VALUES ('1130602', 'HyperboreTD(+2)', '45', '0', '35000', '8750', '0', '0', '1', '3', 'attmin,24; attmax,33; transbotdef,195; ');
INSERT INTO `bout_items` VALUES ('1130603', 'HyperboreTD(+3)', '46', '0', '37000', '9250', '0', '0', '1', '3', 'attmin,24; attmax,33; transbotdef,255; ');
INSERT INTO `bout_items` VALUES ('1130604', 'HyperboreTD(+4)', '47', '0', '41000', '10250', '0', '0', '1', '3', 'attmin,24; attmax,33; transbotdef,293; ');
INSERT INTO `bout_items` VALUES ('1130605', 'HyperboreTD(+5)', '48', '0', '45000', '11250', '0', '0', '1', '3', 'attmin,24; attmax,33; transbotdef,323; ');
INSERT INTO `bout_items` VALUES ('1130700', 'Firewall', '58', '1', '80000', '40000', '0', '0', '1', '3', 'attmin,27; attmax,37; ');
INSERT INTO `bout_items` VALUES ('1130701', 'FirewallTD(+1)', '54', '0', '40000', '10000', '0', '0', '1', '3', 'attmin,27; attmax,37; transbotdef,201; ');
INSERT INTO `bout_items` VALUES ('1130702', 'FirewallTD(+2)', '55', '0', '41000', '10250', '0', '0', '1', '3', 'attmin,27; attmax,37; transbotdef,225; ');
INSERT INTO `bout_items` VALUES ('1130703', 'FirewallTD(+3)', '56', '0', '43000', '10750', '0', '0', '1', '3', 'attmin,27; attmax,37; transbotdef,285; ');
INSERT INTO `bout_items` VALUES ('1130704', 'FirewallTD(+4)', '57', '0', '47000', '11750', '0', '0', '1', '3', 'attmin,27; attmax,37; transbotdef,328; ');
INSERT INTO `bout_items` VALUES ('1130705', 'FirewallTD(+5)', '58', '0', '52000', '13000', '0', '0', '1', '3', 'attmin,27; attmax,37; transbotdef,361; ');
INSERT INTO `bout_items` VALUES ('1130800', 'Blazer', '68', '1', '152000', '76000', '0', '0', '1', '3', 'attmin,30; attmax,41; ');
INSERT INTO `bout_items` VALUES ('1130801', 'BlazerTD(+1)', '64', '0', '45000', '11250', '0', '0', '1', '3', 'attmin,30; attmax,41; transbotdef,231; ');
INSERT INTO `bout_items` VALUES ('1130802', 'BlazerTD(+2)', '65', '0', '46000', '11500', '0', '0', '1', '3', 'attmin,30; attmax,41; transbotdef,255; ');
INSERT INTO `bout_items` VALUES ('1130803', 'BlazerTD(+3)', '66', '0', '48000', '12000', '0', '0', '1', '3', 'attmin,30; attmax,41; transbotdef,315; ');
INSERT INTO `bout_items` VALUES ('1130804', 'BlazerTD(+4)', '67', '0', '53000', '13250', '0', '0', '1', '3', 'attmin,30; attmax,41; transbotdef,362; ');
INSERT INTO `bout_items` VALUES ('1130805', 'BlazerTD(+5)', '68', '0', '58000', '14500', '0', '0', '1', '3', 'attmin,30; attmax,41; transbotdef,398; ');
INSERT INTO `bout_items` VALUES ('1130900', 'Ultrabash', '78', '1', '228000', '114000', '0', '0', '1', '3', 'attmin,33; attmax,45; ');
INSERT INTO `bout_items` VALUES ('1130901', 'UltrabashTD(+1)', '74', '0', '52000', '13000', '0', '0', '1', '3', 'attmin,33; attmax,45; transbotdef,261; ');
INSERT INTO `bout_items` VALUES ('1130902', 'UltrabashTD(+2)', '75', '0', '53000', '13250', '0', '0', '1', '3', 'attmin,33; attmax,45; transbotdef,285; ');
INSERT INTO `bout_items` VALUES ('1130903', 'UltrabashTD(+3)', '76', '0', '55000', '13750', '0', '0', '1', '3', 'attmin,33; attmax,45; transbotdef,345; ');
INSERT INTO `bout_items` VALUES ('1130904', 'UltrabashTD(+4)', '77', '0', '61000', '15250', '0', '0', '1', '3', 'attmin,33; attmax,45; transbotdef,397; ');
INSERT INTO `bout_items` VALUES ('1130905', 'UltrabashTD(+5)', '78', '0', '67000', '16750', '0', '0', '1', '3', 'attmin,33; attmax,45; transbotdef,436; ');
INSERT INTO `bout_items` VALUES ('1131000', 'CGS', '88', '1', '342000', '171000', '0', '0', '1', '3', 'attmin,36; attmax,49; ');
INSERT INTO `bout_items` VALUES ('1131001', 'CGS-TD(+1)', '84', '0', '60000', '15000', '0', '0', '1', '3', 'attmin,36; attmax,49; transbotdef,291; ');
INSERT INTO `bout_items` VALUES ('1131002', 'CGS-TD(+2)', '85', '0', '61000', '15250', '0', '0', '1', '3', 'attmin,36; attmax,49; transbotdef,315; ');
INSERT INTO `bout_items` VALUES ('1131003', 'CGS-TD(+3)', '86', '0', '63000', '15750', '0', '0', '1', '3', 'attmin,36; attmax,49; transbotdef,375; ');
INSERT INTO `bout_items` VALUES ('1131004', 'CGS-TD(+4)', '87', '0', '69000', '17250', '0', '0', '1', '3', 'attmin,36; attmax,49; transbotdef,431; ');
INSERT INTO `bout_items` VALUES ('1131005', 'CGS-TD(+5)', '88', '0', '76000', '19000', '0', '0', '1', '3', 'attmin,36; attmax,49; transbotdef,474; ');
INSERT INTO `bout_items` VALUES ('1131100', 'Plasmodium', '98', '1', '612000', '306000', '0', '0', '1', '3', 'attmin,40; attmax,48; ');
INSERT INTO `bout_items` VALUES ('1131101', 'Plasmodium105(+1)', '94', '0', '67000', '16750', '0', '0', '1', '3', 'attmin,40; attmax,48; transbotdef,320; ');
INSERT INTO `bout_items` VALUES ('1131102', 'PlasmodiumTD(+2)', '95', '0', '68000', '17000', '0', '0', '1', '3', 'attmin,40; attmax,48; transbotdef,360; ');
INSERT INTO `bout_items` VALUES ('1131103', 'PlasmodiumTD(+3)', '96', '0', '72000', '18000', '0', '0', '1', '3', 'attmin,40; attmax,48; transbotdef,440; ');
INSERT INTO `bout_items` VALUES ('1131104', 'PlasmodiumTD(+4)', '97', '0', '79000', '19750', '0', '0', '1', '3', 'attmin,40; attmax,48; transbotdef,506; ');
INSERT INTO `bout_items` VALUES ('1131105', 'PlasmodiumTD(+5)', '98', '0', '87000', '21750', '0', '0', '1', '3', 'attmin,40; attmax,48; transbotdef,557; ');
INSERT INTO `bout_items` VALUES ('1210100', 'Spiker', '1', '1', '500', '250', '0', '0', '2', '1', 'hpp,66; ');
INSERT INTO `bout_items` VALUES ('1210101', 'SpikerMIS(+1)', '1', '0', '700', '175', '0', '0', '2', '1', 'hpp,66; evade,23; ');
INSERT INTO `bout_items` VALUES ('1210102', 'SpikerMIS(+2)', '1', '0', '900', '225', '0', '0', '2', '1', 'hpp,66; evade,35; ');
INSERT INTO `bout_items` VALUES ('1210103', 'SpikerMIS(+3)', '1', '0', '1200', '300', '0', '0', '2', '1', 'hpp,66; evade,65; ');
INSERT INTO `bout_items` VALUES ('1210104', 'SpikerMIS(+4)', '1', '0', '1300', '325', '0', '0', '2', '1', 'hpp,66; evade,75; ');
INSERT INTO `bout_items` VALUES ('1210105', 'SpikerMIS(+5)', '1', '0', '1400', '350', '0', '0', '2', '1', 'hpp,66; evade,82; ');
INSERT INTO `bout_items` VALUES ('1210200', 'Reacular', '8', '1', '2200', '1100', '0', '0', '2', '1', 'hpp,131; ');
INSERT INTO `bout_items` VALUES ('1210201', 'ReacularMIS(+1)', '4', '0', '1400', '350', '0', '0', '2', '1', 'hpp,131; evade,38; ');
INSERT INTO `bout_items` VALUES ('1210202', 'ReacularMIS(+2)', '5', '0', '1500', '375', '0', '0', '2', '1', 'hpp,131; evade,50; ');
INSERT INTO `bout_items` VALUES ('1210203', 'ReacularMIS(+3)', '6', '0', '1800', '450', '0', '0', '2', '1', 'hpp,131; evade,80; ');
INSERT INTO `bout_items` VALUES ('1210204', 'ReacularMIS(+4)', '7', '0', '2000', '500', '0', '0', '2', '1', 'hpp,131; evade,92; ');
INSERT INTO `bout_items` VALUES ('1210205', 'ReacularMIS(+5)', '8', '0', '2200', '550', '0', '0', '2', '1', 'hpp,131; evade,101; ');
INSERT INTO `bout_items` VALUES ('1210300', 'Sinder', '18', '1', '8300', '4150', '0', '0', '2', '1', 'hpp,196; ');
INSERT INTO `bout_items` VALUES ('1210301', 'SinderMIS(+1)', '14', '0', '5700', '1425', '0', '0', '2', '1', 'hpp,196; evade,53; ');
INSERT INTO `bout_items` VALUES ('1210302', 'SinderMIS(+2)', '15', '0', '8200', '2050', '0', '0', '2', '1', 'hpp,196; evade,65; ');
INSERT INTO `bout_items` VALUES ('1210303', 'SinderMIS(+3)', '16', '0', '12000', '3000', '0', '0', '2', '1', 'hpp,196; evade,95; ');
INSERT INTO `bout_items` VALUES ('1210304', 'SinderMIS(+4)', '17', '0', '13000', '3250', '0', '0', '2', '1', 'hpp,196; evade,109; ');
INSERT INTO `bout_items` VALUES ('1210305', 'SinderMIS(+5)', '18', '0', '14000', '3500', '0', '0', '2', '1', 'hpp,196; evade,120; ');
INSERT INTO `bout_items` VALUES ('1210400', 'Jet-Peak', '28', '1', '20000', '10000', '0', '0', '2', '1', 'hpp,261; ');
INSERT INTO `bout_items` VALUES ('1210401', 'Jet-PeakMIS(+1)', '24', '0', '17000', '4250', '0', '0', '2', '1', 'hpp,261; evade,68; ');
INSERT INTO `bout_items` VALUES ('1210402', 'Jet-PeakMIS(+2)', '25', '0', '21000', '5250', '0', '0', '2', '1', 'hpp,261; evade,80; ');
INSERT INTO `bout_items` VALUES ('1210403', 'Jet-PeakMIS(+3)', '26', '0', '26000', '6500', '0', '0', '2', '1', 'hpp,261; evade,110; ');
INSERT INTO `bout_items` VALUES ('1210404', 'Jet-PeakMIS(+4)', '27', '0', '29000', '7250', '0', '0', '2', '1', 'hpp,261; evade,127; ');
INSERT INTO `bout_items` VALUES ('1210405', 'Jet-PeakMIS(+5)', '28', '0', '32000', '8000', '0', '0', '2', '1', 'hpp,261; evade,139; ');
INSERT INTO `bout_items` VALUES ('1210500', 'Byte-Blaster', '38', '1', '80000', '40000', '0', '0', '2', '1', 'hpp,326; ');
INSERT INTO `bout_items` VALUES ('1210501', 'Byte-BlasterMIS(+1)', '34', '0', '39000', '9750', '0', '0', '2', '1', 'hpp,326; evade,83; ');
INSERT INTO `bout_items` VALUES ('1210502', 'Byte-BlasterMIS(+2)', '35', '0', '44000', '11000', '0', '0', '2', '1', 'hpp,326; evade,95; ');
INSERT INTO `bout_items` VALUES ('1210503', 'Byte-BlasterMIS(+3)', '36', '0', '51000', '12750', '0', '0', '2', '1', 'hpp,326; evade,125; ');
INSERT INTO `bout_items` VALUES ('1210504', 'Byte-BlasterMIS(+4)', '37', '0', '56000', '14000', '0', '0', '2', '1', 'hpp,326; evade,144; ');
INSERT INTO `bout_items` VALUES ('1210505', 'Byte-BlasterMIS(+5)', '38', '0', '62000', '15500', '0', '0', '2', '1', 'hpp,326; evade,158; ');
INSERT INTO `bout_items` VALUES ('1210600', 'Skimmer', '48', '1', '98000', '49000', '0', '0', '2', '1', 'hpp,391; ');
INSERT INTO `bout_items` VALUES ('1210601', 'SkimmerMIS(+1)', '44', '0', '62000', '15500', '0', '0', '2', '1', 'hpp,391; evade,98; ');
INSERT INTO `bout_items` VALUES ('1210602', 'SkimmerMIS(+2)', '45', '0', '64000', '16000', '0', '0', '2', '1', 'hpp,391; evade,110; ');
INSERT INTO `bout_items` VALUES ('1210603', 'SkimmerMIS(+3)', '46', '0', '69000', '17250', '0', '0', '2', '1', 'hpp,391; evade,140; ');
INSERT INTO `bout_items` VALUES ('1210604', 'SkimmerMIS(+4)', '47', '0', '76000', '19000', '0', '0', '2', '1', 'hpp,391; evade,161; ');
INSERT INTO `bout_items` VALUES ('1210605', 'SkimmerMIS(+5)', '48', '0', '84000', '21000', '0', '0', '2', '1', 'hpp,391; evade,177; ');
INSERT INTO `bout_items` VALUES ('1210700', 'Cyblade', '58', '1', '110000', '55000', '0', '0', '2', '1', 'hpp,456; ');
INSERT INTO `bout_items` VALUES ('1210701', 'CybladeMIS(+1)', '54', '0', '75000', '18750', '0', '0', '2', '1', 'hpp,456; evade,113; ');
INSERT INTO `bout_items` VALUES ('1210702', 'CybladeMIS(+2)', '55', '0', '77000', '19250', '0', '0', '2', '1', 'hpp,456; evade,125; ');
INSERT INTO `bout_items` VALUES ('1210703', 'CybladeMIS(+3)', '56', '0', '82000', '20500', '0', '0', '2', '1', 'hpp,456; evade,155; ');
INSERT INTO `bout_items` VALUES ('1210704', 'CybladeMIS(+4)', '57', '0', '90000', '22500', '0', '0', '2', '1', 'hpp,456; evade,178; ');
INSERT INTO `bout_items` VALUES ('1210705', 'CybladeMIS(+5)', '58', '0', '99000', '24750', '0', '0', '2', '1', 'hpp,456; evade,196; ');
INSERT INTO `bout_items` VALUES ('1210800', 'Trilicor', '68', '1', '210000', '105000', '0', '0', '2', '1', 'hpp,521; ');
INSERT INTO `bout_items` VALUES ('1210801', 'TrilicorMIS(+1)', '64', '0', '86000', '21500', '0', '0', '2', '1', 'hpp,521; evade,128; ');
INSERT INTO `bout_items` VALUES ('1210802', 'TrilicorMIS(+2)', '65', '0', '88000', '22000', '0', '0', '2', '1', 'hpp,521; evade,140; ');
INSERT INTO `bout_items` VALUES ('1210803', 'TrilicorMIS(+3)', '66', '0', '93000', '23250', '0', '0', '2', '1', 'hpp,521; evade,170; ');
INSERT INTO `bout_items` VALUES ('1210804', 'TrilicorMIS(+4)', '67', '0', '102000', '25500', '0', '0', '2', '1', 'hpp,521; evade,196; ');
INSERT INTO `bout_items` VALUES ('1210805', 'TrilicorMIS(+5)', '68', '0', '112000', '28000', '0', '0', '2', '1', 'hpp,521; evade,215; ');
INSERT INTO `bout_items` VALUES ('1210900', 'Kilohawk', '78', '1', '315000', '157500', '0', '0', '2', '1', 'hpp,586; ');
INSERT INTO `bout_items` VALUES ('1210901', 'KilohawkMIS(+1)', '74', '0', '101000', '25250', '0', '0', '2', '1', 'hpp,586; evade,143; ');
INSERT INTO `bout_items` VALUES ('1210902', 'KilohawkMIS(+2)', '75', '0', '103000', '25750', '0', '0', '2', '1', 'hpp,586; evade,155; ');
INSERT INTO `bout_items` VALUES ('1210903', 'KilohawkMIS(+3)', '76', '0', '108000', '27000', '0', '0', '2', '1', 'hpp,586; evade,185; ');
INSERT INTO `bout_items` VALUES ('1210904', 'KilohawkMIS(+4)', '77', '0', '119000', '29750', '0', '0', '2', '1', 'hpp,586; evade,213; ');
INSERT INTO `bout_items` VALUES ('1210905', 'KilohawkMIS(+5)', '78', '0', '131000', '32750', '0', '0', '2', '1', 'hpp,586; evade,234; ');
INSERT INTO `bout_items` VALUES ('1211000', 'Sabercron', '88', '1', '472500', '236250', '0', '0', '2', '1', 'hpp,651; ');
INSERT INTO `bout_items` VALUES ('1211001', 'SabercronMIS(+1)', '84', '0', '118000', '29500', '0', '0', '2', '1', 'hpp,651; evade,158; ');
INSERT INTO `bout_items` VALUES ('1211002', 'SabercronMIS(+2)', '85', '0', '121000', '30250', '0', '0', '2', '1', 'hpp,651; evade,170; ');
INSERT INTO `bout_items` VALUES ('1211003', 'SabercronMIS(+3)', '86', '0', '126000', '31500', '0', '0', '2', '1', 'hpp,651; evade,200; ');
INSERT INTO `bout_items` VALUES ('1211004', 'SabercronMIS(+4)', '87', '0', '139000', '34750', '0', '0', '2', '1', 'hpp,651; evade,230; ');
INSERT INTO `bout_items` VALUES ('1211005', 'SabercronMIS(+5)', '88', '0', '153000', '38250', '0', '0', '2', '1', 'hpp,651; evade,253; ');
INSERT INTO `bout_items` VALUES ('1211100', 'Bladium', '98', '1', '722500', '361250', '0', '0', '2', '1', 'hpp,730; ');
INSERT INTO `bout_items` VALUES ('1211101', 'BladiumMIS(+1)', '94', '0', '144000', '36000', '0', '0', '2', '1', 'hpp,730; evade,200; ');
INSERT INTO `bout_items` VALUES ('1211102', 'BladiumMIS(+2)', '95', '0', '152000', '38000', '0', '0', '2', '1', 'hpp,730; evade,240; ');
INSERT INTO `bout_items` VALUES ('1211103', 'BladiumMIS(+3)', '96', '0', '159000', '39750', '0', '0', '2', '1', 'hpp,730; evade,280; ');
INSERT INTO `bout_items` VALUES ('1211104', 'BladiumMIS(+4)', '97', '0', '175000', '43750', '0', '0', '2', '1', 'hpp,730; evade,322; ');
INSERT INTO `bout_items` VALUES ('1211105', 'BladiumMIS(+5)', '98', '0', '193000', '48250', '0', '0', '2', '1', 'hpp,730; evade,354; ');
INSERT INTO `bout_items` VALUES ('1211200', 'SantaHelmet', '1', '0', '100', '100', '0', '10', '2', '1', 'hpp,196; transspeed,312; ');
INSERT INTO `bout_items` VALUES ('1211400', 'SurgeMark', '1', '0', '100', '100', '0', '5', '2', '1', 'hpp,196; transspeed,312; ');
INSERT INTO `bout_items` VALUES ('1211405', 'SurgeMarkMIS(+5)', '108', '0', '0', '0', '0', '0', '2', '1', 'hpp,830; evade,297; ');
INSERT INTO `bout_items` VALUES ('1220100', 'Spiker', '1', '1', '700', '350', '0', '0', '2', '2', 'atttransmin,18; atttransmax,21; ');
INSERT INTO `bout_items` VALUES ('1220101', 'SpikerBST(+1)', '1', '0', '800', '200', '0', '0', '2', '2', 'atttransmin,18; atttransmax,21; speed,3; ');
INSERT INTO `bout_items` VALUES ('1220102', 'SpikerBST(+2)', '1', '0', '1000', '250', '0', '0', '2', '2', 'atttransmin,18; atttransmax,21; speed,15; ');
INSERT INTO `bout_items` VALUES ('1220103', 'SpikerBST(+3)', '1', '0', '1600', '400', '0', '0', '2', '2', 'atttransmin,18; atttransmax,21; speed,45; ');
INSERT INTO `bout_items` VALUES ('1220104', 'SpikerBST(+4)', '1', '0', '1800', '450', '0', '0', '2', '2', 'atttransmin,18; atttransmax,21; speed,52; ');
INSERT INTO `bout_items` VALUES ('1220105', 'SpikerBST(+5)', '1', '0', '2000', '500', '0', '0', '2', '2', 'atttransmin,18; atttransmax,21; speed,57; ');
INSERT INTO `bout_items` VALUES ('1220200', 'Reacular', '8', '1', '2900', '1450', '0', '0', '2', '2', 'atttransmin,28; atttransmax,42; ');
INSERT INTO `bout_items` VALUES ('1220201', 'ReacularBST(+1)', '4', '0', '1700', '425', '0', '0', '2', '2', 'atttransmin,28; atttransmax,42; speed,18; ');
INSERT INTO `bout_items` VALUES ('1220202', 'ReacularBST(+2)', '5', '0', '1900', '475', '0', '0', '2', '2', 'atttransmin,28; atttransmax,42; speed,30; ');
INSERT INTO `bout_items` VALUES ('1220203', 'ReacularBST(+3)', '6', '0', '2500', '625', '0', '0', '2', '2', 'atttransmin,28; atttransmax,42; speed,60; ');
INSERT INTO `bout_items` VALUES ('1220204', 'ReacularBST(+4)', '7', '0', '2800', '700', '0', '0', '2', '2', 'atttransmin,28; atttransmax,42; speed,69; ');
INSERT INTO `bout_items` VALUES ('1220205', 'ReacularBST(+5)', '8', '0', '3100', '775', '0', '0', '2', '2', 'atttransmin,28; atttransmax,42; speed,76; ');
INSERT INTO `bout_items` VALUES ('1220300', 'Sinder', '18', '1', '10000', '5000', '0', '0', '2', '2', 'atttransmin,38; atttransmax,63; ');
INSERT INTO `bout_items` VALUES ('1220301', 'SinderBST(+1)', '14', '0', '7100', '1775', '0', '0', '2', '2', 'atttransmin,38; atttransmax,63; speed,33; ');
INSERT INTO `bout_items` VALUES ('1220302', 'SinderBST(+2)', '15', '0', '10000', '2500', '0', '0', '2', '2', 'atttransmin,38; atttransmax,63; speed,45; ');
INSERT INTO `bout_items` VALUES ('1220303', 'SinderBST(+3)', '16', '0', '16000', '4000', '0', '0', '2', '2', 'atttransmin,38; atttransmax,63; speed,75; ');
INSERT INTO `bout_items` VALUES ('1220304', 'SinderBST(+4)', '17', '0', '18000', '4500', '0', '0', '2', '2', 'atttransmin,38; atttransmax,63; speed,86; ');
INSERT INTO `bout_items` VALUES ('1220305', 'SinderBST(+5)', '18', '0', '20000', '5000', '0', '0', '2', '2', 'atttransmin,38; atttransmax,63; speed,95; ');
INSERT INTO `bout_items` VALUES ('1220400', 'Jet-Peak', '28', '1', '25000', '12500', '0', '0', '2', '2', 'atttransmin,48; atttransmax,84; ');
INSERT INTO `bout_items` VALUES ('1220401', 'Jet-PeakBST(+1)', '24', '0', '22000', '5500', '0', '0', '2', '2', 'atttransmin,48; atttransmax,84; speed,48; ');
INSERT INTO `bout_items` VALUES ('1220402', 'Jet-PeakBST(+2)', '25', '0', '27000', '6750', '0', '0', '2', '2', 'atttransmin,48; atttransmax,84; speed,60; ');
INSERT INTO `bout_items` VALUES ('1220403', 'Jet-PeakBST(+3)', '26', '0', '36000', '9000', '0', '0', '2', '2', 'atttransmin,48; atttransmax,84; speed,90; ');
INSERT INTO `bout_items` VALUES ('1220404', 'Jet-PeakBST(+4)', '27', '0', '40000', '10000', '0', '0', '2', '2', 'atttransmin,48; atttransmax,84; speed,104; ');
INSERT INTO `bout_items` VALUES ('1220405', 'Jet-PeakBST(+5)', '28', '0', '44000', '11000', '0', '0', '2', '2', 'atttransmin,48; atttransmax,84; speed,114; ');
INSERT INTO `bout_items` VALUES ('1220500', 'Byte-Blaster', '38', '1', '91000', '45500', '0', '0', '2', '2', 'atttransmin,58; atttransmax,105; ');
INSERT INTO `bout_items` VALUES ('1220501', 'Byte-BlasterBST(+1)', '34', '0', '50000', '12500', '0', '0', '2', '2', 'atttransmin,58; atttransmax,105; speed,63; ');
INSERT INTO `bout_items` VALUES ('1220502', 'Byte-BlasterBST(+2)', '35', '0', '57000', '14250', '0', '0', '2', '2', 'atttransmin,58; atttransmax,105; speed,75; ');
INSERT INTO `bout_items` VALUES ('1220503', 'Byte-BlasterBST(+3)', '36', '0', '69000', '17250', '0', '0', '2', '2', 'atttransmin,58; atttransmax,105; speed,105; ');
INSERT INTO `bout_items` VALUES ('1220504', 'Byte-BlasterBST(+4)', '37', '0', '76000', '19000', '0', '0', '2', '2', 'atttransmin,58; atttransmax,105; speed,121; ');
INSERT INTO `bout_items` VALUES ('1220505', 'Byte-BlasterBST(+5)', '38', '0', '84000', '21000', '0', '0', '2', '2', 'atttransmin,58; atttransmax,105; speed,133; ');
INSERT INTO `bout_items` VALUES ('1220600', 'Skimmer', '48', '1', '102000', '51000', '0', '0', '2', '2', 'atttransmin,68; atttransmax,126; ');
INSERT INTO `bout_items` VALUES ('1220601', 'SkimmerBST(+1)', '44', '0', '79000', '19750', '0', '0', '2', '2', 'atttransmin,68; atttransmax,126; speed,78; ');
INSERT INTO `bout_items` VALUES ('1220602', 'SkimmerBST(+2)', '45', '0', '84000', '21000', '0', '0', '2', '2', 'atttransmin,68; atttransmax,126; speed,90; ');
INSERT INTO `bout_items` VALUES ('1220603', 'SkimmerBST(+3)', '46', '0', '93000', '23250', '0', '0', '2', '2', 'atttransmin,68; atttransmax,126; speed,120; ');
INSERT INTO `bout_items` VALUES ('1220604', 'SkimmerBST(+4)', '47', '0', '102000', '25500', '0', '0', '2', '2', 'atttransmin,68; atttransmax,126; speed,138; ');
INSERT INTO `bout_items` VALUES ('1220605', 'SkimmerBST(+5)', '48', '0', '112000', '28000', '0', '0', '2', '2', 'atttransmin,68; atttransmax,126; speed,152; ');
INSERT INTO `bout_items` VALUES ('1220700', 'Cyblade', '58', '1', '130000', '65000', '0', '0', '2', '2', 'atttransmin,78; atttransmax,147; ');
INSERT INTO `bout_items` VALUES ('1220701', 'CybladeBST(+1)', '54', '0', '97000', '24250', '0', '0', '2', '2', 'atttransmin,78; atttransmax,147; speed,93; ');
INSERT INTO `bout_items` VALUES ('1220702', 'CybladeBST(+2)', '55', '0', '100000', '25000', '0', '0', '2', '2', 'atttransmin,78; atttransmax,147; speed,105; ');
INSERT INTO `bout_items` VALUES ('1220703', 'CybladeBST(+3)', '56', '0', '110000', '27500', '0', '0', '2', '2', 'atttransmin,78; atttransmax,147; speed,135; ');
INSERT INTO `bout_items` VALUES ('1220704', 'CybladeBST(+4)', '57', '0', '121000', '30250', '0', '0', '2', '2', 'atttransmin,78; atttransmax,147; speed,155; ');
INSERT INTO `bout_items` VALUES ('1220705', 'CybladeBST(+5)', '58', '0', '133000', '33250', '0', '0', '2', '2', 'atttransmin,78; atttransmax,147; speed,171; ');
INSERT INTO `bout_items` VALUES ('1220800', 'Trilicor', '68', '1', '247000', '123500', '0', '0', '2', '2', 'atttransmin,88; atttransmax,168; ');
INSERT INTO `bout_items` VALUES ('1220801', 'TrilicorBST(+1)', '64', '0', '112000', '28000', '0', '0', '2', '2', 'atttransmin,88; atttransmax,168; speed,108; ');
INSERT INTO `bout_items` VALUES ('1220802', 'TrilicorBST(+2)', '65', '0', '116000', '29000', '0', '0', '2', '2', 'atttransmin,88; atttransmax,168; speed,120; ');
INSERT INTO `bout_items` VALUES ('1220803', 'TrilicorBST(+3)', '66', '0', '125000', '31250', '0', '0', '2', '2', 'atttransmin,88; atttransmax,168; speed,150; ');
INSERT INTO `bout_items` VALUES ('1220804', 'TrilicorBST(+4)', '67', '0', '138000', '34500', '0', '0', '2', '2', 'atttransmin,88; atttransmax,168; speed,173; ');
INSERT INTO `bout_items` VALUES ('1220805', 'TrilicorBST(+5)', '68', '0', '152000', '38000', '0', '0', '2', '2', 'atttransmin,88; atttransmax,168; speed,190; ');
INSERT INTO `bout_items` VALUES ('1220900', 'Kilohawk', '78', '1', '370000', '185000', '0', '0', '2', '2', 'atttransmin,98; atttransmax,189; ');
INSERT INTO `bout_items` VALUES ('1220901', 'KilohawkBST(+1)', '74', '0', '131000', '32750', '0', '0', '2', '2', 'atttransmin,98; atttransmax,189; speed,123; ');
INSERT INTO `bout_items` VALUES ('1220902', 'KilohawkBST(+2)', '75', '0', '135000', '33750', '0', '0', '2', '2', 'atttransmin,98; atttransmax,189; speed,135; ');
INSERT INTO `bout_items` VALUES ('1220903', 'KilohawkBST(+3)', '76', '0', '145000', '36250', '0', '0', '2', '2', 'atttransmin,98; atttransmax,189; speed,165; ');
INSERT INTO `bout_items` VALUES ('1220904', 'KilohawkBST(+4)', '77', '0', '160000', '40000', '0', '0', '2', '2', 'atttransmin,98; atttransmax,189; speed,190; ');
INSERT INTO `bout_items` VALUES ('1220905', 'KilohawkBST(+5)', '78', '0', '176000', '44000', '0', '0', '2', '2', 'atttransmin,98; atttransmax,189; speed,209; ');
INSERT INTO `bout_items` VALUES ('1221000', 'Sabercron', '88', '1', '555000', '277500', '0', '0', '2', '2', 'atttransmin,108; atttransmax,210; ');
INSERT INTO `bout_items` VALUES ('1221001', 'SabercronBST(+1)', '84', '0', '155000', '38750', '0', '0', '2', '2', 'atttransmin,108; atttransmax,210; speed,138; ');
INSERT INTO `bout_items` VALUES ('1221002', 'SabercronBST(+2)', '85', '0', '159000', '39750', '0', '0', '2', '2', 'atttransmin,108; atttransmax,210; speed,150; ');
INSERT INTO `bout_items` VALUES ('1221003', 'SabercronBST(+3)', '86', '0', '169000', '42250', '0', '0', '2', '2', 'atttransmin,108; atttransmax,210; speed,180; ');
INSERT INTO `bout_items` VALUES ('1221004', 'SabercronBST(+4)', '87', '0', '186000', '46500', '0', '0', '2', '2', 'atttransmin,108; atttransmax,210; speed,207; ');
INSERT INTO `bout_items` VALUES ('1221005', 'SabercronBST(+5)', '88', '0', '205000', '51250', '0', '0', '2', '2', 'atttransmin,108; atttransmax,210; speed,228; ');
INSERT INTO `bout_items` VALUES ('1221100', 'Bladium', '98', '1', '855000', '427500', '0', '0', '2', '2', 'atttransmin,130; atttransmax,280; ');
INSERT INTO `bout_items` VALUES ('1221101', 'BladiumBST(+1)', '94', '0', '208000', '52000', '0', '0', '2', '2', 'atttransmin,130; atttransmax,280; speed,170; ');
INSERT INTO `bout_items` VALUES ('1221102', 'BladiumBST(+2)', '95', '0', '222000', '55500', '0', '0', '2', '2', 'atttransmin,130; atttransmax,280; speed,210; ');
INSERT INTO `bout_items` VALUES ('1221103', 'BladiumBST(+3)', '96', '0', '236000', '59000', '0', '0', '2', '2', 'atttransmin,130; atttransmax,280; speed,250; ');
INSERT INTO `bout_items` VALUES ('1221104', 'BladiumBST(+4)', '97', '0', '260000', '65000', '0', '0', '2', '2', 'atttransmin,130; atttransmax,280; speed,288; ');
INSERT INTO `bout_items` VALUES ('1221105', 'BladiumBST(+5)', '98', '0', '286000', '71500', '0', '0', '2', '2', 'atttransmin,130; atttransmax,280; speed,316; ');
INSERT INTO `bout_items` VALUES ('1221405', 'SurgeMarkBST(+5)', '108', '0', '0', '0', '0', '0', '2', '2', 'atttransmin,134; atttransmax,253; speed,272; ');
INSERT INTO `bout_items` VALUES ('1230100', 'Spiker', '1', '1', '400', '200', '0', '0', '2', '3', 'attmin,9; attmax,13; ');
INSERT INTO `bout_items` VALUES ('1230101', 'SpikerGUN(+1)', '1', '0', '800', '200', '0', '0', '2', '3', 'attmin,9; attmax,13; rangeatt,18; ');
INSERT INTO `bout_items` VALUES ('1230102', 'SpikerGUN(+2)', '1', '0', '900', '225', '0', '0', '2', '3', 'attmin,9; attmax,13; rangeatt,30; ');
INSERT INTO `bout_items` VALUES ('1230103', 'SpikerGUN(+3)', '1', '0', '1100', '275', '0', '0', '2', '3', 'attmin,9; attmax,13; rangeatt,60; ');
INSERT INTO `bout_items` VALUES ('1230104', 'SpikerGUN(+4)', '1', '0', '1200', '300', '0', '0', '2', '3', 'attmin,9; attmax,13; rangeatt,69; ');
INSERT INTO `bout_items` VALUES ('1230105', 'SpikerGUN(+5)', '1', '0', '1300', '325', '0', '0', '2', '3', 'attmin,9; attmax,13; rangeatt,76; ');
INSERT INTO `bout_items` VALUES ('1230200', 'Reacular', '8', '1', '2000', '1000', '0', '0', '2', '3', 'attmin,12; attmax,17; ');
INSERT INTO `bout_items` VALUES ('1230201', 'ReacularGUN(+1)', '4', '0', '1200', '300', '0', '0', '2', '3', 'attmin,12; attmax,17; rangeatt,33; ');
INSERT INTO `bout_items` VALUES ('1230202', 'ReacularGUN(+2)', '5', '0', '1300', '325', '0', '0', '2', '3', 'attmin,12; attmax,17; rangeatt,45; ');
INSERT INTO `bout_items` VALUES ('1230203', 'ReacularGUN(+3)', '6', '0', '1500', '375', '0', '0', '2', '3', 'attmin,12; attmax,17; rangeatt,75; ');
INSERT INTO `bout_items` VALUES ('1230204', 'ReacularGUN(+4)', '7', '0', '1700', '425', '0', '0', '2', '3', 'attmin,12; attmax,17; rangeatt,86; ');
INSERT INTO `bout_items` VALUES ('1230205', 'ReacularGUN(+5)', '8', '0', '1900', '475', '0', '0', '2', '3', 'attmin,12; attmax,17; rangeatt,95; ');
INSERT INTO `bout_items` VALUES ('1230300', 'Sinder', '18', '1', '6300', '3150', '0', '0', '2', '3', 'attmin,15; attmax,21; ');
INSERT INTO `bout_items` VALUES ('1230301', 'SinderGUN(+1)', '14', '0', '4200', '1050', '0', '0', '2', '3', 'attmin,15; attmax,21; rangeatt,48; ');
INSERT INTO `bout_items` VALUES ('1230302', 'SinderGUN(+2)', '15', '0', '6000', '1500', '0', '0', '2', '3', 'attmin,15; attmax,21; rangeatt,60; ');
INSERT INTO `bout_items` VALUES ('1230303', 'SinderGUN(+3)', '16', '0', '9000', '2250', '0', '0', '2', '3', 'attmin,15; attmax,21; rangeatt,90; ');
INSERT INTO `bout_items` VALUES ('1230304', 'SinderGUN(+4)', '17', '0', '10000', '2500', '0', '0', '2', '3', 'attmin,15; attmax,21; rangeatt,104; ');
INSERT INTO `bout_items` VALUES ('1230305', 'SinderGUN(+5)', '18', '0', '11000', '2750', '0', '0', '2', '3', 'attmin,15; attmax,21; rangeatt,114; ');
INSERT INTO `bout_items` VALUES ('1230400', 'Jet-Peak', '28', '1', '14000', '7000', '0', '0', '2', '3', 'attmin,18; attmax,25; ');
INSERT INTO `bout_items` VALUES ('1230401', 'Jet-PeakGUN(+1)', '24', '0', '12000', '3000', '0', '0', '2', '3', 'attmin,18; attmax,25; rangeatt,63; ');
INSERT INTO `bout_items` VALUES ('1230402', 'Jet-PeakGUN(+2)', '25', '0', '14000', '3500', '0', '0', '2', '3', 'attmin,18; attmax,25; rangeatt,75; ');
INSERT INTO `bout_items` VALUES ('1230403', 'Jet-PeakGUN(+3)', '26', '0', '18000', '4500', '0', '0', '2', '3', 'attmin,18; attmax,25; rangeatt,105; ');
INSERT INTO `bout_items` VALUES ('1230404', 'Jet-PeakGUN(+4)', '27', '0', '20000', '5000', '0', '0', '2', '3', 'attmin,18; attmax,25; rangeatt,121; ');
INSERT INTO `bout_items` VALUES ('1230405', 'Jet-PeakGUN(+5)', '28', '0', '22000', '5500', '0', '0', '2', '3', 'attmin,18; attmax,25; rangeatt,133; ');
INSERT INTO `bout_items` VALUES ('1230500', 'Byte-Blaster', '38', '1', '57000', '28500', '0', '0', '2', '3', 'attmin,21; attmax,29; ');
INSERT INTO `bout_items` VALUES ('1230501', 'Byte-BlasterGUN(+1)', '34', '0', '25000', '6250', '0', '0', '2', '3', 'attmin,21; attmax,29; rangeatt,78; ');
INSERT INTO `bout_items` VALUES ('1230502', 'Byte-BlasterGUN(+2)', '35', '0', '29000', '7250', '0', '0', '2', '3', 'attmin,21; attmax,29; rangeatt,90; ');
INSERT INTO `bout_items` VALUES ('1230503', 'Byte-BlasterGUN(+3)', '36', '0', '34000', '8500', '0', '0', '2', '3', 'attmin,21; attmax,29; rangeatt,120; ');
INSERT INTO `bout_items` VALUES ('1230504', 'Byte-BlasterGUN(+4)', '37', '0', '37000', '9250', '0', '0', '2', '3', 'attmin,21; attmax,29; rangeatt,138; ');
INSERT INTO `bout_items` VALUES ('1230505', 'Byte-BlasterGUN(+5)', '38', '0', '41000', '10250', '0', '0', '2', '3', 'attmin,21; attmax,29; rangeatt,152; ');
INSERT INTO `bout_items` VALUES ('1230600', 'Skimmer', '48', '1', '75000', '37500', '0', '0', '2', '3', 'attmin,24; attmax,33; ');
INSERT INTO `bout_items` VALUES ('1230601', 'SkimmerGUN(+1)', '44', '0', '39000', '9750', '0', '0', '2', '3', 'attmin,24; attmax,33; rangeatt,93; ');
INSERT INTO `bout_items` VALUES ('1230602', 'SkimmerGUN(+2)', '45', '0', '40000', '10000', '0', '0', '2', '3', 'attmin,24; attmax,33; rangeatt,105; ');
INSERT INTO `bout_items` VALUES ('1230603', 'SkimmerGUN(+3)', '46', '0', '44000', '11000', '0', '0', '2', '3', 'attmin,24; attmax,33; rangeatt,135; ');
INSERT INTO `bout_items` VALUES ('1230604', 'SkimmerGUN(+4)', '47', '0', '48000', '12000', '0', '0', '2', '3', 'attmin,24; attmax,33; rangeatt,155; ');
INSERT INTO `bout_items` VALUES ('1230605', 'SkimmerGUN(+5)', '48', '0', '53000', '13250', '0', '0', '2', '3', 'attmin,24; attmax,33; rangeatt,171; ');
INSERT INTO `bout_items` VALUES ('1230700', 'Cyblade', '58', '1', '80000', '40000', '0', '0', '2', '3', 'attmin,27; attmax,37; ');
INSERT INTO `bout_items` VALUES ('1230701', 'CybladeGUN(+1)', '54', '0', '45000', '11250', '0', '0', '2', '3', 'attmin,27; attmax,37; rangeatt,108; ');
INSERT INTO `bout_items` VALUES ('1230702', 'CybladeGUN(+2)', '55', '0', '47000', '11750', '0', '0', '2', '3', 'attmin,27; attmax,37; rangeatt,120; ');
INSERT INTO `bout_items` VALUES ('1230703', 'CybladeGUN(+3)', '56', '0', '51000', '12750', '0', '0', '2', '3', 'attmin,27; attmax,37; rangeatt,150; ');
INSERT INTO `bout_items` VALUES ('1230704', 'CybladeGUN(+4)', '57', '0', '56000', '14000', '0', '0', '2', '3', 'attmin,27; attmax,37; rangeatt,173; ');
INSERT INTO `bout_items` VALUES ('1230705', 'CybladeGUN(+5)', '58', '0', '62000', '15500', '0', '0', '2', '3', 'attmin,27; attmax,37; rangeatt,190; ');
INSERT INTO `bout_items` VALUES ('1230800', 'Trilicor', '68', '1', '152000', '76000', '0', '0', '2', '3', 'attmin,30; attmax,41; ');
INSERT INTO `bout_items` VALUES ('1230801', 'TrilicorGUN(+1)', '64', '0', '51000', '12750', '0', '0', '2', '3', 'attmin,30; attmax,41; rangeatt,123; ');
INSERT INTO `bout_items` VALUES ('1230802', 'TrilicorGUN(+2)', '65', '0', '53000', '13250', '0', '0', '2', '3', 'attmin,30; attmax,41; rangeatt,135; ');
INSERT INTO `bout_items` VALUES ('1230803', 'TrilicorGUN(+3)', '66', '0', '56000', '14000', '0', '0', '2', '3', 'attmin,30; attmax,41; rangeatt,165; ');
INSERT INTO `bout_items` VALUES ('1230804', 'TrilicorGUN(+4)', '67', '0', '62000', '15500', '0', '0', '2', '3', 'attmin,30; attmax,41; rangeatt,190; ');
INSERT INTO `bout_items` VALUES ('1230805', 'TrilicorGUN(+5)', '68', '0', '68000', '17000', '0', '0', '2', '3', 'attmin,30; attmax,41; rangeatt,209; ');
INSERT INTO `bout_items` VALUES ('1230900', 'Kilohawk', '78', '1', '228000', '114000', '0', '0', '2', '3', 'attmin,33; attmax,45; ');
INSERT INTO `bout_items` VALUES ('1230901', 'KilohawkGUN(+1)', '74', '0', '59000', '14750', '0', '0', '2', '3', 'attmin,33; attmax,45; rangeatt,138; ');
INSERT INTO `bout_items` VALUES ('1230902', 'KilohawkGUN(+2)', '75', '0', '61000', '15250', '0', '0', '2', '3', 'attmin,33; attmax,45; rangeatt,150; ');
INSERT INTO `bout_items` VALUES ('1230903', 'KilohawkGUN(+3)', '76', '0', '64000', '16000', '0', '0', '2', '3', 'attmin,33; attmax,45; rangeatt,180; ');
INSERT INTO `bout_items` VALUES ('1230904', 'KilohawkGUN(+4)', '77', '0', '70000', '17500', '0', '0', '2', '3', 'attmin,33; attmax,45; rangeatt,207; ');
INSERT INTO `bout_items` VALUES ('1230905', 'KilohawkGUN(+5)', '78', '0', '77000', '19250', '0', '0', '2', '3', 'attmin,33; attmax,45; rangeatt,228; ');
INSERT INTO `bout_items` VALUES ('1231000', 'Sabercron', '88', '1', '342000', '171000', '0', '0', '2', '3', 'attmin,36; attmax,49; ');
INSERT INTO `bout_items` VALUES ('1231001', 'SabercronGUN(+1)', '84', '0', '69000', '17250', '0', '0', '2', '3', 'attmin,36; attmax,49; rangeatt,153; ');
INSERT INTO `bout_items` VALUES ('1231002', 'SabercronGUN(+2)', '85', '0', '70000', '17500', '0', '0', '2', '3', 'attmin,36; attmax,49; rangeatt,165; ');
INSERT INTO `bout_items` VALUES ('1231003', 'SabercronGUN(+3)', '86', '0', '74000', '18500', '0', '0', '2', '3', 'attmin,36; attmax,49; rangeatt,195; ');
INSERT INTO `bout_items` VALUES ('1231004', 'SabercronGUN(+4)', '87', '0', '81000', '20250', '0', '0', '2', '3', 'attmin,36; attmax,49; rangeatt,224; ');
INSERT INTO `bout_items` VALUES ('1231005', 'SabercronGUN(+5)', '88', '0', '89000', '22250', '0', '0', '2', '3', 'attmin,36; attmax,49; rangeatt,247; ');
INSERT INTO `bout_items` VALUES ('1231100', 'Bladium', '98', '1', '612000', '306000', '0', '0', '2', '3', 'attmin,45; attmax,58; ');
INSERT INTO `bout_items` VALUES ('1231101', 'BladiumGUN(+1)', '94', '0', '89000', '22250', '0', '0', '2', '3', 'attmin,45; attmax,58; rangeatt,190; ');
INSERT INTO `bout_items` VALUES ('1231102', 'BladiumGUN(+2)', '95', '0', '94000', '23500', '0', '0', '2', '3', 'attmin,45; attmax,58; rangeatt,230; ');
INSERT INTO `bout_items` VALUES ('1231103', 'BladiumGUN(+3)', '96', '0', '98000', '24500', '0', '0', '2', '3', 'attmin,45; attmax,58; rangeatt,260; ');
INSERT INTO `bout_items` VALUES ('1231104', 'BladiumGUN(+4)', '97', '0', '108000', '27000', '0', '0', '2', '3', 'attmin,45; attmax,58; rangeatt,299; ');
INSERT INTO `bout_items` VALUES ('1231105', 'BladiumGUN(+5)', '98', '0', '119000', '29750', '0', '0', '2', '3', 'attmin,45; attmax,58; rangeatt,329; ');
INSERT INTO `bout_items` VALUES ('1231405', 'SurgeMarkGUN(+5)', '108', '0', '0', '0', '0', '0', '2', '3', 'attmin,46; attmax,58; ');
INSERT INTO `bout_items` VALUES ('1310100', 'Mohawk', '1', '1', '500', '0', '0', '0', '3', '1', '');
INSERT INTO `bout_items` VALUES ('1310101', 'MohawkSP(+1)', '1', '0', '600', '150', '0', '0', '3', '1', 'hpp,66; spectrans,9; ');
INSERT INTO `bout_items` VALUES ('1310102', 'MohawkSP(+2)', '1', '0', '800', '200', '0', '0', '3', '1', 'hpp,66; spectrans,23; ');
INSERT INTO `bout_items` VALUES ('1310103', 'MohawkSP(+3)', '1', '0', '1300', '325', '0', '0', '3', '1', 'hpp,66; spectrans,58; ');
INSERT INTO `bout_items` VALUES ('1310104', 'MohawkSP(+4)', '1', '0', '1400', '350', '0', '0', '3', '1', 'hpp,66; spectrans,66; ');
INSERT INTO `bout_items` VALUES ('1310105', 'MohawkSP(+5)', '1', '0', '1500', '375', '0', '0', '3', '1', 'hpp,66; spectrans,73; ');
INSERT INTO `bout_items` VALUES ('1310200', 'Davey-Croc', '8', '1', '2200', '1100', '0', '0', '3', '1', 'hpp,131; ');
INSERT INTO `bout_items` VALUES ('1310201', 'Davey-CrocSP(+1)', '4', '0', '1400', '350', '0', '0', '3', '1', 'hpp,131; spectrans,26; ');
INSERT INTO `bout_items` VALUES ('1310202', 'Davey-CrocSP(+2)', '5', '0', '1500', '375', '0', '0', '3', '1', 'hpp,131; spectrans,40; ');
INSERT INTO `bout_items` VALUES ('1310203', 'Davey-CrocSP(+3)', '6', '0', '2000', '500', '0', '0', '3', '1', 'hpp,131; spectrans,75; ');
INSERT INTO `bout_items` VALUES ('1310204', 'Davey-CrocSP(+4)', '7', '0', '2200', '550', '0', '0', '3', '1', 'hpp,131; spectrans,86; ');
INSERT INTO `bout_items` VALUES ('1310205', 'Davey-CrocSP(+5)', '8', '0', '2400', '600', '0', '0', '3', '1', 'hpp,131; spectrans,95; ');
INSERT INTO `bout_items` VALUES ('1310300', 'Solar-Buster', '18', '1', '8300', '4150', '0', '0', '3', '1', 'hpp,196; ');
INSERT INTO `bout_items` VALUES ('1310301', 'Solar-BusterSP(+1)', '14', '0', '5900', '1475', '0', '0', '3', '1', 'hpp,196; spectrans,44; ');
INSERT INTO `bout_items` VALUES ('1310302', 'Solar-BusterSP(+2)', '15', '0', '8600', '2150', '0', '0', '3', '1', 'hpp,196; spectrans,58; ');
INSERT INTO `bout_items` VALUES ('1310303', 'Solar-BusterSP(+3)', '16', '0', '13000', '3250', '0', '0', '3', '1', 'hpp,196; spectrans,93; ');
INSERT INTO `bout_items` VALUES ('1310304', 'Solar-BusterSP(+4)', '17', '0', '14000', '3500', '0', '0', '3', '1', 'hpp,196; spectrans,106; ');
INSERT INTO `bout_items` VALUES ('1310305', 'Solar-BusterSP(+5)', '18', '0', '15000', '3750', '0', '0', '3', '1', 'hpp,196; spectrans,117; ');
INSERT INTO `bout_items` VALUES ('1310400', 'Dusk-Runner', '28', '1', '20000', '10000', '0', '0', '3', '1', 'hpp,261; ');
INSERT INTO `bout_items` VALUES ('1310401', 'Dusk-RunnerSP(+1)', '24', '0', '18000', '4500', '0', '0', '3', '1', 'hpp,261; spectrans,61; ');
INSERT INTO `bout_items` VALUES ('1310402', 'Dusk-RunnerSP(+2)', '25', '0', '23000', '5750', '0', '0', '3', '1', 'hpp,261; spectrans,75; ');
INSERT INTO `bout_items` VALUES ('1310403', 'Dusk-RunnerSP(+3)', '26', '0', '29000', '7250', '0', '0', '3', '1', 'hpp,261; spectrans,110; ');
INSERT INTO `bout_items` VALUES ('1310404', 'Dusk-RunnerSP(+4)', '27', '0', '32000', '8000', '0', '0', '3', '1', 'hpp,261; spectrans,127; ');
INSERT INTO `bout_items` VALUES ('1310405', 'Dusk-RunnerSP(+5)', '28', '0', '35000', '8750', '0', '0', '3', '1', 'hpp,261; spectrans,139; ');
INSERT INTO `bout_items` VALUES ('1310500', 'Synapse', '38', '1', '80000', '40000', '0', '0', '3', '1', 'hpp,326; ');
INSERT INTO `bout_items` VALUES ('1310501', 'SynapseSP(+1)', '34', '0', '41000', '10250', '0', '0', '3', '1', 'hpp,326; spectrans,79; ');
INSERT INTO `bout_items` VALUES ('1310502', 'SynapseSP(+2)', '35', '0', '47000', '11750', '0', '0', '3', '1', 'hpp,326; spectrans,93; ');
INSERT INTO `bout_items` VALUES ('1310503', 'SynapseSP(+3)', '36', '0', '58000', '14500', '0', '0', '3', '1', 'hpp,326; spectrans,128; ');
INSERT INTO `bout_items` VALUES ('1310504', 'SynapseSP(+4)', '37', '0', '64000', '16000', '0', '0', '3', '1', 'hpp,326; spectrans,147; ');
INSERT INTO `bout_items` VALUES ('1310505', 'SynapseSP(+5)', '38', '0', '70000', '17500', '0', '0', '3', '1', 'hpp,326; spectrans,161; ');
INSERT INTO `bout_items` VALUES ('1310600', 'SpikeEMT', '48', '1', '98000', '49000', '0', '0', '3', '1', 'hpp,391; ');
INSERT INTO `bout_items` VALUES ('1310601', 'SpikeEMTSP(+1)', '44', '0', '66000', '16500', '0', '0', '3', '1', 'hpp,391; spectrans,96; ');
INSERT INTO `bout_items` VALUES ('1310602', 'SpikeEMTSP(+2)', '45', '0', '70000', '17500', '0', '0', '3', '1', 'hpp,391; spectrans,110; ');
INSERT INTO `bout_items` VALUES ('1310603', 'SpikeEMTSP(+3)', '46', '0', '77000', '19250', '0', '0', '3', '1', 'hpp,391; spectrans,145; ');
INSERT INTO `bout_items` VALUES ('1310604', 'SpikeEMTSP(+4)', '47', '0', '85000', '21250', '0', '0', '3', '1', 'hpp,391; spectrans,167; ');
INSERT INTO `bout_items` VALUES ('1310605', 'SpikeEMTSP(+5)', '48', '0', '94000', '23500', '0', '0', '3', '1', 'hpp,391; spectrans,183; ');
INSERT INTO `bout_items` VALUES ('1310700', 'Neg-Volt', '58', '1', '110000', '55000', '0', '0', '3', '1', 'hpp,456; ');
INSERT INTO `bout_items` VALUES ('1310701', 'Neg-VoltSP(+1)', '54', '0', '81000', '20250', '0', '0', '3', '1', 'hpp,456; spectrans,114; ');
INSERT INTO `bout_items` VALUES ('1310702', 'Neg-VoltSP(+2)', '55', '0', '84000', '21000', '0', '0', '3', '1', 'hpp,456; spectrans,128; ');
INSERT INTO `bout_items` VALUES ('1310703', 'Neg-VoltSP(+3)', '56', '0', '92000', '23000', '0', '0', '3', '1', 'hpp,456; spectrans,163; ');
INSERT INTO `bout_items` VALUES ('1310704', 'Neg-VoltSP(+4)', '57', '0', '101000', '25250', '0', '0', '3', '1', 'hpp,456; spectrans,187; ');
INSERT INTO `bout_items` VALUES ('1310705', 'Neg-VoltSP(+5)', '58', '0', '111000', '27750', '0', '0', '3', '1', 'hpp,456; spectrans,206; ');
INSERT INTO `bout_items` VALUES ('1310800', 'Scritter', '68', '1', '210000', '105000', '0', '0', '3', '1', 'hpp,521; ');
INSERT INTO `bout_items` VALUES ('1310801', 'ScritterSP(+1)', '64', '0', '94000', '23500', '0', '0', '3', '1', 'hpp,521; spectrans,131; ');
INSERT INTO `bout_items` VALUES ('1310802', 'ScritterSP(+2)', '65', '0', '97000', '24250', '0', '0', '3', '1', 'hpp,521; spectrans,145; ');
INSERT INTO `bout_items` VALUES ('1310803', 'ScritterSP(+3)', '66', '0', '104000', '26000', '0', '0', '3', '1', 'hpp,521; spectrans,180; ');
INSERT INTO `bout_items` VALUES ('1310804', 'ScritterSP(+4)', '67', '0', '114000', '28500', '0', '0', '3', '1', 'hpp,521; spectrans,207; ');
INSERT INTO `bout_items` VALUES ('1310805', 'ScritterSP(+5)', '68', '0', '125000', '31250', '0', '0', '3', '1', 'hpp,521; spectrans,228; ');
INSERT INTO `bout_items` VALUES ('1310900', 'Frost-Grapper', '78', '1', '315000', '157500', '0', '0', '3', '1', 'hpp,586; ');
INSERT INTO `bout_items` VALUES ('1310901', 'Frost-GrapperSP(+1)', '74', '0', '110000', '27500', '0', '0', '3', '1', 'hpp,586; spectrans,149; ');
INSERT INTO `bout_items` VALUES ('1310902', 'Frost-GrapperSP(+2)', '75', '0', '113000', '28250', '0', '0', '3', '1', 'hpp,586; spectrans,163; ');
INSERT INTO `bout_items` VALUES ('1310903', 'Frost-GrapperSP(+3)', '76', '0', '121000', '30250', '0', '0', '3', '1', 'hpp,586; spectrans,198; ');
INSERT INTO `bout_items` VALUES ('1310904', 'Frost-GrapperSP(+4)', '77', '0', '133000', '33250', '0', '0', '3', '1', 'hpp,586; spectrans,227; ');
INSERT INTO `bout_items` VALUES ('1310905', 'Frost-GrapperSP(+5)', '78', '0', '146000', '36500', '0', '0', '3', '1', 'hpp,586; spectrans,250; ');
INSERT INTO `bout_items` VALUES ('1311000', 'Plasma-Dasher', '88', '1', '472500', '236250', '0', '0', '3', '1', 'hpp,651; ');
INSERT INTO `bout_items` VALUES ('1311001', 'Plasma-DasherSP(+1)', '84', '0', '130000', '32500', '0', '0', '3', '1', 'hpp,651; spectrans,166; ');
INSERT INTO `bout_items` VALUES ('1311002', 'Plasma-DasherSP(+2)', '85', '0', '133000', '33250', '0', '0', '3', '1', 'hpp,651; spectrans,180; ');
INSERT INTO `bout_items` VALUES ('1311003', 'Plasma-DasherSP(+3)', '86', '0', '141000', '35250', '0', '0', '3', '1', 'hpp,651; spectrans,215; ');
INSERT INTO `bout_items` VALUES ('1311004', 'Plasma-DasherSP(+4)', '87', '0', '155000', '38750', '0', '0', '3', '1', 'hpp,651; spectrans,247; ');
INSERT INTO `bout_items` VALUES ('1311005', 'Plasma-DasherSP(+5)', '88', '0', '171000', '42750', '0', '0', '3', '1', 'hpp,651; spectrans,272; ');
INSERT INTO `bout_items` VALUES ('1311100', 'Illuminum', '98', '1', '722500', '361250', '0', '0', '3', '1', 'hpp,740; ');
INSERT INTO `bout_items` VALUES ('1311101', 'IlluminumSP(+1)', '94', '0', '163000', '40750', '0', '0', '3', '1', 'hpp,740; spectrans,220; ');
INSERT INTO `bout_items` VALUES ('1311102', 'IlluminumSP(+2)', '95', '0', '178000', '44500', '0', '0', '3', '1', 'hpp,740; spectrans,280; ');
INSERT INTO `bout_items` VALUES ('1311103', 'IlluminumSP(+3)', '96', '0', '186000', '46500', '0', '0', '3', '1', 'hpp,740; spectrans,310; ');
INSERT INTO `bout_items` VALUES ('1311104', 'IlluminumSP(+4)', '97', '0', '205000', '51250', '0', '0', '3', '1', 'hpp,740; spectrans,357; ');
INSERT INTO `bout_items` VALUES ('1311105', 'IlluminumSP(+5)', '98', '0', '226000', '56500', '0', '0', '3', '1', 'hpp,740; spectrans,392; ');
INSERT INTO `bout_items` VALUES ('1311200', 'SantaHelmet', '1', '0', '100', '100', '0', '10', '3', '1', 'hpp,196; transspeed,312; ');
INSERT INTO `bout_items` VALUES ('1311300', 'GMParts', '1', '0', '1', '1', '0', '0', '3', '1', 'hpp,456; ');
INSERT INTO `bout_items` VALUES ('1311400', 'RamMark', '1', '0', '100', '100', '0', '5', '3', '1', 'hpp,196; transspeed,312; ');
INSERT INTO `bout_items` VALUES ('1320100', 'Mohawk', '1', '1', '700', '350', '0', '0', '3', '2', 'atttransmin,18; atttransmax,21; ');
INSERT INTO `bout_items` VALUES ('1320101', 'MohawkMX(+1)', '1', '0', '900', '225', '0', '0', '3', '2', 'atttransmin,18; atttransmax,21; transspeed,17; ');
INSERT INTO `bout_items` VALUES ('1320102', 'MohawkMX(+2)', '1', '0', '1200', '300', '0', '0', '3', '2', 'atttransmin,18; atttransmax,21; transspeed,45; ');
INSERT INTO `bout_items` VALUES ('1320103', 'MohawkMX(+3)', '1', '0', '1900', '475', '0', '0', '3', '2', 'atttransmin,18; atttransmax,21; transspeed,115; ');
INSERT INTO `bout_items` VALUES ('1320104', 'MohawkMX(+4)', '1', '0', '2100', '525', '0', '0', '3', '2', 'atttransmin,18; atttransmax,21; transspeed,132; ');
INSERT INTO `bout_items` VALUES ('1320105', 'MohawkMX(+5)', '1', '0', '2300', '575', '0', '0', '3', '2', 'atttransmin,18; atttransmax,21; transspeed,145; ');
INSERT INTO `bout_items` VALUES ('1320200', 'Davey-Croc', '8', '1', '2900', '1450', '0', '0', '3', '2', 'atttransmin,28; atttransmax,42; ');
INSERT INTO `bout_items` VALUES ('1320201', 'Davey-CrocMX(+1)', '4', '0', '1800', '450', '0', '0', '3', '2', 'atttransmin,28; atttransmax,42; transspeed,52; ');
INSERT INTO `bout_items` VALUES ('1320202', 'Davey-CrocMX(+2)', '5', '0', '2100', '525', '0', '0', '3', '2', 'atttransmin,28; atttransmax,42; transspeed,80; ');
INSERT INTO `bout_items` VALUES ('1320203', 'Davey-CrocMX(+3)', '6', '0', '2800', '700', '0', '0', '3', '2', 'atttransmin,28; atttransmax,42; transspeed,150; ');
INSERT INTO `bout_items` VALUES ('1320204', 'Davey-CrocMX(+4)', '7', '0', '3100', '775', '0', '0', '3', '2', 'atttransmin,28; atttransmax,42; transspeed,173; ');
INSERT INTO `bout_items` VALUES ('1320205', 'Davey-CrocMX(+5)', '8', '0', '3400', '850', '0', '0', '3', '2', 'atttransmin,28; atttransmax,42; transspeed,190; ');
INSERT INTO `bout_items` VALUES ('1320300', 'Solar-Buster', '18', '1', '10000', '5000', '0', '0', '3', '2', 'atttransmin,38; atttransmax,63; ');
INSERT INTO `bout_items` VALUES ('1320301', 'Solar-BusterMX(+1)', '14', '0', '7800', '1950', '0', '0', '3', '2', 'atttransmin,38; atttransmax,63; transspeed,87; ');
INSERT INTO `bout_items` VALUES ('1320302', 'Solar-BusterMX(+2)', '15', '0', '12000', '3000', '0', '0', '3', '2', 'atttransmin,38; atttransmax,63; transspeed,115; ');
INSERT INTO `bout_items` VALUES ('1320303', 'Solar-BusterMX(+3)', '16', '0', '18000', '4500', '0', '0', '3', '2', 'atttransmin,38; atttransmax,63; transspeed,185; ');
INSERT INTO `bout_items` VALUES ('1320304', 'Solar-BusterMX(+4)', '17', '0', '20000', '5000', '0', '0', '3', '2', 'atttransmin,38; atttransmax,63; transspeed,213; ');
INSERT INTO `bout_items` VALUES ('1320305', 'Solar-BusterMX(+5)', '18', '0', '22000', '5500', '0', '0', '3', '2', 'atttransmin,38; atttransmax,63; transspeed,234; ');
INSERT INTO `bout_items` VALUES ('1320400', 'Dusk-Runner', '28', '1', '25000', '12500', '0', '0', '3', '2', 'atttransmin,48; atttransmax,84; ');
INSERT INTO `bout_items` VALUES ('1320401', 'Dusk-RunnerMX(+1)', '24', '0', '24000', '6000', '0', '0', '3', '2', 'atttransmin,48; atttransmax,84; transspeed,122; ');
INSERT INTO `bout_items` VALUES ('1320402', 'Dusk-RunnerMX(+2)', '25', '0', '30000', '7500', '0', '0', '3', '2', 'atttransmin,48; atttransmax,84; transspeed,150; ');
INSERT INTO `bout_items` VALUES ('1320403', 'Dusk-RunnerMX(+3)', '26', '0', '40000', '10000', '0', '0', '3', '2', 'atttransmin,48; atttransmax,84; transspeed,220; ');
INSERT INTO `bout_items` VALUES ('1320404', 'Dusk-RunnerMX(+4)', '27', '0', '44000', '11000', '0', '0', '3', '2', 'atttransmin,48; atttransmax,84; transspeed,253; ');
INSERT INTO `bout_items` VALUES ('1320405', 'Dusk-RunnerMX(+5)', '28', '0', '48000', '12000', '0', '0', '3', '2', 'atttransmin,48; atttransmax,84; transspeed,278; ');
INSERT INTO `bout_items` VALUES ('1320500', 'Synapse', '38', '1', '91000', '45500', '0', '0', '3', '2', 'atttransmin,58; atttransmax,105; ');
INSERT INTO `bout_items` VALUES ('1320501', 'SynapseMX(+1)', '34', '0', '55000', '13750', '0', '0', '3', '2', 'atttransmin,58; atttransmax,105; transspeed,157; ');
INSERT INTO `bout_items` VALUES ('1320502', 'SynapseMX(+2)', '35', '0', '63000', '15750', '0', '0', '3', '2', 'atttransmin,58; atttransmax,105; transspeed,185; ');
INSERT INTO `bout_items` VALUES ('1320503', 'SynapseMX(+3)', '36', '0', '78000', '19500', '0', '0', '3', '2', 'atttransmin,58; atttransmax,105; transspeed,255; ');
INSERT INTO `bout_items` VALUES ('1320504', 'SynapseMX(+4)', '37', '0', '86000', '21500', '0', '0', '3', '2', 'atttransmin,58; atttransmax,105; transspeed,293; ');
INSERT INTO `bout_items` VALUES ('1320505', 'SynapseMX(+5)', '38', '0', '95000', '23750', '0', '0', '3', '2', 'atttransmin,58; atttransmax,105; transspeed,323; ');
INSERT INTO `bout_items` VALUES ('1320600', 'SpikeEMT', '48', '1', '102000', '51000', '0', '0', '3', '2', 'atttransmin,68; atttransmax,126; ');
INSERT INTO `bout_items` VALUES ('1320601', 'SpikeEMTMX(+1)', '44', '0', '87000', '21750', '0', '0', '3', '2', 'atttransmin,68; atttransmax,126; transspeed,192; ');
INSERT INTO `bout_items` VALUES ('1320602', 'SpikeEMTMX(+2)', '45', '0', '92000', '23000', '0', '0', '3', '2', 'atttransmin,68; atttransmax,126; transspeed,220; ');
INSERT INTO `bout_items` VALUES ('1320603', 'SpikeEMTMX(+3)', '46', '0', '104000', '26000', '0', '0', '3', '2', 'atttransmin,68; atttransmax,126; transspeed,290; ');
INSERT INTO `bout_items` VALUES ('1320604', 'SpikeEMTMX(+4)', '47', '0', '114000', '28500', '0', '0', '3', '2', 'atttransmin,68; atttransmax,126; transspeed,334; ');
INSERT INTO `bout_items` VALUES ('1320605', 'SpikeEMTMX(+5)', '48', '0', '125000', '31250', '0', '0', '3', '2', 'atttransmin,68; atttransmax,126; transspeed,367; ');
INSERT INTO `bout_items` VALUES ('1320700', 'Neg-Volt', '58', '1', '130000', '65000', '0', '0', '3', '2', 'atttransmin,78; atttransmax,147; ');
INSERT INTO `bout_items` VALUES ('1320701', 'Neg-VoltMX(+1)', '54', '0', '105000', '26250', '0', '0', '3', '2', 'atttransmin,78; atttransmax,147; transspeed,227; ');
INSERT INTO `bout_items` VALUES ('1320702', 'Neg-VoltMX(+2)', '55', '0', '110000', '27500', '0', '0', '3', '2', 'atttransmin,78; atttransmax,147; transspeed,255; ');
INSERT INTO `bout_items` VALUES ('1320703', 'Neg-VoltMX(+3)', '56', '0', '122000', '30500', '0', '0', '3', '2', 'atttransmin,78; atttransmax,147; transspeed,325; ');
INSERT INTO `bout_items` VALUES ('1320704', 'Neg-VoltMX(+4)', '57', '0', '134000', '33500', '0', '0', '3', '2', 'atttransmin,78; atttransmax,147; transspeed,374; ');
INSERT INTO `bout_items` VALUES ('1320705', 'Neg-VoltMX(+5)', '58', '0', '147000', '36750', '0', '0', '3', '2', 'atttransmin,78; atttransmax,147; transspeed,411; ');
INSERT INTO `bout_items` VALUES ('1320800', 'Scritter', '68', '1', '247000', '123500', '0', '0', '3', '2', 'atttransmin,88; atttransmax,168; ');
INSERT INTO `bout_items` VALUES ('1320801', 'ScritterMX(+1)', '64', '0', '122000', '30500', '0', '0', '3', '2', 'atttransmin,88; atttransmax,168; transspeed,262; ');
INSERT INTO `bout_items` VALUES ('1320802', 'ScritterMX(+2)', '65', '0', '127000', '31750', '0', '0', '3', '2', 'atttransmin,88; atttransmax,168; transspeed,290; ');
INSERT INTO `bout_items` VALUES ('1320803', 'ScritterMX(+3)', '66', '0', '138000', '34500', '0', '0', '3', '2', 'atttransmin,88; atttransmax,168; transspeed,360; ');
INSERT INTO `bout_items` VALUES ('1320804', 'ScritterMX(+4)', '67', '0', '152000', '38000', '0', '0', '3', '2', 'atttransmin,88; atttransmax,168; transspeed,414; ');
INSERT INTO `bout_items` VALUES ('1320805', 'ScritterMX(+5)', '68', '0', '167000', '41750', '0', '0', '3', '2', 'atttransmin,88; atttransmax,168; transspeed,455; ');
INSERT INTO `bout_items` VALUES ('1320900', 'Frost-Grapper', '78', '1', '370000', '185000', '0', '0', '3', '2', 'atttransmin,98; atttransmax,189; ');
INSERT INTO `bout_items` VALUES ('1320901', 'Frost-GrapperMX(+1)', '74', '0', '143000', '35750', '0', '0', '3', '2', 'atttransmin,98; atttransmax,189; transspeed,297; ');
INSERT INTO `bout_items` VALUES ('1320902', 'Frost-GrapperMX(+2)', '75', '0', '148000', '37000', '0', '0', '3', '2', 'atttransmin,98; atttransmax,189; transspeed,325; ');
INSERT INTO `bout_items` VALUES ('1320903', 'Frost-GrapperMX(+3)', '76', '0', '160000', '40000', '0', '0', '3', '2', 'atttransmin,98; atttransmax,189; transspeed,395; ');

-- ----------------------------
-- Table structure for `bout_users`
-- ----------------------------
DROP TABLE IF EXISTS `bout_users`;
CREATE TABLE `bout_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `coins` int(25) NOT NULL DEFAULT '0',
  `banned` int(1) NOT NULL DEFAULT '0',
  `online` int(1) NOT NULL DEFAULT '0',
  `current_ip` varchar(100) NOT NULL DEFAULT '',
  `logincount` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bout_users
-- ----------------------------

-- ----------------------------
-- Table structure for `rooms`
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `ip` varchar(20) NOT NULL,
  `port` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rooms
-- ----------------------------
