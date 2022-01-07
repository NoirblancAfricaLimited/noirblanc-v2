/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100504
 Source Host           : localhost:3306
 Source Schema         : noirblanc

 Target Server Type    : MySQL
 Target Server Version : 100504
 File Encoding         : 65001

 Date: 07/01/2022 17:14:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'Gilbert', 'Sibajene', 'gilbertsibajene7@gmail.com', '0977634317', NULL, '$2y$10$uc4jiolEIrQwu5diXJsmoeC2DdYI1mfysTcE7wIGRygmqS447j8JS', NULL, '2021-04-24 10:46:27', '2021-12-18 12:54:20');
INSERT INTO `admins` VALUES (2, 'Gilbert', 'Sibajene', 'gilbertsibajenee7@gmail.com', '+260977634316', NULL, '$2y$10$FcwOQ80GES8xIzZmFtVl0e5b48LMfH6lMssUj8NMQj65gLG1Od/U.', NULL, '2021-06-28 13:23:58', '2021-06-28 13:23:58');
INSERT INTO `admins` VALUES (4, 'Jane', 'Mwana', 'iiziit@yahoo.com', '0973230300', NULL, '$2y$10$Nl8IhVN5W9VIODfR6HYioOVTd66BdqrO4rm/j.7.GO7wphS7qnqH6', NULL, '2021-07-05 08:59:53', '2021-07-05 08:59:53');

-- ----------------------------
-- Table structure for bookings
-- ----------------------------
DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `start_at` datetime NOT NULL,
  `ends_at` datetime NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookings
-- ----------------------------
INSERT INTO `bookings` VALUES (9, 1, 8, '2021-12-25 10:00:00', NULL, NULL, NULL, '2021-12-18 13:15:32', '2021-12-18 13:15:32');

-- ----------------------------
-- Table structure for businesses
-- ----------------------------
DROP TABLE IF EXISTS `businesses`;
CREATE TABLE `businesses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `city_id` int NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of businesses
-- ----------------------------
INSERT INTO `businesses` VALUES (1, 'SuperCutz', 'House No. 3558, woodlands Chalala', 1, NULL, NULL, 3, '2021-12-03 07:44:57', '2021-12-03 07:44:57', '+260977634317', 'gilbertsibajene7@gmail.com');
INSERT INTO `businesses` VALUES (2, 'ZESCO', 'House No. 3558, woodlands Chalala', 1, NULL, NULL, 3, '2022-01-04 11:42:04', '2022-01-04 11:42:04', '+260977634311', 'gsibajene@zesco.co.zm');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Facials', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (2, 'Waxing', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (3, 'Hair', NULL, '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (4, 'Makeup', NULL, '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (5, 'Hands', NULL, '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (6, 'Brows', NULL, '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (7, 'Eyes', NULL, '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (8, 'Officiant', NULL, '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (9, 'Cosmetic Injectables', NULL, '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (10, 'Feet', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (11, 'Styling', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (12, 'Body Scrubs', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (13, 'Planner', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (14, 'Photographer', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (15, 'Videographer', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (16, 'Musician', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (17, 'MCs', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (18, 'DJ', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (19, 'Band', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (20, 'Interior', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (21, 'Decor', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-28 15:45:22');
INSERT INTO `categories` VALUES (22, 'Venue', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-28 15:46:31');
INSERT INTO `categories` VALUES (23, 'Lighting', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (24, 'Rental Chairs', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (25, 'Wedding Planner', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (26, 'Wedding Website', '2021-07-22 12:36:12', '2021-06-12 13:18:16', '2021-06-12 13:18:16');
INSERT INTO `categories` VALUES (27, 'Facials', '2021-07-22 12:36:12', '2021-07-05 08:49:47', '2021-07-05 08:49:47');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `Category_Id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `Service_Id` int NOT NULL,
  `Service_Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Category_Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Category_Description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ModifiedDate` datetime NULL DEFAULT NULL,
  `CreatedDate` datetime NULL DEFAULT NULL,
  `Image_Path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Category_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (21, 28, 'Beauty', 'Facials', 'For all occasions', '0000-00-00 00:00:00', NULL, '749c9be4501c81b84545e1cd08708119.png');
INSERT INTO `category` VALUES (22, 28, 'Beauty', 'Waxing', 'For all occasions', '0000-00-00 00:00:00', NULL, 'f9c75fcde39d7eb0b876716510eb593f.jpg');
INSERT INTO `category` VALUES (23, 28, 'Beauty', 'Hair', 'For all occasions', NULL, NULL, 'dc04e11bbc59886cfb01a411ab0588a6.png');
INSERT INTO `category` VALUES (24, 28, 'Beauty', 'Makeup', 'For all occasions', '0000-00-00 00:00:00', NULL, 'abad0fcec1b51958f3646a54d286cbf1.png');
INSERT INTO `category` VALUES (25, 28, 'Beauty', 'Hands', 'For all occasions', '0000-00-00 00:00:00', NULL, '627e77f28b341fb873b9fba3f0fb1498.png');
INSERT INTO `category` VALUES (37, 28, 'Beauty', 'Brows', 'Standard', '0000-00-00 00:00:00', NULL, 'c3a74728dd1dc755f87ca07baef13cfb.jpg');
INSERT INTO `category` VALUES (40, 28, 'Beauty', 'Eyes', 'tesCleaning', '0000-00-00 00:00:00', NULL, 'e29a1db0f308e25e026c75a19baae44f.png');
INSERT INTO `category` VALUES (41, 30, 'Media', 'Officiant', '', '0000-00-00 00:00:00', NULL, 'a3b861c4b04bbd9ef4095708f74a9883.jpg');
INSERT INTO `category` VALUES (42, 28, 'Beauty', 'Cosmetic Injectables', 'Cosmetic', '0000-00-00 00:00:00', NULL, '83bc005e9d95a7b7c5874dab65cc5be4.jpg');
INSERT INTO `category` VALUES (43, 28, 'Beauty', 'Feet', 'Feet', '0000-00-00 00:00:00', NULL, '8b45f4b7ef340863b3af5a09d6dcc234.jpg');
INSERT INTO `category` VALUES (44, 46, 'Body', 'Styling', 'Styling', '0000-00-00 00:00:00', NULL, '3e523026a412043aa9803d2f7c4e1f90.png');
INSERT INTO `category` VALUES (45, 28, 'Beauty', 'Body Scrubs', 'Scrubs', NULL, NULL, '4cbabda696bd5160750f7f87bea07a95.png');
INSERT INTO `category` VALUES (46, 30, 'Media', 'Planner', 'Planner', '0000-00-00 00:00:00', NULL, '433a91d71294049b2ae2472d99a11b19.png');
INSERT INTO `category` VALUES (47, 30, 'Media', 'Photographer', 'Photographer', '0000-00-00 00:00:00', NULL, '60c9e1c90b4d718a0a8624a96987c267.jpg');
INSERT INTO `category` VALUES (48, 30, 'Media', 'Videographer', 'Videographer', '0000-00-00 00:00:00', NULL, '659e6fd7e51124b02ad0c14919eda097.jpg');
INSERT INTO `category` VALUES (49, 30, 'Media', 'Musician', 'Musician', '0000-00-00 00:00:00', NULL, '510d8e81504059c3128f9e8f5c8840f6.jpg');
INSERT INTO `category` VALUES (50, 30, 'Media', 'MCs', 'MCs', '0000-00-00 00:00:00', NULL, 'ade9b39146b7c88a4a47a1ced882d7c2.jpg');
INSERT INTO `category` VALUES (51, 30, 'Media', 'DJ', '', '0000-00-00 00:00:00', NULL, 'a0e6226f24e6df86c75ac0613cdc73f8.jpg');
INSERT INTO `category` VALUES (52, 30, 'Media', 'Band', 'Band', '0000-00-00 00:00:00', NULL, '7c07720b7d13102fb274314c2ecdd85c.jpg');
INSERT INTO `category` VALUES (53, 32, 'Events', 'Interior', 'Interior', '0000-00-00 00:00:00', NULL, 'fd9a8235a97d548cf428a0779e5f47ce.jpg');
INSERT INTO `category` VALUES (54, 32, 'Events', 'Decor', 'Decor', '0000-00-00 00:00:00', NULL, '22d1e355833cf6800e42747cd262813d.jpg');
INSERT INTO `category` VALUES (55, 32, 'Events', 'Venue', 'Venue', '0000-00-00 00:00:00', NULL, '29c5770d41083ab3044e83b5c6cad194.jpg');
INSERT INTO `category` VALUES (56, 32, 'Events', 'Lighting', 'Lighting', '0000-00-00 00:00:00', NULL, '7873cb36af184072d93d26a57d0f96ad.jpg');
INSERT INTO `category` VALUES (57, 32, 'Events', 'Rental Chairs', 'Rental  Chairs', '0000-00-00 00:00:00', NULL, '10d0ebeda8de9c21a7bf3e5e9ac712c4.jpg');
INSERT INTO `category` VALUES (58, 32, 'Events', 'Wedding Planner', 'Wedding Planner', '0000-00-00 00:00:00', NULL, '103d92798b4937a8e2fc2197b89010fd.jpg');
INSERT INTO `category` VALUES (59, 32, 'Events', 'Wedding Website', 'Wedding Website', '0000-00-00 00:00:00', NULL, '3857546db9e34874000a63828eece472.jpg');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES (1, '2021-04-19 01:56:25', '2021-04-19 01:56:28', 'Lusaka');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `customers_mobile_unique`(`mobile`) USING BTREE,
  UNIQUE INDEX `customers_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (8, 'Gilbert', 'Sibajene', NULL, '0977634317', NULL, '$2y$10$ufaHBzYNQe72schhf.kZfexwU.mLxBMMg9nibMTl50BDb5sUK4SXy', NULL, NULL, '2021-12-17 11:35:17', '2021-12-17 11:35:17');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `collection_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `media_uuid_unique`(`uuid`) USING BTREE,
  INDEX `media_model_type_model_id_index`(`model_type`, `model_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES (3, 'App\\Models\\Service', 1, 'bdbce0d9-1abd-4629-937f-a7d84a96759e', 'gallery', 'HJstOCWZNPdyn4aym70SwRSuyAmSIx-metaNDA0N2ZlYmMwM2JmZDRlNDJkNWEzN2MwMzQ0YTc1MWQuanBn-', 'HJstOCWZNPdyn4aym70SwRSuyAmSIx-metaNDA0N2ZlYmMwM2JmZDRlNDJkNWEzN2MwMzQ0YTc1MWQuanBn-.jpg', 'image/jpeg', 'public', 'public', 113062, '[]', '[]', '[]', '[]', 3, '2021-12-03 10:22:29', '2021-12-03 10:22:29');
INSERT INTO `media` VALUES (8, 'App\\Models\\Service', 3, 'c8f12908-4207-4bd7-8f59-663e38473e97', 'gallery', 'AH14kBxOFFBwNy5N1Y9rSs2gf4IyLf-metaSU1HXzEyOTQuSlBH-', 'AH14kBxOFFBwNy5N1Y9rSs2gf4IyLf-metaSU1HXzEyOTQuSlBH-.jpg', 'image/jpeg', 'public', 'public', 163022, '[]', '[]', '[]', '[]', 8, '2021-12-18 13:33:22', '2021-12-18 13:33:22');
INSERT INTO `media` VALUES (4, 'App\\Models\\Service', 1, 'b109c5e8-4596-4d73-a7d4-ecca905feda8', 'gallery', 'kNQCOjOb8rxzlNNHXHJ4TqMxwkc0iW-metaQmxhY2stTWVuLUhhaXJzdHlsZXMuanBn-', 'kNQCOjOb8rxzlNNHXHJ4TqMxwkc0iW-metaQmxhY2stTWVuLUhhaXJzdHlsZXMuanBn-.jpg', 'image/jpeg', 'public', 'public', 52933, '[]', '[]', '[]', '[]', 4, '2021-12-03 10:22:29', '2021-12-03 10:22:29');
INSERT INTO `media` VALUES (5, 'App\\Models\\Service', 1, 'd1422fb5-5a20-4fce-9eef-98a01e291a6e', 'gallery', '38f4dsnpgZr0YpD2XUTMqcK57Is982-metaZG93bmxvYWQuanBn-', '38f4dsnpgZr0YpD2XUTMqcK57Is982-metaZG93bmxvYWQuanBn-.jpg', 'image/jpeg', 'public', 'public', 8314, '[]', '[]', '[]', '[]', 5, '2021-12-03 10:22:30', '2021-12-03 10:22:30');
INSERT INTO `media` VALUES (6, 'App\\Models\\Service', 2, '9826e762-762c-4478-9716-362272a95d98', 'gallery', 'SmdSolpVfiPtL8mFDecahZeYHovPz9-metaMTktd29tZW5zLWZhZGUtd2l0aC1zaGF2ZWQtcGFydC5qcGc=-', 'SmdSolpVfiPtL8mFDecahZeYHovPz9-metaMTktd29tZW5zLWZhZGUtd2l0aC1zaGF2ZWQtcGFydC5qcGc=-.jpg', 'image/jpeg', 'public', 'public', 45370, '[]', '[]', '[]', '[]', 6, '2021-12-03 16:23:43', '2021-12-03 16:23:43');
INSERT INTO `media` VALUES (7, 'App\\Models\\Business', 1, '0e73b892-bd53-48f1-b1e5-99e658a9f544', 'avatar', 'yUNHVqvHmC6WfmLlZc9LecUhpH0FVc-metabG9nbzUucG5n-', 'yUNHVqvHmC6WfmLlZc9LecUhpH0FVc-metabG9nbzUucG5n-.png', 'image/png', 'public', 'public', 3051, '[]', '[]', '{\"thumb\":true}', '[]', 7, '2021-12-18 12:08:49', '2021-12-18 12:08:50');
INSERT INTO `media` VALUES (9, 'App\\Models\\Service', 3, 'ca3392c5-4317-4574-90f3-07062ff0d55c', 'gallery', 'F2OpgA2dtn33wItOGV94EN6G8dUmSf-metaSU1HXzEzMjMuSlBH-', 'F2OpgA2dtn33wItOGV94EN6G8dUmSf-metaSU1HXzEzMjMuSlBH-.jpg', 'image/jpeg', 'public', 'public', 120325, '[]', '[]', '[]', '[]', 9, '2021-12-18 13:33:22', '2021-12-18 13:33:22');
INSERT INTO `media` VALUES (10, 'App\\Models\\Service', 3, '92c0ff11-461a-4d60-a65d-51a7e9745224', 'gallery', '7xLa2hWXByqQQOLb70vHJ9Pf4coc05-metaSU1HXzEzMjcuSlBH-', '7xLa2hWXByqQQOLb70vHJ9Pf4coc05-metaSU1HXzEzMjcuSlBH-.jpg', 'image/jpeg', 'public', 'public', 440727, '[]', '[]', '[]', '[]', 10, '2021-12-18 13:33:22', '2021-12-18 13:33:22');
INSERT INTO `media` VALUES (12, 'App\\Models\\Provider', 2, 'b7452f20-8dcd-44d4-aa0a-b32a52359d93', 'avatar', '97Nq6H5c9GGbPdPOkrl8yxgvhHEvsz-metaU2NyZWVuc2hvdCAyMDIxLTEyLTIzIGF0IDEwLjM4LjQ2IEFNLnBuZw==-', '97Nq6H5c9GGbPdPOkrl8yxgvhHEvsz-metaU2NyZWVuc2hvdCAyMDIxLTEyLTIzIGF0IDEwLjM4LjQ2IEFNLnBuZw==-.png', 'image/png', 'public', 'public', 407517, '[]', '[]', '{\"thumb\":true}', '[]', 12, '2022-01-04 11:42:05', '2022-01-04 11:42:06');
INSERT INTO `media` VALUES (13, 'App\\Models\\Provider', 2, '54b99c02-52e8-46f8-bde3-b365a8868738', 'nrc', '1PQbKmWiXLMkEfqcEqa6sEhLEfcmrA-metaU2NyZWVuc2hvdCAyMDIxLTEyLTIzIGF0IDEwLjM4LjQ2IEFNLnBuZw==-', '1PQbKmWiXLMkEfqcEqa6sEhLEfcmrA-metaU2NyZWVuc2hvdCAyMDIxLTEyLTIzIGF0IDEwLjM4LjQ2IEFNLnBuZw==-.png', 'image/png', 'public', 'public', 407517, '[]', '[]', '{\"thumb\":true}', '[]', 13, '2022-01-04 11:42:06', '2022-01-04 11:42:06');
INSERT INTO `media` VALUES (14, 'App\\Models\\Provider', 2, '57cfe280-b0a4-4327-8c84-0251f6d02b6a', 'certificates', 'fZipv9SWlNtE5pfTJ8H1mI2PYjaXgs-metaU2NyZWVuc2hvdCAyMDIxLTEyLTIzIGF0IDEwLjQwLjQzIEFNLnBuZw==-', 'fZipv9SWlNtE5pfTJ8H1mI2PYjaXgs-metaU2NyZWVuc2hvdCAyMDIxLTEyLTIzIGF0IDEwLjQwLjQzIEFNLnBuZw==-.png', 'image/png', 'public', 'public', 543009, '[]', '[]', '{\"thumb\":true}', '[]', 14, '2022-01-04 11:42:06', '2022-01-04 11:42:07');
INSERT INTO `media` VALUES (15, 'App\\Models\\Business', 2, 'c131ec17-42c4-4baf-9a66-20d6caf95a5d', 'avatar', 'mNH1aNPO2srFQmZ41WZ7pTmMw78FLT-metabG9nbzMucG5n-', 'mNH1aNPO2srFQmZ41WZ7pTmMw78FLT-metabG9nbzMucG5n-.png', 'image/png', 'public', 'public', 3405, '[]', '[]', '{\"thumb\":true}', '[]', 15, '2022-01-05 11:49:38', '2022-01-05 11:49:39');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_05_03_113953_create_statuses_table', 2);
INSERT INTO `migrations` VALUES (5, '2021_05_03_114005_create_media_table', 2);
INSERT INTO `migrations` VALUES (6, '2021_05_03_133815_create_services_table', 3);
INSERT INTO `migrations` VALUES (7, '2021_05_11_085848_create_bookings_table', 4);
INSERT INTO `migrations` VALUES (10, '2021_05_11_131136_create_customers_table', 6);
INSERT INTO `migrations` VALUES (9, '2021_05_12_081005_create_reviews_table', 5);
INSERT INTO `migrations` VALUES (11, '2021_05_12_142606_create_vouchers_table', 7);
INSERT INTO `migrations` VALUES (12, '2019_12_14_000001_create_personal_access_tokens_table', 8);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`(250)) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '3945721378a762b526f637b335f18994114abc2a6fc2c0d9e440e51b4afbc021', '[\"*\"]', NULL, '2021-12-17 11:40:49', '2021-12-17 11:40:49');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', 'b1e90aaba9c3004e42bf7538b10e5dc1572433a3fb7c5c44174028baea38bcc0', '[\"*\"]', NULL, '2021-12-17 11:40:05', '2021-12-17 11:40:05');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '53c795bccaa83734b4ed222ca0078b156b35b99e01db30841e1453452dad9509', '[\"*\"]', NULL, '2021-12-17 11:36:24', '2021-12-17 11:36:24');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', 'a2dfb16faf66e560068b322e71c222defe9740cddc3e5921908479b0b69bfaab', '[\"*\"]', NULL, '2021-12-17 11:36:07', '2021-12-17 11:36:07');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', 'f2c89ac391d527d7b526e4799719ed421874acabdaadef2b2309af3e16fdfb08', '[\"*\"]', NULL, '2021-12-17 11:40:52', '2021-12-17 11:40:52');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '7cc093f7a34224614d5ad04670c5c351bd80639ea3dbe29f1a15456914baaf77', '[\"*\"]', NULL, '2021-12-17 11:40:58', '2021-12-17 11:40:58');
INSERT INTO `personal_access_tokens` VALUES (12, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '902472e6896e949dfa2cb1a3cf9fdd43ad23bd1ada3f208a9d4ae246d031a451', '[\"*\"]', NULL, '2021-12-17 11:41:26', '2021-12-17 11:41:26');
INSERT INTO `personal_access_tokens` VALUES (13, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '7e50f6370122bec2d7641c6ed9e8d07971576ed50e5ccf709af52b073bb18aea', '[\"*\"]', NULL, '2021-12-17 11:41:40', '2021-12-17 11:41:40');
INSERT INTO `personal_access_tokens` VALUES (14, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '0979a29a4823161673749f71c31d509f34e4c9f61f0b1149c3a53504a3c01ef5', '[\"*\"]', NULL, '2021-12-17 11:41:56', '2021-12-17 11:41:56');
INSERT INTO `personal_access_tokens` VALUES (15, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '6dc395842a19660cb8ba8736683f373b33707c3a2353c14f27dacbaab2c9949c', '[\"*\"]', '2021-12-17 14:11:41', '2021-12-17 13:41:50', '2021-12-17 14:11:41');
INSERT INTO `personal_access_tokens` VALUES (16, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '5ae45be6e0c2d051f28176c526d1dc516f7e10523e4be7f92d03a6dfd6508681', '[\"*\"]', '2021-12-17 15:13:24', '2021-12-17 14:56:45', '2021-12-17 15:13:24');
INSERT INTO `personal_access_tokens` VALUES (17, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '28cb0a7a3f245c9782ae5eef68745f523a39aee3378a5bf366e3a06caab87e3e', '[\"*\"]', '2021-12-17 15:25:31', '2021-12-17 15:21:29', '2021-12-17 15:25:31');
INSERT INTO `personal_access_tokens` VALUES (18, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '44928f4283988f9ca3d82ba240d3c6655f7a2e36f974f2bb11ccb7f81da3d16a', '[\"*\"]', '2021-12-18 10:06:57', '2021-12-18 09:26:31', '2021-12-18 10:06:57');
INSERT INTO `personal_access_tokens` VALUES (19, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', '9adee8da0a9b10bdac65b2097c8b17c349ad2769bc7627b2c3cb9b402b935901', '[\"*\"]', '2021-12-18 12:50:27', '2021-12-18 12:48:12', '2021-12-18 12:50:27');
INSERT INTO `personal_access_tokens` VALUES (20, 'App\\Models\\Customer', 8, 'sdk_gphone_x86', 'c7ddf238ce32649f3e1a60f985ef0d1746c183b7ab673398e373ee57a0d5e38f', '[\"*\"]', '2021-12-20 06:52:35', '2021-12-18 13:14:17', '2021-12-20 06:52:35');

-- ----------------------------
-- Table structure for providers
-- ----------------------------
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `business_id` int NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `users_phone_unique`(`mobile`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of providers
-- ----------------------------
INSERT INTO `providers` VALUES (1, 'Gilbert', 'Sibajene', 'gilbertsibajene77@gmail.com', '+260977634317', '$2y$10$mI91mApDXxPi9lyhhzsxQ.pgwBi5NRNJuvFCpPxgXKxZARQ0MK2tG', NULL, NULL, 1, NULL, '2021-12-03 07:45:01', '2021-12-03 07:45:01');
INSERT INTO `providers` VALUES (2, 'Gilbert', 'Sibajene', 'gsibajene@zesco.co.zm', '+260977634311', '$2y$10$0btV2eUCUmkkApUhOkOon.aEPFlWmHYiwtEIoXhTEb0kQH9fo7Jby', NULL, NULL, 2, NULL, '2022-01-04 11:42:05', '2022-01-04 11:42:05');

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NULL DEFAULT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reviews_model_type_model_id_index`(`model_type`, `model_id`) USING BTREE,
  INDEX `reviews_author_type_author_id_index`(`author_type`, `author_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES (3, NULL, 'Qui et nostrum repudiandae pariatur corrupti dolores nisi vel. Blanditiis dolores omnis iste officia quisquam. Quasi sit reiciendis asperiores illum. Enim eaque exercitationem blanditiis nisi hic.', 4, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 13, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (4, NULL, 'Iste quisquam numquam tempore magni perferendis. Corporis deserunt recusandae vitae quia illum ex. Repellat veniam nulla atque ea. Qui officia est voluptatem autem sed totam et.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 13, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (5, NULL, 'Nisi optio sapiente qui optio. Cupiditate in et sunt dolorem. Omnis est deserunt odit facilis magnam debitis.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 14, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (6, NULL, 'Debitis unde excepturi quaerat. Cupiditate ipsa earum est mollitia placeat et rerum. Iure expedita est facilis distinctio voluptates iusto id sint.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 14, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (7, NULL, 'Sed voluptas quasi accusamus quia nam sit vitae sunt. Recusandae quod dolor ut quia ut occaecati incidunt. Quis quo natus veniam sequi autem dolore ipsa. Possimus debitis nisi quidem dolores minus sed.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 15, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (8, NULL, 'Ipsum est quaerat omnis aut. Velit incidunt commodi qui eum voluptatem. Dolore natus facilis facilis ut iusto. Quam velit aut aut illum esse unde. Voluptatem dicta quod corporis perspiciatis ex consequatur laudantium.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 15, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (9, NULL, 'Tenetur totam nam dolores aut natus praesentium praesentium. Exercitationem vel molestiae est. Quidem accusamus aliquam cumque impedit facilis rerum eos.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 16, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (10, NULL, 'Aperiam voluptatem molestiae nostrum minus. Omnis voluptate nesciunt et et ex. Et molestiae ut eum ea harum et. Quidem qui dolor aut sit dolores omnis ratione. Corporis consequatur sit et nostrum impedit voluptate.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 16, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (11, NULL, 'Ipsa minima aut earum aliquam quasi maiores. At maxime ut ex quos. Aut molestias eos itaque molestiae voluptatem vel.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 17, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (12, NULL, 'Doloribus qui non dicta ea unde. Qui non sit rerum tempora. Enim est fugiat facere totam. Aut ut libero id qui ipsam et.', 5, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 17, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (13, NULL, 'Molestiae neque autem deserunt autem. Autem at quas aut expedita ratione et repudiandae officiis.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 18, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (14, NULL, 'Nihil eius odio aut soluta est. A corrupti sit qui amet. Voluptate eveniet itaque delectus ipsam totam aut.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 18, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (15, NULL, 'Sint et voluptatem enim qui quam eaque qui necessitatibus. Ipsam libero vero voluptatum. Et accusantium necessitatibus ipsa maiores.', 4, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 19, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (16, NULL, 'Consequatur eius dolorem vero ad doloribus consequatur officia. Dolor et consequatur dolor nesciunt. Deleniti minima architecto quia natus.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 19, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (17, NULL, 'Rerum qui voluptas et corrupti mollitia dicta. Voluptas ad occaecati illum minima.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 20, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (18, NULL, 'Illo commodi quos et totam. Magnam voluptates aliquam odit quia nostrum. Earum dolor vel qui praesentium voluptatem sed.', 5, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 20, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (19, NULL, 'Ipsum optio sit incidunt in sint molestiae earum. Consequuntur provident ullam maxime et et officiis asperiores.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 21, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (20, NULL, 'Non saepe dolorem voluptas. Maiores perspiciatis quis architecto nesciunt omnis dolorum. Amet expedita cum et.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 21, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (21, NULL, 'Consequatur ex est reprehenderit assumenda ipsam tenetur. Asperiores ea debitis quibusdam et id. Beatae quia ea vero molestias adipisci eum sequi.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 22, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (22, NULL, 'Fugiat quia atque est. Dolores omnis commodi facere. Eaque ut ipsa vel. Eaque nobis quod quos fugit.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 22, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (23, NULL, 'Et cupiditate est dolorem illo eligendi eum qui. Molestiae est voluptatibus laboriosam cupiditate. Laboriosam temporibus ad praesentium voluptatem suscipit architecto. Omnis labore impedit corporis harum qui.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 23, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (24, NULL, 'Aut doloremque ut iure quibusdam quos et at est. Est nostrum vel vero necessitatibus occaecati. Est ullam excepturi sed iure voluptatibus aut corporis. Ea sed voluptatem magnam cumque.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 23, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (25, NULL, 'Ut non repudiandae quam laborum odit. Enim itaque non maiores id commodi. Ut adipisci nihil odio vel molestias magni nihil.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 24, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (26, NULL, 'Iste qui explicabo laboriosam et architecto occaecati. Quidem nesciunt tempora odit ea sequi ut. Officia recusandae dolor dignissimos non et. Consequatur hic eius repellendus eveniet et reiciendis temporibus aut.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 24, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (27, NULL, 'Et asperiores illo maiores voluptas. Velit quis cupiditate dolorum eveniet quidem voluptas provident. Quia et optio labore. Blanditiis cum sed aut vel sed.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 25, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (28, NULL, 'Voluptatem labore tenetur ad aliquam numquam iusto officia. Sit rerum voluptatum dolor perspiciatis ea quasi recusandae iste. Autem harum fugit nisi quis voluptas at dicta eum. Quaerat et distinctio nisi cupiditate nostrum corporis amet.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 25, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (29, NULL, 'Adipisci velit dolore in qui ipsa adipisci deserunt nulla. Iure laudantium eaque quidem repudiandae distinctio iusto. Reprehenderit libero perspiciatis facere minus blanditiis facilis sed. Eos nisi voluptatem et neque quia.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 26, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (30, NULL, 'Tempora consectetur quia nisi quia doloribus dolores dignissimos. Ut et quisquam facere cum facilis est. Commodi voluptatibus ut recusandae in in iusto. Vitae temporibus saepe necessitatibus sunt architecto quaerat nihil.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 26, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (31, NULL, 'Facilis ipsa officia eligendi aspernatur eum. Omnis et nobis eius ex laboriosam consequatur. Deserunt voluptas in voluptatem dolores. Ullam ipsa id rerum.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 27, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (32, NULL, 'Sint est dicta incidunt. Repellendus ea mollitia similique nihil voluptatibus. Tempore cumque dolorum amet et sed exercitationem odit.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 27, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (33, NULL, 'Ut et distinctio dolore fugit inventore officiis sed. Nostrum accusamus dolores beatae blanditiis quo. Deleniti blanditiis et et harum qui laboriosam atque odio.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 28, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (34, NULL, 'Nihil ex aut ea at dicta qui. Id reiciendis harum odit neque quisquam quas deserunt commodi. Nostrum architecto aut amet vero vitae reiciendis vel.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 28, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (35, NULL, 'Voluptatem placeat rem eaque quasi dicta inventore. Repellendus dolor accusamus blanditiis enim et magnam iste. Consequuntur est ex iusto molestiae.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 29, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (36, NULL, 'Officiis ipsa et fuga nostrum. Maxime sapiente impedit reprehenderit aut magni in. Aut eaque iste eum est. Qui aut et odit voluptas.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 29, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (37, NULL, 'Reprehenderit repellat dolor eaque voluptatem veritatis quibusdam voluptas ad. Sed perspiciatis iure et delectus saepe. Adipisci sequi quis voluptates quas alias velit.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 30, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (38, NULL, 'Porro necessitatibus necessitatibus enim est dolore qui velit. Omnis quae quo omnis corrupti modi nesciunt. Quo earum minima sit temporibus totam vitae iusto. Qui iure vel excepturi perferendis aut enim.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 30, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (39, NULL, 'Voluptatem quod quia possimus temporibus. Eum alias qui esse dolores a sapiente. Harum est quibusdam enim et distinctio dolorem quia odio. Est ad architecto ad quas facere temporibus.', 4, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 31, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (40, NULL, 'Porro eligendi et cumque saepe ut et. Neque est voluptatem odit. Dolorum a dolore laudantium accusantium.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 31, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (41, NULL, 'Odit et est et aut quia. Voluptatum perferendis animi officia et occaecati ad cum. Rem porro cupiditate voluptas quisquam velit rerum. Ullam sed aut ipsam eum enim et recusandae esse.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 32, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (42, NULL, 'Et dolorem consequuntur suscipit commodi. Explicabo ullam ullam dolores quo.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 32, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (43, NULL, 'Ex facere minus necessitatibus delectus dicta. Voluptatem perspiciatis eum cumque esse laboriosam. Ut ipsam consequatur ipsum qui.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 33, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (44, NULL, 'Ea blanditiis hic ipsa. Voluptatem fugit perferendis repellat accusamus totam ipsum. Ut deleniti qui illo et sed esse. Minima et beatae quia veniam hic placeat ut.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 33, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (45, NULL, 'Animi ullam tenetur expedita sed molestiae qui. Libero ea optio ex. Saepe aut ut mollitia est corporis et nostrum.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 34, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (46, NULL, 'Aperiam sit nihil culpa consequatur reprehenderit et aut. Sapiente optio ullam minus eius dolorem reprehenderit vitae. Provident mollitia sint quia omnis nulla.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 34, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (47, NULL, 'A iusto consectetur ut sit est aut expedita. Dicta omnis eum eos nobis dolor. Qui veniam ut voluptatibus voluptatem culpa est qui. Possimus mollitia doloremque quo cupiditate quia.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 35, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (48, NULL, 'Officiis ea perspiciatis aspernatur soluta voluptatem veniam. Facere quia qui quia dignissimos commodi. Aut at quia qui et.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 35, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (49, NULL, 'Placeat excepturi exercitationem molestiae accusantium quia repellat. Sunt qui pariatur itaque. Necessitatibus error itaque sed voluptatem in corporis. Non praesentium voluptatem molestias id aut rerum voluptates.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 36, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (50, NULL, 'Facilis voluptatum vero amet ducimus. Et qui dolorum eos repudiandae minima modi rem. Eligendi reiciendis iste inventore laboriosam. Aut beatae aut assumenda numquam autem fugiat sit. Officiis sunt quisquam dolorem sit id.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 36, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (51, NULL, 'Est nobis cumque quis et porro. Velit omnis porro cum doloremque autem assumenda. Eum nemo earum aperiam.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 37, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (52, NULL, 'Et rerum dicta magni id veritatis. Et assumenda quia mollitia eum aut sed.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 37, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (53, NULL, 'Expedita nam quis error iusto qui magnam nostrum. Quasi nostrum dolorem voluptate perferendis quisquam. Qui possimus consequatur optio perferendis et numquam.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 38, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (54, NULL, 'Quos exercitationem impedit quia dicta reiciendis necessitatibus. Inventore sint id id qui non esse. Consequatur dicta recusandae eos iusto recusandae.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 38, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (55, NULL, 'Mollitia aperiam molestias sit sit rerum quisquam est. Totam soluta voluptatem praesentium recusandae. Accusantium dolores perspiciatis deserunt enim est. Voluptas doloremque sequi voluptatibus qui itaque voluptatem ipsum nesciunt. Ad eum harum assumenda magni recusandae veritatis id.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 39, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (56, NULL, 'Sunt aut sint rerum molestiae tenetur. Cum distinctio ratione ut nemo ea perspiciatis. Et esse fugit fugiat nulla.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 39, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (57, NULL, 'Eveniet deserunt maiores labore. Labore voluptatem est eius nobis ex et quidem. Et saepe quos voluptatem optio voluptate nesciunt. Cum architecto quaerat aut laboriosam voluptas sint pariatur.', 4, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 40, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (58, NULL, 'Est quo exercitationem modi laudantium. Sunt non et eos ea et. Non voluptates dolorem vel reprehenderit tenetur.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 40, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (59, NULL, 'Reprehenderit praesentium qui reprehenderit quis. Fugit quia autem quibusdam quia dignissimos sapiente quia. Non adipisci dolorem distinctio aspernatur dolores. Assumenda ut mollitia nulla.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 41, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (60, NULL, 'Voluptatem assumenda occaecati impedit molestiae dolore saepe ut. Consectetur esse in optio autem. Quo in voluptatem dicta ut accusamus et.', 5, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 41, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (61, NULL, 'Nobis iure possimus velit eaque repudiandae totam praesentium. Voluptatem tempore in magni iste qui. Consectetur reprehenderit tenetur necessitatibus omnis ut labore minima ut.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 42, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (62, NULL, 'Voluptatem repellendus sapiente quam expedita. Molestias sint sequi qui sunt veritatis in.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 42, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (63, NULL, 'Doloremque eos est voluptatem quo eaque voluptas voluptatum error. Neque ut doloremque aut.', 4, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 43, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (64, NULL, 'Corrupti voluptatem cum asperiores fugit. Quia id debitis dolor porro autem. Esse dolore nobis possimus velit.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 43, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (65, NULL, 'Et quos occaecati minima similique voluptatem similique. Eos sunt optio blanditiis sit explicabo. Odit sunt sed cum optio blanditiis. Nemo illum voluptatem et eius itaque ad ipsa.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 44, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (66, NULL, 'In autem ex cum vel eum laboriosam quasi dolor. Id ipsa quasi cupiditate aperiam quaerat velit. At architecto asperiores ut et voluptatem repudiandae vero velit.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 44, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (67, NULL, 'Excepturi temporibus sunt sunt quidem ipsa quibusdam. Harum eum qui incidunt ea est soluta nisi. Quia autem ipsum amet hic omnis et dolor numquam.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 45, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (68, NULL, 'Aut consequuntur est magni fugit perspiciatis. Velit magnam laudantium quia labore praesentium ipsam. Sed reiciendis excepturi praesentium.', 5, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 45, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (69, NULL, 'Consequatur sint consectetur tempore optio dicta qui. Est deleniti fugit quos. Et laborum suscipit dolor.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 46, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (70, NULL, 'Iure voluptate doloremque nobis maiores non iste odit ipsam. Fugit similique facilis sunt odit. Est quisquam ducimus fugiat nemo ea quia.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 46, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (71, NULL, 'Necessitatibus sit rerum illo tenetur laboriosam incidunt et. Tenetur doloremque eligendi autem cum hic consequatur. Praesentium enim et nesciunt saepe est qui.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 47, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (72, NULL, 'Quaerat maiores consectetur labore in. Sit et quidem laudantium. Voluptatum ad eius et magni architecto neque. Et voluptatem atque nisi numquam ea illum voluptatibus et.', 5, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 47, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (73, NULL, 'Ut dignissimos possimus omnis placeat officia. Et fugiat minima voluptatibus molestiae nihil consequatur nihil asperiores. Quia tenetur quis quia totam qui quas.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 48, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (74, NULL, 'Rerum qui aliquid quibusdam consequatur. Sapiente eligendi maiores quisquam sit similique ipsa et repudiandae. Nostrum iusto sint non. Aliquam id sequi aliquam.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 48, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (75, NULL, 'Aut aut officia in ea. Nulla omnis magnam excepturi sunt adipisci aperiam. Neque fuga corporis temporibus nihil culpa repellat ab quaerat.', 2, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 49, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (76, NULL, 'Atque delectus id dolore explicabo tenetur cum sed. Excepturi unde nisi quasi et optio veniam.', 5, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 49, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (77, NULL, 'Ea dolorem vel vitae eligendi. Accusamus repellendus excepturi dolor exercitationem. Recusandae perferendis nihil quaerat dicta rerum alias omnis. Ipsa dolorum rerum excepturi.', 4, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 50, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (78, NULL, 'Et ea quo sint. Nihil et nulla cum laboriosam voluptas doloremque quia. Sunt provident ut corporis magnam. Voluptatibus consequatur consequuntur provident optio necessitatibus ut. Iure et aut impedit quis sint quia.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 50, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (79, NULL, 'Voluptas eos voluptatibus enim laudantium non libero. Ut ut odit voluptates facilis in consequatur qui. Sunt quod aut incidunt nihil.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 51, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (80, NULL, 'Ea possimus deserunt voluptatem. Aliquid odit hic quae dolor. Accusantium sed veniam modi dicta ducimus. Cum dolores facere omnis rerum amet ea nobis laborum.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 51, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (81, NULL, 'Animi illo mollitia quos qui ab. Libero minus cum impedit ex quis nulla in. Nesciunt quas et facere dicta consequatur libero quisquam. Laudantium nesciunt blanditiis suscipit ipsum.', 5, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 52, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (82, NULL, 'Accusantium corporis aut sint porro et sunt. Adipisci et ipsa consequatur corrupti dolore. Illum esse earum cum ut consequatur. Dolores eum amet eos qui maxime rem voluptas.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 52, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (83, NULL, 'Voluptates commodi accusamus eveniet. Accusantium corporis id rem placeat quasi eum cupiditate. Occaecati dolore quae dicta rerum corporis sit dolore voluptatem. Sapiente hic nobis consequuntur suscipit ut neque eum.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 53, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (84, NULL, 'Et aut nam aut accusamus tempore quia. Omnis consequuntur nisi qui labore deleniti sequi. Qui nesciunt ea et ut. Laudantium pariatur inventore eligendi porro.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 53, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (85, NULL, 'Labore qui est non quasi dolorem ea eaque. Et expedita ut facilis aut. Omnis quo sit tenetur aut quod mollitia id. Reiciendis aut qui minima. Veritatis nulla unde temporibus sint optio enim.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 54, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (86, NULL, 'Quidem aut alias qui nesciunt esse. Praesentium saepe nihil natus. Quidem ex rerum esse. Ad asperiores sit nemo omnis et aliquid minus. Quam quia temporibus alias quibusdam neque iure.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 54, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (87, NULL, 'Sed numquam officiis est pariatur recusandae nemo. Reiciendis ratione distinctio molestiae eum. Laudantium ullam nemo quo minus quaerat adipisci. Natus ut error eum sed in ea.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 55, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (88, NULL, 'Earum exercitationem et doloremque iusto quo quo aut. Qui temporibus consequatur quasi est laborum doloremque quis. Voluptas alias suscipit beatae ut. Impedit neque alias id officiis.', 2, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 55, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (89, NULL, 'Voluptate veniam voluptatibus sint sed praesentium cum. Et qui placeat rerum laudantium. Corporis dolorem cupiditate placeat dolorum mollitia.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 56, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (90, NULL, 'Enim tempora ullam distinctio est qui error aut. Quis inventore in modi inventore. Blanditiis non sed suscipit quasi cupiditate.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 56, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (91, NULL, 'Laborum natus ut impedit ullam ut dolorem id. Eos sequi enim unde voluptas facilis placeat rerum. Earum in perferendis et eum ea quisquam voluptatibus rerum. Accusantium est labore est laborum ut incidunt commodi.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 57, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (92, NULL, 'Voluptates soluta id placeat est ducimus ab accusantium. Similique cum quia dolores delectus. Labore quia officiis quia atque voluptatibus laborum quam. Nihil est et ut voluptatem praesentium non.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 57, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (93, NULL, 'Vero quam libero id soluta est. Quia ullam aut perspiciatis quia. Corrupti possimus quae molestiae quia dicta.', 4, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 58, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (94, NULL, 'Non voluptas commodi sit illo corporis. Nam voluptas quos incidunt est incidunt vitae doloribus. Quisquam deleniti neque nemo unde dicta tempora perferendis atque. Fugit reiciendis totam et libero non. Qui nihil enim provident nemo.', 3, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 58, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (95, NULL, 'Deleniti sunt tempora impedit temporibus libero. Ut illum eos et delectus pariatur. Dolores nobis illum cum voluptatibus. Eius minus voluptate aliquid cumque.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 59, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (96, NULL, 'Aliquam quasi nulla sint possimus. Rerum natus ea quia. Quia quibusdam ut maxime. Natus quo cumque quasi vitae illum.', 1, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 59, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (97, NULL, 'Debitis et enim sit eum explicabo quia. Fugiat reiciendis repellat dolorem perspiciatis. In atque voluptatum eos. Qui recusandae recusandae nihil ullam dolorum earum.', 1, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 60, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (98, NULL, 'Autem nulla ut reprehenderit est odit qui. Vitae totam non et molestias ea qui. Enim maiores vero sed sunt qui vero.', 4, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 60, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (99, NULL, 'Omnis ipsam saepe quam dolore adipisci. Vel et est dignissimos nisi est hic eveniet. Hic sunt cumque omnis eum aperiam labore reiciendis eius. Voluptas alias ad omnis fugiat eius non voluptate corporis.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 61, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (100, NULL, 'Necessitatibus ab ab debitis ut ipsum. Quia laboriosam recusandae aut commodi praesentium laborum. Consequatur consectetur est eos eum debitis unde aut. Ipsum molestiae aut qui dolor assumenda.', 5, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 61, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (101, NULL, 'Est dolor aut laborum eum est ut sint necessitatibus. Eum aut ratione perferendis et ducimus. Ut modi aut quis dignissimos facilis quam in. Iste odit voluptatem cumque.', 3, 'App\\Models\\Service', 1, 'App\\Models\\Customer', 62, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);
INSERT INTO `reviews` VALUES (102, NULL, 'Saepe recusandae qui voluptas reiciendis enim sit aperiam repudiandae. Similique aut voluptas sit aspernatur modi sapiente ut. Quia ut explicabo omnis non nulla veniam.', 5, 'App\\Models\\Service', 3, 'App\\Models\\Customer', 62, '2021-05-12 12:33:39', '2021-05-12 12:33:39', NULL);

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int NOT NULL,
  `business_id` int NOT NULL,
  `price` decimal(8, 2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_at` time NULL DEFAULT NULL,
  `close_at` time NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES (1, 'The \"fade\" hairstyle is a popular short haircut for men—it actually made Google\'s \"Year in Search\" trending data list for 2020—and it\'s sometimes also called \"military reg.\" It simply means that your hair tapers from the bottom to the top and it can be as close to the skin as you like', 69, 1, 300.00, NULL, '2021-12-03 08:02:44', '2021-12-03 08:02:44', NULL, NULL);
INSERT INTO `services` VALUES (2, 'Come enjoy your favourite women\'s cut here', 70, 1, 250.00, NULL, '2021-12-03 16:22:10', '2021-12-03 16:22:10', NULL, NULL);
INSERT INTO `services` VALUES (3, 'The blowdrying process. The process begins with a soothing hair wash and scalp massage, that will leave you feeling relaxed and ready to have your hair lifted', 71, 1, 50.00, NULL, '2021-12-18 13:32:32', '2021-12-18 13:32:32', NULL, NULL);

-- ----------------------------
-- Table structure for statuses
-- ----------------------------
DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `statuses_model_type_model_id_index`(`model_type`, `model_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statuses
-- ----------------------------
INSERT INTO `statuses` VALUES (1, 'active', NULL, 'App\\Models\\Business', 1, '2021-12-03 07:45:01', '2021-12-03 07:45:01');
INSERT INTO `statuses` VALUES (2, 'active', NULL, 'App\\Models\\Service', 1, '2021-12-03 08:02:44', '2021-12-03 08:02:44');
INSERT INTO `statuses` VALUES (3, 'active', NULL, 'App\\Models\\Service', 2, '2021-12-03 16:22:10', '2021-12-03 16:22:10');
INSERT INTO `statuses` VALUES (4, 'pendning', NULL, 'App\\Models\\Booking', 1, '2021-12-16 14:41:19', '2021-12-16 14:41:19');
INSERT INTO `statuses` VALUES (5, 'pendning', NULL, 'App\\Models\\Booking', 2, '2021-12-16 14:41:19', '2021-12-16 14:41:19');
INSERT INTO `statuses` VALUES (6, 'pending', NULL, 'App\\Models\\Booking', 1, '2021-12-16 14:41:40', '2021-12-16 14:41:40');
INSERT INTO `statuses` VALUES (7, 'pending', NULL, 'App\\Models\\Booking', 2, '2021-12-16 14:41:40', '2021-12-16 14:41:40');
INSERT INTO `statuses` VALUES (8, 'pending', NULL, 'App\\Models\\Booking', 5, '2021-12-17 14:10:25', '2021-12-17 14:10:25');
INSERT INTO `statuses` VALUES (9, 'pending', NULL, 'App\\Models\\Booking', 6, '2021-12-17 14:11:41', '2021-12-17 14:11:41');
INSERT INTO `statuses` VALUES (10, 'pending', NULL, 'App\\Models\\Booking', 7, '2021-12-17 14:56:58', '2021-12-17 14:56:58');
INSERT INTO `statuses` VALUES (11, 'pending', NULL, 'App\\Models\\Booking', 8, '2021-12-17 15:25:31', '2021-12-17 15:25:31');
INSERT INTO `statuses` VALUES (12, 'confirmed', NULL, 'App\\Models\\Booking', 8, '2021-12-18 09:25:59', '2021-12-18 09:25:59');
INSERT INTO `statuses` VALUES (13, 'pending', NULL, 'App\\Models\\Booking', 8, '2021-12-18 12:12:04', '2021-12-18 12:12:04');
INSERT INTO `statuses` VALUES (14, 'active', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:12:04', '2021-12-18 12:12:04');
INSERT INTO `statuses` VALUES (15, 'active', NULL, 'App\\Models\\Admin', 2, '2021-12-18 12:12:04', '2021-12-18 12:12:04');
INSERT INTO `statuses` VALUES (16, 'active', NULL, 'App\\Models\\Admin', 4, '2021-12-18 12:12:04', '2021-12-18 12:12:04');
INSERT INTO `statuses` VALUES (17, 'deactivated', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:13:48', '2021-12-18 12:13:48');
INSERT INTO `statuses` VALUES (18, 'active', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:13:50', '2021-12-18 12:13:50');
INSERT INTO `statuses` VALUES (19, 'active', NULL, 'App\\Models\\Admin', 2, '2021-12-18 12:13:51', '2021-12-18 12:13:51');
INSERT INTO `statuses` VALUES (20, 'deactivated', NULL, 'App\\Models\\Admin', 2, '2021-12-18 12:13:57', '2021-12-18 12:13:57');
INSERT INTO `statuses` VALUES (21, 'active', NULL, 'App\\Models\\Admin', 2, '2021-12-18 12:13:58', '2021-12-18 12:13:58');
INSERT INTO `statuses` VALUES (22, 'deactivated', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:14:45', '2021-12-18 12:14:45');
INSERT INTO `statuses` VALUES (23, 'active', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:15:16', '2021-12-18 12:15:16');
INSERT INTO `statuses` VALUES (24, 'deactivated', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:15:37', '2021-12-18 12:15:37');
INSERT INTO `statuses` VALUES (25, 'active', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:15:38', '2021-12-18 12:15:38');
INSERT INTO `statuses` VALUES (26, 'deactivated', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:15:54', '2021-12-18 12:15:54');
INSERT INTO `statuses` VALUES (27, 'active', NULL, 'App\\Models\\Admin', 1, '2021-12-18 12:15:57', '2021-12-18 12:15:57');
INSERT INTO `statuses` VALUES (28, 'deactivated', NULL, 'App\\Models\\Admin', 2, '2021-12-18 12:15:59', '2021-12-18 12:15:59');
INSERT INTO `statuses` VALUES (29, 'active', NULL, 'App\\Models\\Admin', 2, '2021-12-18 12:16:00', '2021-12-18 12:16:00');
INSERT INTO `statuses` VALUES (30, 'deactivated', NULL, 'App\\Models\\Admin', 4, '2021-12-18 12:16:02', '2021-12-18 12:16:02');
INSERT INTO `statuses` VALUES (31, 'active', NULL, 'App\\Models\\Admin', 4, '2021-12-18 12:16:03', '2021-12-18 12:16:03');
INSERT INTO `statuses` VALUES (32, 'confirmed', NULL, 'App\\Models\\Booking', 8, '2021-12-18 12:48:43', '2021-12-18 12:48:43');
INSERT INTO `statuses` VALUES (33, 'pending', NULL, 'App\\Models\\Booking', 9, '2021-12-18 13:15:32', '2021-12-18 13:15:32');
INSERT INTO `statuses` VALUES (34, 'confirmed', NULL, 'App\\Models\\Booking', 9, '2021-12-18 13:20:17', '2021-12-18 13:20:17');
INSERT INTO `statuses` VALUES (35, 'active', NULL, 'App\\Models\\Service', 3, '2021-12-18 13:32:32', '2021-12-18 13:32:32');
INSERT INTO `statuses` VALUES (36, 'pending', NULL, 'App\\Models\\Business', 2, '2022-01-04 11:42:05', '2022-01-04 11:42:05');
INSERT INTO `statuses` VALUES (37, 'active', NULL, 'App\\Models\\Business', 2, '2022-01-05 12:49:19', '2022-01-05 12:49:19');
INSERT INTO `statuses` VALUES (38, 'active', NULL, 'App\\Models\\Business', 2, '2022-01-05 12:49:25', '2022-01-05 12:49:25');
INSERT INTO `statuses` VALUES (39, 'active', NULL, 'App\\Models\\Business', 2, '2022-01-05 12:49:30', '2022-01-05 12:49:30');

-- ----------------------------
-- Table structure for sub_categories
-- ----------------------------
DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE `sub_categories`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_categories
-- ----------------------------
INSERT INTO `sub_categories` VALUES (32, 10, 'Pedicure');
INSERT INTO `sub_categories` VALUES (45, 11, 'Colour Consult');
INSERT INTO `sub_categories` VALUES (51, 5, 'Manicure');
INSERT INTO `sub_categories` VALUES (54, 11, 'Wardrobe Culling');
INSERT INTO `sub_categories` VALUES (55, 11, 'Dress For Your Body');
INSERT INTO `sub_categories` VALUES (56, 11, 'Personal Shopper');
INSERT INTO `sub_categories` VALUES (58, 9, 'Cheeks');
INSERT INTO `sub_categories` VALUES (59, 9, 'Forehead');
INSERT INTO `sub_categories` VALUES (60, 9, 'Eyes');
INSERT INTO `sub_categories` VALUES (61, 9, 'Lips');
INSERT INTO `sub_categories` VALUES (62, 6, 'Shaping  Tattoo');
INSERT INTO `sub_categories` VALUES (63, 6, 'Shaping Threading');
INSERT INTO `sub_categories` VALUES (64, 6, 'Shaping Waxing');
INSERT INTO `sub_categories` VALUES (65, 6, 'Tint Colour');
INSERT INTO `sub_categories` VALUES (66, 7, 'Lashes Individuals');
INSERT INTO `sub_categories` VALUES (67, 7, 'Lashes Strip');
INSERT INTO `sub_categories` VALUES (68, 7, 'Lashes Tint');
INSERT INTO `sub_categories` VALUES (69, 3, 'Mens Cut');
INSERT INTO `sub_categories` VALUES (70, 3, 'Womens Cut');
INSERT INTO `sub_categories` VALUES (71, 3, 'Wash and Blow Dry');
INSERT INTO `sub_categories` VALUES (72, 3, 'Blow Dry');
INSERT INTO `sub_categories` VALUES (73, 3, 'Downstyle');
INSERT INTO `sub_categories` VALUES (74, 3, 'Upstyle');
INSERT INTO `sub_categories` VALUES (75, 4, 'Natural');
INSERT INTO `sub_categories` VALUES (76, 4, 'Headshots');
INSERT INTO `sub_categories` VALUES (77, 4, 'Graduation');
INSERT INTO `sub_categories` VALUES (78, 4, 'Touch ups');
INSERT INTO `sub_categories` VALUES (79, 4, 'Embalming');
INSERT INTO `sub_categories` VALUES (80, 4, 'Videoshoot');
INSERT INTO `sub_categories` VALUES (81, 4, 'Photoshoot');
INSERT INTO `sub_categories` VALUES (82, 4, 'Magazine');
INSERT INTO `sub_categories` VALUES (83, 4, 'Sport');
INSERT INTO `sub_categories` VALUES (84, 4, 'Theatre');
INSERT INTO `sub_categories` VALUES (85, 4, 'Contest');
INSERT INTO `sub_categories` VALUES (86, 4, 'Party');
INSERT INTO `sub_categories` VALUES (87, 4, 'Prom');
INSERT INTO `sub_categories` VALUES (88, 4, 'Guest');
INSERT INTO `sub_categories` VALUES (89, 4, 'Paige Boy');
INSERT INTO `sub_categories` VALUES (90, 4, 'Flower Girl');
INSERT INTO `sub_categories` VALUES (91, 4, 'Groom');
INSERT INTO `sub_categories` VALUES (92, 4, 'Mother of Bride');
INSERT INTO `sub_categories` VALUES (93, 4, 'Mother of Groom');
INSERT INTO `sub_categories` VALUES (94, 4, 'Bridesmaids');
INSERT INTO `sub_categories` VALUES (95, 4, 'Bride');
INSERT INTO `sub_categories` VALUES (96, 9, 'Face');

-- ----------------------------
-- Table structure for taxes
-- ----------------------------
DROP TABLE IF EXISTS `taxes`;
CREATE TABLE `taxes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8, 2) NOT NULL,
  `business_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taxes
-- ----------------------------
INSERT INTO `taxes` VALUES (5, 'VAT', 0.16, 9, '2020-08-16 20:53:21', '2020-08-16 20:53:21');

-- ----------------------------
-- Table structure for user_voucher
-- ----------------------------
DROP TABLE IF EXISTS `user_voucher`;
CREATE TABLE `user_voucher`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint UNSIGNED NOT NULL,
  `voucher_id` bigint UNSIGNED NOT NULL,
  `redeemed_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_voucher_user_id_foreign`(`customer_id`) USING BTREE,
  INDEX `user_voucher_voucher_id_foreign`(`voucher_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for vouchers
-- ----------------------------
DROP TABLE IF EXISTS `vouchers`;
CREATE TABLE `vouchers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `vouchers_code_unique`(`code`) USING BTREE,
  INDEX `vouchers_model_type_model_id_index`(`model_type`, `model_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vouchers
-- ----------------------------
INSERT INTO `vouchers` VALUES (1, 'NB-2F48-YQ4Y', 'App\\Models\\Service', 1, '{\"discount\":\"50\"}', '2021-12-25 00:00:00', '2021-12-18 13:22:47', '2021-12-18 13:22:47');

SET FOREIGN_KEY_CHECKS = 1;
