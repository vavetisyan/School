/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100132
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 100132
 File Encoding         : 65001

 Date: 25/10/2018 17:04:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `updated_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES (1, 'class 1', '2018-10-25 11:22:59', '2018-10-25 11:23:01');
INSERT INTO `classes` VALUES (2, 'class 2', '2018-10-25 11:23:02', '2018-10-25 11:23:05');
INSERT INTO `classes` VALUES (3, 'class 3', '2018-10-25 11:23:06', '2018-10-25 11:23:08');

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (1, 'PHP');
INSERT INTO `courses` VALUES (2, 'JAVA');
INSERT INTO `courses` VALUES (3, 'C#');
INSERT INTO `courses` VALUES (4, 'C++');
INSERT INTO `courses` VALUES (5, 'Python');
INSERT INTO `courses` VALUES (6, 'Android');
INSERT INTO `courses` VALUES (7, 'IOS');
INSERT INTO `courses` VALUES (8, 'HTML');
INSERT INTO `courses` VALUES (9, 'CSS');
INSERT INTO `courses` VALUES (10, 'Javascript');
INSERT INTO `courses` VALUES (11, 'Jquery');
INSERT INTO `courses` VALUES (12, 'AngularJS');
INSERT INTO `courses` VALUES (13, 'ReactJS');

-- ----------------------------
-- Table structure for schedules
-- ----------------------------
DROP TABLE IF EXISTS `schedules`;
CREATE TABLE `schedules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of schedules
-- ----------------------------
INSERT INTO `schedules` VALUES (1, 1, 1, 1, 1);
INSERT INTO `schedules` VALUES (2, 1, 2, 1, 2);
INSERT INTO `schedules` VALUES (3, 1, 3, 1, 3);
INSERT INTO `schedules` VALUES (4, 1, 4, 2, 1);
INSERT INTO `schedules` VALUES (5, 1, 5, 2, 2);
INSERT INTO `schedules` VALUES (6, 1, 6, 3, 1);
INSERT INTO `schedules` VALUES (7, 1, 7, 3, 2);
INSERT INTO `schedules` VALUES (8, 1, 8, 4, 1);
INSERT INTO `schedules` VALUES (9, 1, 9, 4, 2);
INSERT INTO `schedules` VALUES (10, 1, 10, 4, 3);
INSERT INTO `schedules` VALUES (11, 1, 11, 5, 1);
INSERT INTO `schedules` VALUES (12, 1, 12, 5, 2);
INSERT INTO `schedules` VALUES (13, 2, 13, 1, 1);
INSERT INTO `schedules` VALUES (14, 2, 1, 1, 2);
INSERT INTO `schedules` VALUES (15, 2, 2, 2, 1);
INSERT INTO `schedules` VALUES (16, 2, 3, 2, 2);
INSERT INTO `schedules` VALUES (17, 2, 4, 2, 3);
INSERT INTO `schedules` VALUES (18, 2, 5, 3, 1);
INSERT INTO `schedules` VALUES (19, 2, 6, 3, 2);
INSERT INTO `schedules` VALUES (20, 2, 7, 4, 1);
INSERT INTO `schedules` VALUES (21, 2, 8, 4, 2);
INSERT INTO `schedules` VALUES (22, 2, 9, 4, 3);
INSERT INTO `schedules` VALUES (23, 2, 10, 5, 1);
INSERT INTO `schedules` VALUES (24, 2, 11, 5, 2);
INSERT INTO `schedules` VALUES (25, 2, 12, 5, 3);
INSERT INTO `schedules` VALUES (26, 3, 13, 1, 1);
INSERT INTO `schedules` VALUES (27, 3, 1, 1, 2);
INSERT INTO `schedules` VALUES (28, 3, 2, 2, 1);
INSERT INTO `schedules` VALUES (29, 3, 3, 2, 2);
INSERT INTO `schedules` VALUES (30, 3, 4, 3, 1);
INSERT INTO `schedules` VALUES (31, 3, 5, 3, 2);
INSERT INTO `schedules` VALUES (32, 3, 6, 3, 3);
INSERT INTO `schedules` VALUES (33, 3, 7, 4, 1);
INSERT INTO `schedules` VALUES (34, 3, 8, 4, 2);
INSERT INTO `schedules` VALUES (35, 3, 9, 5, 1);
INSERT INTO `schedules` VALUES (36, 3, 10, 5, 2);

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course`  (
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_id`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES (0, 11);
INSERT INTO `teacher_course` VALUES (0, 12);
INSERT INTO `teacher_course` VALUES (0, 13);
INSERT INTO `teacher_course` VALUES (1, 0);
INSERT INTO `teacher_course` VALUES (1, 6);
INSERT INTO `teacher_course` VALUES (2, 0);
INSERT INTO `teacher_course` VALUES (2, 7);
INSERT INTO `teacher_course` VALUES (3, 0);
INSERT INTO `teacher_course` VALUES (3, 8);
INSERT INTO `teacher_course` VALUES (4, 0);
INSERT INTO `teacher_course` VALUES (4, 9);
INSERT INTO `teacher_course` VALUES (5, 0);
INSERT INTO `teacher_course` VALUES (5, 10);

-- ----------------------------
-- Table structure for user_role_student
-- ----------------------------
DROP TABLE IF EXISTS `user_role_student`;
CREATE TABLE `user_role_student`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `is_finished` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role_student
-- ----------------------------
INSERT INTO `user_role_student` VALUES (6, 1, '0');
INSERT INTO `user_role_student` VALUES (7, 1, '0');
INSERT INTO `user_role_student` VALUES (8, 1, '0');
INSERT INTO `user_role_student` VALUES (9, 1, '0');
INSERT INTO `user_role_student` VALUES (10, 1, '0');
INSERT INTO `user_role_student` VALUES (11, 2, '0');
INSERT INTO `user_role_student` VALUES (12, 2, '0');
INSERT INTO `user_role_student` VALUES (13, 2, '0');
INSERT INTO `user_role_student` VALUES (14, 3, '0');
INSERT INTO `user_role_student` VALUES (15, 3, '0');

-- ----------------------------
-- Table structure for user_role_teacher
-- ----------------------------
DROP TABLE IF EXISTS `user_role_teacher`;
CREATE TABLE `user_role_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role_teacher
-- ----------------------------
INSERT INTO `user_role_teacher` VALUES (1, 1, 3);
INSERT INTO `user_role_teacher` VALUES (2, 1, 1);
INSERT INTO `user_role_teacher` VALUES (3, 2, 1);
INSERT INTO `user_role_teacher` VALUES (4, 3, 2);
INSERT INTO `user_role_teacher` VALUES (5, 3, 3);
INSERT INTO `user_role_teacher` VALUES (6, 3, 1);
INSERT INTO `user_role_teacher` VALUES (7, 4, 2);
INSERT INTO `user_role_teacher` VALUES (8, 5, 2);
INSERT INTO `user_role_teacher` VALUES (9, 5, 3);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `middle_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `role` enum('student','teacher') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'student',
  `created_date` datetime(0) NULL DEFAULT NULL,
  `updated_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Hank', 'Smith', 'Farzaneh', 'smith@gmail.com', '1985-10-25', 'teacher', '2018-10-25 12:32:03', '2018-10-25 12:32:06');
INSERT INTO `users` VALUES (2, 'Abel', 'Jones', 'Denisa', 'jones@gmail.com', '1980-10-09', 'teacher', '2018-10-25 12:32:08', '2018-10-25 12:32:10');
INSERT INTO `users` VALUES (3, 'James', 'Taylor', 'Farzaneh', 'taylor@gmail.com', '1978-05-12', 'teacher', '2018-10-25 12:32:15', '2018-10-25 12:32:18');
INSERT INTO `users` VALUES (4, 'Jane', 'Lee', 'Genie', 'lee@gmail.com', '1980-10-25', 'teacher', '2018-10-25 12:32:19', '2018-10-25 12:32:22');
INSERT INTO `users` VALUES (5, 'Henry', 'Davis', 'Farzaneh', 'davis@gmail.com', '1982-11-15', 'teacher', '2018-10-25 12:32:23', '2018-10-25 12:32:26');
INSERT INTO `users` VALUES (6, 'John', 'Foster', 'Denisa', NULL, '1995-07-16', 'student', '2018-10-25 12:32:27', '2018-10-25 12:32:30');
INSERT INTO `users` VALUES (7, 'Samuel', 'Patel', 'Farzaneh', NULL, '1996-09-08', 'student', '2018-10-25 12:32:31', '2018-10-25 12:32:34');
INSERT INTO `users` VALUES (8, 'Scott', 'Brown', 'Genie', NULL, '1998-07-26', 'student', '2018-10-25 12:32:35', '2018-10-25 12:32:38');
INSERT INTO `users` VALUES (9, 'Edward', 'King', 'Farzaneh', NULL, '1995-10-17', 'student', '2018-10-25 12:32:39', '2018-10-25 12:32:42');
INSERT INTO `users` VALUES (10, 'Jessica', 'Carr', 'Cosma', NULL, '2000-07-22', 'student', '2018-10-25 12:32:43', '2018-10-25 12:32:46');
INSERT INTO `users` VALUES (11, 'Conrad', 'Murphy', 'Genie', NULL, '1995-07-11', 'student', '2018-10-25 12:32:47', '2018-10-25 12:32:50');
INSERT INTO `users` VALUES (12, 'Bertie', 'Scott', 'Denisa', NULL, '2002-12-06', 'student', '2018-10-25 12:32:51', '2018-10-25 12:32:54');
INSERT INTO `users` VALUES (13, 'Ben', 'Palmer', 'Farzaneh', NULL, '1995-07-07', 'student', '2018-10-25 12:32:55', '2018-10-25 12:32:58');
INSERT INTO `users` VALUES (14, 'Eden', 'Barker', 'Genie', NULL, '1996-11-16', 'student', '2018-10-25 12:32:59', '2018-10-25 12:33:01');
INSERT INTO `users` VALUES (15, 'Clay', 'Holmes', 'Farzaneh', NULL, '1997-03-16', 'student', '2018-10-25 12:33:02', '2018-10-25 12:33:04');

SET FOREIGN_KEY_CHECKS = 1;
