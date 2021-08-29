/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.3
Source Server Version : 80019
Source Host           : 192.168.1.3:3306
Source Database       : ems

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2021-07-20 09:51:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for access_info
-- ----------------------------
DROP TABLE IF EXISTS `access_info`;
CREATE TABLE `access_info` (
  `access_id` int NOT NULL,
  `access_pid` int DEFAULT NULL,
  `access_name` varchar(100) DEFAULT NULL,
  `access_desc` varchar(1000) DEFAULT NULL,
  `access_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`access_id`),
  KEY `FK_Reference_2` (`access_pid`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of access_info
-- ----------------------------
INSERT INTO `access_info` VALUES ('0', '-1', 'root ', 'root0', '', '1');
INSERT INTO `access_info` VALUES ('1', '0', 'system', 'system1', '', '2');
INSERT INTO `access_info` VALUES ('2', '1', 'staff', 'staff2', 'ems/view/staffinfo_list.jsp', '3');
INSERT INTO `access_info` VALUES ('3', '1', 'role', 'role3 list3', 'ems/view/roleinfo_list.jsp', '3');
INSERT INTO `access_info` VALUES ('4', '1', 'staff role', 'staff roll4', 'ems/view/staffinfo_rlist.jsp', '5');
INSERT INTO `access_info` VALUES ('5', '0', 'access', 'payment6', '/access/list.do', '5');
INSERT INTO `access_info` VALUES ('6', '1', 'access', 'payment6', '/access/list.do', '6');
INSERT INTO `access_info` VALUES ('7', '1', 'role access', '', 'ems/view/ra_editList.jsp', '7');
INSERT INTO `access_info` VALUES ('8', '5', 'template', '', 'ems/view/template_list.jsp', '8');
INSERT INTO `access_info` VALUES ('9', '1', 'data ', '', 'ems/view/dataDictionary_list.jsp', '9');
INSERT INTO `access_info` VALUES ('10', '5', 'im', '', 'ems/view/im_list.jsp', '10');
INSERT INTO `access_info` VALUES ('11', '5', 'email', '', 'ems/view/email_list.jsp', '11');
INSERT INTO `access_info` VALUES ('12', '5', 'activity', '', '  ems/view/mActiv_list.jsp', '12');
INSERT INTO `access_info` VALUES ('13', '0', 'student recruit', '', '', '13');
INSERT INTO `access_info` VALUES ('14', '13', 'student pool', '', 'ems/view/stuPoolList.jsp', '14');
INSERT INTO `access_info` VALUES ('15', '13', 'recruit student', '', 'ems/view/recruitStu_List.jsp', '15');
INSERT INTO `access_info` VALUES ('16', '13', 'tracking record', '', 'ems/view/trackRec_list.jsp', '16');
INSERT INTO `access_info` VALUES ('17', '13', 'audition', '', 'ems/view/audition_list.jsp', '17');
INSERT INTO `access_info` VALUES ('18', '0', 'class', '', '', '18');
INSERT INTO `access_info` VALUES ('19', '18', 'discipline', '', '  ems/view/discipline_list.jsp', '19');
INSERT INTO `access_info` VALUES ('20', '18', 'classroom', '', 'ems/view/classroom_list.jsp', '20');
INSERT INTO `access_info` VALUES ('21', '18', 'syllabus', '', 'ems/view/syllabus_list.jsp', '21');
INSERT INTO `access_info` VALUES ('22', '18', 'teacher', '', 'ems/view/teacher_list.jsp', '22');
INSERT INTO `access_info` VALUES ('23', '18', 'class info', '', 'ems/view/class_list.jsp', '23');
INSERT INTO `access_info` VALUES ('24', '0', 'student', '', '', '24');
INSERT INTO `access_info` VALUES ('26', '24', 'evaluation', '', 'ems/view/stuEval_list.jsp', '26');
INSERT INTO `access_info` VALUES ('27', '24', 'communication', '', 'ems/view/stuCom_list.jsp', '27');
INSERT INTO `access_info` VALUES ('28', '24', 'grade', '', 'ems/view/stuGrade_list.jsp', '28');
INSERT INTO `access_info` VALUES ('32', '0', 'finance', '', '', '32');
INSERT INTO `access_info` VALUES ('33', '32', 'student payment', '', 'ems/view/stuFin_list.jsp', '33');
INSERT INTO `access_info` VALUES ('34', '32', 'staff salary', '', 'ems/view/staffSalary_list.jsp', '34');

-- ----------------------------
-- Table structure for attendance_info
-- ----------------------------
DROP TABLE IF EXISTS `attendance_info`;
CREATE TABLE `attendance_info` (
  `atten_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `atten_desc` varchar(100) DEFAULT NULL,
  `atten_status` varchar(10) DEFAULT NULL,
  `atten_time` datetime DEFAULT NULL,
  `atten_remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`atten_id`),
  KEY `FK_Reference_23` (`student_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`student_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attendance_info
-- ----------------------------

-- ----------------------------
-- Table structure for audition_info
-- ----------------------------
DROP TABLE IF EXISTS `audition_info`;
CREATE TABLE `audition_info` (
  `aud_id` int NOT NULL AUTO_INCREMENT,
  `stu_id` int DEFAULT NULL,
  `aud_time` datetime DEFAULT NULL,
  `aud_addr` varchar(300) DEFAULT NULL,
  `aud_course` varchar(100) DEFAULT NULL,
  `aud_desc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`aud_id`),
  KEY `FK_Reference_10` (`stu_id`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`stu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audition_info
-- ----------------------------
INSERT INTO `audition_info` VALUES ('1', '2', '2000-01-13 00:00:00', 'class1', 'AI', '                        \r\n                    ');
INSERT INTO `audition_info` VALUES ('2', '2', '2000-01-01 00:00:00', 'class3', 'AI', '                        \r\n                    ');
INSERT INTO `audition_info` VALUES ('3', '4', '2021-07-08 00:00:00', 'mars', 'AI', '                                                                        info\r\n                    \r\n                    \r\n                    ');
INSERT INTO `audition_info` VALUES ('4', '4', '2000-01-07 00:00:00', 'class2', 'AI', 'info');
INSERT INTO `audition_info` VALUES ('6', '2', '2000-01-19 00:00:00', 'station1', 'R', 'fun');

-- ----------------------------
-- Table structure for classroom_inform
-- ----------------------------
DROP TABLE IF EXISTS `classroom_inform`;
CREATE TABLE `classroom_inform` (
  `classroom_id` int NOT NULL,
  `classroom_name` varchar(100) DEFAULT NULL,
  `classroom_max` int DEFAULT NULL,
  `classroom_info` varchar(1000) DEFAULT NULL,
  `classroom_remark` varchar(1000) DEFAULT NULL,
  `classroom_mark` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`classroom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom_inform
-- ----------------------------
INSERT INTO `classroom_inform` VALUES ('1', 'classroom3', '33', 'big data', 'learn ', null);
INSERT INTO `classroom_inform` VALUES ('2', 'classroom2', '30', 'sql', 'learn sql', null);
INSERT INTO `classroom_inform` VALUES ('3', 'classroom1', '33', 'sql', 'sql', null);

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `class_id` int NOT NULL,
  `disc_id` int DEFAULT NULL,
  `syll_id` int DEFAULT NULL,
  `classroom_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `class_num` int DEFAULT NULL,
  `class_start` datetime DEFAULT NULL,
  `class_end` datetime DEFAULT NULL,
  `class_effective` varchar(10) DEFAULT NULL,
  `class_status` varchar(10) DEFAULT NULL,
  `class_desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `FK_Reference_18` (`disc_id`),
  KEY `FK_Reference_19` (`syll_id`),
  KEY `FK_Reference_20` (`classroom_id`),
  KEY `FK_Reference_21` (`staff_id`),
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`disc_id`) REFERENCES `discipline` (`disc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`syll_id`) REFERENCES `syllabus_info` (`syll_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`classroom_id`) REFERENCES `classroom_inform` (`classroom_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('1', '2', '2', '1', '11', 'class1', '11', '2020-01-30 00:00:00', '2021-01-30 00:00:00', null, '1', 'hello');
INSERT INTO `class_info` VALUES ('2', '1', '1', '2', '5', 'class2', '33', '2000-01-01 00:00:00', '2000-01-01 00:00:00', null, '1', 'bob');

-- ----------------------------
-- Table structure for class_trans_info
-- ----------------------------
DROP TABLE IF EXISTS `class_trans_info`;
CREATE TABLE `class_trans_info` (
  `class_trans_id` int NOT NULL AUTO_INCREMENT,
  `class_id` int DEFAULT NULL,
  `class_trans_title` varchar(100) DEFAULT NULL,
  `class_trans_content` varchar(2000) DEFAULT NULL,
  `class_trans_ppl` varchar(100) DEFAULT NULL,
  `class_trans_time` datetime DEFAULT NULL,
  `class_trans_remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`class_trans_id`),
  KEY `FK_Reference_22` (`class_id`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_trans_info
-- ----------------------------

-- ----------------------------
-- Table structure for data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary` (
  `data_id` int NOT NULL AUTO_INCREMENT,
  `data_info` varchar(100) DEFAULT NULL,
  `data_ENGINE` varchar(100) DEFAULT NULL,
  `data_discr` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES ('1', 'planning', 'act_status', 'act_status');
INSERT INTO `data_dictionary` VALUES ('2', 'start', 'act_status', 'act_status');
INSERT INTO `data_dictionary` VALUES ('3', 'end', 'act_status', 'act_status');
INSERT INTO `data_dictionary` VALUES ('4', 'cancel', 'act_status', 'act_status');
INSERT INTO `data_dictionary` VALUES ('5', 'commercial', 'act_type', 'act_type');
INSERT INTO `data_dictionary` VALUES ('6', 'cold call', 'act_type', 'act_type');
INSERT INTO `data_dictionary` VALUES ('7', 'email', 'act_type', 'act_type');
INSERT INTO `data_dictionary` VALUES ('8', 'IM', 'act_type', 'act_type ');
INSERT INTO `data_dictionary` VALUES ('9', 'good', 'act_react', 'act_react');
INSERT INTO `data_dictionary` VALUES ('10', 'awesome', 'act_react', 'act_react');
INSERT INTO `data_dictionary` VALUES ('11', 'ok', 'act_react', 'act_react');
INSERT INTO `data_dictionary` VALUES ('12', 'cancelled', 'act_react', 'act_react');
INSERT INTO `data_dictionary` VALUES ('15', 'very interested', 'stu_status', 'stu_status');
INSERT INTO `data_dictionary` VALUES ('16', 'interested', 'stu_status', 'stu_status');
INSERT INTO `data_dictionary` VALUES ('17', 'considering', 'stu_status', 'stu_status ');
INSERT INTO `data_dictionary` VALUES ('18', 'little interest', 'stu_status', 'stu_status');
INSERT INTO `data_dictionary` VALUES ('19', 'no interest', 'stu_status', 'stu_status');

-- ----------------------------
-- Table structure for discipline
-- ----------------------------
DROP TABLE IF EXISTS `discipline`;
CREATE TABLE `discipline` (
  `disc_id` int NOT NULL,
  `disc_name` varchar(100) DEFAULT NULL,
  `disc_tuition` int DEFAULT NULL,
  `disc_time` int DEFAULT NULL,
  `disc_desc` varchar(2000) DEFAULT NULL,
  `disc_effective` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`disc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discipline
-- ----------------------------
INSERT INTO `discipline` VALUES ('1', 'ai', '30000', '333', '1', null);
INSERT INTO `discipline` VALUES ('2', 'java', '20002', '122', 'hello', null);
INSERT INTO `discipline` VALUES ('3', 'ML', '12000', '20', 'machine learning', null);

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `em_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `em_title` varchar(1000) DEFAULT NULL,
  `em_msg` varchar(2000) DEFAULT NULL,
  `em_send_time` datetime DEFAULT NULL,
  `em_receiver` varchar(100) DEFAULT NULL,
  `em_receiver_em` varchar(300) DEFAULT NULL,
  `em_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`em_id`),
  KEY `FK_Reference_7` (`staff_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('1', '5', 'hello', 'bob!!!', '2021-06-15 08:08:39', 'ada', 'ada@abc.com', null);
INSERT INTO `email` VALUES ('3', '10', 'yum!!!!', 'yum!!!!', '2021-07-05 13:17:29', 'ada', 'dummy12345@163.com', null);
INSERT INTO `email` VALUES ('4', '10', 'get better', 'get better', '2021-07-05 13:29:13', 'ada', 'dummy12345@163.com', null);

-- ----------------------------
-- Table structure for evaluation_info
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_info`;
CREATE TABLE `evaluation_info` (
  `eval_id` int NOT NULL AUTO_INCREMENT,
  `stu_id` int DEFAULT NULL,
  `eval_title` varchar(100) DEFAULT NULL,
  `eval_content` varchar(2000) DEFAULT NULL,
  `eval_course` varchar(100) DEFAULT NULL,
  `eval_teacher` varchar(100) DEFAULT NULL,
  `eval_time` datetime DEFAULT NULL,
  PRIMARY KEY (`eval_id`),
  KEY `FK_Reference_12` (`stu_id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`stu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation_info
-- ----------------------------
INSERT INTO `evaluation_info` VALUES ('1', '1', 'class', 'good\r\n                    \r\n                    \r\n                    \r\n                    ', 'java', 'wonder', '2021-07-07 00:00:00');
INSERT INTO `evaluation_info` VALUES ('5', '7', 'teacher', 'good\r\n                    \r\n                    ', 'big data', 'wonder', '2000-01-05 00:00:00');

-- ----------------------------
-- Table structure for im_info
-- ----------------------------
DROP TABLE IF EXISTS `im_info`;
CREATE TABLE `im_info` (
  `im_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `im_sender` varchar(50) DEFAULT NULL,
  `im_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `im_receiver` varchar(50) DEFAULT NULL,
  `im_receiver_cell` int DEFAULT NULL,
  `im_send_time` datetime DEFAULT NULL,
  `im_send_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`im_id`),
  KEY `FK_Reference_6` (`staff_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_info
-- ----------------------------
INSERT INTO `im_info` VALUES ('1', '8', null, 'BDAY!!!', 'bob', '123456', '2021-07-07 21:25:24', null);
INSERT INTO `im_info` VALUES ('2', '10', null, null, 'bob', '123456', '2021-07-04 14:17:11', null);
INSERT INTO `im_info` VALUES ('4', '10', '', null, 'bob', '123456', '2021-07-04 14:32:53', null);
INSERT INTO `im_info` VALUES ('5', '10', '999999', null, 'bob', '123456', '2021-07-04 14:37:22', null);
INSERT INTO `im_info` VALUES ('6', '10', '999999', '66666', 'bob', '123456', '2021-07-04 14:42:28', null);

-- ----------------------------
-- Table structure for marketing_activities
-- ----------------------------
DROP TABLE IF EXISTS `marketing_activities`;
CREATE TABLE `marketing_activities` (
  `act_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `act_name` varchar(300) DEFAULT NULL,
  `act_status` int DEFAULT NULL,
  `act_start` datetime DEFAULT NULL,
  `act_end` datetime DEFAULT NULL,
  `act_type` int DEFAULT NULL,
  `act_quote` double DEFAULT NULL,
  `act_cost` double DEFAULT NULL,
  `act_react` varchar(300) DEFAULT NULL,
  `act_mem` varchar(300) DEFAULT NULL,
  `act_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`act_id`),
  KEY `FK_Reference_5` (`staff_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of marketing_activities
-- ----------------------------
INSERT INTO `marketing_activities` VALUES ('3', '10', 'dinner', '1', '2000-08-08 00:00:00', '2000-09-09 00:00:00', '7', '111', '333', '10', '222', 'dinner!!!');
INSERT INTO `marketing_activities` VALUES ('5', '10', 'picnic', '2', '2000-01-17 00:00:00', '2000-01-18 00:00:00', '8', '333', '444', '10', '555', 'fun');
INSERT INTO `marketing_activities` VALUES ('6', '10', 'meeting', null, '2000-01-04 00:00:00', '2000-01-05 00:00:00', '5', '23', '34', '9', 'everyone', 'fun');
INSERT INTO `marketing_activities` VALUES ('7', '10', 'meeting', '1', '1999-12-29 00:00:00', '1999-12-31 00:00:00', '5', '342', '344', '9', 'all', 'fun');

-- ----------------------------
-- Table structure for role_access_info
-- ----------------------------
DROP TABLE IF EXISTS `role_access_info`;
CREATE TABLE `role_access_info` (
  `role_access_id` int NOT NULL AUTO_INCREMENT,
  `access_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`role_access_id`),
  KEY `FK_Reference_11` (`role_id`),
  KEY `FK_Reference_4` (`access_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`access_id`) REFERENCES `access_info` (`access_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2603 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_access_info
-- ----------------------------
INSERT INTO `role_access_info` VALUES ('2487', '1', '1');
INSERT INTO `role_access_info` VALUES ('2488', '2', '1');
INSERT INTO `role_access_info` VALUES ('2489', '4', '1');
INSERT INTO `role_access_info` VALUES ('2490', '7', '1');
INSERT INTO `role_access_info` VALUES ('2491', '5', '1');
INSERT INTO `role_access_info` VALUES ('2492', '10', '1');
INSERT INTO `role_access_info` VALUES ('2493', '12', '1');
INSERT INTO `role_access_info` VALUES ('2494', '13', '1');
INSERT INTO `role_access_info` VALUES ('2495', '14', '1');
INSERT INTO `role_access_info` VALUES ('2496', '16', '1');
INSERT INTO `role_access_info` VALUES ('2497', '18', '1');
INSERT INTO `role_access_info` VALUES ('2498', '20', '1');
INSERT INTO `role_access_info` VALUES ('2499', '22', '1');
INSERT INTO `role_access_info` VALUES ('2500', '24', '1');
INSERT INTO `role_access_info` VALUES ('2502', '27', '1');
INSERT INTO `role_access_info` VALUES ('2505', '32', '1');
INSERT INTO `role_access_info` VALUES ('2506', '33', '1');
INSERT INTO `role_access_info` VALUES ('2507', '1', '2');
INSERT INTO `role_access_info` VALUES ('2508', '2', '2');
INSERT INTO `role_access_info` VALUES ('2509', '3', '2');
INSERT INTO `role_access_info` VALUES ('2510', '4', '2');
INSERT INTO `role_access_info` VALUES ('2511', '6', '2');
INSERT INTO `role_access_info` VALUES ('2512', '7', '2');
INSERT INTO `role_access_info` VALUES ('2513', '9', '2');
INSERT INTO `role_access_info` VALUES ('2514', '5', '2');
INSERT INTO `role_access_info` VALUES ('2515', '8', '2');
INSERT INTO `role_access_info` VALUES ('2516', '10', '2');
INSERT INTO `role_access_info` VALUES ('2517', '11', '2');
INSERT INTO `role_access_info` VALUES ('2518', '12', '2');
INSERT INTO `role_access_info` VALUES ('2519', '13', '2');
INSERT INTO `role_access_info` VALUES ('2520', '14', '2');
INSERT INTO `role_access_info` VALUES ('2521', '15', '2');
INSERT INTO `role_access_info` VALUES ('2522', '16', '2');
INSERT INTO `role_access_info` VALUES ('2523', '17', '2');
INSERT INTO `role_access_info` VALUES ('2524', '18', '2');
INSERT INTO `role_access_info` VALUES ('2525', '19', '2');
INSERT INTO `role_access_info` VALUES ('2526', '20', '2');
INSERT INTO `role_access_info` VALUES ('2527', '21', '2');
INSERT INTO `role_access_info` VALUES ('2528', '22', '2');
INSERT INTO `role_access_info` VALUES ('2529', '23', '2');
INSERT INTO `role_access_info` VALUES ('2530', '24', '2');
INSERT INTO `role_access_info` VALUES ('2532', '26', '2');
INSERT INTO `role_access_info` VALUES ('2533', '27', '2');
INSERT INTO `role_access_info` VALUES ('2534', '28', '2');
INSERT INTO `role_access_info` VALUES ('2538', '1', '3');
INSERT INTO `role_access_info` VALUES ('2539', '2', '3');
INSERT INTO `role_access_info` VALUES ('2540', '3', '3');
INSERT INTO `role_access_info` VALUES ('2541', '4', '3');
INSERT INTO `role_access_info` VALUES ('2542', '6', '3');
INSERT INTO `role_access_info` VALUES ('2543', '7', '3');
INSERT INTO `role_access_info` VALUES ('2544', '9', '3');
INSERT INTO `role_access_info` VALUES ('2545', '5', '3');
INSERT INTO `role_access_info` VALUES ('2546', '8', '3');
INSERT INTO `role_access_info` VALUES ('2547', '10', '3');
INSERT INTO `role_access_info` VALUES ('2548', '11', '3');
INSERT INTO `role_access_info` VALUES ('2549', '12', '3');
INSERT INTO `role_access_info` VALUES ('2550', '13', '3');
INSERT INTO `role_access_info` VALUES ('2551', '14', '3');
INSERT INTO `role_access_info` VALUES ('2552', '15', '3');
INSERT INTO `role_access_info` VALUES ('2553', '16', '3');
INSERT INTO `role_access_info` VALUES ('2554', '17', '3');
INSERT INTO `role_access_info` VALUES ('2555', '18', '3');
INSERT INTO `role_access_info` VALUES ('2556', '19', '3');
INSERT INTO `role_access_info` VALUES ('2557', '20', '3');
INSERT INTO `role_access_info` VALUES ('2558', '21', '3');
INSERT INTO `role_access_info` VALUES ('2559', '22', '3');
INSERT INTO `role_access_info` VALUES ('2560', '23', '3');
INSERT INTO `role_access_info` VALUES ('2561', '24', '3');
INSERT INTO `role_access_info` VALUES ('2563', '26', '3');
INSERT INTO `role_access_info` VALUES ('2564', '27', '3');
INSERT INTO `role_access_info` VALUES ('2565', '28', '3');
INSERT INTO `role_access_info` VALUES ('2569', '1', '4');
INSERT INTO `role_access_info` VALUES ('2570', '2', '4');
INSERT INTO `role_access_info` VALUES ('2571', '3', '4');
INSERT INTO `role_access_info` VALUES ('2572', '4', '4');
INSERT INTO `role_access_info` VALUES ('2573', '6', '4');
INSERT INTO `role_access_info` VALUES ('2574', '7', '4');
INSERT INTO `role_access_info` VALUES ('2575', '9', '4');
INSERT INTO `role_access_info` VALUES ('2576', '5', '4');
INSERT INTO `role_access_info` VALUES ('2577', '8', '4');
INSERT INTO `role_access_info` VALUES ('2578', '10', '4');
INSERT INTO `role_access_info` VALUES ('2579', '11', '4');
INSERT INTO `role_access_info` VALUES ('2580', '12', '4');
INSERT INTO `role_access_info` VALUES ('2581', '13', '4');
INSERT INTO `role_access_info` VALUES ('2582', '14', '4');
INSERT INTO `role_access_info` VALUES ('2583', '15', '4');
INSERT INTO `role_access_info` VALUES ('2584', '16', '4');
INSERT INTO `role_access_info` VALUES ('2585', '17', '4');
INSERT INTO `role_access_info` VALUES ('2586', '18', '4');
INSERT INTO `role_access_info` VALUES ('2587', '19', '4');
INSERT INTO `role_access_info` VALUES ('2588', '20', '4');
INSERT INTO `role_access_info` VALUES ('2589', '21', '4');
INSERT INTO `role_access_info` VALUES ('2590', '22', '4');
INSERT INTO `role_access_info` VALUES ('2591', '23', '4');
INSERT INTO `role_access_info` VALUES ('2592', '24', '4');
INSERT INTO `role_access_info` VALUES ('2594', '26', '4');
INSERT INTO `role_access_info` VALUES ('2595', '27', '4');
INSERT INTO `role_access_info` VALUES ('2596', '28', '4');
INSERT INTO `role_access_info` VALUES ('2600', '32', '4');
INSERT INTO `role_access_info` VALUES ('2601', '33', '4');
INSERT INTO `role_access_info` VALUES ('2602', '34', '4');

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `role_id` int NOT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  `role_desc` varchar(1000) DEFAULT NULL,
  `role_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES ('1', 'teacher', 'teach', '1');
INSERT INTO `role_info` VALUES ('2', 'developer', 'programming', '1');
INSERT INTO `role_info` VALUES ('3', 'hr', 'talking', '1');
INSERT INTO `role_info` VALUES ('4', 'manager', 'manage', '1');

-- ----------------------------
-- Table structure for staff_info
-- ----------------------------
DROP TABLE IF EXISTS `staff_info`;
CREATE TABLE `staff_info` (
  `staff_id` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `staff_name` varchar(100) DEFAULT NULL,
  `staff_sex` varchar(10) DEFAULT NULL,
  `staff_age` int DEFAULT NULL,
  `staff_country` varchar(10) DEFAULT NULL,
  `staff_id_num` varchar(100) DEFAULT NULL,
  `staff_bday` datetime DEFAULT NULL,
  `staff_phone` varchar(50) DEFAULT NULL,
  `staff_cell` varchar(50) DEFAULT NULL,
  `staff_email` varchar(100) DEFAULT NULL,
  `staff_address` varchar(200) DEFAULT NULL,
  `staff_im` varchar(30) DEFAULT NULL,
  `staff_start` datetime DEFAULT NULL,
  `staff_edu` varchar(20) DEFAULT NULL,
  `staff_about` varchar(2000) DEFAULT NULL,
  `staff_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '         0 unuseful\r\n     1 useful       2 teacher',
  `user_num` varchar(100) DEFAULT NULL,
  `user_pwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `unique_user_num` (`user_num`),
  KEY `FK_Reference_1` (`role_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_info
-- ----------------------------
INSERT INTO `staff_info` VALUES ('1', '3', 'spiderman', 'male', '44', 'moon', '123', '1234-11-11 00:00:00', '12345', '123456', 'bob@123.com', 'mooon', 'bobim', '1234-12-12 00:00:00', 'Master', 'bob is bob\r\n                    \r\n                    \r\n                    ', '1', '123bob1', 'bob123');
INSERT INTO `staff_info` VALUES ('2', '2', 'superman', 'male', '44', 'moon', '123', '1234-11-11 00:00:00', '12345', '123456', 'bob@123.com', 'mooon', 'bobim', '1234-12-12 00:00:00', 'Master', 'bob is bob\r\n                    \r\n                    \r\n                    ', '1', '123bob2', 'bob123');
INSERT INTO `staff_info` VALUES ('3', '2', 'hulk', 'male', '44', 'moon', '123', '1234-11-11 00:00:00', '12345', '666666', 'bob@123.com', 'mooon', 'bobim', '1234-12-12 00:00:00', 'Master', 'bob is bob\r\n                    \r\n                    \r\n                    ', '1', '123bob3', 'bob123');
INSERT INTO `staff_info` VALUES ('4', '3', 'flash', 'male', '44', 'moon', '123', '1234-11-11 00:00:00', '12345', '666666', 'bob@123.com', 'mooon', 'bobim', '1234-12-12 00:00:00', 'Master', 'bob is bob\r\n                    \r\n                    \r\n                    \r\n                    ', '1', '123bob4', 'bob123');
INSERT INTO `staff_info` VALUES ('5', '1', 'gandolf', 'male', '44', 'moon', '123', '1234-11-11 00:00:00', '12345', '123456', 'bob@123.com', 'mooon', 'bobim', '1234-12-12 00:00:00', 'Master', 'bob is bob\r\n                    \r\n                    \r\n                    \r\n                    ', '2', '123bob5', 'bob123');
INSERT INTO `staff_info` VALUES ('6', '2', 'frodo', 'male', '44', 'moon', '123', '2021-06-15 00:00:00', '12345', '555555', 'bob@123.com', 'mooon', 'bobim', '1234-12-12 00:00:00', 'Master', 'bob is bob\r\n                    \r\n                    \r\n                    \r\n                    \r\n                    \r\n                    ', '1', '123bob6', 'bob123');
INSERT INTO `staff_info` VALUES ('8', '1', 'ironman', 'male', '44', 'moon', '123', '2021-06-07 00:00:00', '12345', '123456', 'bob@123.com', 'mooon', 'bobim', '2021-06-07 00:00:00', 'Master', 'bob is bob\r\n                    \r\n                    \r\n                    \r\n                    \r\n                    \r\n                    \r\n                    \r\n                    ', '2', '123bob8', 'bob123');
INSERT INTO `staff_info` VALUES ('10', '4', 'admin', 'male', '44', 'moon', '123', '2000-01-12 00:00:00', '88888', '999999', 'dummy12345@163.com', 'mooon', 'adminim', '2000-01-01 00:00:00', 'secret', 'admin\r\n                    \r\n                    \r\n                    \r\n                    \r\n                    \r\n                    ', '1', 'admin', '12345');
INSERT INTO `staff_info` VALUES ('11', null, 'thor', 'female', '44', 'moon', '123', '2000-01-06 00:00:00', '12345', '666666 ', 'bob@123.com', 'mooon', 'bobim', '2000-01-11 00:00:00', 'PhD', ' teacher\r\n                    \r\n                    \r\n                    \r\n                    \r\n                    ', '2', '123bob9', 'bob123');

-- ----------------------------
-- Table structure for staff_salary
-- ----------------------------
DROP TABLE IF EXISTS `staff_salary`;
CREATE TABLE `staff_salary` (
  `staff_sal_id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `sta_staff_id` int DEFAULT NULL,
  `total_sal` double DEFAULT NULL,
  `deduct_sal` double DEFAULT NULL,
  `real_sal` double DEFAULT NULL,
  `paid` varchar(10) DEFAULT NULL,
  `staff_sal_time` datetime DEFAULT NULL,
  `staff_sal_remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`staff_sal_id`),
  KEY `FK_Reference_26` (`staff_id`),
  KEY `FK_Reference_27` (`sta_staff_id`),
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_27` FOREIGN KEY (`sta_staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_salary
-- ----------------------------
INSERT INTO `staff_salary` VALUES ('1', '5', '10', '50000', '10000', '40000', 'Y', '2000-01-13 00:00:00', 'paid');
INSERT INTO `staff_salary` VALUES ('10', '11', '10', '30000', '10000', '20000', '', '2000-01-13 00:00:00', 'bonus');
INSERT INTO `staff_salary` VALUES ('12', '8', '10', '30000', '10000', '20000', 'y', '2000-01-28 00:00:00', 'bonus');

-- ----------------------------
-- Table structure for student_fin
-- ----------------------------
DROP TABLE IF EXISTS `student_fin`;
CREATE TABLE `student_fin` (
  `pay_id` int NOT NULL AUTO_INCREMENT,
  `stu_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `pay_situ` varchar(1000) DEFAULT NULL,
  `pay_method` varchar(100) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `original_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `debt_amount` double DEFAULT NULL,
  `pay_remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `FK_Reference_24` (`stu_id`),
  KEY `FK_Reference_25` (`staff_id`),
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`stu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_25` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_fin
-- ----------------------------
INSERT INTO `student_fin` VALUES ('8', '1', '10', 'ai', 'cash', '2000-01-01 00:00:00', '10000', '30000', '15000', '5000', 'ai');
INSERT INTO `student_fin` VALUES ('11', '13', '10', 'big data', 'cash', '2000-01-01 00:00:00', '10000', '30000', '15000', '5000', 'bdbd');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `stu_id` int NOT NULL,
  `staff_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `stu_name` varchar(100) DEFAULT NULL,
  `stu_sex` varchar(10) DEFAULT NULL,
  `stu_age` int DEFAULT NULL,
  `stu_phone` varchar(100) DEFAULT NULL,
  `stu_email` varchar(200) DEFAULT NULL,
  `stu_id_num` varchar(30) DEFAULT NULL,
  `stu_address` varchar(300) DEFAULT NULL,
  `stu_bday` datetime DEFAULT NULL,
  `stu_school` varchar(100) DEFAULT NULL,
  `stu_im` varchar(100) DEFAULT NULL,
  `stu_parent` varchar(100) DEFAULT NULL,
  `stu_parent_phone` varchar(100) DEFAULT NULL,
  `stu_province` varchar(100) DEFAULT NULL,
  `stu_city` varchar(100) DEFAULT NULL,
  `stu_ENGINE` varchar(10) DEFAULT NULL,
  `stu_paid` varchar(10) DEFAULT NULL,
  `stu_status` int DEFAULT NULL,
  `stu_mark` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '-1 null, 0 unsorted, 1 sorted, 2 registered',
  `stu_desc` varchar(2000) DEFAULT NULL,
  `stu_num` varchar(100) DEFAULT NULL,
  `stu_pwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  KEY `FK_Reference_17` (`class_id`),
  KEY `FK_Reference_8` (`staff_id`),
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('1', '10', null, 'pat', 'female', '34', '123452', 'bob@abc.com', '12345672', 'moon22', '2000-01-04 00:00:00', 'college2', 'bob13', 'sam2', '99999', 'sun2', 'nyc2', null, 'N', '19', '2', 'xxxxx', null, null);
INSERT INTO `student_info` VALUES ('2', '10', null, 'adam', 'male', '55', '1234522', 'bob@abc.com22', '123456722', 'moon22', '2000-01-08 00:00:00', 'college22', 'bob1322', 'sam22', '22222', 'sun22', 'nyc22', null, null, '18', '1', 'bob      ', null, null);
INSERT INTO `student_info` VALUES ('3', '10', null, 'bob1', 'male', '34', '12345', 'bob@abc.com', '1234567', 'moon', '2000-01-13 00:00:00', 'college', 'bob13', 'sam', '99999', 'sun', 'nyc', null, null, '15', '0', 'aaaaa    ', null, null);
INSERT INTO `student_info` VALUES ('4', '10', null, 'sam', 'male', '34', '12345', 'bob@abc.com', '1234567', 'moon', '2000-01-08 00:00:00', 'college', 'bob13', 'sam', '33333', 'sun', 'nyc', null, null, '17', '1', 'bob  ', null, null);
INSERT INTO `student_info` VALUES ('5', '10', null, 'bob2', 'male', '34', '1234522', 'bob@abc.com', '1234567', 'moon', '2000-01-05 00:00:00', 'college22', 'bob13', 'sam', '99999', 'sun', 'nyc', null, null, '15', '0', 'aaaaa    ', null, null);
INSERT INTO `student_info` VALUES ('6', '10', null, 'mike', 'male', '34', '123452', 'bob@abc.com2', '12345672', 'moon22', '2000-01-20 00:00:00', 'college2', 'bob132', 'sam22', '99999', 'sun2', 'nyc22', null, 'N', '16', '-1', 'bob  ', null, null);
INSERT INTO `student_info` VALUES ('7', '10', null, 'holly', 'female', '34', '1234522', 'bob@abc.com2', '1234567', 'moon', '1999-12-29 00:00:00', 'college2', 'bob1322', 'sam2', '99999', 'sun2', 'nyc2', null, 'N', '18', '-1', 'aaaaa     ', null, null);
INSERT INTO `student_info` VALUES ('10', null, null, 'bob3', 'female', '34', '12345', 'bob@abc.com', '1234567', 'moon22', '1999-12-27 00:00:00', 'college', 'bob132', 'sam', '99999', 'sun', 'nyc2', null, null, '18', '-1', 'bobobo', null, null);
INSERT INTO `student_info` VALUES ('11', '10', null, 'bob3', 'male', '34', '12345', 'bob@abc.com', '12345672', 'moon', '1999-12-26 00:00:00', 'college2', 'bob13', 'sam', '99999', 'sun', 'nyc2', null, 'N', '15', '-1', ' statata', null, null);
INSERT INTO `student_info` VALUES ('13', '10', null, 'ron', 'male', '34', '12345', 'bob@abc.com', '1234567', 'moon', '2000-01-04 00:00:00', 'college2', 'bob132', 'sam', 'bob2', 'sun', 'nyc2', null, 'N', '16', '2', 'aaa', null, null);

-- ----------------------------
-- Table structure for stu_com_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_com_info`;
CREATE TABLE `stu_com_info` (
  `com_id` int NOT NULL AUTO_INCREMENT,
  `stu_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `com_time` datetime DEFAULT NULL,
  `com_content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`com_id`),
  KEY `FK_Reference_13` (`stu_id`),
  KEY `FK_Reference_14` (`staff_id`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`stu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_com_info
-- ----------------------------
INSERT INTO `stu_com_info` VALUES ('1', '6', '5', '2000-01-06 00:00:00', 'good');
INSERT INTO `stu_com_info` VALUES ('2', '7', '11', '2000-01-11 00:00:00', 'goodgood');

-- ----------------------------
-- Table structure for stu_grade
-- ----------------------------
DROP TABLE IF EXISTS `stu_grade`;
CREATE TABLE `stu_grade` (
  `stu_grade_id` int NOT NULL AUTO_INCREMENT,
  `stu_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `stu_grade_sub` varchar(1000) DEFAULT NULL,
  `stu_grade` varchar(50) DEFAULT NULL,
  `stu_grade_time` datetime DEFAULT NULL,
  `stu_grade_note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`stu_grade_id`),
  KEY `FK_Reference_15` (`stu_id`),
  KEY `FK_Reference_16` (`staff_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`stu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_grade
-- ----------------------------
INSERT INTO `stu_grade` VALUES ('1', '2', '8', 'Big Data', 'A+', '2021-06-06 00:00:00', 'good');
INSERT INTO `stu_grade` VALUES ('3', '4', '8', 'ai', 'A', '2000-01-01 00:00:00', 'A');
INSERT INTO `stu_grade` VALUES ('4', '1', '8', 'Big Data', 'A', '2025-05-01 00:00:00', 'good');

-- ----------------------------
-- Table structure for syllabus_info
-- ----------------------------
DROP TABLE IF EXISTS `syllabus_info`;
CREATE TABLE `syllabus_info` (
  `syll_id` int NOT NULL,
  `syll_mon` varchar(50) DEFAULT NULL,
  `syll_tue` varchar(50) DEFAULT NULL,
  `syll_wed` varchar(50) DEFAULT NULL,
  `syll_thur` varchar(50) DEFAULT NULL,
  `syll_fri` varchar(50) DEFAULT NULL,
  `syll_sat` varchar(50) DEFAULT NULL,
  `syll_sun` varchar(50) DEFAULT NULL,
  `syll_effective` varchar(50) DEFAULT NULL,
  `syll_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`syll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syllabus_info
-- ----------------------------
INSERT INTO `syllabus_info` VALUES ('1', 'pm', 'am/pm', 'am', 'am/pm', 'am', 'am/pm', 'am', null, 'big data');
INSERT INTO `syllabus_info` VALUES ('2', 'am/pm', 'am', 'pm ', 'am/pm', 'am', 'pm', 'am/pm', null, 'java');

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `template_id` int NOT NULL AUTO_INCREMENT,
  `template_title` varchar(200) DEFAULT NULL,
  `template_content` varchar(2000) DEFAULT NULL,
  `template_ENGINE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES ('1', 'bday', 'BDAY!!!', 'Instant Message');
INSERT INTO `template` VALUES ('2', 'hello', '66666', 'Instant Message');
INSERT INTO `template` VALUES ('3', 'holiday', 'yum!!!!', 'Email');
INSERT INTO `template` VALUES ('4', 'get well', 'get better', 'Email');

-- ----------------------------
-- Table structure for track_rec_info
-- ----------------------------
DROP TABLE IF EXISTS `track_rec_info`;
CREATE TABLE `track_rec_info` (
  `track_rec_id` int NOT NULL AUTO_INCREMENT,
  `stu_id` int DEFAULT NULL,
  `track_rec_title` varchar(200) DEFAULT NULL,
  `track_rec_content` varchar(2000) DEFAULT NULL,
  `track_rec_time` datetime DEFAULT NULL,
  `track_rec_enroll` int DEFAULT NULL COMMENT 'student status',
  `next_rec_time` datetime DEFAULT NULL,
  PRIMARY KEY (`track_rec_id`),
  KEY `FK_Reference_9` (`stu_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`stu_id`) REFERENCES `student_info` (`stu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of track_rec_info
-- ----------------------------
INSERT INTO `track_rec_info` VALUES ('1', '4', 'java programmer', 'aaa', '2000-01-02 00:00:00', null, '2000-01-03 00:00:00');
INSERT INTO `track_rec_info` VALUES ('2', '2', 'java', 'fafafa      ', '2000-01-06 00:00:00', '17', '2000-01-07 00:00:00');
INSERT INTO `track_rec_info` VALUES ('4', '2', 'AI', 'hello', '2000-01-06 00:00:00', '15', '2000-01-05 00:00:00');
INSERT INTO `track_rec_info` VALUES ('5', '6', 'AI', 'ai', '2020-01-16 00:00:00', '15', '2020-12-31 00:00:00');
