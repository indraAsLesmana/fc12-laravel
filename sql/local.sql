-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Leafy','Leafy green vegetables such as kale, spinach, Swiss chard, and bok choy are high in vitamins, minerals, and fiber','https://gabbarfarms.com/cdn/shop/files/Leafy_715b1942-db65-4782-ae72-a8ed1b8a2a24.png?v=1627624891','2024-01-20 18:40:15','2024-01-20 18:40:15');
INSERT INTO `categories` VALUES (2,'vine crops','Vining vegetables like cucumbers, pole beans, and tomatoes can produce huge yields. Learn how to support the vines and grow bumper crops.','https://gabbarfarms.com/cdn/shop/files/Vine_Crops.png?v=1627624890','2024-01-20 18:40:15','2024-01-20 18:40:15');
INSERT INTO `categories` VALUES (3,'Fruits','Fruit is higher in sugar and calories than vegetables, but both fruits and vegetables are rich in fiber, vitamins, minerals and antioxidants.','https://gabbarfarms.com/cdn/shop/files/Fruits_0b58dd52-b9fe-4767-a664-680471f515d1.png?v=1627624890','2024-01-20 18:40:15','2024-01-20 18:40:15');
INSERT INTO `categories` VALUES (4,'Herbs','Culinary herbs are distinguished from vegetables in that, like spices, they are used in small amounts and provide flavor rather than substance to food.','https://gabbarfarms.com/cdn/shop/files/Herbs_c9b062aa-487a-447d-862e-166f80cfdb6b.png?v=1627624890','2024-01-20 18:40:15','2024-01-20 18:40:15');
INSERT INTO `categories` VALUES (5,'Microgreen','Microgreens are young vegetable greens that are approximately 1–3 inches (2.5–7.5 cm) tall. They have an aromatic flavor and concentrated nutrient content and come in a variety of colors and textures (1).','https://gabbarfarms.com/cdn/shop/files/Microgreens_6b5068f0-fac7-4ae1-a9e9-963a542518bb.png?v=1627624890','2024-01-20 18:40:15','2024-01-20 18:40:15');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1);
INSERT INTO `migrations` VALUES (2,'2014_10_12_100000_create_password_resets_table',1);
INSERT INTO `migrations` VALUES (3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1);
INSERT INTO `migrations` VALUES (4,'2019_08_19_000000_create_failed_jobs_table',1);
INSERT INTO `migrations` VALUES (5,'2019_12_14_000001_create_personal_access_tokens_table',1);
INSERT INTO `migrations` VALUES (6,'2024_01_11_211621_add_roles_and_phone',1);
INSERT INTO `migrations` VALUES (7,'2024_01_12_014560_create_categories_table',1);
INSERT INTO `migrations` VALUES (8,'2024_01_12_014561_create_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` json DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_foreign` (`category`),
  CONSTRAINT `products_category_foreign` FOREIGN KEY (`category`) REFERENCES `categories` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Antonia Lesch','vkovacek@example.net','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'2kDNJ61sfO','2024-01-20 18:40:15','2024-01-20 18:40:15','+1-310-627-3068','ADMIN');
INSERT INTO `users` VALUES (2,'Jimmy Ernser','vkub@example.com','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'lumEcSddc6','2024-01-20 18:40:15','2024-01-20 18:40:15','+1-509-928-8429','USER');
INSERT INTO `users` VALUES (3,'Kyler Doyle','rusty94@example.net','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'C1Uckg1jhb','2024-01-20 18:40:15','2024-01-20 18:40:15','281-347-8004','STAFF');
INSERT INTO `users` VALUES (4,'Dr. Priscilla Abernathy','shana23@example.com','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'RbO52USG6N','2024-01-20 18:40:15','2024-01-20 18:40:15','1-754-747-7101','STAFF');
INSERT INTO `users` VALUES (5,'Dr. Kenna Bruen PhD','vernon.hintz@example.org','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'i3v0si1DTl','2024-01-20 18:40:15','2024-01-20 18:40:15','+1-276-975-2946','USER');
INSERT INTO `users` VALUES (6,'Ova Osinski','bode.maegan@example.org','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'QkdsmvLhnU','2024-01-20 18:40:15','2024-01-20 18:40:15','(248) 254-4631','USER');
INSERT INTO `users` VALUES (7,'Ransom Hickle','jonathon71@example.org','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'FuSS90iDYS','2024-01-20 18:40:15','2024-01-20 18:40:15','+1.209.561.6918','STAFF');
INSERT INTO `users` VALUES (8,'Scottie Stoltenberg DDS','marcelle.wisoky@example.org','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'dKTTDweEE6','2024-01-20 18:40:15','2024-01-20 18:40:15','386-876-8316','STAFF');
INSERT INTO `users` VALUES (9,'Briana Medhurst','thickle@example.net','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'O4fdPt0aYJ','2024-01-20 18:40:15','2024-01-20 18:40:15','(501) 758-3164','STAFF');
INSERT INTO `users` VALUES (10,'Newell Rowe','jacobson.virgil@example.com','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'nrFwGyMj6m','2024-01-20 18:40:15','2024-01-20 18:40:15','(364) 717-3547','ADMIN');
INSERT INTO `users` VALUES (11,'Terrance Donnelly','borer.burdette@example.org','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'jdDdNarybP','2024-01-20 18:40:15','2024-01-20 18:40:15','458.842.1515','ADMIN');
INSERT INTO `users` VALUES (12,'Emmanuel Veum','elody24@example.net','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'jJwRRm8z8L','2024-01-20 18:40:15','2024-01-20 18:40:15','1-281-226-4556','ADMIN');
INSERT INTO `users` VALUES (13,'Emanuel Wolff Jr.','sean.gaylord@example.org','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'2dQzmIok6N','2024-01-20 18:40:15','2024-01-20 18:40:15','817.824.8194','STAFF');
INSERT INTO `users` VALUES (14,'Dr. Camilla Will IV','hermann.albertha@example.net','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'OiybTFCM5P','2024-01-20 18:40:15','2024-01-20 18:40:15','(207) 470-4845','USER');
INSERT INTO `users` VALUES (15,'Dr. Marisa Feeney I','beahan.juliet@example.net','2024-01-20 18:40:15','$2y$10$FL.1IV57BB4mI/Ex/qtfNeCGetHsoDsMFfqzyw9jeivVgDopJAGYq',NULL,NULL,NULL,'KG2sqFKnUM','2024-01-20 18:40:15','2024-01-20 18:40:15','(612) 231-1997','USER');
INSERT INTO `users` VALUES (16,'Admin indra','indra953@gmail.com','2024-01-20 18:40:15','$2y$10$wBJrrJVuyLx/c7Tqz734ouGSsavw2up7cN8XLqblOSUkaxUUEdo0G',NULL,NULL,NULL,'S8SoDmq6i5','2024-01-20 18:40:15','2024-01-20 18:40:15','08123456789','ADMIN');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-21  8:44:21
