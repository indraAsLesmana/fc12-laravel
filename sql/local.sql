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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hoyt Towne','keyshawn71@example.net','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'OXn36JIUye','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (2,'Delphine Hudson PhD','bins.dayna@example.net','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'oflzdHhAsN','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (3,'Dr. Abigale Bednar Jr.','sruecker@example.net','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'8kTqEyoGbw','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (4,'Dr. Connor Bahringer','violette50@example.net','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'rS6CTVSDTu','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (5,'Stephania Cassin','kdare@example.net','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'K9nl9HLNfj','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (6,'Dr. Johanna Keebler I','rico.bashirian@example.com','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'fyGHEdaEil','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (7,'Jonathan Turcotte','kromaguera@example.com','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'VSPLvQANtT','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (8,'Lonny Kub','dayana.abshire@example.net','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'EU5mSsoPGP','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (9,'Annabel Hauck DVM','geraldine54@example.net','2024-01-11 04:40:40','$2y$10$wSxDSO.1a6TvGw/qJ4RKtO3uanJCzoJZL2Gq6OMDi0nxbmQqGcah.',NULL,NULL,NULL,'yojEBOPRj6','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (10,'Admin Indra','indra953@gmail.com','2024-01-11 04:40:40','$2y$10$J5T/JkX9yj9wsFqKHgrc7eefA.ne9am8S5vR5jw/.D52AtaW8E0Q6',NULL,NULL,NULL,'qTlnXM8xPVUgyN3EUb75rdqmC8e2vfAnsA2ALcyAWvYhCqgHDO8eq9xgMYkk','2024-01-11 04:40:40','2024-01-11 04:40:40');
INSERT INTO `users` VALUES (11,'test_register','test@register.com',NULL,'$2y$10$/mRbq9K2q/0BWFUW8pTI1.6NljCilZaIG1c3qxylp4UmokMlF4l8e',NULL,NULL,NULL,NULL,'2024-01-11 05:08:40','2024-01-11 05:08:40');
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

-- Dump completed on 2024-01-11 19:58:17
