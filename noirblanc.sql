-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: noirblanc
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Gilbert','Sibajene99','gilbertsibajene7@gmail.com','0977634317',NULL,'$2y$10$uc4jiolEIrQwu5diXJsmoeC2DdYI1mfysTcE7wIGRygmqS447j8JS',NULL,'2021-04-24 08:46:27','2021-07-05 07:10:35'),(2,'Gilbert','Sibajene','gilbertsibajenee7@gmail.com','+260977634316',NULL,'$2y$10$FcwOQ80GES8xIzZmFtVl0e5b48LMfH6lMssUj8NMQj65gLG1Od/U.',NULL,'2021-06-28 11:23:58','2021-06-28 11:23:58'),(4,'Jane','Mwana','iiziit@yahoo.com','0973230300',NULL,'$2y$10$Nl8IhVN5W9VIODfR6HYioOVTd66BdqrO4rm/j.7.GO7wphS7qnqH6',NULL,'2021-07-05 06:59:53','2021-07-05 06:59:53');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `start_at` datetime NOT NULL,
  `ends_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses`
--

LOCK TABLES `businesses` WRITE;
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Facials','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(2,'Waxing','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(3,'Hair',NULL,'2021-06-12 11:18:16','2021-06-12 11:18:16'),(4,'Makeup',NULL,'2021-06-12 11:18:16','2021-06-12 11:18:16'),(5,'Hands','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(6,'Brows','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(7,'Eyes','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(8,'Officiant','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(9,'Cosmetic Injectables','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(10,'Feet','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(11,'Styling','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(12,'Body Scrubs','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(13,'Planner','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(14,'Photographer','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(15,'Videographer','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(16,'Musician','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(17,'MCs','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(18,'DJ','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(19,'Band','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(20,'Interior','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(21,'Decor','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-28 13:45:22'),(22,'Venue','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-28 13:46:31'),(23,'Lighting','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(24,'Rental Chairs','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(25,'Wedding Planner','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(26,'Wedding Website','2021-07-22 10:36:12','2021-06-12 11:18:16','2021-06-12 11:18:16'),(27,'Facials','2021-07-22 10:36:12','2021-07-05 06:49:47','2021-07-05 06:49:47');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `Category_Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Service_Id` int(11) NOT NULL,
  `Service_Name` varchar(255) NOT NULL,
  `Category_Name` varchar(255) NOT NULL,
  `Category_Description` varchar(255) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Image_Path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Category_Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (21,28,'Beauty','Facials','For all occasions','0000-00-00 00:00:00',NULL,'749c9be4501c81b84545e1cd08708119.png'),(22,28,'Beauty','Waxing','For all occasions','0000-00-00 00:00:00',NULL,'f9c75fcde39d7eb0b876716510eb593f.jpg'),(23,28,'Beauty','Hair','For all occasions',NULL,NULL,'dc04e11bbc59886cfb01a411ab0588a6.png'),(24,28,'Beauty','Makeup','For all occasions','0000-00-00 00:00:00',NULL,'abad0fcec1b51958f3646a54d286cbf1.png'),(25,28,'Beauty','Hands','For all occasions','0000-00-00 00:00:00',NULL,'627e77f28b341fb873b9fba3f0fb1498.png'),(37,28,'Beauty','Brows','Standard','0000-00-00 00:00:00',NULL,'c3a74728dd1dc755f87ca07baef13cfb.jpg'),(40,28,'Beauty','Eyes','tesCleaning','0000-00-00 00:00:00',NULL,'e29a1db0f308e25e026c75a19baae44f.png'),(41,30,'Media','Officiant','','0000-00-00 00:00:00',NULL,'a3b861c4b04bbd9ef4095708f74a9883.jpg'),(42,28,'Beauty','Cosmetic Injectables','Cosmetic','0000-00-00 00:00:00',NULL,'83bc005e9d95a7b7c5874dab65cc5be4.jpg'),(43,28,'Beauty','Feet','Feet','0000-00-00 00:00:00',NULL,'8b45f4b7ef340863b3af5a09d6dcc234.jpg'),(44,46,'Body','Styling','Styling','0000-00-00 00:00:00',NULL,'3e523026a412043aa9803d2f7c4e1f90.png'),(45,28,'Beauty','Body Scrubs','Scrubs',NULL,NULL,'4cbabda696bd5160750f7f87bea07a95.png'),(46,30,'Media','Planner','Planner','0000-00-00 00:00:00',NULL,'433a91d71294049b2ae2472d99a11b19.png'),(47,30,'Media','Photographer','Photographer','0000-00-00 00:00:00',NULL,'60c9e1c90b4d718a0a8624a96987c267.jpg'),(48,30,'Media','Videographer','Videographer','0000-00-00 00:00:00',NULL,'659e6fd7e51124b02ad0c14919eda097.jpg'),(49,30,'Media','Musician','Musician','0000-00-00 00:00:00',NULL,'510d8e81504059c3128f9e8f5c8840f6.jpg'),(50,30,'Media','MCs','MCs','0000-00-00 00:00:00',NULL,'ade9b39146b7c88a4a47a1ced882d7c2.jpg'),(51,30,'Media','DJ','','0000-00-00 00:00:00',NULL,'a0e6226f24e6df86c75ac0613cdc73f8.jpg'),(52,30,'Media','Band','Band','0000-00-00 00:00:00',NULL,'7c07720b7d13102fb274314c2ecdd85c.jpg'),(53,32,'Events','Interior','Interior','0000-00-00 00:00:00',NULL,'fd9a8235a97d548cf428a0779e5f47ce.jpg'),(54,32,'Events','Decor','Decor','0000-00-00 00:00:00',NULL,'22d1e355833cf6800e42747cd262813d.jpg'),(55,32,'Events','Venue','Venue','0000-00-00 00:00:00',NULL,'29c5770d41083ab3044e83b5c6cad194.jpg'),(56,32,'Events','Lighting','Lighting','0000-00-00 00:00:00',NULL,'7873cb36af184072d93d26a57d0f96ad.jpg'),(57,32,'Events','Rental Chairs','Rental  Chairs','0000-00-00 00:00:00',NULL,'10d0ebeda8de9c21a7bf3e5e9ac712c4.jpg'),(58,32,'Events','Wedding Planner','Wedding Planner','0000-00-00 00:00:00',NULL,'103d92798b4937a8e2fc2197b89010fd.jpg'),(59,32,'Events','Wedding Website','Wedding Website','0000-00-00 00:00:00',NULL,'3857546db9e34874000a63828eece472.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'2021-04-18 23:56:25','2021-04-18 23:56:28','Lusaka');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `customers_email_unique` (`email`) USING BTREE,
  UNIQUE KEY `customers_mobile_unique` (`mobile`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `media_uuid_unique` (`uuid`) USING BTREE,
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_05_03_113953_create_statuses_table',2),(5,'2021_05_03_114005_create_media_table',2),(6,'2021_05_03_133815_create_services_table',3),(7,'2021_05_11_085848_create_bookings_table',4),(10,'2021_05_11_131136_create_customers_table',6),(9,'2021_05_12_081005_create_reviews_table',5),(11,'2021_05_12_142606_create_vouchers_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  UNIQUE KEY `users_phone_unique` (`mobile`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `reviews_model_type_model_id_index` (`model_type`,`model_id`) USING BTREE,
  KEY `reviews_author_type_author_id_index` (`author_type`,`author_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (3,NULL,'Qui et nostrum repudiandae pariatur corrupti dolores nisi vel. Blanditiis dolores omnis iste officia quisquam. Quasi sit reiciendis asperiores illum. Enim eaque exercitationem blanditiis nisi hic.',4,'App\\Models\\Service',1,'App\\Models\\Customer',13,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(4,NULL,'Iste quisquam numquam tempore magni perferendis. Corporis deserunt recusandae vitae quia illum ex. Repellat veniam nulla atque ea. Qui officia est voluptatem autem sed totam et.',2,'App\\Models\\Service',3,'App\\Models\\Customer',13,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(5,NULL,'Nisi optio sapiente qui optio. Cupiditate in et sunt dolorem. Omnis est deserunt odit facilis magnam debitis.',2,'App\\Models\\Service',1,'App\\Models\\Customer',14,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(6,NULL,'Debitis unde excepturi quaerat. Cupiditate ipsa earum est mollitia placeat et rerum. Iure expedita est facilis distinctio voluptates iusto id sint.',2,'App\\Models\\Service',3,'App\\Models\\Customer',14,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(7,NULL,'Sed voluptas quasi accusamus quia nam sit vitae sunt. Recusandae quod dolor ut quia ut occaecati incidunt. Quis quo natus veniam sequi autem dolore ipsa. Possimus debitis nisi quidem dolores minus sed.',5,'App\\Models\\Service',1,'App\\Models\\Customer',15,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(8,NULL,'Ipsum est quaerat omnis aut. Velit incidunt commodi qui eum voluptatem. Dolore natus facilis facilis ut iusto. Quam velit aut aut illum esse unde. Voluptatem dicta quod corporis perspiciatis ex consequatur laudantium.',3,'App\\Models\\Service',3,'App\\Models\\Customer',15,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(9,NULL,'Tenetur totam nam dolores aut natus praesentium praesentium. Exercitationem vel molestiae est. Quidem accusamus aliquam cumque impedit facilis rerum eos.',3,'App\\Models\\Service',1,'App\\Models\\Customer',16,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(10,NULL,'Aperiam voluptatem molestiae nostrum minus. Omnis voluptate nesciunt et et ex. Et molestiae ut eum ea harum et. Quidem qui dolor aut sit dolores omnis ratione. Corporis consequatur sit et nostrum impedit voluptate.',4,'App\\Models\\Service',3,'App\\Models\\Customer',16,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(11,NULL,'Ipsa minima aut earum aliquam quasi maiores. At maxime ut ex quos. Aut molestias eos itaque molestiae voluptatem vel.',1,'App\\Models\\Service',1,'App\\Models\\Customer',17,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(12,NULL,'Doloribus qui non dicta ea unde. Qui non sit rerum tempora. Enim est fugiat facere totam. Aut ut libero id qui ipsam et.',5,'App\\Models\\Service',3,'App\\Models\\Customer',17,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(13,NULL,'Molestiae neque autem deserunt autem. Autem at quas aut expedita ratione et repudiandae officiis.',1,'App\\Models\\Service',1,'App\\Models\\Customer',18,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(14,NULL,'Nihil eius odio aut soluta est. A corrupti sit qui amet. Voluptate eveniet itaque delectus ipsam totam aut.',3,'App\\Models\\Service',3,'App\\Models\\Customer',18,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(15,NULL,'Sint et voluptatem enim qui quam eaque qui necessitatibus. Ipsam libero vero voluptatum. Et accusantium necessitatibus ipsa maiores.',4,'App\\Models\\Service',1,'App\\Models\\Customer',19,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(16,NULL,'Consequatur eius dolorem vero ad doloribus consequatur officia. Dolor et consequatur dolor nesciunt. Deleniti minima architecto quia natus.',4,'App\\Models\\Service',3,'App\\Models\\Customer',19,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(17,NULL,'Rerum qui voluptas et corrupti mollitia dicta. Voluptas ad occaecati illum minima.',3,'App\\Models\\Service',1,'App\\Models\\Customer',20,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(18,NULL,'Illo commodi quos et totam. Magnam voluptates aliquam odit quia nostrum. Earum dolor vel qui praesentium voluptatem sed.',5,'App\\Models\\Service',3,'App\\Models\\Customer',20,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(19,NULL,'Ipsum optio sit incidunt in sint molestiae earum. Consequuntur provident ullam maxime et et officiis asperiores.',5,'App\\Models\\Service',1,'App\\Models\\Customer',21,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(20,NULL,'Non saepe dolorem voluptas. Maiores perspiciatis quis architecto nesciunt omnis dolorum. Amet expedita cum et.',2,'App\\Models\\Service',3,'App\\Models\\Customer',21,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(21,NULL,'Consequatur ex est reprehenderit assumenda ipsam tenetur. Asperiores ea debitis quibusdam et id. Beatae quia ea vero molestias adipisci eum sequi.',3,'App\\Models\\Service',1,'App\\Models\\Customer',22,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(22,NULL,'Fugiat quia atque est. Dolores omnis commodi facere. Eaque ut ipsa vel. Eaque nobis quod quos fugit.',2,'App\\Models\\Service',3,'App\\Models\\Customer',22,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(23,NULL,'Et cupiditate est dolorem illo eligendi eum qui. Molestiae est voluptatibus laboriosam cupiditate. Laboriosam temporibus ad praesentium voluptatem suscipit architecto. Omnis labore impedit corporis harum qui.',5,'App\\Models\\Service',1,'App\\Models\\Customer',23,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(24,NULL,'Aut doloremque ut iure quibusdam quos et at est. Est nostrum vel vero necessitatibus occaecati. Est ullam excepturi sed iure voluptatibus aut corporis. Ea sed voluptatem magnam cumque.',2,'App\\Models\\Service',3,'App\\Models\\Customer',23,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(25,NULL,'Ut non repudiandae quam laborum odit. Enim itaque non maiores id commodi. Ut adipisci nihil odio vel molestias magni nihil.',5,'App\\Models\\Service',1,'App\\Models\\Customer',24,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(26,NULL,'Iste qui explicabo laboriosam et architecto occaecati. Quidem nesciunt tempora odit ea sequi ut. Officia recusandae dolor dignissimos non et. Consequatur hic eius repellendus eveniet et reiciendis temporibus aut.',1,'App\\Models\\Service',3,'App\\Models\\Customer',24,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(27,NULL,'Et asperiores illo maiores voluptas. Velit quis cupiditate dolorum eveniet quidem voluptas provident. Quia et optio labore. Blanditiis cum sed aut vel sed.',3,'App\\Models\\Service',1,'App\\Models\\Customer',25,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(28,NULL,'Voluptatem labore tenetur ad aliquam numquam iusto officia. Sit rerum voluptatum dolor perspiciatis ea quasi recusandae iste. Autem harum fugit nisi quis voluptas at dicta eum. Quaerat et distinctio nisi cupiditate nostrum corporis amet.',4,'App\\Models\\Service',3,'App\\Models\\Customer',25,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(29,NULL,'Adipisci velit dolore in qui ipsa adipisci deserunt nulla. Iure laudantium eaque quidem repudiandae distinctio iusto. Reprehenderit libero perspiciatis facere minus blanditiis facilis sed. Eos nisi voluptatem et neque quia.',2,'App\\Models\\Service',1,'App\\Models\\Customer',26,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(30,NULL,'Tempora consectetur quia nisi quia doloribus dolores dignissimos. Ut et quisquam facere cum facilis est. Commodi voluptatibus ut recusandae in in iusto. Vitae temporibus saepe necessitatibus sunt architecto quaerat nihil.',3,'App\\Models\\Service',3,'App\\Models\\Customer',26,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(31,NULL,'Facilis ipsa officia eligendi aspernatur eum. Omnis et nobis eius ex laboriosam consequatur. Deserunt voluptas in voluptatem dolores. Ullam ipsa id rerum.',2,'App\\Models\\Service',1,'App\\Models\\Customer',27,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(32,NULL,'Sint est dicta incidunt. Repellendus ea mollitia similique nihil voluptatibus. Tempore cumque dolorum amet et sed exercitationem odit.',1,'App\\Models\\Service',3,'App\\Models\\Customer',27,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(33,NULL,'Ut et distinctio dolore fugit inventore officiis sed. Nostrum accusamus dolores beatae blanditiis quo. Deleniti blanditiis et et harum qui laboriosam atque odio.',3,'App\\Models\\Service',1,'App\\Models\\Customer',28,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(34,NULL,'Nihil ex aut ea at dicta qui. Id reiciendis harum odit neque quisquam quas deserunt commodi. Nostrum architecto aut amet vero vitae reiciendis vel.',1,'App\\Models\\Service',3,'App\\Models\\Customer',28,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(35,NULL,'Voluptatem placeat rem eaque quasi dicta inventore. Repellendus dolor accusamus blanditiis enim et magnam iste. Consequuntur est ex iusto molestiae.',1,'App\\Models\\Service',1,'App\\Models\\Customer',29,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(36,NULL,'Officiis ipsa et fuga nostrum. Maxime sapiente impedit reprehenderit aut magni in. Aut eaque iste eum est. Qui aut et odit voluptas.',4,'App\\Models\\Service',3,'App\\Models\\Customer',29,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(37,NULL,'Reprehenderit repellat dolor eaque voluptatem veritatis quibusdam voluptas ad. Sed perspiciatis iure et delectus saepe. Adipisci sequi quis voluptates quas alias velit.',2,'App\\Models\\Service',1,'App\\Models\\Customer',30,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(38,NULL,'Porro necessitatibus necessitatibus enim est dolore qui velit. Omnis quae quo omnis corrupti modi nesciunt. Quo earum minima sit temporibus totam vitae iusto. Qui iure vel excepturi perferendis aut enim.',3,'App\\Models\\Service',3,'App\\Models\\Customer',30,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(39,NULL,'Voluptatem quod quia possimus temporibus. Eum alias qui esse dolores a sapiente. Harum est quibusdam enim et distinctio dolorem quia odio. Est ad architecto ad quas facere temporibus.',4,'App\\Models\\Service',1,'App\\Models\\Customer',31,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(40,NULL,'Porro eligendi et cumque saepe ut et. Neque est voluptatem odit. Dolorum a dolore laudantium accusantium.',3,'App\\Models\\Service',3,'App\\Models\\Customer',31,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(41,NULL,'Odit et est et aut quia. Voluptatum perferendis animi officia et occaecati ad cum. Rem porro cupiditate voluptas quisquam velit rerum. Ullam sed aut ipsam eum enim et recusandae esse.',5,'App\\Models\\Service',1,'App\\Models\\Customer',32,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(42,NULL,'Et dolorem consequuntur suscipit commodi. Explicabo ullam ullam dolores quo.',2,'App\\Models\\Service',3,'App\\Models\\Customer',32,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(43,NULL,'Ex facere minus necessitatibus delectus dicta. Voluptatem perspiciatis eum cumque esse laboriosam. Ut ipsam consequatur ipsum qui.',2,'App\\Models\\Service',1,'App\\Models\\Customer',33,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(44,NULL,'Ea blanditiis hic ipsa. Voluptatem fugit perferendis repellat accusamus totam ipsum. Ut deleniti qui illo et sed esse. Minima et beatae quia veniam hic placeat ut.',1,'App\\Models\\Service',3,'App\\Models\\Customer',33,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(45,NULL,'Animi ullam tenetur expedita sed molestiae qui. Libero ea optio ex. Saepe aut ut mollitia est corporis et nostrum.',5,'App\\Models\\Service',1,'App\\Models\\Customer',34,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(46,NULL,'Aperiam sit nihil culpa consequatur reprehenderit et aut. Sapiente optio ullam minus eius dolorem reprehenderit vitae. Provident mollitia sint quia omnis nulla.',4,'App\\Models\\Service',3,'App\\Models\\Customer',34,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(47,NULL,'A iusto consectetur ut sit est aut expedita. Dicta omnis eum eos nobis dolor. Qui veniam ut voluptatibus voluptatem culpa est qui. Possimus mollitia doloremque quo cupiditate quia.',1,'App\\Models\\Service',1,'App\\Models\\Customer',35,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(48,NULL,'Officiis ea perspiciatis aspernatur soluta voluptatem veniam. Facere quia qui quia dignissimos commodi. Aut at quia qui et.',3,'App\\Models\\Service',3,'App\\Models\\Customer',35,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(49,NULL,'Placeat excepturi exercitationem molestiae accusantium quia repellat. Sunt qui pariatur itaque. Necessitatibus error itaque sed voluptatem in corporis. Non praesentium voluptatem molestias id aut rerum voluptates.',2,'App\\Models\\Service',1,'App\\Models\\Customer',36,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(50,NULL,'Facilis voluptatum vero amet ducimus. Et qui dolorum eos repudiandae minima modi rem. Eligendi reiciendis iste inventore laboriosam. Aut beatae aut assumenda numquam autem fugiat sit. Officiis sunt quisquam dolorem sit id.',2,'App\\Models\\Service',3,'App\\Models\\Customer',36,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(51,NULL,'Est nobis cumque quis et porro. Velit omnis porro cum doloremque autem assumenda. Eum nemo earum aperiam.',3,'App\\Models\\Service',1,'App\\Models\\Customer',37,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(52,NULL,'Et rerum dicta magni id veritatis. Et assumenda quia mollitia eum aut sed.',2,'App\\Models\\Service',3,'App\\Models\\Customer',37,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(53,NULL,'Expedita nam quis error iusto qui magnam nostrum. Quasi nostrum dolorem voluptate perferendis quisquam. Qui possimus consequatur optio perferendis et numquam.',1,'App\\Models\\Service',1,'App\\Models\\Customer',38,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(54,NULL,'Quos exercitationem impedit quia dicta reiciendis necessitatibus. Inventore sint id id qui non esse. Consequatur dicta recusandae eos iusto recusandae.',4,'App\\Models\\Service',3,'App\\Models\\Customer',38,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(55,NULL,'Mollitia aperiam molestias sit sit rerum quisquam est. Totam soluta voluptatem praesentium recusandae. Accusantium dolores perspiciatis deserunt enim est. Voluptas doloremque sequi voluptatibus qui itaque voluptatem ipsum nesciunt. Ad eum harum assumenda magni recusandae veritatis id.',3,'App\\Models\\Service',1,'App\\Models\\Customer',39,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(56,NULL,'Sunt aut sint rerum molestiae tenetur. Cum distinctio ratione ut nemo ea perspiciatis. Et esse fugit fugiat nulla.',2,'App\\Models\\Service',3,'App\\Models\\Customer',39,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(57,NULL,'Eveniet deserunt maiores labore. Labore voluptatem est eius nobis ex et quidem. Et saepe quos voluptatem optio voluptate nesciunt. Cum architecto quaerat aut laboriosam voluptas sint pariatur.',4,'App\\Models\\Service',1,'App\\Models\\Customer',40,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(58,NULL,'Est quo exercitationem modi laudantium. Sunt non et eos ea et. Non voluptates dolorem vel reprehenderit tenetur.',3,'App\\Models\\Service',3,'App\\Models\\Customer',40,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(59,NULL,'Reprehenderit praesentium qui reprehenderit quis. Fugit quia autem quibusdam quia dignissimos sapiente quia. Non adipisci dolorem distinctio aspernatur dolores. Assumenda ut mollitia nulla.',2,'App\\Models\\Service',1,'App\\Models\\Customer',41,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(60,NULL,'Voluptatem assumenda occaecati impedit molestiae dolore saepe ut. Consectetur esse in optio autem. Quo in voluptatem dicta ut accusamus et.',5,'App\\Models\\Service',3,'App\\Models\\Customer',41,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(61,NULL,'Nobis iure possimus velit eaque repudiandae totam praesentium. Voluptatem tempore in magni iste qui. Consectetur reprehenderit tenetur necessitatibus omnis ut labore minima ut.',2,'App\\Models\\Service',1,'App\\Models\\Customer',42,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(62,NULL,'Voluptatem repellendus sapiente quam expedita. Molestias sint sequi qui sunt veritatis in.',4,'App\\Models\\Service',3,'App\\Models\\Customer',42,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(63,NULL,'Doloremque eos est voluptatem quo eaque voluptas voluptatum error. Neque ut doloremque aut.',4,'App\\Models\\Service',1,'App\\Models\\Customer',43,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(64,NULL,'Corrupti voluptatem cum asperiores fugit. Quia id debitis dolor porro autem. Esse dolore nobis possimus velit.',1,'App\\Models\\Service',3,'App\\Models\\Customer',43,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(65,NULL,'Et quos occaecati minima similique voluptatem similique. Eos sunt optio blanditiis sit explicabo. Odit sunt sed cum optio blanditiis. Nemo illum voluptatem et eius itaque ad ipsa.',1,'App\\Models\\Service',1,'App\\Models\\Customer',44,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(66,NULL,'In autem ex cum vel eum laboriosam quasi dolor. Id ipsa quasi cupiditate aperiam quaerat velit. At architecto asperiores ut et voluptatem repudiandae vero velit.',2,'App\\Models\\Service',3,'App\\Models\\Customer',44,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(67,NULL,'Excepturi temporibus sunt sunt quidem ipsa quibusdam. Harum eum qui incidunt ea est soluta nisi. Quia autem ipsum amet hic omnis et dolor numquam.',5,'App\\Models\\Service',1,'App\\Models\\Customer',45,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(68,NULL,'Aut consequuntur est magni fugit perspiciatis. Velit magnam laudantium quia labore praesentium ipsam. Sed reiciendis excepturi praesentium.',5,'App\\Models\\Service',3,'App\\Models\\Customer',45,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(69,NULL,'Consequatur sint consectetur tempore optio dicta qui. Est deleniti fugit quos. Et laborum suscipit dolor.',1,'App\\Models\\Service',1,'App\\Models\\Customer',46,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(70,NULL,'Iure voluptate doloremque nobis maiores non iste odit ipsam. Fugit similique facilis sunt odit. Est quisquam ducimus fugiat nemo ea quia.',4,'App\\Models\\Service',3,'App\\Models\\Customer',46,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(71,NULL,'Necessitatibus sit rerum illo tenetur laboriosam incidunt et. Tenetur doloremque eligendi autem cum hic consequatur. Praesentium enim et nesciunt saepe est qui.',3,'App\\Models\\Service',1,'App\\Models\\Customer',47,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(72,NULL,'Quaerat maiores consectetur labore in. Sit et quidem laudantium. Voluptatum ad eius et magni architecto neque. Et voluptatem atque nisi numquam ea illum voluptatibus et.',5,'App\\Models\\Service',3,'App\\Models\\Customer',47,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(73,NULL,'Ut dignissimos possimus omnis placeat officia. Et fugiat minima voluptatibus molestiae nihil consequatur nihil asperiores. Quia tenetur quis quia totam qui quas.',5,'App\\Models\\Service',1,'App\\Models\\Customer',48,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(74,NULL,'Rerum qui aliquid quibusdam consequatur. Sapiente eligendi maiores quisquam sit similique ipsa et repudiandae. Nostrum iusto sint non. Aliquam id sequi aliquam.',2,'App\\Models\\Service',3,'App\\Models\\Customer',48,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(75,NULL,'Aut aut officia in ea. Nulla omnis magnam excepturi sunt adipisci aperiam. Neque fuga corporis temporibus nihil culpa repellat ab quaerat.',2,'App\\Models\\Service',1,'App\\Models\\Customer',49,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(76,NULL,'Atque delectus id dolore explicabo tenetur cum sed. Excepturi unde nisi quasi et optio veniam.',5,'App\\Models\\Service',3,'App\\Models\\Customer',49,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(77,NULL,'Ea dolorem vel vitae eligendi. Accusamus repellendus excepturi dolor exercitationem. Recusandae perferendis nihil quaerat dicta rerum alias omnis. Ipsa dolorum rerum excepturi.',4,'App\\Models\\Service',1,'App\\Models\\Customer',50,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(78,NULL,'Et ea quo sint. Nihil et nulla cum laboriosam voluptas doloremque quia. Sunt provident ut corporis magnam. Voluptatibus consequatur consequuntur provident optio necessitatibus ut. Iure et aut impedit quis sint quia.',1,'App\\Models\\Service',3,'App\\Models\\Customer',50,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(79,NULL,'Voluptas eos voluptatibus enim laudantium non libero. Ut ut odit voluptates facilis in consequatur qui. Sunt quod aut incidunt nihil.',3,'App\\Models\\Service',1,'App\\Models\\Customer',51,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(80,NULL,'Ea possimus deserunt voluptatem. Aliquid odit hic quae dolor. Accusantium sed veniam modi dicta ducimus. Cum dolores facere omnis rerum amet ea nobis laborum.',3,'App\\Models\\Service',3,'App\\Models\\Customer',51,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(81,NULL,'Animi illo mollitia quos qui ab. Libero minus cum impedit ex quis nulla in. Nesciunt quas et facere dicta consequatur libero quisquam. Laudantium nesciunt blanditiis suscipit ipsum.',5,'App\\Models\\Service',1,'App\\Models\\Customer',52,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(82,NULL,'Accusantium corporis aut sint porro et sunt. Adipisci et ipsa consequatur corrupti dolore. Illum esse earum cum ut consequatur. Dolores eum amet eos qui maxime rem voluptas.',3,'App\\Models\\Service',3,'App\\Models\\Customer',52,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(83,NULL,'Voluptates commodi accusamus eveniet. Accusantium corporis id rem placeat quasi eum cupiditate. Occaecati dolore quae dicta rerum corporis sit dolore voluptatem. Sapiente hic nobis consequuntur suscipit ut neque eum.',1,'App\\Models\\Service',1,'App\\Models\\Customer',53,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(84,NULL,'Et aut nam aut accusamus tempore quia. Omnis consequuntur nisi qui labore deleniti sequi. Qui nesciunt ea et ut. Laudantium pariatur inventore eligendi porro.',4,'App\\Models\\Service',3,'App\\Models\\Customer',53,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(85,NULL,'Labore qui est non quasi dolorem ea eaque. Et expedita ut facilis aut. Omnis quo sit tenetur aut quod mollitia id. Reiciendis aut qui minima. Veritatis nulla unde temporibus sint optio enim.',1,'App\\Models\\Service',1,'App\\Models\\Customer',54,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(86,NULL,'Quidem aut alias qui nesciunt esse. Praesentium saepe nihil natus. Quidem ex rerum esse. Ad asperiores sit nemo omnis et aliquid minus. Quam quia temporibus alias quibusdam neque iure.',1,'App\\Models\\Service',3,'App\\Models\\Customer',54,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(87,NULL,'Sed numquam officiis est pariatur recusandae nemo. Reiciendis ratione distinctio molestiae eum. Laudantium ullam nemo quo minus quaerat adipisci. Natus ut error eum sed in ea.',3,'App\\Models\\Service',1,'App\\Models\\Customer',55,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(88,NULL,'Earum exercitationem et doloremque iusto quo quo aut. Qui temporibus consequatur quasi est laborum doloremque quis. Voluptas alias suscipit beatae ut. Impedit neque alias id officiis.',2,'App\\Models\\Service',3,'App\\Models\\Customer',55,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(89,NULL,'Voluptate veniam voluptatibus sint sed praesentium cum. Et qui placeat rerum laudantium. Corporis dolorem cupiditate placeat dolorum mollitia.',1,'App\\Models\\Service',1,'App\\Models\\Customer',56,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(90,NULL,'Enim tempora ullam distinctio est qui error aut. Quis inventore in modi inventore. Blanditiis non sed suscipit quasi cupiditate.',1,'App\\Models\\Service',3,'App\\Models\\Customer',56,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(91,NULL,'Laborum natus ut impedit ullam ut dolorem id. Eos sequi enim unde voluptas facilis placeat rerum. Earum in perferendis et eum ea quisquam voluptatibus rerum. Accusantium est labore est laborum ut incidunt commodi.',3,'App\\Models\\Service',1,'App\\Models\\Customer',57,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(92,NULL,'Voluptates soluta id placeat est ducimus ab accusantium. Similique cum quia dolores delectus. Labore quia officiis quia atque voluptatibus laborum quam. Nihil est et ut voluptatem praesentium non.',3,'App\\Models\\Service',3,'App\\Models\\Customer',57,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(93,NULL,'Vero quam libero id soluta est. Quia ullam aut perspiciatis quia. Corrupti possimus quae molestiae quia dicta.',4,'App\\Models\\Service',1,'App\\Models\\Customer',58,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(94,NULL,'Non voluptas commodi sit illo corporis. Nam voluptas quos incidunt est incidunt vitae doloribus. Quisquam deleniti neque nemo unde dicta tempora perferendis atque. Fugit reiciendis totam et libero non. Qui nihil enim provident nemo.',3,'App\\Models\\Service',3,'App\\Models\\Customer',58,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(95,NULL,'Deleniti sunt tempora impedit temporibus libero. Ut illum eos et delectus pariatur. Dolores nobis illum cum voluptatibus. Eius minus voluptate aliquid cumque.',3,'App\\Models\\Service',1,'App\\Models\\Customer',59,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(96,NULL,'Aliquam quasi nulla sint possimus. Rerum natus ea quia. Quia quibusdam ut maxime. Natus quo cumque quasi vitae illum.',1,'App\\Models\\Service',3,'App\\Models\\Customer',59,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(97,NULL,'Debitis et enim sit eum explicabo quia. Fugiat reiciendis repellat dolorem perspiciatis. In atque voluptatum eos. Qui recusandae recusandae nihil ullam dolorum earum.',1,'App\\Models\\Service',1,'App\\Models\\Customer',60,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(98,NULL,'Autem nulla ut reprehenderit est odit qui. Vitae totam non et molestias ea qui. Enim maiores vero sed sunt qui vero.',4,'App\\Models\\Service',3,'App\\Models\\Customer',60,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(99,NULL,'Omnis ipsam saepe quam dolore adipisci. Vel et est dignissimos nisi est hic eveniet. Hic sunt cumque omnis eum aperiam labore reiciendis eius. Voluptas alias ad omnis fugiat eius non voluptate corporis.',3,'App\\Models\\Service',1,'App\\Models\\Customer',61,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(100,NULL,'Necessitatibus ab ab debitis ut ipsum. Quia laboriosam recusandae aut commodi praesentium laborum. Consequatur consectetur est eos eum debitis unde aut. Ipsum molestiae aut qui dolor assumenda.',5,'App\\Models\\Service',3,'App\\Models\\Customer',61,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(101,NULL,'Est dolor aut laborum eum est ut sint necessitatibus. Eum aut ratione perferendis et ducimus. Ut modi aut quis dignissimos facilis quam in. Iste odit voluptatem cumque.',3,'App\\Models\\Service',1,'App\\Models\\Customer',62,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL),(102,NULL,'Saepe recusandae qui voluptas reiciendis enim sit aperiam repudiandae. Similique aut voluptas sit aspernatur modi sapiente ut. Quia ut explicabo omnis non nulla veniam.',5,'App\\Models\\Service',3,'App\\Models\\Customer',62,'2021-05-12 10:33:39','2021-05-12 10:33:39',NULL);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_at` time DEFAULT NULL,
  `close_at` time DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `statuses_model_type_model_id_index` (`model_type`,`model_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (32,10,'Pedicure'),(45,11,'Colour Consult'),(51,5,'Manicure'),(54,11,'Wardrobe Culling'),(55,11,'Dress For Your Body'),(56,11,'Personal Shopper'),(58,9,'Cheeks'),(59,9,'Forehead'),(60,9,'Eyes'),(61,9,'Lips'),(62,6,'Shaping  Tattoo'),(63,6,'Shaping Threading'),(64,6,'Shaping Waxing'),(65,6,'Tint Colour'),(66,7,'Lashes Individuals'),(67,7,'Lashes Strip'),(68,7,'Lashes Tint'),(69,3,'Mens Cut'),(70,3,'Womens Cut'),(71,3,'Wash and Blow Dry'),(72,3,'Blow Dry'),(73,3,'Downstyle'),(74,3,'Upstyle'),(75,4,'Natural'),(76,4,'Headshots'),(77,4,'Graduation'),(78,4,'Touch ups'),(79,4,'Embalming'),(80,4,'Videoshoot'),(81,4,'Photoshoot'),(82,4,'Magazine'),(83,4,'Sport'),(84,4,'Theatre'),(85,4,'Contest'),(86,4,'Party'),(87,4,'Prom'),(88,4,'Guest'),(89,4,'Paige Boy'),(90,4,'Flower Girl'),(91,4,'Groom'),(92,4,'Mother of Bride'),(93,4,'Mother of Groom'),(94,4,'Bridesmaids'),(95,4,'Bride'),(96,9,'Face');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (5,'VAT',0.16,9,'2020-08-16 18:53:21','2020-08-16 18:53:21');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_voucher`
--

DROP TABLE IF EXISTS `user_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_voucher` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `voucher_id` bigint(20) unsigned NOT NULL,
  `redeemed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_voucher_user_id_foreign` (`customer_id`) USING BTREE,
  KEY `user_voucher_voucher_id_foreign` (`voucher_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_voucher`
--

LOCK TABLES `user_voucher` WRITE;
/*!40000 ALTER TABLE `user_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vouchers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `vouchers_code_unique` (`code`) USING BTREE,
  KEY `vouchers_model_type_model_id_index` (`model_type`,`model_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-25 10:41:16
