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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'SlateBlue','Non qui sed debitis consequatur. At unde cum sit. Placeat sed repudiandae quae dolor itaque.','https://via.placeholder.com/640x480.png/00dd88?text=cum','2024-01-12 03:15:11','2024-01-12 03:15:11');
INSERT INTO `categories` VALUES (2,'Peru','Repudiandae dignissimos quam et qui. Aut aut dignissimos debitis id. Aperiam et delectus placeat ab qui. Praesentium minima tempore qui architecto odit. Vel magni non laudantium aliquid.','https://via.placeholder.com/640x480.png/0099ff?text=qui','2024-01-12 03:15:11','2024-01-12 03:15:11');
INSERT INTO `categories` VALUES (3,'LightGreen','Vel hic consectetur numquam ullam fuga commodi. Aliquid fuga veniam aut nostrum voluptatibus quo quasi. Quia vel voluptatem a.','https://via.placeholder.com/640x480.png/00bbbb?text=qui','2024-01-12 03:15:11','2024-01-12 03:15:11');
INSERT INTO `categories` VALUES (4,'SlateBlue','Debitis est laboriosam reiciendis est nobis. Sunt omnis laudantium illo. Recusandae sint consequatur ullam vitae culpa.','https://via.placeholder.com/640x480.png/0066dd?text=nam','2024-01-12 03:15:11','2024-01-12 03:15:11');
INSERT INTO `categories` VALUES (5,'Orchid','Placeat aperiam explicabo sunt consequatur. Culpa ipsum numquam voluptatem. Expedita inventore similique architecto reprehenderit. Consequuntur repellendus recusandae sint optio earum.','https://via.placeholder.com/640x480.png/00aaaa?text=illo','2024-01-12 03:15:11','2024-01-12 03:15:11');
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
INSERT INTO `migrations` VALUES (7,'2024_01_12_013702_create_products_table',1);
INSERT INTO `migrations` VALUES (8,'2024_01_12_014538_create_categories_table',1);
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
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` json DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2024-01-12 03:15:11','2024-01-12 03:15:11','http://turner.com/autem-ipsum-voluptatem-et-id-expedita','aliquam','858','maxime','Porro reprehenderit aut harum ratione. Qui omnis ratione ea aut. Voluptatem eveniet asperiores aut voluptas. Aut quisquam omnis et consequuntur.','\"https://via.placeholder.com/640x480.png/0055bb?text=iusto\"','Jones, Schmidt and Howell');
INSERT INTO `products` VALUES (2,'2024-01-12 03:15:11','2024-01-12 03:15:11','https://sporer.com/dolorem-asperiores-repellendus-fuga-sit-tempora-explicabo.html','ipsum','166','placeat','Aut quam necessitatibus rerum. Est eos nihil quia nostrum. Quia id fuga nam.','\"https://via.placeholder.com/640x480.png/0022aa?text=debitis\"','Gulgowski LLC');
INSERT INTO `products` VALUES (3,'2024-01-12 03:15:11','2024-01-12 03:15:11','http://www.smith.info/vitae-soluta-sunt-dolores-eos-molestiae','omnis','123','odit','Neque inventore nesciunt soluta debitis accusantium. Nesciunt vero dolores tempora dicta rerum corporis aut modi. Et neque omnis dolor molestiae sit dolorem laboriosam.','\"https://via.placeholder.com/640x480.png/001133?text=temporibus\"','Schulist, Larkin and McGlynn');
INSERT INTO `products` VALUES (4,'2024-01-12 03:15:11','2024-01-12 03:15:11','http://satterfield.com/et-perferendis-laborum-expedita-impedit-non-nihil-fugiat.html','officia','861','odit','Quia harum ut qui saepe eos. Soluta facere recusandae cum itaque. Magnam quasi aut quod deleniti odit dolores dolorem quas.','\"https://via.placeholder.com/640x480.png/0011aa?text=aut\"','Waelchi Group');
INSERT INTO `products` VALUES (5,'2024-01-12 03:15:11','2024-01-12 03:15:11','https://www.murphy.com/modi-est-quis-quisquam','sunt','667','esse','Perspiciatis expedita fugit soluta et. Nemo ad aliquid doloremque doloribus asperiores sunt dolores. Rem at similique et.','\"https://via.placeholder.com/640x480.png/00dd88?text=quo\"','Rowe, Koch and Sanford');
INSERT INTO `products` VALUES (6,'2024-01-12 03:15:11','2024-01-12 03:15:11','http://haley.com/nisi-ipsa-perferendis-tempore-ut-libero-fugiat-eaque','qui','136','sint','Et ipsum quia magni tenetur. Rerum iure voluptas quas aut voluptates recusandae eligendi. Odio quia quis nemo magni voluptatibus in facere.','\"https://via.placeholder.com/640x480.png/006699?text=sunt\"','Glover, Emard and Torp');
INSERT INTO `products` VALUES (7,'2024-01-12 03:15:11','2024-01-12 03:15:11','http://www.schinner.net/ut-porro-vero-occaecati','non','827','distinctio','Animi alias dignissimos sit maiores amet accusamus porro non. Sequi explicabo beatae dicta quaerat sunt quibusdam. Rem exercitationem ipsum sunt voluptatem a nobis. Error aut delectus facilis.','\"https://via.placeholder.com/640x480.png/00ff11?text=perspiciatis\"','Murray Ltd');
INSERT INTO `products` VALUES (8,'2024-01-12 03:15:11','2024-01-12 03:15:11','http://boyer.com/sunt-ut-non-ducimus.html','sed','756','adipisci','Architecto minus voluptatem alias maxime ducimus reprehenderit. Consequuntur eum at sint distinctio. Dolore cumque aut labore id.','\"https://via.placeholder.com/640x480.png/002211?text=maiores\"','Bergnaum-Kulas');
INSERT INTO `products` VALUES (9,'2024-01-12 03:15:11','2024-01-12 03:15:11','http://torp.com/ad-molestiae-perspiciatis-aliquid-aperiam-laboriosam-assumenda','iusto','267','in','Blanditiis temporibus voluptas vitae alias. Qui nihil exercitationem doloribus placeat perferendis harum voluptatem omnis. Dolorem placeat esse distinctio explicabo incidunt.','\"https://via.placeholder.com/640x480.png/0088dd?text=aut\"','Kiehn Group');
INSERT INTO `products` VALUES (10,'2024-01-12 03:15:11','2024-01-12 03:15:11','http://www.krajcik.com/corporis-eos-ipsam-et-aspernatur.html','nostrum','751','adipisci','Ratione ut sequi perferendis magni. Amet dolore cupiditate enim recusandae beatae vero aperiam quae. Dolore quasi delectus est voluptatem eum. Veritatis sed possimus aliquam in.','\"https://via.placeholder.com/640x480.png/0055ee?text=est\"','Orn, Dietrich and Nolan');
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
INSERT INTO `users` VALUES (1,'Moshe Cassin','jmorissette@example.org','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'F5M3oFBVIt','2024-01-12 03:15:11','2024-01-12 03:15:11','(660) 779-1331','USER');
INSERT INTO `users` VALUES (2,'Travon Treutel','aufderhar.quinn@example.org','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'JXAgtki5yM','2024-01-12 03:15:11','2024-01-12 03:15:11','1-762-894-5041','STAFF');
INSERT INTO `users` VALUES (3,'Ella Hagenes','pfeffer.sigurd@example.net','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'Xpt4jfqrsG','2024-01-12 03:15:11','2024-01-12 03:15:11','+1.737.552.6379','ADMIN');
INSERT INTO `users` VALUES (4,'Micheal Botsford','frederick15@example.com','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'ebxcgVUtoI','2024-01-12 03:15:11','2024-01-12 03:15:11','+1.917.530.9509','ADMIN');
INSERT INTO `users` VALUES (5,'Dr. Shaina Renner','walsh.addie@example.com','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'QmTwDwxXde','2024-01-12 03:15:11','2024-01-12 03:15:11','701-930-1318','USER');
INSERT INTO `users` VALUES (6,'Prof. Marc Marquardt','garrett36@example.net','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'TkGCiiwAMG','2024-01-12 03:15:11','2024-01-12 03:15:11','+1-917-496-8951','ADMIN');
INSERT INTO `users` VALUES (7,'Petra Jacobs','margarita00@example.org','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'CZTZjxrV94','2024-01-12 03:15:11','2024-01-12 03:15:11','718-362-7849','ADMIN');
INSERT INTO `users` VALUES (8,'Forrest Konopelski','caufderhar@example.com','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'W5yyY4hKuK','2024-01-12 03:15:11','2024-01-12 03:15:11','651-580-6220','USER');
INSERT INTO `users` VALUES (9,'Meta Heller','pearl.gusikowski@example.com','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'GkSC0nD15m','2024-01-12 03:15:11','2024-01-12 03:15:11','+1-475-478-4027','ADMIN');
INSERT INTO `users` VALUES (10,'Camilla Schumm PhD','lkassulke@example.com','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'6lLMk2lHnr','2024-01-12 03:15:11','2024-01-12 03:15:11','+1.615.704.2206','STAFF');
INSERT INTO `users` VALUES (11,'Jaylen Zieme','nichole73@example.org','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'Oq1Skeanss','2024-01-12 03:15:11','2024-01-12 03:15:11','207.384.5532','STAFF');
INSERT INTO `users` VALUES (12,'Jewel Turner','alexzander.gaylord@example.org','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'KZTflfo60U','2024-01-12 03:15:11','2024-01-12 03:15:11','+16266484220','USER');
INSERT INTO `users` VALUES (13,'Miss Caroline Senger II','mavis64@example.org','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'nG33EZ4WQa','2024-01-12 03:15:11','2024-01-12 03:15:11','+1.540.936.3071','ADMIN');
INSERT INTO `users` VALUES (14,'Prof. Norberto Vandervort','hilpert.madisyn@example.net','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'IqXMupPh49','2024-01-12 03:15:11','2024-01-12 03:15:11','+1-781-215-9695','USER');
INSERT INTO `users` VALUES (15,'Arvilla Hessel PhD','boyle.clarabelle@example.net','2024-01-12 03:15:11','$2y$10$pZlRS8Js5V8iyC.qVquVuOe/WbkJzfH2VG6D4ZuzPH5.eHEulUfQC',NULL,NULL,NULL,'vbJkcjIuTj','2024-01-12 03:15:11','2024-01-12 03:15:11','312-852-2338','ADMIN');
INSERT INTO `users` VALUES (16,'Admin indra','indra953@gmail.com','2024-01-12 03:15:11','$2y$10$gqy.1eb9Rnza5RBvi5Qgo.w/CJxcyLYOjS1B/VbMhaST.JtKgWD2e',NULL,NULL,NULL,'2p6gRBFHcE','2024-01-12 03:15:11','2024-01-12 03:15:11','08123456789','ADMIN');
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

-- Dump completed on 2024-01-12 19:45:28
