-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: multi_commerce
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us`
--

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` VALUES (1,'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','uploads/custom-images/about-us-2022-02-11-03-38-59-6582.jpg',NULL,'2022-01-30 12:30:23','2022-02-11 09:39:02');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_type` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,1,'John Doe','admin@gmail.com','uploads/website-images/ibrahim-khalil-2022-01-30-02-48-50-5743.jpg',NULL,'$2y$10$vDLsSUcLA0nZZayiIO/bKONVCnqzfVwvxSMnMJ1nIH5cLFm9jBEk6',NULL,1,'KghrcqUVX6aKKUrP45Y02bDDZ2zcssaHHTgxssBkxPiduKetXTFjqyxmrMie8Vp5cDSq8KZjVw7U9LkcWuQdiMsbN5F1V7U8ZSJ9',NULL,'2022-02-07 04:50:11'),(5,0,'David Simmons','admin1@gmail.com',NULL,NULL,'$2y$10$xLgODD6BDFlE1.pkkqCbrewtDS28BlzJZdV6DRj4ZlMmg139Xaxdi',NULL,1,NULL,'2022-02-07 05:36:28','2022-02-07 05:36:28');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_modals`
--

DROP TABLE IF EXISTS `announcement_modals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement_modals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_modals`
--

LOCK TABLES `announcement_modals` WRITE;
/*!40000 ALTER TABLE `announcement_modals` DISABLE KEYS */;
INSERT INTO `announcement_modals` VALUES (1,0,'GET UP TO 75% OFF','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?','uploads/website-images/announcement-2022-02-07-10-02-01-9027.jpg','Don\'t Show This Popup Again',4,NULL,'2022-02-10 09:21:17');
/*!40000 ALTER TABLE `announcement_modals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_payments`
--

DROP TABLE IF EXISTS `bank_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cash_on_delivery_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_payments`
--

LOCK TABLES `bank_payments` WRITE;
/*!40000 ALTER TABLE `bank_payments` DISABLE KEYS */;
INSERT INTO `bank_payments` VALUES (1,1,'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name',1,NULL,'2022-01-27 05:56:59');
/*!40000 ALTER TABLE `bank_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_images`
--

DROP TABLE IF EXISTS `banner_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `header` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_images`
--

LOCK TABLES `banner_images` WRITE;
/*!40000 ALTER TABLE `banner_images` DISABLE KEYS */;
INSERT INTO `banner_images` VALUES (1,'Up To - 35% Off','Hot Deals','product','uploads/website-images/Mega-menu-2022-02-13-07-53-14-1062.png','Shop Now','Mega Menu Banner',1,NULL,NULL,'2022-02-13 13:53:14'),(2,'Up To -20% Off','Hot Deals','product','uploads/website-images/banner--2022-02-10-10-24-47-2663.jpg','Shop Now','Home Page One Column Banner',1,NULL,NULL,'2022-02-13 13:45:52'),(3,'Up To -35% Off','Hot Deals','product','uploads/website-images/banner-2022-02-06-03-42-16-1335.png','Shop Now','Home Page First Two Column Banner One',1,NULL,NULL,'2022-02-13 13:46:01'),(4,'Up To -40% Off','Hot Deals','product','uploads/website-images/banner-2022-02-06-03-42-16-1434.png','Shop Now','Home Page First Two Column Banner Two',1,NULL,NULL,'2022-02-13 13:46:01'),(5,'Up To -28% Off','Hot Deals','product','uploads/website-images/banner-2022-02-06-04-18-01-2862.jpg','Shop Now','Home Page Second Two Column Banner one',1,NULL,NULL,'2022-02-13 13:46:15'),(6,'Up To -22% Off','Hot Deals','product','uploads/website-images/banner-2022-02-06-04-18-01-6995.jpg','Shop Now','Home Page Second Two Column Banner two',1,NULL,NULL,'2022-02-13 13:46:15'),(7,'Up To -35% Off','Hot Deals','product','uploads/website-images/banner-2022-02-13-04-57-46-4114.jpg','Shop Now','Home Page Third Two Column Banner one',1,NULL,NULL,'2022-02-13 13:46:27'),(8,'Up To -15% Off','Hot Deals','product','uploads/website-images/banner-2022-02-13-04-58-43-7437.jpg','Shop Now','Home Page Third Two Column Banner Two',1,NULL,NULL,'2022-02-13 13:46:27'),(9,'This is Tittle','This is Description','product','uploads/website-images/banner-2022-02-06-04-24-44-6895.jpg','dd','Shopping cart bottom',1,'',NULL,'2022-02-13 13:47:23'),(10,'This is Title','This is Description','product','uploads/website-images/banner-2022-02-06-04-25-59-9719.jpg',NULL,'Shopping cart bottom',0,NULL,NULL,'2022-02-13 13:47:23'),(11,'This is Tittle','This is Description','product','uploads/website-images/banner-2022-02-06-04-26-46-8505.jpg','dd','Campaign page',1,'',NULL,'2022-02-13 13:47:31'),(12,'This is Tittle','This is Description','product','uploads/website-images/banner-2022-01-30-06-21-06-4562.png','dd','Campaign page',0,'',NULL,'2022-02-13 13:47:31'),(13,'This is Tittle','Lorem Ipsum is simply dummy text of the printing and typesetting industry','Shop Now','uploads/website-images/banner-2022-02-07-10-48-37-9226.jpg','dd','Login page',0,'Our Achievement',NULL,'2022-02-07 04:48:39'),(14,'Black Friday Sale','Up To -70% Off','product','uploads/website-images/banner-2022-02-06-04-24-02-9777.jpg',NULL,'Product Detail',1,NULL,NULL,'2022-02-13 13:46:54'),(15,'Default Profile Image',NULL,NULL,'uploads/website-images/default-avatar-2022-02-07-10-10-46-1477.jpg',NULL,'Default Profile Image',0,NULL,NULL,'2022-02-07 04:10:50');
/*!40000 ALTER TABLE `banner_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_addresses`
--

DROP TABLE IF EXISTS `billing_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT '0',
  `state_id` int DEFAULT '0',
  `city_id` int DEFAULT '0',
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_addresses`
--

LOCK TABLES `billing_addresses` WRITE;
/*!40000 ALTER TABLE `billing_addresses` DISABLE KEYS */;
INSERT INTO `billing_addresses` VALUES (1,1,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA',1,0,0,'6521','2022-01-30 09:56:12','2022-05-17 05:40:34'),(3,3,'David Warner','user@gmail.com','123-874-6548','San Francisco City Hall, San Francisco, CA',1,1,2,'4521','2022-01-31 01:53:32','2022-02-07 05:54:53'),(4,4,'Jose Larry','user@gmail.com','458-854-8745','Florida City, FL, USA',1,2,1,'45870','2022-01-31 02:13:53','2022-02-06 06:01:43'),(5,5,'Daniel Paul','user@gmail.com','123-874-6548','Florida City, FL, USA',1,2,1,'52304','2022-01-31 08:04:10','2022-02-06 06:30:28'),(6,6,'Robert James','seller@gmail.com','458-854-8745','Los Angeles, CA, USA',1,1,2,'9001','2022-02-06 04:27:23','2022-02-06 04:27:23');
/*!40000 ALTER TABLE `billing_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,'Electronics','electronics',1,'2022-01-30 11:00:57','2022-01-30 11:00:57'),(2,'Lifestyle','lifestyle',1,'2022-02-07 08:15:32','2022-02-07 08:15:32'),(3,'Food & Drink','food-drink',1,'2022-02-07 08:15:46','2022-02-07 08:15:46'),(4,'Children','children',1,'2022-02-07 08:16:07','2022-02-07 08:16:07'),(5,'Women','women',1,'2022-02-07 08:20:05','2022-02-07 08:20:05');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
INSERT INTO `blog_comments` VALUES (3,9,'John Doe','user@gmail.com','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1,'2022-02-08 08:28:23','2022-02-08 08:29:25'),(4,1,'David Simmons','david@gmail.com','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1,'2022-02-08 08:28:51','2022-02-08 08:29:25'),(5,10,'David Richard','rechard@gmail.com','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1,'2022-02-08 08:29:09','2022-02-08 08:29:26');
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `show_homepage` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,1,'The Best Delicious Coffee Shop In Bangkok China.','the-best-delicious-coffee-shop-in-bangkok-china',4,'uploads/custom-images/blog--2022-02-07-02-17-42-4747.jpg','uploads/custom-images/blog-banner-2022-02-11-03-22-01-3776.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',14,'The Best Delicious Coffee Shop In Bangkok China.','The Best Delicious Coffee Shop In Bangkok China.',1,1,'2022-01-30 11:01:55','2022-02-11 09:22:04'),(2,1,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has rdd','contrary-to-popular-belief-lorem-ipsum-is-not-simply-random-text-it-has-rdd',4,'uploads/custom-images/blog--2022-02-07-02-19-14-7102.jpg','uploads/custom-images/blog-banner-2022-02-11-03-22-18-4550.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',6,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has r','Contrary to popular belief, Lorem Ipsum is not simply random text. It has r',1,1,'2022-01-30 12:40:15','2022-02-11 09:22:21'),(4,1,'A Skin Cream That’s Proven To Work','a-skin-cream-thats-proven-to-work',5,'uploads/custom-images/blog--2022-02-07-02-21-28-8131.jpg','uploads/custom-images/blog-banner-2022-02-11-03-22-34-6221.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',0,'A Skin Cream That’s Proven To Work','A Skin Cream That’s Proven To Work',1,1,'2022-02-07 08:21:34','2022-02-11 09:22:37'),(5,1,'America National Parks With Denver','america-national-parks-with-denver',4,'uploads/custom-images/blog--2022-02-07-02-23-41-8356.jpg','uploads/custom-images/blog-banner-2022-02-11-03-22-57-9861.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',24,'America National Parks With Denver','America National Parks With Denver',1,1,'2022-02-07 08:23:47','2022-02-17 14:21:13'),(6,1,'A Seaside Reset In Laguna Beach','a-seaside-reset-in-laguna-beach',2,'uploads/custom-images/blog--2022-02-07-02-27-28-7281.jpg','uploads/custom-images/blog-banner-2022-02-11-03-23-12-1954.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p><p><br></p>',0,'A Seaside Reset In Laguna Beach','A Seaside Reset In Laguna Beach',1,0,'2022-02-07 08:27:35','2022-02-11 09:23:15'),(7,1,'Lorem Ipsum Is Simply Dummy Text Of The Printing','lorem-ipsum-is-simply-dummy-text-of-the-printing',2,'uploads/custom-images/blog--2022-02-07-02-31-07-4991.jpg','uploads/custom-images/blog-banner-2022-02-11-03-23-30-1549.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',1,'Lorem Ipsum Is Simply Dummy Text Of The Printing','Lorem Ipsum Is Simply Dummy Text Of The Printing',1,0,'2022-02-07 08:31:13','2022-02-17 11:17:20'),(8,1,'List Of Benifits And Impressive Listeo Services','list-of-benifits-and-impressive-listeo-services',2,'uploads/custom-images/blog--2022-02-07-02-33-58-9203.jpg','uploads/custom-images/blog-banner-2022-02-11-03-23-46-7169.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',22,'List Of Benifits And Impressive Listeo Services','List Of Benifits And Impressive Listeo Services',1,0,'2022-02-07 08:34:04','2022-02-17 14:20:20'),(9,1,'What People Says About Real Estate Properties','what-people-says-about-real-estate-properties',3,'uploads/custom-images/blog--2022-02-07-02-36-10-4099.jpg','uploads/custom-images/blog-banner-2022-02-11-03-24-02-7407.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',23,'What People Says About Real Estate Properties','What People Says About Real Estate Properties',1,0,'2022-02-07 08:36:18','2022-02-17 14:36:44'),(10,1,'9 Things I Love About Shaving My Head During Quarantine','9-things-i-love-about-shaving-my-head-during-quarantine',4,'uploads/custom-images/blog--2022-02-07-02-39-06-7986.jpg','uploads/custom-images/blog-banner-2022-02-11-03-24-18-5178.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',4,'9 Things I Love About Shaving My Head During Quarantine','9 Things I Love About Shaving My Head During Quarantine',1,0,'2022-02-07 08:39:11','2022-02-11 09:24:22');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `is_top` int NOT NULL DEFAULT '0',
  `is_popular` int NOT NULL DEFAULT '0',
  `is_trending` int NOT NULL DEFAULT '0',
  `rating` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Canon','canon','uploads/custom-images/canon-2022-02-07-07-58-25-8373.jpg',1,0,0,0,0,5,'2022-01-30 09:40:56','2022-02-12 09:49:33'),(2,'Hugo Boss','hugo-boss','uploads/custom-images/hugo-boss-2022-02-07-07-58-59-2503.jpg',1,0,0,0,0,3,'2022-01-30 10:02:22','2022-02-07 01:58:59'),(3,'Adidas','adidas','uploads/custom-images/adidas-2022-02-07-07-59-11-8736.jpg',1,0,0,0,0,4,'2022-01-30 10:02:44','2022-02-07 01:59:12'),(4,'Nike','nike','uploads/custom-images/nike-2022-02-07-07-59-25-8222.jpg',1,0,0,0,0,5,'2022-01-30 10:03:14','2022-02-07 01:59:25'),(6,'Piaggio','piaggio-','uploads/custom-images/piaggio-2022-02-07-07-59-42-1464.jpg',1,0,0,0,0,5,'2022-01-30 10:10:59','2022-02-07 01:59:43'),(7,'HP','hp','uploads/custom-images/hp-2022-02-07-07-59-57-5394.jpg',1,0,0,0,0,5,'2022-02-06 01:34:50','2022-02-07 01:59:57'),(8,'Asus','asus','uploads/custom-images/asus-2022-02-08-09-32-28-5900.jpg',1,0,0,0,0,4,'2022-02-06 01:35:49','2022-02-08 03:32:35'),(9,'Lenovo','lenovo-laptop','uploads/custom-images/lenovo-2022-02-08-09-33-54-2980.jpg',1,0,0,0,0,4,'2022-02-06 01:36:12','2022-02-08 03:33:55'),(11,'Intel','intel','uploads/custom-images/intel-2022-02-08-09-29-45-6413.jpg',1,0,0,0,0,5,'2022-02-06 02:28:46','2022-02-08 03:29:52'),(12,'A4Tech','a4tech','uploads/custom-images/a4tech-2022-02-07-08-09-30-3624.jpg',1,0,0,0,0,5,'2022-02-06 02:41:18','2022-02-07 02:09:32'),(13,'Sony','sony','uploads/custom-images/sony-2022-02-08-09-26-22-5316.jpg',1,0,0,0,0,5,'2022-02-06 03:00:51','2022-02-08 03:26:23'),(14,'Suzuki','suzuki','uploads/custom-images/suzuki-2022-02-08-09-28-28-4764.jpg',1,0,0,0,0,4,'2022-02-06 03:51:24','2022-02-08 03:28:35'),(15,'Samsung','samsung','uploads/custom-images/samsung-2022-02-08-09-27-05-9288.jpg',1,0,0,0,0,5,'2022-02-06 06:07:50','2022-02-08 03:27:08');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breadcrumb_images`
--

DROP TABLE IF EXISTS `breadcrumb_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breadcrumb_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` int NOT NULL DEFAULT '1',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breadcrumb_images`
--

LOCK TABLES `breadcrumb_images` WRITE;
/*!40000 ALTER TABLE `breadcrumb_images` DISABLE KEYS */;
INSERT INTO `breadcrumb_images` VALUES (1,'Brand Page',1,'uploads/website-images/banner-us-2022-02-11-03-19-00-6529.jpg',NULL,'2022-02-11 09:19:03'),(2,'Cart Page',1,'uploads/website-images/banner-us-2022-02-11-03-19-13-2295.jpg',NULL,'2022-02-11 09:19:16'),(3,'Campaign Page',1,'uploads/website-images/banner-us-2022-02-11-03-19-26-4555.jpg',NULL,'2022-02-11 09:19:28'),(4,'FAQ page',1,'uploads/website-images/banner-us-2022-02-11-03-19-38-5297.jpg',NULL,'2022-02-11 09:19:40'),(5,'User Authentication',1,'uploads/website-images/banner-us-2022-02-11-03-19-51-4946.jpg',NULL,'2022-02-11 09:19:53'),(6,'Compare Page',1,'uploads/website-images/banner-us-2022-02-11-03-20-02-1928.jpg',NULL,'2022-02-11 09:20:04'),(7,'Order Tracking Page',1,'uploads/website-images/banner-us-2022-02-11-03-20-16-5029.jpg',NULL,'2022-02-11 09:20:18'),(8,'Vendor Page',1,'uploads/website-images/banner-us-2022-02-11-03-20-28-1461.jpg',NULL,'2022-02-11 09:20:30'),(9,'Shop Page',1,'uploads/website-images/banner-us-2022-02-11-03-20-39-4557.jpg',NULL,'2022-02-11 09:20:41'),(10,'Blog page',1,'uploads/website-images/banner-us-2022-02-11-03-20-51-3046.jpg',NULL,'2022-02-11 09:20:54'),(11,'Flash Deal Page',1,'uploads/website-images/banner-us-2022-02-11-03-21-04-8636.jpg',NULL,'2022-02-11 09:21:06');
/*!40000 ALTER TABLE `breadcrumb_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_products`
--

DROP TABLE IF EXISTS `campaign_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int NOT NULL,
  `product_id` int NOT NULL,
  `show_homepage` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_products`
--

LOCK TABLES `campaign_products` WRITE;
/*!40000 ALTER TABLE `campaign_products` DISABLE KEYS */;
INSERT INTO `campaign_products` VALUES (1,1,1,1,1,'2022-01-30 11:08:17','2022-01-30 11:08:17'),(2,2,3,1,1,'2022-01-31 07:03:31','2022-01-31 07:03:31'),(3,2,4,1,1,'2022-01-31 07:03:39','2022-01-31 07:03:39'),(4,4,8,1,1,'2022-01-31 07:31:42','2022-01-31 07:31:42'),(5,4,9,1,1,'2022-01-31 07:31:56','2022-01-31 07:32:05'),(6,4,7,1,1,'2022-01-31 07:32:02','2022-01-31 07:32:05'),(8,1,22,1,1,'2022-02-08 10:05:36','2022-02-08 10:06:26'),(9,1,16,1,1,'2022-02-08 10:05:43','2022-02-08 10:06:27'),(10,1,32,1,1,'2022-02-08 10:05:51','2022-02-08 10:06:28'),(11,1,17,1,1,'2022-02-08 10:06:06','2022-02-08 10:06:29'),(12,1,29,1,1,'2022-02-08 10:17:31','2022-02-08 10:17:34');
/*!40000 ALTER TABLE `campaign_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` double NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `show_homepage` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'uploads/custom-images/campaign--2022-02-07-08-17-57-4847.jpg','Happy New Year','happy-new-year','Up To -35% Off',35,'2022-01-29 17:07:00','2022-04-16 17:17:00',1,1,'2022-01-30 11:07:55','2022-04-14 11:17:52'),(2,'uploads/custom-images/campaign--2022-02-07-08-19-03-8003.jpg','Black Friday','black-friday','Up To -31% Off',41,'2022-01-30 08:28:00','2022-04-02 08:52:00',0,1,'2022-01-30 20:28:49','2022-04-14 11:17:52'),(3,'uploads/custom-images/campaign--2022-02-07-08-19-56-3751.jpg','Happy New Year 2024','happy-new-year-2024','Up To -30% Off',30,'2022-01-31 08:41:00','2022-03-19 08:52:00',0,1,'2022-01-30 20:41:43','2022-04-14 11:17:52'),(4,'uploads/custom-images/campaign--2022-02-07-08-23-24-8664.jpg','Happy New Year 2022','happy-new-year-2022','Up To - 20% Off',20,'2022-01-31 08:45:00','2022-03-16 08:52:00',0,1,'2022-01-31 02:46:12','2022-04-14 11:17:52');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `is_top` int NOT NULL DEFAULT '0',
  `is_popular` int NOT NULL DEFAULT '0',
  `is_trending` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Electronics','electronics','fas fa-anchor',1,0,0,0,0,'2022-01-30 09:39:07','2022-02-02 06:16:45'),(2,'Mobile','mobile','fas fa-address-card',1,0,0,0,0,'2022-01-30 09:39:21','2022-01-30 09:39:21'),(3,'Television','television','fab fa-android',1,0,0,0,0,'2022-01-30 09:39:39','2022-01-30 09:39:39'),(4,'Bike','bike','fab fa-accessible-icon',1,0,0,0,0,'2022-01-30 10:06:39','2022-01-30 10:06:39'),(5,'Men\'s Fashion','mens-fashion','far fa-address-card',1,0,0,0,0,'2022-01-30 10:06:54','2022-02-06 08:05:40'),(6,'Women\'s Fashion','womens-fashion','fas fa-adjust',1,0,0,0,0,'2022-01-30 10:07:11','2022-02-06 08:06:04'),(7,'Home and Lifestyle','home-and-lifestyle','fas fa-warehouse',1,0,0,0,0,'2022-02-06 07:12:24','2022-02-06 07:12:24'),(8,'Babies and Toys','babies-and-toys','fas fa-volleyball-ball',1,0,0,0,0,'2022-02-06 08:21:36','2022-02-06 08:21:36'),(9,'Electronics Accessories','electronics-accessories','fab fa-avianex',1,0,0,0,0,'2022-02-06 08:36:39','2022-02-06 08:36:39'),(10,'Vehicles & Accessories','vehicles-accessories','fas fa-ambulance',1,0,0,0,0,'2022-02-06 08:53:55','2022-02-13 04:04:53'),(12,'test category','test-category','fa fa-edit',1,0,0,0,0,'2022-04-14 03:16:31','2022-04-14 03:16:31'),(13,'test category 2','test-category-2','fa fa-edit',1,0,0,0,0,'2022-04-14 03:16:56','2022-04-14 03:16:56');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_categories`
--

DROP TABLE IF EXISTS `child_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_categories`
--

LOCK TABLES `child_categories` WRITE;
/*!40000 ALTER TABLE `child_categories` DISABLE KEYS */;
INSERT INTO `child_categories` VALUES (1,1,1,'Canon','DSLR',1,'2022-01-30 09:40:24','2022-01-30 09:40:35'),(2,5,5,'Blue Tshirt','blue-tshirt',1,'2022-01-30 10:09:53','2022-01-30 10:09:53'),(3,6,6,'Fair and Lovely','fair-and-lovely',1,'2022-01-30 10:10:11','2022-02-07 02:16:43'),(4,1,7,'Lenovo Laptop','lenovo-laptop',1,'2022-02-06 01:39:22','2022-02-06 01:39:22'),(5,1,7,'Asus Laptop','asus-laptop',1,'2022-02-06 01:39:41','2022-02-06 01:39:41'),(6,1,7,'HP Laptop','hp-laptop',1,'2022-02-06 01:39:57','2022-02-06 01:39:57'),(7,1,9,'Mouse and Keyboard','mouse-and-keyboard',1,'2022-02-06 02:40:31','2022-02-06 02:40:31');
/*!40000 ALTER TABLE `child_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_state_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'Uttara','uttara',1,'2022-01-30 09:29:19','2024-06-30 14:08:53'),(2,1,'Los Angeles','los-angeles',1,'2022-01-30 09:29:29','2022-02-06 04:20:30'),(4,2,'Tallahassee','tallahassee',1,'2022-02-06 04:18:49','2022-02-06 04:18:49'),(5,2,'Weston','weston',1,'2022-02-06 04:19:56','2022-02-06 04:19:56'),(6,1,'San Jose','san-jose',1,'2022-02-06 04:21:08','2022-02-06 04:21:08'),(7,1,'San Diego','san-diego',1,'2022-02-06 04:21:26','2022-02-06 04:21:26'),(8,4,'Gandhinagar','gandhinagar',1,'2022-02-06 04:22:21','2022-02-06 04:22:21'),(9,5,'Chandigarh','chandigarh',1,'2022-02-06 04:22:44','2022-02-06 04:22:44'),(10,7,'London','london',1,'2022-02-06 04:23:12','2022-02-06 04:23:12'),(11,7,'Liverpool','liverpool',1,'2022-02-06 04:23:29','2022-02-06 04:23:29'),(12,1,'Dhaka','dhaka',1,'2024-06-30 14:07:10','2024-06-30 14:07:10');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_pages`
--

DROP TABLE IF EXISTS `contact_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_pages`
--

LOCK TABLES `contact_pages` WRITE;
/*!40000 ALTER TABLE `contact_pages` DISABLE KEYS */;
INSERT INTO `contact_pages` VALUES (1,'uploads/custom-images/contact-us-2022-02-11-03-39-19-2626.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting.','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','contact.us@gmail.com','Dhaka, Bangladesh','123-343-4444','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14615.994260040543!2d90.49477098678912!3d23.67600930953518!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b6c9cac2182b%3A0x8cbfd7608a612b0e!2sPaschim%20Para%2C%20Kadamtoli!5e0!3m2!1sen!2sbd!4v1719647563096!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','2022-01-30 12:31:58','2024-06-29 07:52:57');
/*!40000 ALTER TABLE `contact_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookie_consents`
--

DROP TABLE IF EXISTS `cookie_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookie_consents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '1',
  `border` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corners` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookie_consents`
--

LOCK TABLES `cookie_consents` WRITE;
/*!40000 ALTER TABLE `cookie_consents` DISABLE KEYS */;
INSERT INTO `cookie_consents` VALUES (1,1,'thin','normal','#184dec','#fafafa','#0a58d6','#fffceb','#222758','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.','More Info','Yes',NULL,NULL,'2022-02-13 08:06:04');
/*!40000 ALTER TABLE `cookie_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'United State','united-state',1,'2022-01-30 09:28:28','2022-02-06 04:11:42'),(2,'India','india',1,'2022-01-30 09:28:39','2022-01-30 09:28:39'),(4,'United Kindom','united-kindom',1,'2022-02-06 04:11:51','2022-02-06 04:11:51'),(5,'Australia','australia',1,'2022-02-06 04:12:36','2022-02-06 04:12:36');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_states`
--

DROP TABLE IF EXISTS `country_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_states`
--

LOCK TABLES `country_states` WRITE;
/*!40000 ALTER TABLE `country_states` DISABLE KEYS */;
INSERT INTO `country_states` VALUES (1,1,'Dhaka','dhaka',1,'2022-01-30 09:29:00','2024-06-30 14:04:41'),(2,1,'Florida','florida',1,'2022-01-30 09:29:07','2022-02-06 04:14:42'),(3,1,'Alaska','alaska',1,'2022-02-05 07:49:14','2022-02-06 04:15:09'),(4,2,'Gujarat','gujarat',1,'2022-02-06 04:16:27','2022-02-06 04:16:27'),(5,2,'Punjab','punjab',1,'2022-02-06 04:16:39','2022-02-06 04:16:39'),(6,2,'Rajasthan','rajasthan',1,'2022-02-06 04:16:48','2022-02-06 04:16:48'),(7,4,'England','england',1,'2022-02-06 04:17:35','2022-02-06 04:17:35'),(8,4,'Scotland','scotland',1,'2022-02-06 04:17:44','2022-02-06 04:17:44'),(9,4,'Wales','wales',1,'2022-02-06 04:17:53','2022-02-06 04:17:53');
/*!40000 ALTER TABLE `country_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_type` int NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `max_quantity` int NOT NULL DEFAULT '0',
  `expired_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_qty` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'New Year','newyear2022',2,1200,7,'2022-01-31',7,1,'2022-01-30 09:55:06','2022-01-31 08:42:34');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'AFA','Afghan Afghani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'ALL','Albanian Lek','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'DZD','Algerian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'AOA','Angolan Kwanza','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'ARS','Argentine Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'AMD','Armenian Dram','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'AWG','Aruban Florin','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'AUD','Australian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'AZN','Azerbaijani Manat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'BSD','Bahamian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'BHD','Bahraini Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'BDT','Bangladeshi Taka','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'BBD','Barbadian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'BYR','Belarusian Ruble','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'BEF','Belgian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'BZD','Belize Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'BMD','Bermudan Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'BTN','Bhutanese Ngultrum','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'BTC','Bitcoin','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'BOB','Bolivian Boliviano','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'BAM','Bosnia-Herzegovina Convertible Mark','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'BWP','Botswanan Pula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'BRL','Brazilian Real','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'GBP','British Pound Sterling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'BND','Brunei Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'BGN','Bulgarian Lev','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'BIF','Burundian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'KHR','Cambodian Riel','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'CAD','Canadian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'CVE','Cape Verdean Escudo','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'KYD','Cayman Islands Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'XOF','CFA Franc BCEAO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'XAF','CFA Franc BEAC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'XPF','CFP Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'CLP','Chilean Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'CNY','Chinese Yuan','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'COP','Colombian Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'KMF','Comorian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'CDF','Congolese Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'CRC','Costa Rican ColÃ³n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'HRK','Croatian Kuna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'CUC','Cuban Convertible Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'CZK','Czech Republic Koruna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'DKK','Danish Krone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'DJF','Djiboutian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'DOP','Dominican Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'XCD','East Caribbean Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'EGP','Egyptian Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'ERN','Eritrean Nakfa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'EEK','Estonian Kroon','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'ETB','Ethiopian Birr','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'EUR','Euro','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'FKP','Falkland Islands Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'FJD','Fijian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'GMD','Gambian Dalasi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'GEL','Georgian Lari','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'DEM','German Mark','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'GHS','Ghanaian Cedi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'GIP','Gibraltar Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'GRD','Greek Drachma','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'GTQ','Guatemalan Quetzal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'GNF','Guinean Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'GYD','Guyanaese Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'HTG','Haitian Gourde','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'HNL','Honduran Lempira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'HKD','Hong Kong Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'HUF','Hungarian Forint','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'ISK','Icelandic KrÃ³na','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'INR','Indian Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'IDR','Indonesian Rupiah','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'IRR','Iranian Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'IQD','Iraqi Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'ILS','Israeli New Sheqel','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'ITL','Italian Lira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'JMD','Jamaican Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'JPY','Japanese Yen','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'JOD','Jordanian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'KZT','Kazakhstani Tenge','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'KES','Kenyan Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'KWD','Kuwaiti Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'KGS','Kyrgystani Som','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'LAK','Laotian Kip','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'LVL','Latvian Lats','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'LBP','Lebanese Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'LSL','Lesotho Loti','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'LRD','Liberian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'LYD','Libyan Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'LTL','Lithuanian Litas','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'MOP','Macanese Pataca','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'MKD','Macedonian Denar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'MGA','Malagasy Ariary','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'MWK','Malawian Kwacha','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'MYR','Malaysian Ringgit','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'MVR','Maldivian Rufiyaa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'MRO','Mauritanian Ouguiya','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'MUR','Mauritian Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'MXN','Mexican Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'MDL','Moldovan Leu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'MNT','Mongolian Tugrik','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'MAD','Moroccan Dirham','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'MZM','Mozambican Metical','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'MMK','Myanmar Kyat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'NAD','Namibian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'NPR','Nepalese Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'ANG','Netherlands Antillean Guilder','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'TWD','New Taiwan Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'NZD','New Zealand Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'NIO','Nicaraguan CÃ³rdoba','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'NGN','Nigerian Naira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'KPW','North Korean Won','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'NOK','Norwegian Krone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'OMR','Omani Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'PKR','Pakistani Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'PAB','Panamanian Balboa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'PGK','Papua New Guinean Kina','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'PYG','Paraguayan Guarani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'PEN','Peruvian Nuevo Sol','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'PHP','Philippine Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'PLN','Polish Zloty','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'QAR','Qatari Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'RON','Romanian Leu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'RUB','Russian Ruble','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'RWF','Rwandan Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'SVC','Salvadoran ColÃ³n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'WST','Samoan Tala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'SAR','Saudi Riyal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'RSD','Serbian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'SCR','Seychellois Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'SLL','Sierra Leonean Leone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'SGD','Singapore Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'SKK','Slovak Koruna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'SBD','Solomon Islands Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'SOS','Somali Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'ZAR','South African Rand','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'KRW','South Korean Won','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'XDR','Special Drawing Rights','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'LKR','Sri Lankan Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'SHP','St. Helena Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'SDG','Sudanese Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'SRD','Surinamese Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'SZL','Swazi Lilangeni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'SEK','Swedish Krona','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'CHF','Swiss Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'SYP','Syrian Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'STD','São Tomé and Príncipe Dobra','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'TJS','Tajikistani Somoni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'TZS','Tanzanian Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'THB','Thai Baht','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'TOP','Tongan pa\'anga','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'TTD','Trinidad & Tobago Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'TND','Tunisian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'TRY','Turkish Lira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'TMT','Turkmenistani Manat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'UGX','Ugandan Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'UAH','Ukrainian Hryvnia','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'AED','United Arab Emirates Dirham','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'UYU','Uruguayan Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'USD','US Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'UZS','Uzbekistan Som','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'VUV','Vanuatu Vatu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'VEF','Venezuelan BolÃ­var','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'VND','Vietnamese Dong','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'YER','Yemeni Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'ZMK','Zambian Kwacha','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_countries`
--

DROP TABLE IF EXISTS `currency_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_countries`
--

LOCK TABLES `currency_countries` WRITE;
/*!40000 ALTER TABLE `currency_countries` DISABLE KEYS */;
INSERT INTO `currency_countries` VALUES (1,'Andorra','AD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Afghanistan','AF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Åland Islands','AX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Albania','AL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Algeria','DZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'American Samoa','AS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Angola','AO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Anguilla','AI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Antarctica','AQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Antigua and Barbuda','AG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Argentina','AR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Armenia','AM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Aruba','AW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Australia','AU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Austria','AT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Azerbaijan','AZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Bahamas','BS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Bahrain','BH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Bangladesh','BD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Barbados','BB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Belarus','BY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Belgium','BE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Belize','BZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Benin','BJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Bermuda','BM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Bhutan','BT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Bolivia (Plurinational State of)','BO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Bonaire, Sint Eustatius and Saba','BQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Bosnia and Herzegovina','BA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Botswana','BW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Bouvet Island','BV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Brazil','BR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'British Indian Ocean Territory','IO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Brunei Darussalam','BN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Bulgaria','BG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Burkina Faso','BF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Burundi','BI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Cabo Verde','CV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Cambodia','KH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Cameroon','CM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Canada','CA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Cayman Islands','KY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Central African Republic','CF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Chad','TD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Chile','CL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'China','CN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Christmas Island','CX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Cocos (Keeling) Islands','CC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Colombia','CO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Comoros','KM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Congo','CG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Congo (Democratic Republic of the)','CD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Cook Islands','CK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Costa Rica','CR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Côte d\'Ivoire','CI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'Croatia','HR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Cuba','CU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'Curaçao','CW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'Cyprus','CY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'Czech Republic','CZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'Denmark','DK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'Djibouti','DJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'Dominica','DM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Dominican Republic','DO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'Ecuador','EC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'Egypt','EG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'El Salvador','SV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'Equatorial Guinea','GQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'Eritrea','ER','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'Estonia','EE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'Ethiopia','ET','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'Falkland Islands (Malvinas)','FK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'Faroe Islands','FO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'Fiji','FJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'Finland','FI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'France','FR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'French Guiana','GF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'French Polynesia','PF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'French Southern Territories','TF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'Gabon','GA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'Gambia','GM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'Georgia','GE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'Germany','DE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'Ghana','GH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'Gibraltar','GI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'Greece','GR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'Greenland','GL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'Grenada','GD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'Guadeloupe','GP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'Guam','GU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'Guatemala','GT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'Guernsey','GG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'Guinea','GN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'Guinea-Bissau','GW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'Guyana','GY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'Haiti','HT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'Heard Island and McDonald Islands','HM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'Holy See','VA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'Honduras','HN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'Hong Kong','HK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'Hungary','HU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'Iceland','IS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'India','IN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'Indonesia','ID','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'Iran (Islamic Republic of)','IR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'Iraq','IQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'Ireland','IE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'Isle of Man','IM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'Israel','IL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'Italy','IT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'Jamaica','JM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'Japan','JP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'Jersey','JE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'Jordan','JO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'Kazakhstan','KZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'Kenya','KE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'Kiribati','KI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'Korea (Democratic People\'s Republic of)','KP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'Korea (Republic of)','KR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'Kuwait','KW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'Kyrgyzstan','KG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'Lao People\'s Democratic Republic','LA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'Latvia','LV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'Lebanon','LB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'Lesotho','LS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'Liberia','LR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'Libya','LY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'Liechtenstein','LI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'Lithuania','LT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'Luxembourg','LU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'Macao','MO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'Macedonia (the former Yugoslav Republic of)','MK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'Madagascar','MG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'Malawi','MW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'Malaysia','MY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'Maldives','MV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'Mali','ML','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'Malta','MT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'Marshall Islands','MH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'Martinique','MQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'Mauritania','MR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'Mauritius','MU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'Mayotte','YT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'Mexico','MX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'Micronesia (Federated States of)','FM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'Moldova (Republic of)','MD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'Monaco','MC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'Mongolia','MN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'Montenegro','ME','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'Montserrat','MS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'Morocco','MA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'Mozambique','MZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'Myanmar','MM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'Namibia','NA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'Nauru','NR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'Nepal','NP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'Netherlands','NL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'New Caledonia','NC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'New Zealand','NZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'Nicaragua','NI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'Niger','NE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'Nigeria','NG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'Niue','NU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'Norfolk Island','NF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,'Northern Mariana Islands','MP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,'Norway','NO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,'Oman','OM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,'Pakistan','PK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,'Palau','PW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,'Palestine, State of','PS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,'Panama','PA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,'Papua New Guinea','PG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,'Paraguay','PY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,'Peru','PE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,'Philippines','PH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,'Pitcairn','PN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,'Poland','PL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,'Portugal','PT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,'Puerto Rico','PR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,'Qatar','QA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,'Réunion','RE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,'Romania','RO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,'Russian Federation','RU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,'Rwanda','RW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,'Saint Barthélemy','BL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,'Saint Helena, Ascension and Tristan da Cunha','SH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,'Saint Kitts and Nevis','KN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(188,'Saint Lucia','LC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,'Saint Martin (French part)','MF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,'Saint Pierre and Miquelon','PM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,'Saint Vincent and the Grenadines','VC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,'Samoa','WS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,'San Marino','SM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,'Sao Tome and Principe','ST','0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,'Saudi Arabia','SA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,'Senegal','SN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,'Serbia','RS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,'Seychelles','SC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,'Sierra Leone','SL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,'Singapore','SG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,'Sint Maarten (Dutch part)','SX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,'Slovakia','SK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,'Slovenia','SI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,'Solomon Islands','SB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,'Somalia','SO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,'South Africa','ZA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,'South Georgia and the South Sandwich Islands','GS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,'South Sudan','SS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(209,'Spain','ES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(210,'Sri Lanka','LK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(211,'Sudan','SD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,'Suriname','SR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,'Svalbard and Jan Mayen','SJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,'Swaziland','SZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,'Sweden','SE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,'Switzerland','CH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,'Syrian Arab Republic','SY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,'Taiwan, Province of China','TW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,'Tajikistan','TJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,'Tanzania, United Republic of','TZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,'Thailand','TH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,'Timor-Leste','TL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,'Togo','TG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,'Tokelau','TK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,'Tonga','TO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,'Trinidad and Tobago','TT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,'Tunisia','TN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,'Turkey','TR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,'Turkmenistan','TM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,'Turks and Caicos Islands','TC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,'Tuvalu','TV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,'Uganda','UG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,'Ukraine','UA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(234,'United Arab Emirates','AE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(235,'United Kingdom of Great Britain and Northern Ireland','GB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(236,'United States Minor Outlying Islands','UM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,'United States of America','US','0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,'Uruguay','UY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,'Uzbekistan','UZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(240,'Vanuatu','VU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(241,'Venezuela (Bolivarian Republic of)','VE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(242,'Viet Nam','VN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(243,'Virgin Islands (British)','VG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(244,'Virgin Islands (U.S.)','VI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(245,'Wallis and Futuna','WF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(246,'Western Sahara','EH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(247,'Yemen','YE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(248,'Zambia','ZM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(249,'Zimbabwe','ZW','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currency_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_pages`
--

DROP TABLE IF EXISTS `custom_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_pages`
--

LOCK TABLES `custom_pages` WRITE;
/*!40000 ALTER TABLE `custom_pages` DISABLE KEYS */;
INSERT INTO `custom_pages` VALUES (1,'Custom Page One','custom-page-one','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','uploads/custom-images/custom-page-2022-02-11-03-39-42-1795.jpg',1,'2022-01-30 12:33:25','2022-02-11 09:39:46');
/*!40000 ALTER TABLE `custom_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_paginations`
--

DROP TABLE IF EXISTS `custom_paginations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_paginations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_paginations`
--

LOCK TABLES `custom_paginations` WRITE;
/*!40000 ALTER TABLE `custom_paginations` DISABLE KEYS */;
INSERT INTO `custom_paginations` VALUES (1,'Blog Page',6,NULL,'2022-02-07 08:39:56'),(2,'Product Page',12,NULL,'2022-01-30 10:23:33'),(3,'Brand Page',8,NULL,'2022-02-07 02:14:01'),(5,'Product Review',10,NULL,'2022-01-11 19:12:57');
/*!40000 ALTER TABLE `custom_paginations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_configurations`
--

DROP TABLE IF EXISTS `email_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_configurations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mail_type` tinyint DEFAULT NULL,
  `mail_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_configurations`
--

LOCK TABLES `email_configurations` WRITE;
/*!40000 ALTER TABLE `email_configurations` DISABLE KEYS */;
INSERT INTO `email_configurations` VALUES (1,2,'smtp.mailtrap.io','587','maryleynda12@gmail.com','mary+pass@','045ae65cc34b16','48889ee7937b65','tls',NULL,'2022-07-03 14:26:11');
/*!40000 ALTER TABLE `email_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'Password Reset','Password Reset','<h4>Dear <b>{{name}}</b>,</h4>\r\n    <p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p>',NULL,'2021-12-09 10:06:57'),(2,'Contact Email','Contact Email','<p>Name: <b>{{name}}</b></p><p>\r\n\r\nEmail: <b>{{email}}</b></p><p>\r\n\r\nPhone: <b>{{phone}}</b></p><p><span style=\"background-color: transparent;\">Subject: <b>{{subject}}</b></span></p><p>\r\n\r\nMessage: <b>{{message}}</b></p>',NULL,'2021-12-10 23:44:34'),(3,'Subscribe Notification','Subscribe Notification','<h2><b>Hi there</b>,</h2><p>\r\nCongratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription. If you won\'t approve this link, after 24hourse your subscription will be denay</p>',NULL,'2021-12-10 23:44:53'),(4,'User Verification','User Verification','<p>Dear <b>{{user_name}}</b>,\r\n</p><p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>',NULL,'2021-12-10 23:45:25'),(5,'Seller Withdraw','Seller Withdraw Approval','<p>Hi <b>{{seller_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>',NULL,'2021-12-26 03:24:45'),(6,'Order Successfully','Order Successfully','<p>Hi {{user_name}},</p><p> \r\nThanks for your new order. Your order id has been submited .</p><p>Total Amount : {{total_amount}},</p><p>Payment Method : {{payment_method}},</p><p>Payment Status : {{payment_status}},</p><p>Order Status : {{order_status}},</p><p>Order Date: {{order_date}},</p><p>Order Detail: {{order_detail}}</p>',NULL,'2022-01-10 21:37:03'),(7,'Seller Request Approved','Seller Request Approved','<p>Hi {{name}},\r\n</p><p><span style=\"background-color: transparent;\">Congratulations !!&nbsp;</span>Your Shop account has been approved successfully</p>',NULL,'2022-02-05 08:59:34');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_pages`
--

DROP TABLE IF EXISTS `error_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_pages`
--

LOCK TABLES `error_pages` WRITE;
/*!40000 ALTER TABLE `error_pages` DISABLE KEYS */;
INSERT INTO `error_pages` VALUES (1,'404 Error','404','That Page Doesn\'t Exist!','Sorry, the page you were looking for could not be found.','Go to Home',NULL,'2021-12-13 04:25:14'),(2,'500 Error','500','That Page Doesn\'t Exist!','Sorry, the page you were looking for could not be found.','Go to Home',NULL,'2021-12-06 09:46:52'),(3,'505 Error','505','That Page Doesn\'t Exist!','Sorry, the page you were looking for could not be found.','Go to Home',NULL,'2021-12-06 09:46:57');
/*!40000 ALTER TABLE `error_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facebook_comments`
--

DROP TABLE IF EXISTS `facebook_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facebook_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_type` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facebook_comments`
--

LOCK TABLES `facebook_comments` WRITE;
/*!40000 ALTER TABLE `facebook_comments` DISABLE KEYS */;
INSERT INTO `facebook_comments` VALUES (1,'882238482112522',1,NULL,'2022-02-07 05:35:19');
/*!40000 ALTER TABLE `facebook_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facebook_pixels`
--

DROP TABLE IF EXISTS `facebook_pixels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facebook_pixels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facebook_pixels`
--

LOCK TABLES `facebook_pixels` WRITE;
/*!40000 ALTER TABLE `facebook_pixels` DISABLE KEYS */;
INSERT INTO `facebook_pixels` VALUES (1,1,'972911606915059',NULL,'2021-12-13 22:38:44');
/*!40000 ALTER TABLE `facebook_pixels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry.','Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,'2022-01-30 12:37:47','2022-02-07 07:13:48'),(2,'Lorem Ipsum is simply dummy text of the printing and typesetting industry','Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;<br>',1,'2022-01-30 12:38:04','2022-02-07 07:11:26');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flutterwaves`
--

DROP TABLE IF EXISTS `flutterwaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flutterwaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flutterwaves`
--

LOCK TABLES `flutterwaves` WRITE;
/*!40000 ALTER TABLE `flutterwaves` DISABLE KEYS */;
INSERT INTO `flutterwaves` VALUES (1,'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X','FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X',417.35,'NG','NGN','Ecommerce','uploads/website-images/flutterwave-2021-12-30-03-44-30-8813.jpg',1,NULL,'2022-02-07 02:31:07');
/*!40000 ALTER TABLE `flutterwaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_links`
--

DROP TABLE IF EXISTS `footer_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_links`
--

LOCK TABLES `footer_links` WRITE;
/*!40000 ALTER TABLE `footer_links` DISABLE KEYS */;
INSERT INTO `footer_links` VALUES (1,'1','product','Shop Page','2022-01-30 12:28:07','2022-02-13 08:45:18'),(2,'2','user/dashboard','My Account','2022-01-30 12:28:21','2022-02-13 08:47:34'),(3,'3','about-us','About Us','2022-01-30 12:28:33','2022-02-13 08:48:03'),(4,'1','sellers','Our Sellers','2022-02-07 04:15:17','2022-02-13 08:45:25'),(5,'1','blog','Blog','2022-02-07 04:15:43','2022-02-13 08:45:30'),(6,'1','campaign','Campaign','2022-02-07 04:16:15','2022-02-13 08:45:39'),(7,'2','user/wishlist','Wishlist','2022-02-07 04:17:47','2022-02-13 08:47:40'),(8,'2','user/order','Our Orders','2022-02-07 04:18:38','2022-02-13 08:47:45'),(9,'2','user/seller-registration','Become a Seller','2022-02-07 04:19:07','2022-02-13 08:47:49'),(10,'3','terms-and-conditions','Terms & Conditions','2022-02-07 04:21:37','2022-02-13 08:48:08'),(11,'3','privacy-policy','Privacy Policy','2022-02-07 04:22:06','2022-02-13 08:48:14'),(12,'3','flash-deal','Flash Deal','2022-02-07 04:22:28','2022-02-13 08:48:21'),(13,'3','contact-us','Contact Us','2022-02-07 04:24:26','2022-02-13 08:48:27'),(14,'2','user/review','Our Reviews','2022-02-07 04:24:57','2022-02-13 08:47:55'),(15,'1','flash-deal','Flash Deal','2022-02-07 04:25:17','2022-02-13 08:45:34');
/*!40000 ALTER TABLE `footer_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_social_links`
--

DROP TABLE IF EXISTS `footer_social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_social_links`
--

LOCK TABLES `footer_social_links` WRITE;
/*!40000 ALTER TABLE `footer_social_links` DISABLE KEYS */;
INSERT INTO `footer_social_links` VALUES (1,'https://www.facebook.com','fab fa-facebook','2022-01-30 12:27:45','2022-02-07 04:12:11'),(2,'https://www.twitter.com','fab fa-twitter','2022-02-07 04:12:30','2022-02-07 04:12:30'),(3,'https://www.linkedin.com','fab fa-linkedin','2022-02-07 04:12:57','2022-02-07 04:12:57'),(4,'https://www.instagram.com','fab fa-instagram','2022-02-07 04:13:15','2022-02-07 04:13:15');
/*!40000 ALTER TABLE `footer_social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footers`
--

DROP TABLE IF EXISTS `footers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footers`
--

LOCK TABLES `footers` WRITE;
/*!40000 ALTER TABLE `footers` DISABLE KEYS */;
INSERT INTO `footers` VALUES (1,'125-965-7854','oshin@gmail.com','Dhaka, Bangladesh','Important Link','My Account','Our Service','Copyright 2024, Oshin. All Rights Reserved.','uploads/website-images/payment-card-2021-12-30-05-51-53-3777.png','We\'re Using Safe Payment',NULL,'2024-06-29 07:47:39');
/*!40000 ALTER TABLE `footers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_analytics`
--

DROP TABLE IF EXISTS `google_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_analytics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `analytic_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_analytics`
--

LOCK TABLES `google_analytics` WRITE;
/*!40000 ALTER TABLE `google_analytics` DISABLE KEYS */;
INSERT INTO `google_analytics` VALUES (1,'UA-84213520-6',1,NULL,'2021-12-10 22:15:51');
/*!40000 ALTER TABLE `google_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_recaptchas`
--

DROP TABLE IF EXISTS `google_recaptchas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_recaptchas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_recaptchas`
--

LOCK TABLES `google_recaptchas` WRITE;
/*!40000 ALTER TABLE `google_recaptchas` DISABLE KEYS */;
INSERT INTO `google_recaptchas` VALUES (1,'6LcVO6cbAAAAAOzIEwPlU66nL1rxD4VAS38tjpBX','6LcVO6cbAAAAALVNrpZfNRfd0Gy_9a_fJRLiMVUI',0,NULL,'2022-01-17 00:35:20');
/*!40000 ALTER TABLE `google_recaptchas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_page_one_visibilities`
--

DROP TABLE IF EXISTS `home_page_one_visibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_page_one_visibilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `qty` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page_one_visibilities`
--

LOCK TABLES `home_page_one_visibilities` WRITE;
/*!40000 ALTER TABLE `home_page_one_visibilities` DISABLE KEYS */;
INSERT INTO `home_page_one_visibilities` VALUES (1,'Slider',1,10,NULL,'2022-02-07 02:50:56'),(2,'Brand',1,10,NULL,'2022-01-30 11:04:40'),(3,'Campaign',1,9,NULL,'2022-01-30 11:08:50'),(4,'Popular Category',1,1,NULL,'2022-01-30 11:04:26'),(5,'First Two Column Banner',1,1,NULL,'2022-01-30 11:04:03'),(6,'Flash Deal',1,10,NULL,'2022-01-30 11:03:48'),(7,'Highlight Section',1,12,NULL,'2022-01-30 11:03:38'),(8,'Second two column banner',1,1,NULL,'2022-01-30 11:03:25'),(9,'Three Column Category',1,12,NULL,'2022-01-30 11:03:15'),(10,'Third Two Column Banner',1,1,NULL,'2022-01-30 11:03:02'),(11,'Service',1,4,NULL,'2022-01-30 11:02:53'),(12,'Blog',1,9,NULL,'2022-01-30 11:02:35');
/*!40000 ALTER TABLE `home_page_one_visibilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instamojo_payments`
--

DROP TABLE IF EXISTS `instamojo_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instamojo_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `account_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sandbox',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instamojo_payments`
--

LOCK TABLES `instamojo_payments` WRITE;
/*!40000 ALTER TABLE `instamojo_payments` DISABLE KEYS */;
INSERT INTO `instamojo_payments` VALUES (1,'test_5f4a2c9a58ef216f8a1a688910f','test_994252ada69ce7b3d282b9941c2','74.66','Sandbox',1,NULL,'2022-02-07 02:32:41');
/*!40000 ALTER TABLE `instamojo_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintainance_texts`
--

DROP TABLE IF EXISTS `maintainance_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintainance_texts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintainance_texts`
--

LOCK TABLES `maintainance_texts` WRITE;
/*!40000 ALTER TABLE `maintainance_texts` DISABLE KEYS */;
INSERT INTO `maintainance_texts` VALUES (1,0,'uploads/website-images/maintainance-mode-2024-06-29-01-50-16-2890.jpeg','We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.',NULL,'2024-06-29 07:50:16');
/*!40000 ALTER TABLE `maintainance_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mega_menu_categories`
--

DROP TABLE IF EXISTS `mega_menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mega_menu_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mega_menu_categories`
--

LOCK TABLES `mega_menu_categories` WRITE;
/*!40000 ALTER TABLE `mega_menu_categories` DISABLE KEYS */;
INSERT INTO `mega_menu_categories` VALUES (1,1,1,1,'2022-01-30 10:46:29','2022-01-30 10:46:29'),(3,4,1,3,'2022-01-30 10:46:48','2022-01-30 10:46:48'),(4,5,1,4,'2022-01-30 10:46:55','2022-01-30 10:46:55');
/*!40000 ALTER TABLE `mega_menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mega_menu_sub_categories`
--

DROP TABLE IF EXISTS `mega_menu_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mega_menu_sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mega_menu_category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mega_menu_sub_categories`
--

LOCK TABLES `mega_menu_sub_categories` WRITE;
/*!40000 ALTER TABLE `mega_menu_sub_categories` DISABLE KEYS */;
INSERT INTO `mega_menu_sub_categories` VALUES (1,1,1,1,1,'2022-01-30 10:47:12','2022-01-30 10:47:12'),(2,3,2,1,1,'2022-01-30 10:47:46','2022-01-30 10:47:46'),(3,3,3,1,2,'2022-01-30 10:47:52','2022-01-30 10:47:52'),(4,3,4,1,3,'2022-01-30 10:47:57','2022-01-30 10:47:57'),(5,4,5,1,1,'2022-01-30 10:48:13','2022-01-30 10:48:13'),(6,1,7,1,2,'2022-02-07 04:03:08','2022-02-07 04:03:08'),(7,1,8,1,3,'2022-02-07 04:03:15','2022-02-07 04:03:15'),(8,1,9,1,4,'2022-02-07 04:03:22','2022-02-07 04:03:22'),(9,4,13,1,2,'2022-02-07 04:04:43','2022-02-07 04:04:43'),(10,4,15,1,3,'2022-02-07 04:04:49','2022-02-07 04:04:49'),(11,4,16,1,4,'2022-02-07 04:04:55','2022-02-07 04:04:55');
/*!40000 ALTER TABLE `mega_menu_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_visibilities`
--

DROP TABLE IF EXISTS `menu_visibilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_visibilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_visibilities`
--

LOCK TABLES `menu_visibilities` WRITE;
/*!40000 ALTER TABLE `menu_visibilities` DISABLE KEYS */;
INSERT INTO `menu_visibilities` VALUES (1,'Home',1,NULL,'2022-01-23 20:05:32'),(2,'Shop',1,NULL,'2022-01-23 20:05:31'),(3,'Mega Menu',1,NULL,'2022-01-16 20:51:23'),(4,'Sellers',1,NULL,'2022-01-16 20:52:31'),(5,'Blog',1,NULL,'2022-01-16 20:52:32'),(6,'Campaign',1,NULL,'2022-01-16 20:52:33'),(7,'Pages',1,NULL,'2022-01-16 20:52:34'),(8,'About us',1,NULL,'2022-01-16 20:57:27'),(9,'Contact Us',1,NULL,'2022-01-16 20:57:28'),(10,'Checkout',1,NULL,'2022-01-16 20:57:29'),(11,'Brand',1,NULL,'2022-01-16 20:57:25'),(12,'FAQ',1,NULL,'2022-01-16 20:57:26'),(13,'Privacy Policy',1,NULL,'2022-01-16 20:57:23'),(14,'Terms and Conditions',1,NULL,'2022-01-16 20:57:22'),(15,'Track Order',1,NULL,'2022-01-16 20:52:29'),(16,'Flash Deal',1,NULL,'2022-01-16 20:52:28'),(17,'My Account',1,NULL,'2022-01-16 20:04:54'),(18,'Login/Register',1,NULL,'2022-01-16 20:04:47'),(19,'Shopping Cart',1,NULL,'2022-01-16 20:09:28'),(20,'Compare',1,NULL,'2022-01-16 20:37:54'),(21,'Wishlist',1,NULL,'2022-01-16 20:37:55'),(22,'Topbar Phone',1,NULL,'2022-01-16 20:02:07'),(23,'Menu Phone',1,NULL,'2022-01-16 20:08:00'),(24,'Categories',1,NULL,'2022-01-16 23:52:39'),(25,'Search',1,NULL,'2022-01-16 20:37:56');
/*!40000 ALTER TABLE `menu_visibilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_read_msg` int NOT NULL DEFAULT '0',
  `seller_read_msg` int NOT NULL,
  `send_customer` int NOT NULL DEFAULT '0',
  `send_seller` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,3,5,'Welcome to Shop name 2!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',1,1,0,5,'2022-02-07 06:04:04','2022-02-07 07:00:41'),(2,3,5,'Hello Paul',1,1,3,0,'2022-02-07 06:04:29','2022-02-07 07:00:41'),(3,3,6,'Welcome to Shop Name Five!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',1,0,0,6,'2022-02-07 06:11:19','2022-02-07 06:24:08'),(4,3,6,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,0,3,0,'2022-02-07 06:11:35','2022-02-07 06:24:08'),(5,1,6,'Welcome to Shop Name Five!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',1,0,0,6,'2022-02-07 06:37:02','2022-05-02 06:15:41'),(6,1,6,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,0,1,0,'2022-02-07 06:37:21','2022-05-02 06:15:41'),(7,1,6,'Lorem Ipsum is simply dummy text of the printing',1,0,1,0,'2022-02-07 06:37:31','2022-05-02 06:15:41'),(8,1,6,'Welcome to Shop Name Five!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',1,0,0,6,'2022-02-07 06:44:29','2022-05-02 06:15:41'),(9,1,5,'Welcome to Shop name 2!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',1,1,0,5,'2022-02-07 06:45:03','2022-05-02 06:24:41'),(10,1,5,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,1,1,0,'2022-02-07 06:45:23','2022-05-02 06:24:41'),(11,1,5,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,1,0,5,'2022-02-07 07:00:35','2022-05-02 06:24:41'),(12,3,5,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',0,0,0,5,'2022-02-07 07:00:45','2022-02-07 07:00:45'),(13,1,5,'Lorem Ipsum is simply dummy text',1,1,1,0,'2022-02-13 09:59:19','2022-05-02 06:24:41'),(14,1,5,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,1,1,0,'2022-02-13 10:00:07','2022-05-02 06:24:41'),(15,1,6,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,0,1,0,'2022-02-13 10:04:05','2022-05-02 06:15:41'),(16,1,6,'Lorem Ipsum is simply dummy text',0,0,1,0,'2022-05-02 06:16:49','2022-05-02 06:16:49'),(17,1,6,'of the printing and typesetting industry',0,0,1,0,'2022-05-02 06:18:40','2022-05-02 06:18:40'),(18,1,5,'Lorem Ipsum is simply dummy text',1,1,1,0,'2022-05-02 06:22:06','2022-05-02 06:24:41'),(19,1,5,'Lorem Ipsum is simply dummy text',1,1,1,0,'2022-05-02 06:23:27','2022-05-02 06:24:41'),(20,1,5,'Lorem Ipsum is simply dummy text',1,0,0,5,'2022-05-02 06:24:18','2022-05-02 06:24:41');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_11_30_035230_create_admins_table',2),(6,'2021_11_30_065435_create_email_configurations_table',3),(7,'2021_11_30_065508_create_email_templates_table',3),(8,'2021_12_01_035206_create_categories_table',4),(9,'2021_12_01_035220_create_sub_categories_table',4),(10,'2021_12_01_035231_create_child_categories_table',4),(11,'2021_12_01_035735_create_brands_table',4),(12,'2021_12_02_055907_create_product_taxes_table',5),(13,'2021_12_02_083742_create_return_policies_table',6),(14,'2021_12_02_084030_create_product_specification_keys_table',6),(15,'2021_12_03_093645_create_products_table',7),(16,'2021_12_03_101949_create_product_galleries_table',7),(17,'2021_12_04_053018_create_product_specifications_table',8),(18,'2021_12_06_045447_create_services_table',9),(19,'2021_12_06_054423_create_about_us_table',10),(20,'2021_12_06_055028_create_custom_pages_table',10),(21,'2021_12_07_030532_create_terms_and_conditions_table',11),(22,'2021_12_07_035810_create_blog_categories_table',12),(23,'2021_12_07_035822_create_blogs_table',12),(24,'2021_12_07_040749_create_popular_posts_table',12),(25,'2021_12_07_061613_create_blog_comments_table',13),(26,'2021_12_07_081832_create_product_variants_table',14),(27,'2021_12_07_081858_create_product_variant_items_table',14),(28,'2021_12_08_125540_create_campaigns_table',15),(29,'2021_12_08_130025_create_campaign_products_table',15),(30,'2021_12_09_095158_create_contact_messages_table',16),(31,'2021_12_09_095220_create_subscribers_table',16),(32,'2021_12_09_124226_create_settings_table',17),(33,'2021_12_11_022207_create_cookie_consents_table',18),(34,'2021_12_11_025358_create_google_recaptchas_table',19),(35,'2021_12_11_025449_create_facebook_comments_table',19),(36,'2021_12_11_025556_create_tawk_chats_table',19),(37,'2021_12_11_025618_create_google_analytics_table',19),(38,'2021_12_11_025712_create_custom_paginations_table',19),(39,'2021_12_11_083503_create_faqs_table',20),(40,'2021_12_11_094707_create_currencies_table',21),(41,'2021_12_13_085612_create_product_reviews_table',22),(42,'2021_12_13_090609_create_product_review_galleries_table',22),(43,'2021_12_13_101056_create_error_pages_table',23),(44,'2021_12_13_102725_create_maintainance_texts_table',24),(45,'2021_12_13_110144_create_subscribe_modals_table',25),(46,'2021_12_13_111140_create_announcement_modals_table',26),(47,'2021_12_13_132626_create_countries_table',27),(48,'2021_12_13_132909_create_country_states_table',27),(49,'2021_12_13_132935_create_cities_table',27),(50,'2021_12_14_032937_create_social_login_information_table',28),(51,'2021_12_14_042928_create_facebook_pixels_table',29),(52,'2021_12_14_054908_create_paypal_payments_table',30),(53,'2021_12_14_054922_create_stripe_payments_table',30),(54,'2021_12_14_054939_create_razorpay_payments_table',30),(55,'2021_12_14_055252_create_bank_payments_table',30),(56,'2021_12_14_084759_create_vendors_table',31),(57,'2021_12_14_090013_create_vendor_social_links_table',31),(58,'2021_12_15_095059_create_wholesells_table',32),(59,'2021_12_16_071213_create_seller_mail_logs_table',33),(60,'2021_12_21_093939_create_mega_menu_categories_table',34),(61,'2021_12_21_093958_create_mega_menu_sub_categories_table',34),(62,'2021_12_22_034106_create_banner_images_table',35),(63,'2021_12_22_044839_create_sliders_table',36),(64,'2021_12_22_081311_create_popular_categories_table',37),(65,'2021_12_23_021844_create_three_column_categories_table',38),(66,'2021_12_23_033230_create_shipping_methods_table',39),(67,'2021_12_23_065722_create_paystack_and_mollies_table',40),(68,'2021_12_23_085225_create_withdraw_methods_table',41),(71,'2021_12_25_172918_create_seller_withdraws_table',42),(74,'2021_12_25_200413_create_product_reports_table',43),(75,'2021_12_25_200707_create_product_report_images_table',44),(79,'2021_12_26_052326_create_billing_addresses_table',45),(80,'2021_12_26_053952_create_shipping_addresses_table',45),(81,'2021_12_26_054841_create_orders_table',45),(82,'2021_12_26_164912_create_order_addresses_table',45),(83,'2021_12_26_165705_create_order_products_table',45),(84,'2021_12_26_170803_create_order_product_variants_table',45),(87,'2021_12_28_163200_create_coupons_table',46),(88,'2021_12_28_192057_create_contact_pages_table',47),(89,'2021_12_28_200846_create_breadcrumb_images_table',48),(90,'2021_12_30_032959_create_flutterwaves_table',49),(91,'2021_12_30_034716_create_footers_table',50),(92,'2021_12_30_035201_create_footer_links_table',50),(93,'2021_12_30_035247_create_footer_social_links_table',50),(95,'2021_12_30_061157_create_home_page_one_visibilities_table',51),(96,'2022_01_11_103950_create_wishlists_table',52),(97,'2022_01_12_070110_create_shop_pages_table',53),(99,'2022_01_12_080218_create_seo_settings_table',54),(100,'2022_01_17_012111_create_menu_visibilities_table',55),(101,'2022_01_17_122016_create_instamojo_payments_table',56),(102,'2022_01_29_055523_create_messages_table',57),(103,'2022_01_29_122621_create_pusher_credentails_table',58);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_addresses`
--

DROP TABLE IF EXISTS `order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `billing_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_addresses`
--

LOCK TABLES `order_addresses` WRITE;
/*!40000 ALTER TABLE `order_addresses` DISABLE KEYS */;
INSERT INTO `order_addresses` VALUES (16,16,'David Warner','user@gmail.com','123-874-6548','San Francisco City Hall, San Francisco, CA','United Stat','California','Los Angeles','4521','David Warner','user@gmail.com','123-874-6548','San Francisco City Hall, San Francisco, CA','United State','California','Los Angeles','4521','2022-02-07 06:09:21','2022-02-07 06:09:21'),(17,17,'David Warner','user@gmail.com','123-874-6548','San Francisco City Hall, San Francisco, CA','United Stat','California','Los Angeles','4521','David Warner','user@gmail.com','123-874-6548','San Francisco City Hall, San Francisco, CA','United State','California','Los Angeles','4521','2022-02-07 06:20:55','2022-02-07 06:20:55'),(18,18,'David Warner','user@gmail.com','123-874-6548','San Francisco City Hall, San Francisco, CA','United Stat','California','Los Angeles','4521','David Warner','user@gmail.com','123-874-6548','San Francisco City Hall, San Francisco, CA','United State','California','Los Angeles','4521','2022-02-07 06:27:19','2022-02-07 06:27:19'),(19,19,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-02-07 06:40:04','2022-02-07 06:40:04'),(20,20,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-02-07 06:47:09','2022-02-07 06:47:09'),(21,21,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-02-07 06:52:30','2022-02-07 06:52:30'),(22,22,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-02-07 06:55:54','2022-02-07 06:55:54'),(23,23,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-02-08 10:34:28','2022-02-08 10:34:28'),(24,24,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-02-16 02:31:04','2022-02-16 02:31:04'),(25,25,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-02-16 02:32:34','2022-02-16 02:32:34'),(26,26,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-02-28 04:15:30','2022-02-28 04:15:30'),(27,27,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','California','Los Angeles','6521','John Doe','user@gmail.com','123-965-8965','Los Angeles, CA, USA','United State','Florida','Florida City','6325','2022-03-30 05:01:01','2022-03-30 05:01:01'),(28,28,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','','','6521','John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United State','','','6521','2022-07-03 14:24:39','2022-07-03 14:24:39'),(29,29,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','','','6521','John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United State','','','6521','2022-07-03 14:27:48','2022-07-03 14:27:48'),(30,30,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','','','6521','John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United State','','','6521','2022-07-03 14:39:35','2022-07-03 14:39:35'),(31,31,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','','','6521','John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United State','','','6521','2022-07-03 14:42:48','2022-07-03 14:42:48'),(32,32,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','','','6521','John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United State','','','6521','2022-08-20 09:51:46','2022-08-20 09:51:46'),(33,33,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','','','6521','John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United State','','','6521','2022-08-20 11:23:45','2022-08-20 11:23:45'),(34,34,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','','','6521','John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United State','','','6521','2022-08-21 02:19:56','2022-08-21 02:19:56'),(35,35,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United Stat','','','6521','John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA','United State','','','6521','2022-08-21 02:25:11','2022-08-21 02:25:11');
/*!40000 ALTER TABLE `order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_variants`
--

DROP TABLE IF EXISTS `order_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_product_id` int NOT NULL,
  `product_id` int NOT NULL,
  `variant_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_variants`
--

LOCK TABLES `order_product_variants` WRITE;
/*!40000 ALTER TABLE `order_product_variants` DISABLE KEYS */;
INSERT INTO `order_product_variants` VALUES (13,43,8,'Color','Blue',5,'2022-02-07 06:09:19','2022-02-07 06:09:19'),(14,43,8,'RAM','4GB',0,'2022-02-07 06:09:20','2022-02-07 06:09:20'),(15,46,11,'Size','Small',0,'2022-02-07 06:09:21','2022-02-07 06:09:21'),(16,54,6,'Color','Blue',3,'2022-02-07 06:27:18','2022-02-07 06:27:18'),(17,54,6,'RAM','8GB',20,'2022-02-07 06:27:18','2022-02-07 06:27:18'),(18,64,11,'Size','Small',0,'2022-02-07 06:47:09','2022-02-07 06:47:09'),(19,65,13,'RAM','2GB',0,'2022-02-07 06:52:29','2022-02-07 06:52:29'),(20,66,2,'Color','Red',3,'2022-02-07 06:52:30','2022-02-07 06:52:30'),(21,74,33,'Color','Black',3,'2022-02-16 02:32:34','2022-02-16 02:32:34'),(22,74,33,'Size','Small',0,'2022-02-16 02:32:34','2022-02-16 02:32:34'),(23,79,33,'Color','Navy Blue',0,'2022-03-30 05:01:01','2022-03-30 05:01:01'),(24,79,33,'Size','Medium',5,'2022-03-30 05:01:01','2022-03-30 05:01:01'),(25,84,33,'Color','Black',3,'2022-07-03 14:27:48','2022-07-03 14:27:48'),(26,84,33,'Size','Small',0,'2022-07-03 14:27:48','2022-07-03 14:27:48'),(27,86,11,'Size','Small',0,'2022-07-03 14:27:48','2022-07-03 14:27:48'),(28,96,9,'Camera','68PX',3,'2022-08-20 11:23:45','2022-08-20 11:23:45'),(29,96,9,'RAM','68GB',1,'2022-08-20 11:23:45','2022-08-20 11:23:45'),(30,96,9,'Memory','64GB',3,'2022-08-20 11:23:45','2022-08-20 11:23:45'),(31,101,9,'Camera','68PX',3,'2022-08-21 02:25:11','2022-08-21 02:25:11'),(32,101,9,'RAM','68GB',1,'2022-08-21 02:25:11','2022-08-21 02:25:11'),(33,101,9,'Memory','64GB',3,'2022-08-21 02:25:11','2022-08-21 02:25:11');
/*!40000 ALTER TABLE `order_product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `vat` double NOT NULL DEFAULT '0',
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (43,16,8,1,'Samsung Galaxy A03s 4GB/64GB',9605,288.15,1,'2022-02-07 06:09:19','2022-02-07 06:09:19'),(44,16,9,1,'Apple iPhone 12 Pro Max',20,1,1,'2022-02-07 06:09:20','2022-02-07 06:09:20'),(45,16,7,1,'Samsung Galaxy A52 (8/128 GB)',3500,0,1,'2022-02-07 06:09:20','2022-02-07 06:09:20'),(46,16,11,2,'Stylish & Fashionable Trendy Cotton Ball Printed Long Sleeve Formal Shirt For Men',850,25.5,1,'2022-02-07 06:09:21','2022-02-07 06:09:21'),(47,16,10,2,'New Fashionable Jeans shirt',500,15,1,'2022-02-07 06:09:21','2022-02-07 06:09:21'),(48,17,24,3,'Fast Flaying High Quality Radio/Remote Controlled Drone Camera',28000,0,1,'2022-02-07 06:20:54','2022-02-07 06:20:54'),(49,17,23,3,'Suzuki NEX Crossover',52000,1560,1,'2022-02-07 06:20:54','2022-02-07 06:20:54'),(50,17,22,3,'Suzuki Intruder M1800R',85000,4250,1,'2022-02-07 06:20:54','2022-02-07 06:20:54'),(51,17,32,0,'Fashion Shoes For Men Casual Shoes Comfortable',300,9,1,'2022-02-07 06:20:55','2022-02-07 06:20:55'),(52,17,30,0,'Baby Water Bottle/Mom pot 200ml_1pcs',80,2.4,1,'2022-02-07 06:20:55','2022-02-07 06:20:55'),(53,18,4,0,'Suzuki Gixxer SF 150',5400,0,1,'2022-02-07 06:27:18','2022-02-07 06:27:18'),(54,18,6,0,'Samsung Galaxy Note 20 Ultra',3223,96.69,1,'2022-02-07 06:27:18','2022-02-07 06:27:18'),(55,18,26,4,'Stylish and Fashionable Ladies Hand Bag',450,0,1,'2022-02-07 06:27:19','2022-02-07 06:27:19'),(56,18,24,3,'Fast Flaying High Quality Radio/Remote Controlled Drone Camera',28000,0,1,'2022-02-07 06:27:19','2022-02-07 06:27:19'),(57,19,7,1,'Samsung Galaxy A52 (8/128 GB)',3500,0,1,'2022-02-07 06:40:03','2022-02-07 06:40:03'),(58,19,9,1,'Apple iPhone 12 Pro Max',20,1,1,'2022-02-07 06:40:03','2022-02-07 06:40:03'),(59,19,23,3,'Suzuki NEX Crossover',52000,1560,1,'2022-02-07 06:40:04','2022-02-07 06:40:04'),(60,19,24,3,'Fast Flaying High Quality Radio/Remote Controlled Drone Camera',28000,0,1,'2022-02-07 06:40:04','2022-02-07 06:40:04'),(61,20,23,3,'Suzuki NEX Crossover',52000,1560,1,'2022-02-07 06:47:08','2022-02-07 06:47:08'),(62,20,22,3,'Suzuki Intruder M1800R',85000,4250,1,'2022-02-07 06:47:09','2022-02-07 06:47:09'),(63,20,10,2,'New Fashionable Jeans shirt',500,15,1,'2022-02-07 06:47:09','2022-02-07 06:47:09'),(64,20,11,2,'Stylish & Fashionable Trendy Cotton Ball Printed Long Sleeve Formal Shirt For Men',850,25.5,1,'2022-02-07 06:47:09','2022-02-07 06:47:09'),(65,21,13,0,'Lenovo 15s-fq2581TU Core i3 11th Gen 15.6\" FHD Laptop',35000,1050,1,'2022-02-07 06:52:29','2022-02-07 06:52:29'),(66,21,2,0,'Canon Eos 4000D 18MP 2.7inch Display With 18-55mm Lens Dslr Camera',2303,0,1,'2022-02-07 06:52:30','2022-02-07 06:52:30'),(67,21,15,0,'Intel NEW Desktop Computer',70000,3500,1,'2022-02-07 06:52:30','2022-02-07 06:52:30'),(68,22,4,0,'Suzuki Gixxer SF 150',5400,0,1,'2022-02-07 06:55:53','2022-02-07 06:55:53'),(69,22,16,0,'A4Tech Wireless Mouse',500,0,1,'2022-02-07 06:55:54','2022-02-07 06:55:54'),(70,23,32,0,'Fashion Shoes For Men Casual Shoes Comfortable',300,9,1,'2022-02-08 10:34:28','2022-02-08 10:34:28'),(71,24,27,0,'Ladies Crossbody Shoulder Bag',500,0,1,'2022-02-16 02:31:04','2022-02-16 02:31:04'),(72,24,25,4,'Bogesi Black High quality Artificial Leather Wallet For Men',450,0,1,'2022-02-16 02:31:04','2022-02-16 02:31:04'),(73,24,24,3,'Fast Flaying High Quality Radio/Remote Controlled Drone Camera',28000,0,1,'2022-02-16 02:31:04','2022-02-16 02:31:04'),(74,25,33,0,'Winter Leather Jacket',203,0,1,'2022-02-16 02:32:34','2022-02-16 02:32:34'),(75,25,32,0,'Fashion Shoes For Men Casual Shoes Comfortable',300,9,1,'2022-02-16 02:32:34','2022-02-16 02:32:34'),(76,26,22,3,'Suzuki Intruder M1800R',29.75,1.4875,1,'2022-02-28 04:15:30','2022-02-28 04:15:30'),(77,27,24,3,'High Quality Drone Camera',28,0,1,'2022-03-30 05:01:01','2022-03-30 05:01:01'),(78,27,16,0,'A4Tech Wireless Mouse',32.5,0,1,'2022-03-30 05:01:01','2022-03-30 05:01:01'),(79,27,33,0,'Winter Leather Jacket',25,0,1,'2022-03-30 05:01:01','2022-03-30 05:01:01'),(80,28,32,0,'Casual  Fashion Shoes For Men',30,0.9,1,'2022-07-03 14:24:39','2022-07-03 14:24:39'),(81,28,17,0,'A4Tech Wireless Mouse And Keyboard',16,0.48,1,'2022-07-03 14:24:39','2022-07-03 14:24:39'),(82,29,32,0,'Casual  Fashion Shoes For Men',30,0.9,1,'2022-07-03 14:27:48','2022-07-03 14:27:48'),(83,29,17,0,'A4Tech Wireless Mouse And Keyboard',16,0.48,1,'2022-07-03 14:27:48','2022-07-03 14:27:48'),(84,29,33,0,'Winter Leather Jacket',23,0,1,'2022-07-03 14:27:48','2022-07-03 14:27:48'),(85,29,14,0,'Asus 240 G7 10th Gen Intel Core i3 1005G1',30,1.5,1,'2022-07-03 14:27:48','2022-07-03 14:27:48'),(86,29,11,2,'Cotton Ball Printed Formal Shirt For Men',85,2.55,1,'2022-07-03 14:27:48','2022-07-03 14:27:48'),(87,30,32,0,'Casual  Fashion Shoes For Men',30,0.9,1,'2022-07-03 14:39:35','2022-07-03 14:39:35'),(88,30,17,0,'A4Tech Wireless Mouse And Keyboard',16,0.48,1,'2022-07-03 14:39:35','2022-07-03 14:39:35'),(89,30,1,0,'Canon Eos 80D DSLR Camera',120,3.6,1,'2022-07-03 14:39:35','2022-07-03 14:39:35'),(90,31,1,0,'Canon Eos 80D DSLR Camera',120,3.6,1,'2022-07-03 14:42:48','2022-07-03 14:42:48'),(91,31,22,3,'Suzuki Intruder M1800R',85,4.25,1,'2022-07-03 14:42:48','2022-07-03 14:42:48'),(92,31,32,0,'Casual  Fashion Shoes For Men',30,0.9,1,'2022-07-03 14:42:48','2022-07-03 14:42:48'),(93,32,22,3,'Suzuki Intruder M1800R',85,4.25,1,'2022-08-20 09:51:46','2022-08-20 09:51:46'),(94,33,22,3,'Suzuki Intruder M1800R',55.25,8.2875,3,'2022-08-20 11:23:40','2022-08-20 11:23:40'),(95,33,32,0,'Casual  Fashion Shoes For Men',19.5,0.585,1,'2022-08-20 11:23:41','2022-08-20 11:23:41'),(96,33,9,1,'Apple iPhone 12 Pro Max',27,1.35,1,'2022-08-20 11:23:44','2022-08-20 11:23:44'),(97,34,22,3,'Suzuki Intruder M1800R',85,4.25,1,'2022-08-21 02:19:55','2022-08-21 02:19:55'),(98,34,1,0,'Canon Eos 80D DSLR Camera',120,3.6,1,'2022-08-21 02:19:56','2022-08-21 02:19:56'),(99,35,22,3,'Suzuki Intruder M1800R',55.25,8.2875,3,'2022-08-21 02:25:11','2022-08-21 02:25:11'),(100,35,32,0,'Casual  Fashion Shoes For Men',19.5,0.585,1,'2022-08-21 02:25:11','2022-08-21 02:25:11'),(101,35,9,1,'Apple iPhone 12 Pro Max',27,1.35,1,'2022-08-21 02:25:11','2022-08-21 02:25:11');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `amount_usd` double NOT NULL DEFAULT '0',
  `sub_total` double NOT NULL,
  `amount_real_currency` double NOT NULL DEFAULT '0',
  `currency_rate` double NOT NULL DEFAULT '0',
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` int NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int NOT NULL DEFAULT '0',
  `payment_approval_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refound_status` int NOT NULL DEFAULT '0',
  `payment_refound_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT '0',
  `coupon_coast` double NOT NULL DEFAULT '0',
  `order_vat` double NOT NULL DEFAULT '0',
  `order_status` int NOT NULL DEFAULT '0',
  `order_approval_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivered_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_completed_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_declined_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_on_delivery` int NOT NULL DEFAULT '0',
  `additional_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `agree_terms_condition` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (16,'514656851',3,174.03,14475,14924.65,85.76,'USD','$',5,'Stripe',1,'2022-02-07',0,NULL,'txn_3KQQPwF56Pb8BOOX11BOIvZA','Outside City',120,0,329.65,3,NULL,NULL,'2022-02-07',NULL,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry . Lorem Ipsum is simply dummy text of the printing and typesetting industry','yes','2022-02-07 06:09:19','2022-02-07 06:58:45'),(17,'522947959',3,1996.28,165380,171201.4,85.76,'USD','$',5,'Paypal',1,'2022-02-07',0,NULL,'PAYID-MIALUOQ08W577556J827394W','Free Shipping',0,0,5821.4,3,NULL,NULL,'2022-02-07',NULL,0,'','yes','2022-02-07 06:20:54','2022-02-07 06:49:15'),(18,'872612251',3,434.11,37073,37229.69,85.76,'USD','$',4,'Cash on Delivery',1,'2022-02-07',0,NULL,NULL,'Inside City',60,0,96.69,3,NULL,NULL,'2022-02-07',NULL,1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry,\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry','yes','2022-02-07 06:27:18','2022-02-07 06:48:26'),(19,'1501848900',1,992.08,83520,85081,85.76,'USD','$',4,'Bank Payment',1,'2022-02-07',0,NULL,'Bank of America California Branch,\r\ntnx_KKFDF87455FSDF','Free Shipping',0,0,1561,2,NULL,'2022-02-07',NULL,NULL,0,'','yes','2022-02-07 06:40:03','2022-02-07 06:48:17'),(20,'316451389',1,1682.84,138350,144320.5,85.76,'USD','$',4,'Bank Payment',1,'2022-02-07',0,NULL,'Wells Fargo Bank,\r\ntnx_DFJFKFFSJK993483','Outside City',120,0,5850.5,3,'2022-02-07',NULL,'2022-02-07',NULL,0,'','yes','2022-02-07 06:47:08','2022-02-07 07:00:08'),(21,'662632756',1,1304.96,107303,111913,85.76,'USD','$',3,'Cash on Delivery',1,'2022-02-07',0,NULL,NULL,'Inside City',60,0,4550,3,NULL,NULL,'2022-02-07',NULL,1,'','yes','2022-02-07 06:52:29','2022-02-07 06:53:33'),(22,'959991748',1,68.8,5900,5900,85.76,'USD','$',2,'Bank Payment',0,NULL,0,NULL,'Citigroup Bank California,\r\ntnx_KDFKF9878KJDF','Free Shipping',0,0,0,3,NULL,NULL,'2022-02-07',NULL,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry \r\nLorem Ipsum is simply dummy\r\ntext of the printing and typesetting industry','yes','2022-02-07 06:55:53','2022-02-07 06:56:28'),(23,'1608699093',1,4.3,300,369,85.76,'USD','$',1,'Stripe',1,NULL,0,NULL,'txn_3KQr26F56Pb8BOOX1LkgnqNb','Inside City',60,0,9,0,NULL,NULL,NULL,NULL,0,'','yes','2022-02-08 10:34:28','2022-02-08 10:34:28'),(24,'450149072',1,337.57,28950,28950,85.76,'USD','$',3,'Cash on Delivery',0,NULL,0,NULL,NULL,'Free Shipping',0,0,0,0,NULL,NULL,NULL,NULL,1,'','yes','2022-02-16 02:31:04','2022-02-16 02:31:04'),(25,'236166979',1,7.37,503,632,85.76,'USD','$',2,'Stripe',1,NULL,0,NULL,'txn_3KTdKEF56Pb8BOOX0foNbmEZ','Outside City',120,0,9,0,NULL,NULL,NULL,NULL,0,'','yes','2022-02-16 02:32:34','2022-02-16 02:32:34'),(26,'844408633',1,1.76,29.75,151.2375,85.76,'USD','$',1,'Mollie',1,NULL,0,NULL,'tr_Q8fQJgFThT','Outside City',120,0,1.4875,0,NULL,NULL,NULL,NULL,0,'','yes','2022-02-28 04:15:30','2022-02-28 04:15:30'),(27,'123305872',1,1.7,85.5,145.5,85.76,'USD','$',3,'Cash on Delivery',0,NULL,0,NULL,NULL,'Inside City',60,0,0,0,NULL,NULL,NULL,NULL,1,'','yes','2022-03-30 05:01:01','2022-03-30 05:01:01'),(28,'344452412',1,1.95,46,167.38,85.76,'USD','$',2,'Paymongo',1,NULL,0,NULL,'pi_ycMbEn9zcGMZigGtqUapWPdc','Outside City',120,0,1.38,0,NULL,NULL,NULL,NULL,0,'','yes','2022-07-03 14:24:39','2022-07-03 14:24:39'),(29,'848453349',1,3.61,184,309.43,85.76,'USD','$',5,'Paymongo',1,NULL,0,NULL,'pi_PZ9E9noajeYBXUXMrxaoK3K6','Outside City',120,0,5.43,0,NULL,NULL,NULL,NULL,0,'','yes','2022-07-03 14:27:48','2022-07-03 14:27:48'),(30,'278084403',1,2.69,166,230.98,85.76,'USD','$',3,'Paymongo',1,NULL,0,NULL,'src_67aUjMWAfB1wVQi8MmzZ1nMf','Inside City',60,0,4.98,0,NULL,NULL,NULL,NULL,0,'','yes','2022-07-03 14:39:35','2022-07-03 14:39:35'),(31,'827898069',1,4.24,235,363.75,85.76,'USD','$',3,'Paymongo',1,NULL,0,NULL,'src_wfQyQeUNaeTotFuz6FyWPDij','Outside City',120,0,8.75,0,NULL,NULL,NULL,NULL,0,'','yes','2022-07-03 14:42:48','2022-07-03 14:42:48'),(32,'716432128',1,2.44,85,209.25,85.76,'USD','$',1,'Paypal',1,NULL,0,NULL,'PAYID-MMAK5EA3PM85813WR787423K','Outside City',120,0,4.25,0,NULL,NULL,NULL,NULL,0,'','yes','2022-08-20 09:51:46','2022-08-20 09:51:46'),(33,'189204355',1,3.99,212.25,342.4725,85.76,'USD','$',0,'Paypal',1,NULL,0,NULL,'PAYID-MMAMHUQ57S076623E5707709','Outside City',120,0,10.2225,0,NULL,NULL,NULL,NULL,0,'','1','2022-08-20 11:23:40','2022-08-20 11:23:40'),(34,'1557100584',1,3.88,205,332.85,85.76,'USD','$',2,'Paypal',1,NULL,0,NULL,'PAYID-MMAZMLI82877623M10073342','Outside City',120,0,7.85,0,NULL,NULL,NULL,NULL,0,'','yes','2022-08-21 02:19:55','2022-08-21 02:19:55'),(35,'590434334',1,3.99,212.25,342.4725,85.76,'USD','$',0,'Paypal',1,NULL,0,NULL,'PAYID-MMAZO5Y7J033011CT6338131','Outside City',120,0,10.2225,0,NULL,NULL,NULL,NULL,0,'','1','2022-08-21 02:25:11','2022-08-21 02:25:11');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymongo_payments`
--

DROP TABLE IF EXISTS `paymongo_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymongo_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymongo_payments`
--

LOCK TABLES `paymongo_payments` WRITE;
/*!40000 ALTER TABLE `paymongo_payments` DISABLE KEYS */;
INSERT INTO `paymongo_payments` VALUES (1,'sk_test_TUwj85sA6XTn7nHzmP23dg36','pk_test_z9xACSbhH2EuxVdFaxuY8Waf',1,55.07,'PH','PHP','62c01dbd46dc01656757693.jpg',NULL,'2022-07-03 10:06:24');
/*!40000 ALTER TABLE `paymongo_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_payments`
--

DROP TABLE IF EXISTS `paypal_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `account_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_payments`
--

LOCK TABLES `paypal_payments` WRITE;
/*!40000 ALTER TABLE `paypal_payments` DISABLE KEYS */;
INSERT INTO `paypal_payments` VALUES (1,1,'sandbox','AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy','EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn','US','USD',1,NULL,'2022-02-07 02:29:44');
/*!40000 ALTER TABLE `paypal_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paystack_and_mollies`
--

DROP TABLE IF EXISTS `paystack_and_mollies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paystack_and_mollies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mollie_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_status` int NOT NULL DEFAULT '0',
  `mollie_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_status` int NOT NULL DEFAULT '0',
  `mollie_country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paystack_and_mollies`
--

LOCK TABLES `paystack_and_mollies` WRITE;
/*!40000 ALTER TABLE `paystack_and_mollies` DISABLE KEYS */;
INSERT INTO `paystack_and_mollies` VALUES (1,'test_bgtkwz4pErUqqTzW8KyRQKR27WgMuE',1,1.27,'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38','sk_test_77cb93329abbdc18104466e694c9f720a7d69c97',417.35,1,'CA','CAD','NG','NGN',NULL,'2022-02-07 02:32:09');
/*!40000 ALTER TABLE `paystack_and_mollies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popular_categories`
--

DROP TABLE IF EXISTS `popular_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popular_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` int NOT NULL DEFAULT '12',
  `category_id_one` int NOT NULL DEFAULT '0',
  `sub_category_id_one` int NOT NULL DEFAULT '0',
  `child_category_id_one` int NOT NULL DEFAULT '0',
  `category_id_two` int NOT NULL DEFAULT '0',
  `sub_category_id_two` int NOT NULL DEFAULT '0',
  `child_category_id_two` int NOT NULL DEFAULT '0',
  `category_id_three` int NOT NULL DEFAULT '0',
  `sub_category_id_three` int NOT NULL DEFAULT '0',
  `child_category_id_three` int NOT NULL DEFAULT '0',
  `category_id_four` int NOT NULL DEFAULT '0',
  `sub_category_id_four` int NOT NULL DEFAULT '0',
  `child_category_id_four` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popular_categories`
--

LOCK TABLES `popular_categories` WRITE;
/*!40000 ALTER TABLE `popular_categories` DISABLE KEYS */;
INSERT INTO `popular_categories` VALUES (1,'Popular Categories',9,1,0,0,5,0,0,6,0,0,2,0,0,NULL,'2022-02-07 08:08:58');
/*!40000 ALTER TABLE `popular_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popular_posts`
--

DROP TABLE IF EXISTS `popular_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popular_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popular_posts`
--

LOCK TABLES `popular_posts` WRITE;
/*!40000 ALTER TABLE `popular_posts` DISABLE KEYS */;
INSERT INTO `popular_posts` VALUES (1,1,1,'2022-01-30 12:45:43','2022-01-30 12:45:59'),(2,2,1,'2022-02-08 08:29:47','2022-02-08 08:29:47'),(3,4,1,'2022-02-08 08:30:27','2022-02-08 08:30:27'),(4,9,1,'2022-02-08 08:30:33','2022-02-08 08:30:33');
/*!40000 ALTER TABLE `popular_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_galleries`
--

DROP TABLE IF EXISTS `product_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_galleries`
--

LOCK TABLES `product_galleries` WRITE;
/*!40000 ALTER TABLE `product_galleries` DISABLE KEYS */;
INSERT INTO `product_galleries` VALUES (15,8,'uploads/custom-images/Gallery-2022-02-02-08-28-08-6057.jpg',1,'2022-02-02 02:28:08','2022-02-02 02:28:08'),(16,8,'uploads/custom-images/Gallery-2022-02-02-08-28-08-6224.jpg',1,'2022-02-02 02:28:11','2022-02-02 02:28:11'),(17,8,'uploads/custom-images/Gallery-2022-02-02-08-28-11-4684.jpg',1,'2022-02-02 02:28:14','2022-02-02 02:28:14'),(18,8,'uploads/custom-images/Gallery-2022-02-02-08-28-14-3893.jpg',1,'2022-02-02 02:28:16','2022-02-02 02:28:16'),(19,8,'uploads/custom-images/Gallery-2022-02-02-08-28-43-5841.jpg',1,'2022-02-02 02:28:45','2022-02-02 02:28:45'),(20,8,'uploads/custom-images/Gallery-2022-02-02-08-28-45-7880.jpg',1,'2022-02-02 02:28:48','2022-02-02 02:28:48'),(23,12,'uploads/custom-images/Gallery-2022-02-06-07-48-53-4887.jpg',1,'2022-02-06 01:48:58','2022-02-06 01:48:58'),(24,12,'uploads/custom-images/Gallery-2022-02-06-07-48-58-8366.jpg',1,'2022-02-06 01:49:00','2022-02-06 01:49:00'),(25,12,'uploads/custom-images/Gallery-2022-02-06-07-49-00-2685.jpg',1,'2022-02-06 01:49:03','2022-02-06 01:49:03'),(26,12,'uploads/custom-images/Gallery-2022-02-06-07-49-03-1716.jpg',1,'2022-02-06 01:49:06','2022-02-06 01:49:06'),(27,13,'uploads/custom-images/Gallery-2022-02-06-08-14-28-2599.jpg',1,'2022-02-06 02:14:32','2022-02-06 02:14:32'),(28,13,'uploads/custom-images/Gallery-2022-02-06-08-14-32-1325.jpg',1,'2022-02-06 02:14:33','2022-02-06 02:14:33'),(29,13,'uploads/custom-images/Gallery-2022-02-06-08-14-33-9849.jpg',1,'2022-02-06 02:14:34','2022-02-06 02:14:34'),(30,13,'uploads/custom-images/Gallery-2022-02-06-08-14-34-9216.jpg',1,'2022-02-06 02:14:36','2022-02-06 02:14:36'),(31,13,'uploads/custom-images/Gallery-2022-02-06-08-14-37-9795.jpg',1,'2022-02-06 02:14:40','2022-02-06 02:14:40'),(32,14,'uploads/custom-images/Gallery-2022-02-06-08-25-00-1509.jpg',1,'2022-02-06 02:25:03','2022-02-06 02:25:03'),(33,14,'uploads/custom-images/Gallery-2022-02-06-08-25-03-3831.jpg',1,'2022-02-06 02:25:04','2022-02-06 02:25:04'),(34,14,'uploads/custom-images/Gallery-2022-02-06-08-25-04-4119.jpg',1,'2022-02-06 02:25:05','2022-02-06 02:25:05'),(35,14,'uploads/custom-images/Gallery-2022-02-06-08-25-05-6280.jpg',1,'2022-02-06 02:25:08','2022-02-06 02:25:08'),(36,14,'uploads/custom-images/Gallery-2022-02-06-08-25-08-8203.jpg',1,'2022-02-06 02:25:11','2022-02-06 02:25:11'),(39,15,'uploads/custom-images/Gallery-2022-02-06-08-35-03-4749.jpg',1,'2022-02-06 02:35:06','2022-02-06 02:35:06'),(40,15,'uploads/custom-images/Gallery-2022-02-06-08-35-06-5351.jpg',1,'2022-02-06 02:35:09','2022-02-06 02:35:09'),(41,16,'uploads/custom-images/Gallery-2022-02-06-08-46-16-7300.jpg',1,'2022-02-06 02:46:18','2022-02-06 02:46:18'),(42,16,'uploads/custom-images/Gallery-2022-02-06-08-46-18-5203.jpg',1,'2022-02-06 02:46:20','2022-02-06 02:46:20'),(43,16,'uploads/custom-images/Gallery-2022-02-06-08-46-20-2923.jpg',1,'2022-02-06 02:46:22','2022-02-06 02:46:22'),(44,16,'uploads/custom-images/Gallery-2022-02-06-08-46-22-8790.jpg',1,'2022-02-06 02:46:23','2022-02-06 02:46:23'),(45,17,'uploads/custom-images/Gallery-2022-02-06-08-51-40-6725.jpg',1,'2022-02-06 02:51:43','2022-02-06 02:51:43'),(46,17,'uploads/custom-images/Gallery-2022-02-06-08-51-43-8372.jpg',1,'2022-02-06 02:51:44','2022-02-06 02:51:44'),(47,17,'uploads/custom-images/Gallery-2022-02-06-08-51-44-1529.jpg',1,'2022-02-06 02:51:47','2022-02-06 02:51:47'),(48,17,'uploads/custom-images/Gallery-2022-02-06-08-51-47-7341.jpg',1,'2022-02-06 02:51:48','2022-02-06 02:51:48'),(49,17,'uploads/custom-images/Gallery-2022-02-06-08-51-48-5115.jpg',1,'2022-02-06 02:51:50','2022-02-06 02:51:50'),(50,18,'uploads/custom-images/Gallery-2022-02-06-08-55-53-4129.jpg',1,'2022-02-06 02:55:54','2022-02-06 02:55:54'),(51,18,'uploads/custom-images/Gallery-2022-02-06-08-55-54-6473.jpg',1,'2022-02-06 02:55:56','2022-02-06 02:55:56'),(52,18,'uploads/custom-images/Gallery-2022-02-06-08-55-56-8137.jpg',1,'2022-02-06 02:55:57','2022-02-06 02:55:57'),(53,18,'uploads/custom-images/Gallery-2022-02-06-08-55-57-8504.jpg',1,'2022-02-06 02:55:59','2022-02-06 02:55:59'),(54,18,'uploads/custom-images/Gallery-2022-02-06-08-55-59-8541.jpg',1,'2022-02-06 02:56:00','2022-02-06 02:56:00'),(55,19,'uploads/custom-images/Gallery-2022-02-06-09-08-16-8166.jpg',1,'2022-02-06 03:08:19','2022-02-06 03:08:19'),(56,19,'uploads/custom-images/Gallery-2022-02-06-09-08-19-7755.jpg',1,'2022-02-06 03:08:20','2022-02-06 03:08:20'),(57,19,'uploads/custom-images/Gallery-2022-02-06-09-08-20-7235.jpg',1,'2022-02-06 03:08:22','2022-02-06 03:08:22'),(58,19,'uploads/custom-images/Gallery-2022-02-06-09-08-22-6061.jpg',1,'2022-02-06 03:08:25','2022-02-06 03:08:25'),(59,19,'uploads/custom-images/Gallery-2022-02-06-09-08-25-5496.jpg',1,'2022-02-06 03:08:27','2022-02-06 03:08:27'),(60,20,'uploads/custom-images/Gallery-2022-02-06-09-14-50-5614.jpg',1,'2022-02-06 03:14:52','2022-02-06 03:14:52'),(61,20,'uploads/custom-images/Gallery-2022-02-06-09-14-52-9663.jpg',1,'2022-02-06 03:14:55','2022-02-06 03:14:55'),(62,20,'uploads/custom-images/Gallery-2022-02-06-09-14-55-1389.jpg',1,'2022-02-06 03:14:59','2022-02-06 03:14:59'),(63,20,'uploads/custom-images/Gallery-2022-02-06-09-14-59-6574.jpg',1,'2022-02-06 03:15:00','2022-02-06 03:15:00'),(64,21,'uploads/custom-images/Gallery-2022-02-06-09-21-27-2363.jpg',1,'2022-02-06 03:21:28','2022-02-06 03:21:28'),(65,21,'uploads/custom-images/Gallery-2022-02-06-09-21-28-9013.jpg',1,'2022-02-06 03:21:31','2022-02-06 03:21:31'),(66,21,'uploads/custom-images/Gallery-2022-02-06-09-21-31-2037.jpg',1,'2022-02-06 03:21:33','2022-02-06 03:21:33'),(67,1,'uploads/custom-images/Gallery-2022-02-06-09-44-29-9761.jpg',1,'2022-02-06 03:44:32','2022-02-06 03:44:32'),(68,1,'uploads/custom-images/Gallery-2022-02-06-09-44-32-6380.jpg',1,'2022-02-06 03:44:34','2022-02-06 03:44:34'),(69,1,'uploads/custom-images/Gallery-2022-02-06-09-44-34-2550.jpg',1,'2022-02-06 03:44:36','2022-02-06 03:44:36'),(70,1,'uploads/custom-images/Gallery-2022-02-06-09-44-36-2238.jpg',1,'2022-02-06 03:44:38','2022-02-06 03:44:38'),(71,2,'uploads/custom-images/Gallery-2022-02-06-09-47-28-9616.jpg',1,'2022-02-06 03:47:30','2022-02-06 03:47:30'),(72,2,'uploads/custom-images/Gallery-2022-02-06-09-47-30-3142.jpg',1,'2022-02-06 03:47:32','2022-02-06 03:47:32'),(73,2,'uploads/custom-images/Gallery-2022-02-06-09-47-32-7098.jpg',1,'2022-02-06 03:47:34','2022-02-06 03:47:34'),(74,2,'uploads/custom-images/Gallery-2022-02-06-09-47-34-8281.jpg',1,'2022-02-06 03:47:36','2022-02-06 03:47:36'),(75,3,'uploads/custom-images/Gallery-2022-02-06-09-50-45-4142.jpg',1,'2022-02-06 03:50:49','2022-02-06 03:50:49'),(77,3,'uploads/custom-images/Gallery-2022-02-06-09-50-52-4764.jpg',1,'2022-02-06 03:50:54','2022-02-06 03:50:54'),(78,3,'uploads/custom-images/Gallery-2022-02-06-09-50-54-7766.jpg',1,'2022-02-06 03:50:57','2022-02-06 03:50:57'),(79,4,'uploads/custom-images/Gallery-2022-02-06-10-04-33-4747.jpg',1,'2022-02-06 04:04:36','2022-02-06 04:04:36'),(80,4,'uploads/custom-images/Gallery-2022-02-06-10-04-36-6142.jpg',1,'2022-02-06 04:04:38','2022-02-06 04:04:38'),(81,4,'uploads/custom-images/Gallery-2022-02-06-10-04-38-6359.jpg',1,'2022-02-06 04:04:41','2022-02-06 04:04:41'),(82,4,'uploads/custom-images/Gallery-2022-02-06-10-04-41-9386.jpg',1,'2022-02-06 04:04:44','2022-02-06 04:04:44'),(83,22,'uploads/custom-images/Gallery-2022-02-06-10-47-22-3979.jpg',1,'2022-02-06 04:47:27','2022-02-06 04:47:27'),(84,22,'uploads/custom-images/Gallery-2022-02-06-10-47-27-7566.jpg',1,'2022-02-06 04:47:30','2022-02-06 04:47:30'),(85,22,'uploads/custom-images/Gallery-2022-02-06-10-47-30-4071.jpg',1,'2022-02-06 04:47:36','2022-02-06 04:47:36'),(86,23,'uploads/custom-images/Gallery-2022-02-06-11-45-12-3807.jpg',1,'2022-02-06 05:45:16','2022-02-06 05:45:16'),(87,23,'uploads/custom-images/Gallery-2022-02-06-11-45-16-2045.jpg',1,'2022-02-06 05:45:19','2022-02-06 05:45:19'),(88,23,'uploads/custom-images/Gallery-2022-02-06-11-45-19-1337.jpg',1,'2022-02-06 05:45:24','2022-02-06 05:45:24'),(89,24,'uploads/custom-images/Gallery-2022-02-06-11-55-59-1077.jpg',1,'2022-02-06 05:56:00','2022-02-06 05:56:00'),(90,24,'uploads/custom-images/Gallery-2022-02-06-11-56-00-9309.jpg',1,'2022-02-06 05:56:01','2022-02-06 05:56:01'),(91,7,'uploads/custom-images/Gallery-2022-02-06-12-13-46-1701.jpg',1,'2022-02-06 06:13:49','2022-02-06 06:13:49'),(92,7,'uploads/custom-images/Gallery-2022-02-06-12-13-49-8277.jpg',1,'2022-02-06 06:13:52','2022-02-06 06:13:52'),(93,7,'uploads/custom-images/Gallery-2022-02-06-12-13-52-8824.jpg',1,'2022-02-06 06:13:54','2022-02-06 06:13:54'),(94,7,'uploads/custom-images/Gallery-2022-02-06-12-13-54-1521.jpg',1,'2022-02-06 06:13:55','2022-02-06 06:13:55'),(95,9,'uploads/custom-images/Gallery-2022-02-06-12-16-31-1207.jpg',1,'2022-02-06 06:16:33','2022-02-06 06:16:33'),(96,9,'uploads/custom-images/Gallery-2022-02-06-12-16-33-8874.jpg',1,'2022-02-06 06:16:35','2022-02-06 06:16:35'),(97,9,'uploads/custom-images/Gallery-2022-02-06-12-16-35-5715.jpg',1,'2022-02-06 06:16:38','2022-02-06 06:16:38'),(98,9,'uploads/custom-images/Gallery-2022-02-06-12-16-38-8098.jpg',1,'2022-02-06 06:16:40','2022-02-06 06:16:40'),(99,9,'uploads/custom-images/Gallery-2022-02-06-12-16-40-4297.jpg',1,'2022-02-06 06:16:42','2022-02-06 06:16:42'),(100,11,'uploads/custom-images/Gallery-2022-02-06-12-39-51-2902.jpg',1,'2022-02-06 06:39:54','2022-02-06 06:39:54'),(101,11,'uploads/custom-images/Gallery-2022-02-06-12-39-54-3889.jpg',1,'2022-02-06 06:39:56','2022-02-06 06:39:56'),(102,11,'uploads/custom-images/Gallery-2022-02-06-12-39-56-1903.jpg',1,'2022-02-06 06:39:59','2022-02-06 06:39:59'),(103,10,'uploads/custom-images/Gallery-2022-02-06-12-49-08-6962.jpg',1,'2022-02-06 06:49:11','2022-02-06 06:49:11'),(104,10,'uploads/custom-images/Gallery-2022-02-06-12-49-11-7827.jpg',1,'2022-02-06 06:49:14','2022-02-06 06:49:14'),(105,25,'uploads/custom-images/Gallery-2022-02-06-01-13-33-3257.jpg',1,'2022-02-06 07:13:36','2022-02-06 07:13:36'),(106,25,'uploads/custom-images/Gallery-2022-02-06-01-13-36-7197.jpg',1,'2022-02-06 07:13:37','2022-02-06 07:13:37'),(107,25,'uploads/custom-images/Gallery-2022-02-06-01-13-37-1397.jpg',1,'2022-02-06 07:13:40','2022-02-06 07:13:40'),(108,26,'uploads/custom-images/Gallery-2022-02-06-01-18-37-4921.jpg',1,'2022-02-06 07:18:39','2022-02-06 07:18:39'),(109,26,'uploads/custom-images/Gallery-2022-02-06-01-18-39-7596.jpg',1,'2022-02-06 07:18:40','2022-02-06 07:18:40'),(110,26,'uploads/custom-images/Gallery-2022-02-06-01-18-40-5773.jpg',1,'2022-02-06 07:18:45','2022-02-06 07:18:45'),(111,26,'uploads/custom-images/Gallery-2022-02-06-01-18-45-2598.jpg',1,'2022-02-06 07:18:47','2022-02-06 07:18:47'),(112,27,'uploads/custom-images/Gallery-2022-02-06-02-11-24-8095.jpg',1,'2022-02-06 08:11:27','2022-02-06 08:11:27'),(113,27,'uploads/custom-images/Gallery-2022-02-06-02-11-27-1118.jpg',1,'2022-02-06 08:11:31','2022-02-06 08:11:31'),(114,27,'uploads/custom-images/Gallery-2022-02-06-02-11-31-8977.jpg',1,'2022-02-06 08:11:34','2022-02-06 08:11:34'),(115,27,'uploads/custom-images/Gallery-2022-02-06-02-11-34-3028.jpg',1,'2022-02-06 08:11:37','2022-02-06 08:11:37'),(116,28,'uploads/custom-images/Gallery-2022-02-06-02-19-12-2358.jpg',1,'2022-02-06 08:19:14','2022-02-06 08:19:14'),(117,28,'uploads/custom-images/Gallery-2022-02-06-02-19-14-4172.jpg',1,'2022-02-06 08:19:16','2022-02-06 08:19:16'),(118,28,'uploads/custom-images/Gallery-2022-02-06-02-19-16-6294.jpg',1,'2022-02-06 08:19:19','2022-02-06 08:19:19'),(119,28,'uploads/custom-images/Gallery-2022-02-06-02-19-19-9318.jpg',1,'2022-02-06 08:19:22','2022-02-06 08:19:22'),(120,29,'uploads/custom-images/Gallery-2022-02-06-02-26-50-8686.jpg',1,'2022-02-06 08:26:53','2022-02-06 08:26:53'),(121,29,'uploads/custom-images/Gallery-2022-02-06-02-26-53-4388.jpg',1,'2022-02-06 08:26:56','2022-02-06 08:26:56'),(122,29,'uploads/custom-images/Gallery-2022-02-06-02-27-09-5545.jpg',1,'2022-02-06 08:27:13','2022-02-06 08:27:13'),(123,30,'uploads/custom-images/Gallery-2022-02-06-02-33-04-2790.jpg',1,'2022-02-06 08:33:08','2022-02-06 08:33:08'),(124,30,'uploads/custom-images/Gallery-2022-02-06-02-33-08-6916.jpg',1,'2022-02-06 08:33:12','2022-02-06 08:33:12'),(125,30,'uploads/custom-images/Gallery-2022-02-06-02-33-12-6279.jpg',1,'2022-02-06 08:33:14','2022-02-06 08:33:14'),(126,31,'uploads/custom-images/Gallery-2022-02-06-02-45-38-6989.jpg',1,'2022-02-06 08:45:41','2022-02-06 08:45:41'),(127,31,'uploads/custom-images/Gallery-2022-02-06-02-45-41-5607.jpg',1,'2022-02-06 08:45:45','2022-02-06 08:45:45'),(128,31,'uploads/custom-images/Gallery-2022-02-06-02-45-45-4638.jpg',1,'2022-02-06 08:45:47','2022-02-06 08:45:47'),(129,32,'uploads/custom-images/Gallery-2022-02-06-02-50-58-7855.jpg',1,'2022-02-06 08:51:01','2022-02-06 08:51:01'),(130,32,'uploads/custom-images/Gallery-2022-02-06-02-51-01-8146.jpg',1,'2022-02-06 08:51:03','2022-02-06 08:51:03'),(131,32,'uploads/custom-images/Gallery-2022-02-06-02-51-03-1715.jpg',1,'2022-02-06 08:51:06','2022-02-06 08:51:06'),(132,15,'uploads/custom-images/Gallery-2022-02-10-08-40-18-3475.jpg',1,'2022-02-10 02:40:20','2022-02-10 02:40:20'),(133,15,'uploads/custom-images/Gallery-2022-02-10-08-41-11-7796.jpg',1,'2022-02-10 02:41:13','2022-02-10 02:41:13'),(134,5,'uploads/custom-images/Gallery-2022-02-10-09-37-56-8233.jpg',1,'2022-02-10 03:37:59','2022-02-10 03:37:59'),(135,5,'uploads/custom-images/Gallery-2022-02-10-09-37-59-8236.jpg',1,'2022-02-10 03:38:02','2022-02-10 03:38:02'),(136,5,'uploads/custom-images/Gallery-2022-02-10-09-38-02-9183.jpg',1,'2022-02-10 03:38:05','2022-02-10 03:38:05'),(137,3,'uploads/custom-images/Gallery-2022-02-10-09-51-53-6026.jpg',1,'2022-02-10 03:51:56','2022-02-10 03:51:56'),(138,33,'uploads/custom-images/Gallery-2022-02-10-09-57-29-8195.jpg',1,'2022-02-10 03:57:32','2022-02-10 03:57:32'),(139,33,'uploads/custom-images/Gallery-2022-02-10-09-57-32-4321.jpg',1,'2022-02-10 03:57:34','2022-02-10 03:57:34'),(140,33,'uploads/custom-images/Gallery-2022-02-10-09-57-34-3897.jpg',1,'2022-02-10 03:57:38','2022-02-10 03:57:38'),(141,6,'uploads/custom-images/Gallery-2022-02-10-12-45-19-8939.jpg',1,'2022-02-10 06:45:21','2022-02-10 06:45:21'),(142,6,'uploads/custom-images/Gallery-2022-02-10-12-45-21-2968.jpg',1,'2022-02-10 06:45:23','2022-02-10 06:45:23'),(144,6,'uploads/custom-images/Gallery-2022-02-10-12-47-38-8119.jpg',1,'2022-02-10 06:47:41','2022-02-10 06:47:41'),(145,6,'uploads/custom-images/Gallery-2022-02-10-12-47-41-2708.jpg',1,'2022-02-10 06:47:45','2022-02-10 06:47:45');
/*!40000 ALTER TABLE `product_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_report_images`
--

DROP TABLE IF EXISTS `product_report_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_report_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_report_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_report_images`
--

LOCK TABLES `product_report_images` WRITE;
/*!40000 ALTER TABLE `product_report_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_report_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reports`
--

DROP TABLE IF EXISTS `product_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reports`
--

LOCK TABLES `product_reports` WRITE;
/*!40000 ALTER TABLE `product_reports` DISABLE KEYS */;
INSERT INTO `product_reports` VALUES (1,3,2,0,'It is a long established fact that a reader will be','It is a long established fact that a reader will beIt is a long established fact that a reader will beIt is a long established fact that a reader will be','2022-01-31 01:59:34','2022-01-31 01:59:34'),(3,3,7,1,'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be','In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be','2022-01-31 07:35:07','2022-01-31 07:35:07'),(4,4,11,2,'Publishing and graphic design, Lorem ipsum is a pl','Publishing and graphic design, Lorem ipsum is a pl','2022-01-31 09:14:05','2022-01-31 09:14:05'),(5,3,7,1,'This is product report title','Lorem Ipsum is simply dummy text of the printing and typesetting industry','2022-02-07 06:30:20','2022-02-07 06:30:20'),(6,1,24,3,'Product Report Subject','Lorem Ipsum is simply dummy text of the printing and typesetting industry','2022-02-07 06:41:01','2022-02-07 06:41:01');
/*!40000 ALTER TABLE `product_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review_galleries`
--

DROP TABLE IF EXISTS `product_review_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_review_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review_galleries`
--

LOCK TABLES `product_review_galleries` WRITE;
/*!40000 ALTER TABLE `product_review_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_review_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `product_vendor_id` int NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` VALUES (1,2,3,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',4,1,'2022-01-31 01:59:46','2022-01-31 02:01:58'),(3,1,3,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',5,1,'2022-01-31 02:02:25','2022-01-31 02:02:37'),(4,1,4,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',3,1,'2022-01-31 02:15:26','2022-01-31 09:18:40'),(5,7,3,1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',4,1,'2022-01-31 07:35:16','2022-01-31 10:07:32'),(6,11,4,2,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',3,1,'2022-01-31 09:14:13','2022-01-31 09:18:39'),(7,24,1,3,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',4,1,'2022-02-07 06:41:15','2022-02-07 08:05:13'),(8,7,1,1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry',5,1,'2022-02-07 06:41:44','2022-02-07 08:05:12');
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_specification_keys`
--

DROP TABLE IF EXISTS `product_specification_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_specification_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specification_keys`
--

LOCK TABLES `product_specification_keys` WRITE;
/*!40000 ALTER TABLE `product_specification_keys` DISABLE KEYS */;
INSERT INTO `product_specification_keys` VALUES (1,'Size',1,'2022-01-30 09:42:48','2022-02-06 04:39:19'),(2,'Color',1,'2022-01-30 09:42:53','2022-01-30 09:42:53'),(3,'Camera',1,'2022-01-30 09:42:59','2022-01-30 09:42:59'),(4,'Memory',1,'2022-01-30 09:43:06','2022-01-30 09:43:06'),(6,'Ram',1,'2022-02-06 01:51:56','2022-02-06 04:39:29'),(7,'Processor Type',1,'2022-02-06 01:52:32','2022-02-06 01:52:32'),(8,'Display Type',1,'2022-02-06 01:52:58','2022-02-06 01:52:58'),(9,'Graphic Card',1,'2022-02-06 01:53:10','2022-02-06 01:53:10'),(10,'Display Size',1,'2022-02-06 01:53:21','2022-02-06 01:53:21'),(11,'SSD',1,'2022-02-06 01:53:34','2022-02-06 01:53:34'),(12,'Graphics Memory',1,'2022-02-06 01:53:52','2022-02-06 01:53:52'),(13,'Generation',1,'2022-02-06 01:54:06','2022-02-06 01:54:06'),(14,'Hard Disk (GB)',1,'2022-02-06 01:54:19','2022-02-06 01:54:19'),(15,'Engine',1,'2022-02-06 03:54:24','2022-02-06 03:54:24'),(16,'Bore x Stroke',1,'2022-02-06 03:54:35','2022-02-06 03:54:35'),(17,'Compression Ratio',1,'2022-02-06 03:54:43','2022-02-06 03:54:43'),(18,'Fuel System',1,'2022-02-06 03:54:51','2022-02-06 03:54:51'),(19,'Starter',1,'2022-02-06 03:55:00','2022-02-06 03:55:00'),(20,'Lubrication',1,'2022-02-06 03:55:09','2022-02-06 03:55:09'),(21,'Warranty',1,'2022-02-06 03:55:28','2022-02-06 03:55:28'),(22,'Length',1,'2022-02-06 04:40:17','2022-02-06 04:40:17'),(23,'Width',1,'2022-02-06 04:40:31','2022-02-06 04:40:31'),(24,'Height',1,'2022-02-06 04:40:39','2022-02-06 04:41:01'),(25,'Wheelbase',1,'2022-02-06 04:41:16','2022-02-06 04:41:16'),(26,'Ground Clearence',1,'2022-02-06 04:41:37','2022-02-06 04:41:37'),(27,'Seat Hight',1,'2022-02-06 04:41:50','2022-02-06 04:41:50'),(28,'Kerb Weight',1,'2022-02-06 04:42:09','2022-02-06 04:42:09');
/*!40000 ALTER TABLE `product_specification_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_specifications`
--

DROP TABLE IF EXISTS `product_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_specifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_specification_key_id` int NOT NULL,
  `specification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specifications`
--

LOCK TABLES `product_specifications` WRITE;
/*!40000 ALTER TABLE `product_specifications` DISABLE KEYS */;
INSERT INTO `product_specifications` VALUES (4,7,2,'Blue, Red, Green','2022-01-31 07:20:56','2022-01-31 07:20:56'),(5,7,4,'64GB','2022-01-31 07:20:56','2022-01-31 07:20:56'),(6,12,2,'Black, Golden, Silver','2022-02-06 01:57:49','2022-02-06 01:57:49'),(7,12,6,'2GB, 4GB, 8GB','2022-02-06 01:57:49','2022-02-06 01:57:49'),(8,12,7,'Intel','2022-02-06 01:57:49','2022-02-06 01:57:49'),(9,12,8,'LED','2022-02-06 01:57:49','2022-02-06 01:57:49'),(10,12,11,'0-128GB','2022-02-06 01:57:49','2022-02-06 01:57:49'),(11,12,12,'1GB','2022-02-06 01:57:49','2022-02-06 01:57:49'),(12,12,13,'10th','2022-02-06 01:57:49','2022-02-06 01:57:49'),(13,12,14,'1000','2022-02-06 01:57:49','2022-02-06 01:57:49'),(14,13,6,'2GB, 4GB, 8GB','2022-02-06 02:13:07','2022-02-06 02:13:07'),(15,13,7,'Intel Core i3','2022-02-06 02:13:07','2022-02-06 02:13:07'),(16,13,8,'IPS','2022-02-06 02:13:07','2022-02-06 02:13:07'),(17,13,9,'Intel UHD Graphics','2022-02-06 02:13:07','2022-02-06 02:13:07'),(18,13,10,'15.6\"','2022-02-06 02:13:07','2022-02-06 02:13:07'),(19,13,11,'257-512GB','2022-02-06 02:13:07','2022-02-06 02:13:07'),(20,13,13,'10th','2022-02-06 02:13:07','2022-02-06 02:13:07'),(21,14,2,'Black, Golden','2022-02-06 02:23:51','2022-02-06 02:23:51'),(22,14,6,'2GB, 4GB, 8GB','2022-02-06 02:23:51','2022-02-06 02:23:51'),(23,14,7,'Intel Core i3,Intel','2022-02-06 02:23:51','2022-02-06 02:23:51'),(24,14,8,'15.6\", 16.2\"','2022-02-06 02:23:51','2022-02-06 02:23:51'),(25,14,9,'Intel','2022-02-06 02:23:51','2022-02-06 02:23:51'),(26,14,14,'1000','2022-02-06 02:23:51','2022-02-06 02:23:51'),(27,14,12,'1GB & Under','2022-02-06 02:23:51','2022-02-06 02:23:51'),(28,14,13,'8th','2022-02-06 02:23:51','2022-02-06 02:23:51'),(29,3,15,'1462cc, 4-stroke, liquid-cooled, SOHC, 54˚, V-twin','2022-02-06 03:57:55','2022-02-06 03:57:55'),(30,3,16,'96.0 mm x 101.0 mm (3.78 in. x 3.98 in.)','2022-02-06 03:57:55','2022-02-06 03:57:55'),(31,3,17,'9.5:1','2022-02-06 03:57:55','2022-02-06 03:57:55'),(32,3,18,'Suzuki fuel injection with SDTV','2022-02-06 03:57:55','2022-02-06 03:57:55'),(33,3,19,'Electric','2022-02-06 03:57:55','2022-02-06 03:57:55'),(34,3,20,'Wet sump','2022-02-06 03:57:55','2022-02-06 03:57:55'),(35,4,20,'Wet sump','2022-02-06 04:03:31','2022-02-06 04:03:31'),(36,4,19,'Electric','2022-02-06 04:03:31','2022-02-06 04:03:31'),(37,4,18,'Suzuki fuel injection with SDTV','2022-02-06 04:03:31','2022-02-06 04:03:31'),(38,4,17,'9.5:1','2022-02-06 04:03:31','2022-02-06 04:03:31'),(39,4,16,'96.0 mm x 101.0 mm (3.78 in. x 3.98 in.)','2022-02-06 04:03:31','2022-02-06 04:03:31'),(40,4,15,'1462cc, 4-stroke, liquid-cooled, SOHC, 54˚, V-twin','2022-02-06 04:03:31','2022-02-06 04:03:31'),(41,22,28,'347mm','2022-02-06 04:44:51','2022-02-06 04:44:51'),(42,22,27,'705mm','2022-02-06 04:44:51','2022-02-06 04:44:51'),(43,22,26,'130mm','2022-02-06 04:44:51','2022-02-06 04:44:51'),(44,22,25,'1710mm','2022-02-06 04:44:51','2022-02-06 04:44:51'),(45,22,24,'1130mm','2022-02-06 04:44:51','2022-02-06 04:44:51'),(46,22,23,'845mm','2022-02-06 04:44:51','2022-02-06 04:44:51'),(47,22,22,'2480mm','2022-02-06 04:44:51','2022-02-06 04:44:51'),(48,8,2,'Blue, Black','2022-02-06 06:12:25','2022-02-06 06:12:25'),(49,8,4,'128GB','2022-02-06 06:12:25','2022-02-06 06:12:25'),(50,8,3,'48px','2022-02-06 06:12:25','2022-02-06 06:12:25'),(51,8,6,'12GB','2022-02-06 06:12:25','2022-02-06 06:12:25'),(52,8,21,'6 Month','2022-02-06 06:12:25','2022-02-06 06:12:25'),(53,11,2,'Blue, Red, Green, White, Navy blue','2022-02-06 06:37:04','2022-02-06 06:37:04'),(54,11,1,'Small, Large, Medium, Extra Large','2022-02-06 06:37:04','2022-02-06 06:37:04');
/*!40000 ALTER TABLE `product_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_taxes`
--

DROP TABLE IF EXISTS `product_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_taxes`
--

LOCK TABLES `product_taxes` WRITE;
/*!40000 ALTER TABLE `product_taxes` DISABLE KEYS */;
INSERT INTO `product_taxes` VALUES (1,'Tax None','0',1,'2022-01-30 09:41:19','2022-02-07 02:27:02'),(2,'Tax One','3',1,'2022-01-30 09:41:37','2022-01-30 09:41:37'),(3,'Tax Two','5',1,'2022-01-30 09:41:46','2022-02-07 02:27:23');
/*!40000 ALTER TABLE `product_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_items`
--

DROP TABLE IF EXISTS `product_variant_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_variant_id` int NOT NULL,
  `product_variant_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `is_default` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_items`
--

LOCK TABLES `product_variant_items` WRITE;
/*!40000 ALTER TABLE `product_variant_items` DISABLE KEYS */;
INSERT INTO `product_variant_items` VALUES (1,1,'Color',6,'Blue',3,1,1,'2022-01-30 10:43:27','2022-01-30 10:43:27'),(2,1,'Color',6,'Red',0,1,0,'2022-01-30 10:43:39','2022-01-30 10:43:39'),(3,2,'RAM',6,'8GB',2,1,1,'2022-01-30 10:43:55','2022-01-30 10:43:55'),(4,2,'RAM',6,'32GB',5,1,0,'2022-01-30 10:44:16','2022-01-30 10:44:16'),(5,3,'Color',8,'Blue',5,1,1,'2022-01-31 07:26:31','2022-01-31 07:26:31'),(6,3,'Color',8,'Red',0,1,0,'2022-01-31 07:26:39','2022-01-31 07:26:39'),(7,3,'Color',8,'Green',3,1,0,'2022-01-31 07:27:02','2022-01-31 07:27:02'),(8,4,'RAM',8,'4GB',0,1,1,'2022-01-31 07:27:15','2022-01-31 07:27:15'),(9,4,'RAM',8,'8GB',5,1,0,'2022-01-31 07:27:24','2022-01-31 07:27:24'),(10,5,'Size',11,'Small',0,1,1,'2022-01-31 09:03:29','2022-02-06 06:44:43'),(11,6,'Color',2,'Red',3,1,1,'2022-02-02 06:24:59','2022-02-02 06:24:59'),(12,7,'RAM',12,'2GB',0,1,1,'2022-02-06 01:59:27','2022-02-06 01:59:27'),(13,7,'RAM',12,'4GB',10,1,0,'2022-02-06 01:59:41','2022-02-06 01:59:41'),(14,7,'RAM',12,'8GB',5,1,0,'2022-02-06 01:59:53','2022-02-06 01:59:53'),(15,8,'COLOR',12,'Black',0,1,1,'2022-02-06 02:00:22','2022-02-06 02:00:22'),(16,8,'COLOR',12,'Golden',3,1,0,'2022-02-06 02:00:33','2022-02-06 02:00:33'),(17,8,'COLOR',12,'Silver',7,1,0,'2022-02-06 02:00:49','2022-02-06 02:00:49'),(18,9,'DISPLAY',12,'15\"',0,1,1,'2022-02-06 02:01:21','2022-02-06 02:01:21'),(19,9,'DISPLAY',12,'16\"',12,1,0,'2022-02-06 02:01:35','2022-02-06 02:01:35'),(20,9,'DISPLAY',12,'18\"',2,1,0,'2022-02-06 02:01:46','2022-02-06 02:01:46'),(21,10,'RAM',13,'2GB',0,1,1,'2022-02-06 02:15:21','2022-02-06 02:15:21'),(22,10,'RAM',13,'4GB',5,1,0,'2022-02-06 02:15:33','2022-02-06 02:15:33'),(23,10,'RAM',13,'8GB',8,1,0,'2022-02-06 02:15:45','2022-02-06 02:15:45'),(25,5,'Size',11,'Medium',10,1,0,'2022-02-06 06:45:06','2022-02-06 06:45:06'),(26,5,'Size',11,'Large',2,1,0,'2022-02-06 06:45:18','2022-02-06 06:45:18'),(27,5,'Size',11,'Extra Large',3,1,0,'2022-02-06 06:45:28','2022-02-06 06:45:28'),(28,11,'Color',33,'Black',3,1,1,'2022-02-10 04:08:08','2022-02-10 04:08:08'),(29,11,'Color',33,'Yellow',5,1,0,'2022-02-10 04:08:42','2022-02-10 04:08:42'),(30,11,'Color',33,'Navy Blue',0,1,0,'2022-02-10 04:09:07','2022-02-10 04:09:07'),(31,12,'Size',33,'Small',0,1,1,'2022-02-10 04:09:25','2022-02-10 04:09:25'),(32,12,'Size',33,'Medium',5,1,0,'2022-02-10 04:09:36','2022-02-10 04:09:36'),(33,12,'Size',33,'Large',7,1,0,'2022-02-10 04:09:45','2022-02-10 04:09:45'),(34,13,'Color',5,'Red',0,1,1,'2022-02-12 06:54:28','2022-02-12 06:54:28'),(35,13,'Color',5,'Blue',2,1,0,'2022-02-12 06:54:35','2022-02-12 06:54:35'),(36,13,'Color',5,'Navy Blue',6,1,0,'2022-02-12 06:54:49','2022-02-12 06:54:49'),(37,14,'Size',5,'Medium',0,1,1,'2022-02-12 06:55:03','2022-02-12 06:55:03'),(38,14,'Size',5,'Small',0,1,0,'2022-02-12 06:55:09','2022-02-12 06:55:09'),(39,14,'Size',5,'Large',7,1,0,'2022-02-12 06:55:18','2022-02-12 06:55:18'),(40,15,'Camera',9,'44PX',0,1,1,'2022-02-12 06:57:37','2022-02-12 06:57:37'),(41,15,'Camera',9,'68PX',3,1,0,'2022-02-12 06:57:47','2022-02-12 06:57:47'),(42,15,'Camera',9,'128PX',2,1,0,'2022-02-12 06:57:58','2022-02-12 06:57:58'),(43,16,'RAM',9,'32GB',3,1,1,'2022-02-12 06:58:14','2022-02-12 06:58:14'),(44,16,'RAM',9,'68GB',1,1,0,'2022-02-12 06:59:09','2022-02-12 06:59:09'),(45,16,'RAM',9,'128GB',2,1,0,'2022-02-12 06:59:20','2022-02-12 06:59:20'),(46,17,'Memory',9,'32GB',3,1,1,'2022-02-12 07:00:19','2022-02-12 07:00:19'),(47,17,'Memory',9,'64GB',3,1,0,'2022-02-12 07:00:30','2022-02-12 07:00:30');
/*!40000 ALTER TABLE `product_variant_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` VALUES (1,6,'Color',1,'2022-01-30 10:43:04','2022-01-30 10:43:04'),(2,6,'RAM',1,'2022-01-30 10:43:11','2022-01-30 10:43:11'),(3,8,'Color',1,'2022-01-31 07:26:01','2022-01-31 07:26:01'),(4,8,'RAM',1,'2022-01-31 07:26:10','2022-01-31 07:26:10'),(5,11,'Size',1,'2022-01-31 09:03:17','2022-01-31 09:03:17'),(6,2,'Color',1,'2022-02-02 06:24:39','2022-02-02 06:24:39'),(7,12,'RAM',1,'2022-02-06 01:58:25','2022-02-06 01:58:25'),(8,12,'COLOR',1,'2022-02-06 01:58:45','2022-02-06 01:58:45'),(9,12,'DISPLAY',1,'2022-02-06 01:59:09','2022-02-06 01:59:09'),(10,13,'RAM',1,'2022-02-06 02:15:05','2022-02-06 02:15:05'),(11,33,'Color',1,'2022-02-10 04:07:49','2022-02-10 04:07:49'),(12,33,'Size',1,'2022-02-10 04:07:55','2022-02-10 04:07:55'),(13,5,'Color',1,'2022-02-12 06:54:15','2022-02-12 06:54:15'),(14,5,'Size',1,'2022-02-12 06:54:19','2022-02-12 06:54:19'),(15,9,'Camera',1,'2022-02-12 06:56:46','2022-02-12 06:56:46'),(16,9,'RAM',1,'2022-02-12 06:56:50','2022-02-12 06:56:50'),(17,9,'Memory',1,'2022-02-12 07:00:08','2022-02-12 07:00:08');
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL DEFAULT '0',
  `child_category_id` int NOT NULL DEFAULT '0',
  `brand_id` int NOT NULL,
  `qty` int NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `tax_id` int NOT NULL,
  `is_cash_delivery` tinyint NOT NULL DEFAULT '0',
  `is_return` tinyint NOT NULL DEFAULT '0',
  `return_policy_id` int DEFAULT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_warranty` tinyint NOT NULL DEFAULT '0',
  `show_homepage` tinyint NOT NULL DEFAULT '0',
  `is_undefine` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_wholesale` int NOT NULL DEFAULT '0',
  `new_product` tinyint NOT NULL DEFAULT '0',
  `is_top` tinyint NOT NULL DEFAULT '0',
  `is_best` tinyint NOT NULL DEFAULT '0',
  `is_flash_deal` tinyint NOT NULL DEFAULT '0',
  `flash_deal_date` date DEFAULT NULL,
  `buyone_getone` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_specification` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Canon Eos 80D DSLR Camera','Canon Eos 80D DSLR Camera','canon-eos-80d-dslr-camera','uploads/custom-images/canon-eos-80d-dslr-camera-with-18-135mm-is-usm-lens-2022-02-10-09-47-27-7491.jpg','uploads/custom-images/product-banner-2022-02-11-03-14-07-6127.jpg',0,1,1,1,1,5,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Canon Eos 80D DSLR Camera','Canon Eos 80D DSLR Camera',120,NULL,NULL,NULL,2,0,1,1,NULL,1,0,0,0,0,1,0,0,0,NULL,0,1,0,'2022-01-30 09:48:24','2022-08-21 02:19:56'),(2,'Canon Eos 4000D 18MP Dslr Camera','Canon Eos 4000D 18MP Dslr Camera','canon-eos-4000d-18mp-dslr-camera','uploads/custom-images/canon-eos-4000d-18mp-27inch-display-with-18-55mm-lens-dslr-camera-2022-02-10-09-48-13-3595.jpg','uploads/custom-images/product-banner-2022-02-11-03-13-52-4191.jpg',0,1,1,1,1,17,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Canon Eos 4000D 18MP Dslr Camera','Canon Eos 4000D 18MP Dslr Camera',50,45,NULL,NULL,1,0,1,1,NULL,1,0,0,0,0,0,1,0,0,NULL,0,1,0,'2022-01-30 09:50:45','2022-02-16 04:01:47'),(3,'Boulevard C90','Boulevard C90','boulevard-c90','uploads/custom-images/boulevard-c90-2022-02-10-09-51-15-1652.jpg','uploads/custom-images/product-banner-2022-02-11-03-13-06-5777.jpg',0,4,2,0,14,116,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.&nbsp;It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>',NULL,NULL,'Boulevard C90','Boulevard C90',148,NULL,NULL,NULL,2,0,0,0,NULL,1,0,0,0,0,0,0,1,0,NULL,0,1,1,'2022-01-30 10:15:25','2022-02-16 04:01:07'),(4,'Suzuki Gixxer SF 150','Suzuki Gixxer SF 150','suzuki-gixxer-sf-150','uploads/custom-images/suzuki-gixxer-sf-150-2022-02-10-12-20-39-9013.jpg','uploads/custom-images/product-banner-2022-02-11-03-12-51-2882.jpg',0,4,4,0,2,49,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=bjn1MLTri34','1254785964','Suzuki Gixxer SF 150','Suzuki Gixxer SF 150',49,45,NULL,NULL,1,0,1,1,NULL,1,0,0,0,0,0,0,0,1,'2022-04-30',0,1,1,'2022-01-30 10:17:52','2022-04-14 09:57:56'),(5,'Preimum Quality Winter Hoodie For Men','Preimum Quality Winter Hoodie For Men','preimum-quality-winter-hoodie-for-men','uploads/custom-images/red-hot-ink-t-shirts-2022-02-02-08-24-22-7441.jpg','uploads/custom-images/product-banner-2022-02-11-03-12-35-3630.jpg',0,5,15,0,4,47,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Preimum Quality Winter Hoodie For Men','Preimum Quality Winter Hoodie For Men',95,70,NULL,NULL,2,0,0,0,NULL,1,0,0,1,0,0,0,0,0,NULL,0,1,0,'2022-01-30 10:20:48','2022-02-16 04:00:48'),(6,'Samsung Galaxy Note 20 Ultra','Samsung Galaxy Note 20 Ultra','samsung-galaxy-note-20-ultra','uploads/custom-images/samsung-galaxy-note-20-ultra-2022-02-02-08-23-39-9640.jpg','uploads/custom-images/product-banner-2022-02-11-03-12-21-4747.jpg',0,2,0,0,1,82,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Samsung Galaxy Note 20 Ultra','Samsung Galaxy Note 20 Ultra',100,90,NULL,NULL,2,0,1,1,NULL,1,0,0,0,0,0,0,0,1,'2022-03-05',0,1,0,'2022-01-30 10:22:53','2022-02-16 04:00:39'),(7,'Samsung Galaxy A52 (8/128 GB)','Samsung Galaxy A52 (8/128 GB)','samsung-galaxy-a52-8128-gb','uploads/custom-images/samsung-galaxy-a52-8128-gb-2022-02-06-12-14-24-9946.jpg','uploads/custom-images/product-banner-2022-02-11-03-15-39-4816.jpg',1,2,0,0,6,13,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Samsung Galaxy A52 (8/128 GB)','Samsung Galaxy A52 (8/128 GB)',300,NULL,NULL,NULL,1,0,0,0,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,1,'2022-01-31 07:20:56','2022-06-11 07:01:16'),(8,'Samsung Galaxy A03s 4GB/64GB','Samsung Galaxy A03s 4GB/64GB','samsung-galaxy-a03s-4gb64gb','uploads/custom-images/samsung-galaxy-a03s-4gb64gb-2022-02-02-08-22-14-7560.jpg','uploads/custom-images/product-banner-2022-02-11-03-15-55-2585.jpg',1,2,11,0,15,59,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;<span style=\"background-color: transparent;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</span><span style=\"background-color: transparent;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span><br></p>',NULL,NULL,'Samsung Galaxy A03s 4GB/64GB','Samsung Galaxy A03s 4GB/64GB',115,NULL,NULL,NULL,2,0,1,1,NULL,1,0,0,0,0,0,0,1,0,NULL,0,1,1,'2022-01-31 07:22:02','2022-02-16 04:02:45'),(9,'Apple iPhone 12 Pro Max','Apple iPhone 12 Pro Max','apple-iphone-12-pro-max','uploads/custom-images/symphony-z20-2022-02-06-12-17-14-1684.jpg','uploads/custom-images/product-banner-2022-02-11-03-16-11-3797.jpg',1,1,1,1,1,212,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Apple iPhone 12 Pro Max','Apple iPhone 12 Pro Max',20,NULL,NULL,NULL,3,0,0,0,NULL,1,0,0,1,0,0,0,0,0,NULL,0,1,0,'2022-01-31 07:24:49','2022-08-21 02:25:11'),(10,'New Fashionable Jeans shirt','New Fashionable Jeans shirt','new-fashionable-jeans-shirt','uploads/custom-images/new-fashionable-jeans-shirt-2022-02-06-12-48-03-6727.jpg','uploads/custom-images/product-banner-2022-02-11-03-16-26-6170.jpg',2,6,6,3,2,13,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=O1aT9Lun048',NULL,'New Fashionable Jeans shirt','New Fashionable Jeans shirt',52,50,NULL,NULL,2,0,1,1,NULL,1,0,0,0,0,0,0,0,1,'2022-05-06',0,1,0,'2022-01-31 08:52:05','2022-02-16 04:03:07'),(11,'Cotton Ball Printed Formal Shirt For Men','Cotton Ball Printed Formal Shirt For Men','cotton-ball-printed-formal-shirt-for-men','uploads/custom-images/stylish-fashionable-trendy-cotton-ball-printed-long-sleeve-formal-shirt-for-men-2022-02-11-03-49-07-7546.jpg','uploads/custom-images/product-banner-2022-02-11-03-49-11-6533.jpg',2,5,13,0,3,55,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=O1aT9Lun048',NULL,'Cotton Ball Printed Formal Shirt For Men','Cotton Ball Printed Formal Shirt For Men',85,NULL,NULL,NULL,2,0,1,1,'[{\"value\":\"male shirt\"},{\"value\":\"casual shirt\"}]',1,0,0,0,0,0,0,0,1,'2022-05-07',0,1,1,'2022-01-31 08:53:35','2022-07-03 14:27:48'),(12,'Hp 240 G7 10Th Gen Intel Core I3 1005G1','Hp 240 G7 10Th Gen Intel Core I3 1005G1','hp-240-g7-10th-gen-intel-core-i3-1005g1','uploads/custom-images/hp-240-g7-10th-gen-intel-core-i3-1005g1-2022-02-06-07-48-00-4284.jpg','uploads/custom-images/product-banner-2022-02-11-03-12-06-2654.jpg',0,1,7,6,7,100,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=AkFi90lZmXA','58754126','Hp 240 G7 10Th Gen Intel Core I3 1005G1','Hp 240 G7 10Th Gen Intel Core I3 1005G1',30,NULL,NULL,NULL,2,0,1,1,'[{\"value\":\"hp laptop\"},{\"value\":\"laptop\"},{\"value\":\"smart laptop\"}]',1,0,0,0,0,1,0,0,0,NULL,0,1,1,'2022-02-06 01:48:05','2022-02-16 04:00:30'),(13,'Lenovo Core i3 11th Gen Laptop','Lenovo Core i3 11th Gen Laptop','lenovo-core-i3-11th-gen-laptop','uploads/custom-images/lenovo-15s-fq2581tu-core-i3-11th-gen-156-fhd-laptop-2022-02-06-08-13-03-8166.jpg','uploads/custom-images/product-banner-2022-02-11-03-11-52-4196.jpg',0,1,7,4,9,199,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=07d2dXHYb94','52147856','Lenovo Core i3 11th Gen Laptop','Lenovo Core i3 11th Gen Laptop',36,33,NULL,NULL,2,0,1,1,'[{\"value\":\"lenovo\"},{\"value\":\"lenovo laptop\"},{\"value\":\"laptop\"}]',1,0,0,0,0,0,1,0,0,NULL,0,1,1,'2022-02-06 02:13:07','2022-02-16 04:00:08'),(14,'Asus 240 G7 10th Gen Intel Core i3 1005G1','Asus 240 G7 10th Gen Intel Core i3 1005G1','asus-240-g7-10th-gen-intel-core-i3-1005g1','uploads/custom-images/asus-240-g7-10th-gen-intel-core-i3-1005g1-2022-02-11-03-45-37-8930.jpg','uploads/custom-images/product-banner-2022-02-11-03-43-47-1524.jpg',0,1,7,5,8,24,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,'85474512','Asus 240 G7 10th Gen Intel Core i3 1005G1','Asus 240 G7 10th Gen Intel Core i3 1005G1',32,30,NULL,NULL,3,0,1,1,'[{\"value\":\"laptop\"},{\"value\":\"asus\"},{\"value\":\"asus laptop\"}]',1,0,0,0,0,0,0,1,0,NULL,0,1,1,'2022-02-06 02:23:51','2022-07-03 14:27:48'),(15,'Intel NEW Desktop Computer','Intel NEW Desktop Computer','intel-new-desktop-computer','uploads/custom-images/intel-core-i3-ram-8gb-hdd-500gb-graphics-2gb-built-in-gaming-pc-win-10-64-bit-brand-new-desktop-computer-2022-2022-02-10-08-38-33-3847.jpg','uploads/custom-images/product-banner-2022-02-11-03-11-17-2795.jpg',0,1,8,0,11,199,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=qm67wbB5GmI','874521','Intel NEW Desktop Computer','Intel NEW Desktop Computer',70,NULL,NULL,NULL,3,0,1,1,'[{\"value\":\"intel pc\"},{\"value\":\"gaming pc\"},{\"value\":\"intel\"},{\"value\":\"desktop\"}]',1,0,0,0,0,0,0,1,0,NULL,0,1,0,'2022-02-06 02:34:01','2022-02-16 03:59:13'),(16,'A4Tech Wireless Mouse','A4Tech Wireless Mouse','a4tech-wireless-mouse','uploads/custom-images/a4tech-red-color-wireless-mouse-2022-02-06-08-44-24-2055.jpg','uploads/custom-images/product-banner-2022-02-11-03-11-00-6698.jpg',0,1,9,7,12,43,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=qm67wbB5GmI','8541255','A4Tech Wireless Mouse','A4Tech Wireless Mouse',50,NULL,NULL,NULL,1,0,0,0,'[{\"value\":\"a4tech\"},{\"value\":\"mouse\"},{\"value\":\"keyboard\"}]',1,0,0,1,0,0,0,0,0,NULL,0,1,0,'2022-02-06 02:44:29','2022-03-30 05:01:01'),(17,'A4Tech Wireless Mouse And Keyboard','A4Tech Wireless Mouse And Keyboard','a4tech-wireless-mouse-and-keyboard','uploads/custom-images/a4tech-wireless-mouse-and-keyboard-2022-02-06-08-49-50-2666.jpg','uploads/custom-images/product-banner-2022-02-11-03-10-45-3899.jpg',0,1,9,7,12,44,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=5Mh3o886qpg','58754126854','A4Tech Wireless Mouse And Keyboard','A4Tech Wireless Mouse And Keyboard',16,NULL,NULL,NULL,2,0,0,0,'[{\"value\":\"mouse and keyboard\"},{\"value\":\"a4tech\"}]',0,0,0,1,0,0,0,0,0,NULL,0,1,0,'2022-02-06 02:49:54','2022-07-03 14:39:35'),(18,'Soft Focus Finger Typing Keyboard','Soft Focus Finger Typing Keyboard','soft-focus-finger-typing-keyboard','uploads/custom-images/close-up-soft-focus-finger-typing-keyboard-2022-02-06-08-54-59-2178.jpg','uploads/custom-images/product-banner-2022-02-11-03-09-59-8305.jpg',0,1,9,7,12,85,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=5Mh3o886qpg',NULL,'Soft Focus Finger Typing Keyboard','Soft Focus Finger Typing Keyboard',80,50,NULL,NULL,2,0,1,1,NULL,1,0,0,1,0,0,0,0,0,NULL,0,1,0,'2022-02-06 02:55:04','2022-02-16 03:58:04'),(19,'F9 Ipx7 2000mah TWS Wireless Earbuds','F9 Ipx7 2000mah TWS Wireless Earbuds','f9-ipx7-2000mah-tws-wireless-earbuds','uploads/custom-images/f9-ipx7-2000mah-tws-wireless-earbuds-bluetooth-50-wireless-earbud-headphone-2022-02-10-09-45-42-3665.jpg','uploads/custom-images/product-banner-2022-02-11-03-09-44-1506.jpg',0,2,10,0,13,220,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=qm67wbB5GmI',NULL,'F9 Ipx7 2000mah TWS Wireless Earbuds Bluetooth 5.0 Wireless Earbud Headphone','F9 Ipx7 2000mah TWS Wireless Earbuds Bluetooth 5.0 Wireless Earbud Headphone',30,NULL,NULL,NULL,3,0,0,0,NULL,1,0,0,1,0,0,0,0,0,NULL,0,1,0,'2022-02-06 03:06:42','2022-02-16 03:57:12'),(20,'Digital Wireless Bluetooth Headphone','Digital Wireless Bluetooth Headphone','digital-wireless-bluetooth-headphone-','uploads/custom-images/digital-wireless-bluetooth-headphone-2022-02-10-10-22-00-2268.jpg','uploads/custom-images/product-banner-2022-02-11-03-09-29-8654.jpg',0,2,10,0,13,45,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Digital Wireless Bluetooth Headphone','Digital Wireless Bluetooth Headphone',85,50,NULL,NULL,1,0,0,0,'[{\"value\":\"headphone\"},{\"value\":\"wireless headphone\"}]',1,0,0,0,0,0,0,0,1,'2022-03-31',0,1,0,'2022-02-06 03:13:20','2022-02-16 03:56:40'),(21,'M11 TWS Earphone With LED Digital Display','M11 TWS Earphone With LED Digital Display','m11-tws-earphone-with-led-digital-display','uploads/custom-images/m11-tws-earphone-with-led-digital-display-touch-50-ipx7-waterproof-bluetooth-headset-2022-02-10-09-44-28-2064.jpg','uploads/custom-images/product-banner-2022-02-11-03-09-13-6189.jpg',0,2,10,0,13,330,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=5Mh3o886qpg',NULL,'M11 TWS Earphone With LED Digital Display Touch 5.0 ipx7 Waterproof Bluetooth Headset','M11 TWS Earphone With LED Digital Display Touch 5.0 ipx7 Waterproof Bluetooth Headset',70,NULL,NULL,NULL,3,0,0,0,NULL,0,0,0,0,0,0,0,1,0,NULL,0,1,0,'2022-02-06 03:20:01','2022-02-16 03:56:28'),(22,'Suzuki Intruder M1800R','Suzuki Intruder M1800R','suzuki-intruder-m1800r','uploads/custom-images/suzuki-intruder-m1800r-2022-02-06-10-38-21-2749.jpg','uploads/custom-images/product-banner-2022-02-11-03-17-08-6009.jpg',3,4,2,0,14,33,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Suzuki Intruder M1800R','Suzuki Intruder M1800R',85,NULL,NULL,NULL,3,0,1,2,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,1,'2022-02-06 04:38:27','2022-08-21 02:25:11'),(23,'Suzuki NEX Crossover','Suzuki NEX Crossover','suzuki-nex-crossover','uploads/custom-images/suzuki-nex-crossover-2022-02-11-03-46-59-5168.jpg','uploads/custom-images/product-banner-2022-02-11-03-47-01-7909.jpg',3,4,2,0,14,38,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=BxuL5-O7YnI','521478564578','Suzuki NEX Crossover','Suzuki NEX Crossover',52,NULL,NULL,NULL,2,0,1,1,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 05:44:08','2022-02-16 04:04:33'),(24,'High Quality Drone Camera','High Quality Drone Camera','high-quality-drone-camera','uploads/custom-images/fast-flaying-high-quality-radioremote-controlled-drone-camera-2022-02-06-11-54-50-3977.jpg','uploads/custom-images/product-banner-2022-02-11-03-17-43-4094.jpg',3,1,1,1,1,845,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','https://www.youtube.com/watch?v=4r_S57G55Yg',NULL,'High Quality Drone Camera','High Quality Drone Camera',32,28,NULL,NULL,1,0,0,0,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 05:54:55','2022-06-11 07:01:17'),(25,'High Quality Artificial Leather Wallet For Men','High Quality Artificial Leather Wallet For Men','high-quality-artificial-leather-wallet-for-men','uploads/custom-images/bogesi-black-high-quality-artificial-leather-wallet-for-men-2022-02-06-01-11-28-4268.jpg','uploads/custom-images/product-banner-2022-02-11-03-18-04-4766.jpg',4,7,0,0,6,84,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'High Quality Artificial Leather Wallet For Men','High Quality Artificial Leather Wallet For Men',75,45,NULL,NULL,1,0,1,1,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 07:11:32','2022-02-16 04:05:49'),(26,'Stylish and Fashionable Ladies Hand Bag','Stylish and Fashionable Ladies Hand Bag','stylish-and-fashionable-ladies-hand-bag','uploads/custom-images/stylish-and-fashionable-ladies-hand-bag-2022-02-06-01-18-09-2998.jpg','uploads/custom-images/product-banner-2022-02-11-03-18-18-9281.jpg',4,7,0,0,3,219,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Stylish and Fashionable Ladies Hand Bag','Stylish and Fashionable Ladies Hand Bag',50,45,NULL,NULL,1,0,1,1,NULL,1,0,0,1,0,0,0,0,0,NULL,0,1,0,'2022-02-06 07:16:11','2022-02-16 04:05:58'),(27,'Ladies Crossbody Shoulder Bag','Ladies Crossbody Shoulder Bag','ladies-crossbody-shoulder-bag','uploads/custom-images/ladies-crossbody-shoulder-bag-2022-02-06-02-13-34-1165.jpg','uploads/custom-images/product-banner-2022-02-11-03-08-51-3733.jpg',0,6,14,0,3,219,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Ladies Crossbody Shoulder Bag','Ladies Crossbody Shoulder Bag',58,NULL,NULL,NULL,1,0,0,0,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 08:08:51','2022-02-16 03:55:48'),(28,'Ladies Crossbody  Leather Shoulder Bag','Ladies Crossbody  Leather Shoulder Bag','ladies-crossbody-leather-shoulder-bag','uploads/custom-images/ladies-crossbody-leather-shoulder-bag-2022-02-06-02-18-34-1189.jpg','uploads/custom-images/product-banner-2022-02-11-03-15-22-6803.jpg',4,6,14,0,3,220,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Ladies Crossbody  Leather Shoulder Bag','Ladies Crossbody  Leather Shoulder Bag',20,NULL,NULL,NULL,2,0,0,0,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 08:18:40','2022-02-16 04:04:15'),(29,'Rainbow Strawberry Pop-IT Toy','Rainbow Strawberry Pop-IT Toy','rainbow-strawberry-popit-toy','uploads/custom-images/rainbow-strawberry-pop-it-toy-2022-02-06-02-25-12-5025.jpg','uploads/custom-images/product-banner-2022-02-11-03-08-36-7654.jpg',0,8,0,0,2,100,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Rainbow Strawberry Pop-IT Toy','Rainbow Strawberry Pop-IT Toy',34,NULL,NULL,NULL,2,0,0,0,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 08:25:19','2022-02-16 03:55:26'),(30,'Baby Water Bottle/Mom','Baby Water Bottle/Mom','baby-water-bottlemom','uploads/custom-images/baby-water-bottlemom-pot-200ml-1pcs-2022-02-06-02-30-43-8698.jpg','uploads/custom-images/product-banner-2022-02-11-03-08-19-4420.jpg',0,8,0,0,6,219,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Baby Water Bottle/Mom','Baby Water Bottle/Mom',80,NULL,NULL,NULL,2,0,1,2,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 08:30:50','2022-02-16 03:55:08'),(31,'Epson LQ310 Dot Matrix Printer-White','Epson LQ310 Dot Matrix Printer-Black','epson-lq310-dot-matrix-printerwhite','uploads/custom-images/epson-lq310-dot-matrix-printer-white-2022-02-06-02-39-38-1087.jpg','uploads/custom-images/product-banner-2022-02-11-03-08-03-4069.jpg',0,9,0,0,1,220,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Epson LQ310 Dot Matrix Printer-White','Epson LQ310 Dot Matrix Printer-White',20,NULL,NULL,NULL,2,0,0,0,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 08:38:19','2022-02-16 03:54:18'),(32,'Casual  Fashion Shoes For Men','Casual  Fashion Shoes For Men','casual-fashion-shoes-for-men','uploads/custom-images/fashion-shoes-for-men-casual-shoes-comfortable-2022-02-06-02-50-15-7154.jpg','uploads/custom-images/product-banner-2022-02-11-03-07-49-6781.jpg',0,5,16,0,4,91,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Casual  Fashion Shoes For Men','Casual  Fashion Shoes For Men',30,NULL,NULL,NULL,2,0,0,0,NULL,1,0,1,0,0,0,0,0,0,NULL,0,1,0,'2022-02-06 08:49:26','2022-08-21 02:25:11'),(33,'Winter Leather Jacket','Winter Leather Jacket','winter-leather-jacket','uploads/custom-images/winter-leather-jacket-2022-02-10-09-57-04-8030.jpg','uploads/custom-images/product-banner-2022-02-11-03-06-43-5770.jpg',0,5,0,0,3,55,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,NULL,'Winter Leather Jacket','Winter Leather Jacket',25,20,NULL,NULL,1,0,1,1,NULL,1,0,0,1,0,0,0,0,0,NULL,0,1,0,'2022-02-10 03:57:08','2022-07-03 14:27:48');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pusher_credentails`
--

DROP TABLE IF EXISTS `pusher_credentails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pusher_credentails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_cluster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pusher_credentails`
--

LOCK TABLES `pusher_credentails` WRITE;
/*!40000 ALTER TABLE `pusher_credentails` DISABLE KEYS */;
INSERT INTO `pusher_credentails` VALUES (1,'1338069','e013174602072a186b1d','46de951521010c14b205','mt1',NULL,'2022-01-29 12:41:05');
/*!40000 ALTER TABLE `pusher_credentails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razorpay_payments`
--

DROP TABLE IF EXISTS `razorpay_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `razorpay_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razorpay_payments`
--

LOCK TABLES `razorpay_payments` WRITE;
/*!40000 ALTER TABLE `razorpay_payments` DISABLE KEYS */;
INSERT INTO `razorpay_payments` VALUES (1,1,'Ecommerce',74.66,'IN','INR','This is description','uploads/website-images/razorpay-2021-12-14-06-35-49-6602.png','#2d15e5','rzp_test_K7CipNQYyyMPiS','zSBmNMorJrirOrnDrbOd1ALO',NULL,'2022-02-07 02:30:31');
/*!40000 ALTER TABLE `razorpay_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_policies`
--

DROP TABLE IF EXISTS `return_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `return_policies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_policies`
--

LOCK TABLES `return_policies` WRITE;
/*!40000 ALTER TABLE `return_policies` DISABLE KEYS */;
INSERT INTO `return_policies` VALUES (1,'Policy one','Lorem Ipsum is simply dummy text of the printing',1,'2022-01-30 09:42:25','2022-02-07 02:28:06'),(2,'Policy two','Lorem Ipsum is simply dummy text of the printing',1,'2022-01-30 09:42:35','2022-02-07 02:28:16');
/*!40000 ALTER TABLE `return_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_mail_logs`
--

DROP TABLE IF EXISTS `seller_mail_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_mail_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_mail_logs`
--

LOCK TABLES `seller_mail_logs` WRITE;
/*!40000 ALTER TABLE `seller_mail_logs` DISABLE KEYS */;
INSERT INTO `seller_mail_logs` VALUES (1,2,'Please Confirm your valid address','<p>Please Confirm your valid address<br></p>','2022-01-31 08:45:07','2022-01-31 08:45:07');
/*!40000 ALTER TABLE `seller_mail_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_withdraws`
--

DROP TABLE IF EXISTS `seller_withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_withdraws` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `approved_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_withdraws`
--

LOCK TABLES `seller_withdraws` WRITE;
/*!40000 ALTER TABLE `seller_withdraws` DISABLE KEYS */;
INSERT INTO `seller_withdraws` VALUES (3,2,'Bank Payment',600,570,5,'Bank of America,\r\nAccount : 54312343135132231',1,'2022-02-07','2022-02-07 07:01:43','2022-02-07 07:02:08'),(4,2,'Bank Payment',800,760,5,'Bank of America,\r\nAccount : 54312343135132231',0,NULL,'2022-02-07 07:07:04','2022-02-07 07:07:04');
/*!40000 ALTER TABLE `seller_withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_settings`
--

DROP TABLE IF EXISTS `seo_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seo_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_settings`
--

LOCK TABLES `seo_settings` WRITE;
/*!40000 ALTER TABLE `seo_settings` DISABLE KEYS */;
INSERT INTO `seo_settings` VALUES (1,'Home Page','Home page - Ecommerce','Home Page',NULL,'2022-01-30 10:50:34'),(2,'About Us','About Us - Ecommerce','About Us',NULL,'2022-02-07 02:39:59'),(3,'Contact Us','Contact Us - Ecommerce','Contact Us',NULL,'2022-01-12 02:21:46'),(4,'Brand Page','Brands - Ecommerce','Our Brand',NULL,'2022-02-07 02:40:09'),(5,'Seller Page','Our Seller - Ecommerce','Seller Page',NULL,'2022-02-07 02:40:16'),(6,'Blog','Blog - Ecommerce','Blog',NULL,'2022-02-07 02:40:23'),(7,'Campaign','Campaign - Ecommerce','Campaign',NULL,'2022-02-07 02:40:29'),(8,'Flash Deal','Flash Deal - Ecommerce','Flash Deal',NULL,'2022-02-07 02:40:43'),(9,'Shop Page','Shop Page - Ecommerce','Shop Page',NULL,'2022-02-07 02:40:50');
/*!40000 ALTER TABLE `seo_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Free Delivery','fas fa-plane','Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,'2022-01-30 10:39:33','2022-02-07 07:19:57'),(2,'Money Back Guarantee','far fa-money-bill-alt','Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,'2022-02-07 07:20:30','2022-02-07 07:20:30'),(3,'24/7 Customer Suppor','fas fa-phone-volume','Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,'2022-02-07 07:21:41','2022-02-07 07:21:41'),(4,'Secure Online Payment','fab fa-speakap','Lorem Ipsum is simply dummy text of the printing and typesetting industry',1,'2022-02-07 07:22:21','2022-02-07 07:22:21');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `maintenance_mode` int NOT NULL DEFAULT '0',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_user_register` int NOT NULL DEFAULT '1',
  `enable_multivendor` int NOT NULL DEFAULT '1',
  `enable_subscription_notify` int NOT NULL DEFAULT '1',
  `enable_save_contact_message` int NOT NULL DEFAULT '1',
  `text_direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_lg_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_sm_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `show_product_qty` int NOT NULL DEFAULT '1',
  `theme_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,1,'uploads/website-images/logo-2024-06-29-01-27-13-9851.jpeg','uploads/website-images/favicon-2024-06-29-01-28-24-8886.jpeg','contact@gmail.com',1,1,1,0,'ltr','Asia/Dhaka','Oshin','TC','125-874-9658','contact@gmail.com','562-745-8659','BDT','৳',85.76,1,'#ff5200','#18587a','<h3>Our Terms and Conditions</h3><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>',NULL,'2024-06-29 07:30:54');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `state_id` int NOT NULL DEFAULT '0',
  `city_id` int NOT NULL DEFAULT '0',
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
INSERT INTO `shipping_addresses` VALUES (1,1,'John Doe','user@gmail.com','123-874-6548','Los Angeles, CA, USA',1,0,0,'6521','2022-01-30 09:57:44','2022-06-14 09:32:29'),(3,3,'David Warner','user@gmail.com','123-874-6548','San Francisco City Hall, San Francisco, CA',1,1,2,'4521','2022-01-31 01:53:32','2022-02-07 05:55:14'),(4,4,'Jose Larry','user@gmail.com','458-854-8745','Florida City, FL, USA',1,2,1,'45870','2022-01-31 02:13:53','2022-02-06 06:02:16'),(5,5,'Daniel Paul','user@gmail.com','123-874-6548','Florida City, FL, USA',1,2,1,'52305','2022-01-31 08:04:10','2022-02-06 06:30:50'),(6,6,'Robert James','seller@gmail.com','458-854-8745','Los Angeles, CA, USA',1,1,2,'9001','2022-02-06 04:29:51','2022-02-06 04:29:51');
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double NOT NULL DEFAULT '0',
  `is_free` int NOT NULL DEFAULT '0',
  `minimum_order` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_methods`
--

LOCK TABLES `shipping_methods` WRITE;
/*!40000 ALTER TABLE `shipping_methods` DISABLE KEYS */;
INSERT INTO `shipping_methods` VALUES (1,'Free Shipping',0,1,1200,1,'$1200 Up Condition','2021-12-22 21:55:58','2022-02-07 06:51:51'),(7,'Outside City',120,0,0,1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry','2022-01-30 09:43:24','2022-02-07 06:52:03'),(8,'Inside City',60,0,0,1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry','2022-01-30 09:43:39','2022-02-07 06:52:10');
/*!40000 ALTER TABLE `shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_pages`
--

DROP TABLE IF EXISTS `shop_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `header_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `filter_price_range` double NOT NULL DEFAULT '10000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_pages`
--

LOCK TABLES `shop_pages` WRITE;
/*!40000 ALTER TABLE `shop_pages` DISABLE KEYS */;
INSERT INTO `shop_pages` VALUES (1,'Up To','70% Off','Women\'s Jeans Collection','Fashion For Women\'s','uploads/website-images/banner-2022-02-06-04-22-39-1426.jpg','product','Discover now',1,200000,NULL,'2022-02-13 13:46:40');
/*!40000 ALTER TABLE `shop_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart_variants`
--

DROP TABLE IF EXISTS `shopping_cart_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shopping_cart_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_variants`
--

LOCK TABLES `shopping_cart_variants` WRITE;
/*!40000 ALTER TABLE `shopping_cart_variants` DISABLE KEYS */;
INSERT INTO `shopping_cart_variants` VALUES (6,7,'Camera','68PX','3','2022-04-27 10:37:40','2022-04-27 10:37:40'),(7,7,'RAM','68GB','1','2022-04-27 10:37:40','2022-04-27 10:37:40'),(8,7,'Memory','64GB','3','2022-04-27 10:37:40','2022-04-27 10:37:40'),(9,8,'Camera','68PX','3','2022-04-28 04:29:22','2022-04-28 04:29:22'),(10,8,'RAM','68GB','1','2022-04-28 04:29:22','2022-04-28 04:29:22'),(11,8,'Memory','64GB','3','2022-04-28 04:29:22','2022-04-28 04:29:22'),(12,9,'Color','Red','0','2022-07-19 06:00:14','2022-07-19 06:00:14'),(13,9,'Size','Medium','0','2022-07-19 06:00:14','2022-07-19 06:00:14');
/*!40000 ALTER TABLE `shopping_cart_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_carts`
--

DROP TABLE IF EXISTS `shopping_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `tax` double NOT NULL,
  `coupon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_price` double NOT NULL,
  `offer_type` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_carts`
--

LOCK TABLES `shopping_carts` WRITE;
/*!40000 ALTER TABLE `shopping_carts` DISABLE KEYS */;
INSERT INTO `shopping_carts` VALUES (5,1,22,'Suzuki Intruder M1800R',3,55.25,2.7625,NULL,0,0,'uploads/custom-images/suzuki-intruder-m1800r-2022-02-06-10-38-21-2749.jpg','suzuki-intruder-m1800r','2022-04-27 10:35:58','2022-04-27 10:35:58'),(6,1,32,'Casual  Fashion Shoes For Men',1,19.5,0.585,NULL,0,0,'uploads/custom-images/fashion-shoes-for-men-casual-shoes-comfortable-2022-02-06-02-50-15-7154.jpg','casual-fashion-shoes-for-men','2022-04-27 10:36:42','2022-04-27 10:36:42'),(8,1,9,'Apple iPhone 12 Pro Max',1,27,1.35,'',0,0,'uploads/custom-images/symphony-z20-2022-02-06-12-17-14-1684.jpg','apple-iphone-12-pro-max','2022-04-28 04:29:22','2022-04-28 04:29:22'),(9,3,5,'Preimum Quality Winter Hoodie For Men',1,70,2.1,'',0,0,'uploads/custom-images/red-hot-ink-t-shirts-2022-02-02-08-24-22-7441.jpg','preimum-quality-winter-hoodie-for-men','2022-07-19 06:00:14','2022-07-19 06:00:14');
/*!40000 ALTER TABLE `shopping_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'Up to 30% Offer','Lorem Ipsum is simply\r\ndummy text of the printing.','uploads/custom-images/slider-2022-02-07-02-42-31-2641.jpg','#',1,2,NULL,'2022-01-30 10:25:59','2022-02-07 11:54:46'),(2,'Up to 45% Offer','Lorem Ipsum is simply\r\ndummy text of the printing.','uploads/custom-images/slider-2022-02-07-08-45-04-8145.jpg','#',1,1,NULL,'2022-02-07 02:45:05','2022-02-07 11:54:14'),(3,'Up to 13% Offer','Lorem Ipsum is simply \r\ndummy text of the printing.','uploads/custom-images/slider-2022-02-07-09-56-43-1918.jpg','#',1,3,NULL,'2022-02-07 02:46:47','2022-02-07 11:55:04'),(4,'Up to 24% Offer','Lorem Ipsum is simply \r\ndummy text of the printing.','uploads/custom-images/slider-2022-02-07-09-55-37-3109.jpg','#',1,4,NULL,'2022-02-07 02:48:51','2022-02-07 11:55:19');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_login_information`
--

DROP TABLE IF EXISTS `social_login_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_login_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_facebook` int NOT NULL DEFAULT '0',
  `facebook_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_gmail` int NOT NULL DEFAULT '0',
  `gmail_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gmail_secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_redirect_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gmail_redirect_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_login_information`
--

LOCK TABLES `social_login_information` WRITE;
/*!40000 ALTER TABLE `social_login_information` DISABLE KEYS */;
INSERT INTO `social_login_information` VALUES (1,1,'1844188565781706','f32f45abcf57a4dc23ac6f2b2e8e2241',1,'810593187924-706in12herrovuq39i2pbn483otijei8.apps.googleusercontent.com','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','http://localhost/web-solution-us/ecommerce_ibrahim/callback/google','http://localhost/web-solution-us/ecommerce_ibrahim/callback/google',NULL,'2022-01-22 19:38:19');
/*!40000 ALTER TABLE `social_login_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_payments`
--

DROP TABLE IF EXISTS `stripe_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `stripe_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_payments`
--

LOCK TABLES `stripe_payments` WRITE;
/*!40000 ALTER TABLE `stripe_payments` DISABLE KEYS */;
INSERT INTO `stripe_payments` VALUES (1,1,'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5','sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV',NULL,'2022-02-07 02:29:54','US','USD',1);
/*!40000 ALTER TABLE `stripe_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,1,'Camera','camera',1,'2022-01-30 09:40:03','2022-01-30 09:40:03'),(2,4,'Suzuki','suzuki',1,'2022-01-30 10:07:45','2022-01-30 10:07:45'),(3,4,'TVS Motor','tvs-motor',1,'2022-01-30 10:07:58','2022-01-30 10:07:58'),(4,4,'Honda','honda',1,'2022-01-30 10:08:16','2022-01-30 10:08:16'),(5,5,'T-shirt','tshirt',1,'2022-01-30 10:08:32','2022-01-30 10:08:32'),(6,6,'Face Wash','face-wash',1,'2022-01-30 10:08:51','2022-01-30 10:08:51'),(7,1,'Computer and Laptop','computer-and-laptop',1,'2022-02-06 01:32:10','2022-02-06 01:32:10'),(8,1,'Gaming Desktop','gaming-desktop',1,'2022-02-06 01:38:21','2022-02-06 01:38:21'),(9,1,'Computer Accessories','computer-accessories',1,'2022-02-06 02:39:46','2022-02-06 02:39:46'),(10,2,'Mobile Phone Accessories','mobile-phone-accessories',1,'2022-02-06 02:59:54','2022-02-06 02:59:54'),(11,2,'Samsung','samsung',1,'2022-02-06 06:05:57','2022-02-06 06:05:57'),(12,2,'I-Phone','iphone',1,'2022-02-06 06:06:13','2022-02-06 06:06:13'),(13,5,'Shirt','shirt',1,'2022-02-06 06:33:51','2022-02-06 06:33:51'),(14,6,'Shoulder Bag','shoulder-bag',1,'2022-02-06 08:10:06','2022-02-06 08:10:06'),(15,5,'Huddy','huddy',1,'2022-02-06 08:42:49','2022-02-06 08:42:49'),(16,5,'Shoes','shoes',1,'2022-02-06 08:47:40','2022-02-06 08:47:40');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `verified_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_verified` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'user@gmail.com',0,NULL,1,'2022-01-31 01:07:56','2022-01-31 01:09:30');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tawk_chats`
--

DROP TABLE IF EXISTS `tawk_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tawk_chats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chat_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tawk_chats`
--

LOCK TABLES `tawk_chats` WRITE;
/*!40000 ALTER TABLE `tawk_chats` DISABLE KEYS */;
INSERT INTO `tawk_chats` VALUES (1,'https://embed.tawk.to/5a7c31ded7591465c7077c48/default',0,NULL,'2022-01-19 05:17:18');
/*!40000 ALTER TABLE `tawk_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_and_conditions`
--

DROP TABLE IF EXISTS `terms_and_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_and_conditions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `terms_and_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `terms_condition_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_and_conditions`
--

LOCK TABLES `terms_and_conditions` WRITE;
/*!40000 ALTER TABLE `terms_and_conditions` DISABLE KEYS */;
INSERT INTO `terms_and_conditions` VALUES (1,'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','uploads/custom-images/terms-condition-2022-02-11-03-39-59-2524.jpg','uploads/custom-images/privacy-policy-2022-02-11-03-40-18-7844.jpg','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>','2022-01-30 12:34:53','2022-02-11 09:40:21');
/*!40000 ALTER TABLE `terms_and_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `three_column_categories`
--

DROP TABLE IF EXISTS `three_column_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `three_column_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id_one` int NOT NULL DEFAULT '0',
  `sub_category_id_one` int NOT NULL DEFAULT '0',
  `child_category_id_one` int NOT NULL DEFAULT '0',
  `category_id_two` int NOT NULL DEFAULT '0',
  `sub_category_id_two` int NOT NULL DEFAULT '0',
  `child_category_id_two` int NOT NULL DEFAULT '0',
  `category_id_three` int NOT NULL DEFAULT '0',
  `sub_category_id_three` int NOT NULL DEFAULT '0',
  `child_category_id_three` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `three_column_categories`
--

LOCK TABLES `three_column_categories` WRITE;
/*!40000 ALTER TABLE `three_column_categories` DISABLE KEYS */;
INSERT INTO `three_column_categories` VALUES (1,1,0,0,2,0,0,5,0,0,NULL,'2022-02-07 03:59:38');
/*!40000 ALTER TABLE `three_column_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT '0',
  `state_id` int DEFAULT '0',
  `city_id` int DEFAULT '0',
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` int NOT NULL DEFAULT '0',
  `verify_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `agree_policy` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','user@gmail.com',NULL,'$2y$10$.QIsrMPt2qFXyaWAGb6g6.UJEgXsPdPaR2UE4PaFHX.u3LYxSf7Ou',NULL,NULL,1,NULL,NULL,NULL,'uploads/custom-images/ibrahim-khalil-2022-01-30-03-30-30-9242.jpg','123-343-4444',1,1,2,'5230','Los Angeles, CA, USA',0,NULL,1,0,'2022-01-30 09:25:50','2022-02-07 06:32:34'),(3,'David Warner','user1@gmail.com',NULL,'$2y$10$Gfl/hq//d3tKnlF7idWi9e..InE0ztwhVlbJXfEjGs4Ji3QHbEWT.',NULL,NULL,1,NULL,NULL,NULL,NULL,'123-343-4444',1,1,2,'5682','Los Angeles, CA, USA',0,NULL,1,1,'2022-01-31 01:49:16','2022-02-07 05:54:32'),(4,'Jose Larry','seller2@gmail.com',NULL,'$2y$10$MHIYFEBScn80Ns1I7BSxC.K7EmQmZ9.xl83KOelimBf4Ak2hN078O',NULL,NULL,1,NULL,NULL,NULL,'uploads/custom-images/jose-larry-2022-02-06-12-21-23-7951.jpg','123-874-6548',1,1,2,'4587','Los Angeles, CA, USA',0,NULL,1,0,'2022-01-31 02:10:32','2022-02-06 06:21:25'),(5,'Daniel Paul','seller@gmail.com',NULL,'$2y$10$D2WVII100XB1RVn.bw2/n.H7FIQgcgg8dwq9WdndEtng4prZDmnQG',NULL,NULL,1,NULL,NULL,NULL,'uploads/custom-images/daniel-paul-2022-02-06-12-28-50-2254.jpg','152-845-8745',1,2,1,'52305','Florida City, FL, USA',0,NULL,1,0,'2022-01-31 07:44:05','2022-05-29 02:19:01'),(6,'Robert James','seller3@gmail.com',NULL,'$2y$10$MyLsI2NsycsoVBcgzjgvhONaFSWIEfEnOdGpDtKQUrPzqiQqdkqmW',NULL,NULL,1,NULL,NULL,NULL,'uploads/custom-images/robert-james-2022-02-06-10-25-42-6928.jpg','455-698-4587',1,1,2,'90001','Los Angeles, CA, USA',0,NULL,1,1,'2022-02-06 04:10:00','2022-02-06 04:26:03'),(7,'Donald Steven','seller1@gmail.com',NULL,'$2y$10$LQDkKLeHJY6dv5ibrcQuwO7q4EQmREoj0mywTetkwQIReL8OIMHkS',NULL,NULL,1,NULL,NULL,NULL,'uploads/custom-images/donald-steven-2022-02-06-01-02-47-1447.jpg','651-789-6541',2,4,8,'54121','Gandhinagar, Gujarat, India',0,NULL,1,1,'2022-02-06 07:00:04','2022-02-06 07:02:50'),(10,'Rizvi','rizvi@gmail.com',NULL,'$2y$10$eMR2WDQ7ScFtKZMJUoJsDuigiA.oehgr0sn9UBxOGYv5CP2RxXSTy',NULL,NULL,0,NULL,NULL,NULL,NULL,'019',0,0,0,NULL,NULL,1,NULL,1,0,'2024-06-30 13:57:39','2024-06-30 13:57:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_social_links`
--

DROP TABLE IF EXISTS `vendor_social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_social_links`
--

LOCK TABLES `vendor_social_links` WRITE;
/*!40000 ALTER TABLE `vendor_social_links` DISABLE KEYS */;
INSERT INTO `vendor_social_links` VALUES (30,2,'fab fa-twitter','https://www.twitter.com/','2022-02-06 06:55:47','2022-02-06 06:55:47'),(31,2,'fab fa-facebook-f','https://www.facebook.com/','2022-02-06 06:55:47','2022-02-06 06:55:47'),(32,2,'fab fa-linkedin','https://www.linkedin.com/','2022-02-06 06:55:47','2022-02-06 06:55:47'),(33,2,'fab fa-instagram','https://www.instagram.com/','2022-02-06 06:55:47','2022-02-06 06:55:47'),(34,4,'fab fa-twitter','https://www.twitter.com/','2022-02-06 07:06:38','2022-02-06 07:06:38'),(35,4,'fab fa-facebook','https://www.facebook.com/','2022-02-06 07:06:38','2022-02-06 07:06:38'),(36,4,'fab fa-linkedin','https://www.linkedin.com/','2022-02-06 07:06:38','2022-02-06 07:06:38'),(37,4,'fab fa-instagram','https://www.instagram.com/','2022-02-06 07:06:38','2022-02-06 07:06:38'),(38,3,'fab fa-facebook','https://www.facebook.com/','2022-02-07 01:51:57','2022-02-07 01:51:57'),(39,3,'fab fa-twitter','https://www.twitter.com/','2022-02-07 01:51:57','2022-02-07 01:51:57'),(40,3,'fab fa-linkedin','https://www.linkedin.com/','2022-02-07 01:51:57','2022-02-07 01:51:57'),(41,1,'fab fa-twitter','https://www.twitter.com/','2022-02-07 01:53:22','2022-02-07 01:53:22'),(42,1,'fab fa-facebook','https://www.facebook.com/','2022-02-07 01:53:23','2022-02-07 01:53:23'),(43,1,'fab fa-linkedin','https://www.linkedin.com/','2022-02-07 01:53:23','2022-02-07 01:53:23'),(44,1,'fab fa-instagram','https://www.instagram.com/','2022-02-07 01:53:23','2022-02-07 01:53:23');
/*!40000 ALTER TABLE `vendor_social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `top_rated` int NOT NULL DEFAULT '0',
  `verified_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `greeting_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,4,0,'uploads/custom-images/seller-banner-2022-02-07-07-53-20-3741.jpg','123-874-6548','user@gmail.com','Shop Name One','shop-name-one','09:00','20:00','San Francisco City Hall, San Francisco, CA','Shop name one','Shop name one',1,0,0,NULL,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','Welcome to Shop name one.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry','2022-01-31 02:20:38','2022-02-07 01:53:22'),(2,5,0,'uploads/custom-images/seller-banner-2022-02-06-12-51-30-3032.jpg','123-343-4444','user3@gmail.com','Shop Name Two','shop-name-two','06:20','20:30','Florida City, FL, USA','Shop name 2','Shop name 2',1,0,0,NULL,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','Welcome to Shop name 2!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-01-31 08:44:13','2022-02-06 06:55:47'),(3,6,0,'uploads/custom-images/seller-banner-2022-02-07-07-51-55-3425.jpg','455-698-4587','seller@gmail.com','Shop Name Three','shop-name-three','10:00','22:00','Los Angeles, CA, USA','Shop Name Five','Shop Name Five',1,0,0,NULL,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','Welcome to Shop Name Five!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-02-06 04:28:58','2022-06-13 02:53:27'),(4,7,0,'uploads/custom-images/seller-banner-2022-02-06-01-04-56-5283.jpg','123-343-4444','seller5@gmail.com','Shop Name Four','shop-name-four','09:00','10:00','Gandhinagar, Gujarat, India','Shop name 5','Shop name 5',1,0,0,NULL,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','Welcome to Shop name 5 ,\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-02-06 07:04:58','2022-02-06 07:07:00'),(6,10,0,NULL,'019','rizvi@gmail.com','Kessie Henry','kessie-henry',NULL,NULL,'chitta',NULL,NULL,1,1,1,NULL,0,NULL,NULL,'2024-06-30 13:57:39','2024-06-30 13:57:39');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (1,1,2,'2022-01-30 09:53:17','2022-01-30 09:53:17'),(3,4,9,'2022-02-02 08:43:09','2022-02-02 08:43:09'),(4,4,8,'2022-02-02 08:43:13','2022-02-02 08:43:13'),(5,3,7,'2022-02-07 06:29:46','2022-02-07 06:29:46'),(6,3,21,'2022-02-07 06:29:53','2022-02-07 06:29:53'),(7,3,6,'2022-02-07 06:29:55','2022-02-07 06:29:55'),(8,3,8,'2022-02-07 06:30:00','2022-02-07 06:30:00'),(9,1,7,'2022-02-07 06:34:52','2022-02-07 06:34:52'),(10,1,9,'2022-02-07 06:34:56','2022-02-07 06:34:56'),(11,1,16,'2022-02-16 03:45:31','2022-02-16 03:45:31');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_methods`
--

DROP TABLE IF EXISTS `withdraw_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT '0',
  `max_amount` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_methods`
--

LOCK TABLES `withdraw_methods` WRITE;
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
INSERT INTO `withdraw_methods` VALUES (1,'Bank Payment',500,2000,5,'<p>Please provide your Bank Account information :&nbsp;</p><p>Bank Name: Your bank name</p><p><span style=\"background-color: transparent;\">Account Number:&nbsp; Your bank account number</span></p><p>Routing Number: Your bank routing number</p><p>Branch: Your bank branch name</p>',1,'2022-01-31 09:30:55','2022-02-07 02:38:25');
/*!40000 ALTER TABLE `withdraw_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-30 20:12:50
