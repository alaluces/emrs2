-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: emrs2
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment_treatment`
--

DROP TABLE IF EXISTS `appointment_treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_treatment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appointment_id` int(11) DEFAULT NULL,
  `treatment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_treatment`
--

LOCK TABLES `appointment_treatment` WRITE;
/*!40000 ALTER TABLE `appointment_treatment` DISABLE KEYS */;
INSERT INTO `appointment_treatment` VALUES (1,28,19,'2018-12-14 09:33:19','2018-12-14 09:33:19'),(2,29,20,'2018-12-14 14:20:33','2018-12-14 14:20:33'),(3,30,21,'2018-12-14 14:21:44','2018-12-14 14:21:44'),(4,30,22,'2018-12-14 14:22:52','2018-12-14 14:22:52'),(5,31,23,'2018-12-14 14:34:30','2018-12-14 14:34:30'),(6,32,24,'2018-12-14 14:37:41','2018-12-14 14:37:41'),(7,34,25,'2018-12-14 14:41:02','2018-12-14 14:41:02'),(8,36,26,'2018-12-14 14:43:13','2018-12-14 14:43:13'),(9,37,27,'2018-12-14 14:44:33','2018-12-14 14:44:33'),(10,38,28,'2018-12-16 08:24:47','2018-12-16 08:24:47'),(11,39,29,'2018-12-19 07:39:50','2018-12-19 07:39:50'),(12,41,30,'2018-12-19 07:47:46','2018-12-19 07:47:46'),(13,42,31,'2018-12-19 07:48:20','2018-12-19 07:48:20'),(14,43,32,'2018-12-19 08:54:19','2018-12-19 08:54:19'),(15,46,33,'2018-12-20 09:20:32','2018-12-20 09:20:32'),(16,47,34,'2018-12-23 04:26:13','2018-12-23 04:26:13'),(17,48,35,'2019-01-10 05:49:00','2019-01-10 05:49:00'),(18,50,36,'2019-03-04 03:55:12','2019-03-04 03:55:12'),(19,51,37,'2019-03-04 03:55:57','2019-03-04 03:55:57'),(20,54,38,'2019-03-04 12:05:21','2019-03-04 12:05:21'),(21,55,39,'2019-03-04 12:11:28','2019-03-04 12:11:28'),(22,60,40,'2019-03-04 13:17:27','2019-03-04 13:17:27'),(23,65,41,'2019-03-04 13:26:50','2019-03-04 13:26:50'),(24,68,42,'2019-03-05 04:27:35','2019-03-05 04:27:35'),(25,70,43,'2019-03-05 05:35:00','2019-03-05 05:35:00'),(26,71,44,'2019-03-05 05:53:47','2019-03-05 05:53:47'),(27,72,45,'2019-03-05 06:10:50','2019-03-05 06:10:50'),(28,73,46,'2019-03-05 07:21:59','2019-03-05 07:21:59'),(29,74,47,'2019-03-05 07:22:05','2019-03-05 07:22:05'),(30,76,48,'2019-03-05 07:22:12','2019-03-05 07:22:12'),(31,77,49,'2019-03-05 07:22:52','2019-03-05 07:22:52'),(32,78,50,'2019-03-05 07:23:33','2019-03-05 07:23:33'),(33,79,51,'2019-03-05 07:23:35','2019-03-05 07:23:35'),(34,80,52,'2019-03-05 07:23:38','2019-03-05 07:23:38'),(35,81,53,'2019-03-05 07:23:40','2019-03-05 07:23:40'),(36,84,54,'2019-03-05 07:23:43','2019-03-05 07:23:43'),(37,85,55,'2019-03-05 07:25:18','2019-03-05 07:25:18');
/*!40000 ALTER TABLE `appointment_treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `appt_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `appt_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appt_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (60,5,1,'Done','2019-03-04 13:16:05','2019-03-04 13:18:11','Walk-In','2019-03-04 00:00:00'),(61,5,1,'Cancelled','2019-03-04 13:16:24','2019-03-04 13:21:50','Appointment','2019-03-05 00:00:00'),(62,5,1,'Cancelled','2019-03-04 13:20:57','2019-03-04 13:21:16','Walk-In','2019-03-04 00:00:00'),(63,5,1,'Cancelled','2019-03-04 13:21:22','2019-03-04 13:25:06','Walk-In','2019-03-04 00:00:00'),(64,5,1,'Cancelled','2019-03-04 13:22:16','2019-03-04 13:26:27','Appointment','2019-03-05 00:00:00'),(65,5,1,'Done','2019-03-04 13:26:43','2019-03-04 13:27:38','Walk-In','2019-03-04 00:00:00'),(66,3,1,'Cancelled','2019-03-05 04:03:26','2019-03-05 04:04:19','Walk-In','2019-03-05 00:00:00'),(67,3,1,'Waiting','2019-03-05 04:04:41','2019-03-05 04:04:41','Appointment','2019-03-06 00:00:00'),(68,5,1,'Done','2019-03-05 04:25:06','2019-03-05 04:27:44','Walk-In','2019-03-05 00:00:00'),(69,5,1,'Waiting','2019-03-05 04:26:19','2019-03-05 04:26:19','Appointment','2019-03-06 00:00:00'),(70,7,1,'Done','2019-03-05 05:34:51','2019-03-05 05:39:44','Walk-In','2019-03-05 00:00:00'),(71,7,1,'Done','2019-03-05 05:53:43','2019-03-05 05:55:24','Walk-In','2019-03-05 00:00:00'),(72,5,1,'Done','2019-03-05 06:10:47','2019-03-05 06:12:21','Walk-In','2019-03-05 00:00:00'),(73,16,1,'On-Going','2019-03-05 06:56:00','2019-03-05 07:21:59','Walk-In','2019-03-05 00:00:00'),(74,15,1,'Done','2019-03-05 07:00:12','2019-03-05 11:23:31','Walk-In','2019-03-05 00:00:00'),(75,14,1,'Cancelled','2019-03-05 07:00:21','2019-03-05 07:16:13','Walk-In','2019-03-05 00:00:00'),(76,13,1,'On-Going','2019-03-05 07:00:29','2019-03-05 07:22:12','Walk-In','2019-03-05 00:00:00'),(77,11,1,'On-Going','2019-03-05 07:00:39','2019-03-05 07:22:52','Walk-In','2019-03-05 00:00:00'),(78,12,1,'On-Going','2019-03-05 07:00:46','2019-03-05 07:23:33','Walk-In','2019-03-05 00:00:00'),(79,10,1,'On-Going','2019-03-05 07:00:54','2019-03-05 07:23:35','Walk-In','2019-03-05 00:00:00'),(80,9,1,'On-Going','2019-03-05 07:01:00','2019-03-05 07:23:38','Walk-In','2019-03-05 00:00:00'),(81,7,1,'On-Going','2019-03-05 07:01:22','2019-03-05 07:23:40','Walk-In','2019-03-05 00:00:00'),(82,5,1,'Cancelled','2019-03-05 07:01:29','2019-03-05 07:15:27','Walk-In','2019-03-05 00:00:00'),(83,3,1,'Cancelled','2019-03-05 07:01:38','2019-03-05 07:02:31','Walk-In','2019-03-05 00:00:00'),(84,3,1,'On-Going','2019-03-05 07:15:54','2019-03-05 07:23:43','Walk-In','2019-03-05 00:00:00'),(85,5,1,'On-Going','2019-03-05 07:24:00','2019-03-05 07:25:18','Walk-In','2019-03-05 00:00:00'),(86,14,1,'Waiting','2019-03-05 07:25:07','2019-03-05 07:25:07','Walk-In','2019-03-05 00:00:00'),(87,16,1,'Waiting','2019-03-05 07:26:50','2019-03-05 07:26:50','Appointment','2019-03-06 00:00:00'),(88,15,1,'Waiting','2019-03-05 07:27:33','2019-03-05 07:27:33','Appointment','2019-03-06 00:00:00'),(89,14,1,'Waiting','2019-03-05 07:27:38','2019-03-05 07:27:38','Appointment','2019-03-06 00:00:00'),(90,13,1,'Waiting','2019-03-05 07:27:43','2019-03-05 07:27:43','Appointment','2019-03-06 00:00:00'),(91,12,1,'Waiting','2019-03-05 07:27:52','2019-03-05 07:27:52','Appointment','2019-03-06 00:00:00'),(92,11,1,'Waiting','2019-03-05 07:27:57','2019-03-05 07:27:57','Appointment','2019-03-06 00:00:00'),(93,10,1,'Waiting','2019-03-05 07:28:01','2019-03-05 07:28:01','Appointment','2019-03-06 00:00:00'),(94,9,1,'Waiting','2019-03-05 07:28:06','2019-03-05 07:28:06','Appointment','2019-03-06 00:00:00');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2018-10-11 22:46:05','2018-10-11 22:46:05'),(2,NULL,1,'Category 2','category-2','2018-10-11 22:46:05','2018-10-11 22:46:05');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'name','text','Name',1,1,1,1,1,1,'',2),(3,1,'email','text','Email',1,1,1,1,1,1,'',3),(4,1,'password','password','Password',1,0,0,1,1,0,'',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'locale','text','Locale',0,1,1,1,1,0,'',12),(12,1,'settings','hidden','Settings',0,0,0,0,0,0,'',12),(13,2,'id','number','ID',1,0,0,0,0,0,'',1),(14,2,'name','text','Name',1,1,1,1,1,1,'',2),(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(17,3,'id','number','ID',1,0,0,0,0,0,'',1),(18,3,'name','text','Name',1,1,1,1,1,1,'',2),(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(21,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(22,1,'role_id','text','Role',1,1,1,1,1,1,'',9),(23,4,'id','number','ID',1,0,0,0,0,0,'',1),(24,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(25,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(26,4,'name','text','Name',1,1,1,1,1,1,'',4),(27,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(28,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'',6),(29,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(30,5,'id','number','ID',1,0,0,0,0,0,'',1),(31,5,'author_id','text','Author',1,0,1,1,0,1,'',2),(32,5,'category_id','text','Category',1,0,1,1,1,0,'',3),(33,5,'title','text','Title',1,1,1,1,1,1,'',4),(34,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',5),(35,5,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(36,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(37,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(38,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,'',9),(39,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,'',10),(40,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(41,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'',12),(42,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',13),(43,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'',14),(44,5,'featured','checkbox','Featured',1,1,1,1,1,1,'',15),(45,6,'id','number','ID',1,0,0,0,0,0,'',1),(46,6,'author_id','text','Author',1,0,0,0,0,0,'',2),(47,6,'title','text','Title',1,1,1,1,1,1,'',3),(48,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',4),(49,6,'body','rich_text_box','Body',1,0,1,1,1,1,'',5),(50,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(51,6,'meta_description','text','Meta Description',1,0,1,1,1,1,'',7),(52,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,'',8),(53,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(54,6,'created_at','timestamp','Created At',1,1,1,0,0,0,'',10),(55,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,'',11),(56,6,'image','image','Page Image',0,1,1,1,1,1,'',12),(57,7,'id','text','Id',1,0,0,0,0,0,NULL,1),(58,7,'first_name','text','First Name',1,1,1,1,1,1,NULL,2),(59,7,'last_name','text','Last Name',1,1,1,1,1,1,NULL,3),(60,7,'birth_date','date','Birth Date',0,1,1,1,1,1,NULL,4),(61,7,'gender','select_dropdown','Gender',0,1,1,1,1,1,'{\"default\":\"M\",\"options\":{\"M\":\"Male\",\"F\":\"Female\"}}',5),(62,7,'contact_number','text','Contact Number',0,1,1,1,1,1,NULL,6),(63,7,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,7),(64,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),(65,8,'id','text','Id',1,0,0,0,0,0,NULL,1),(66,8,'patient_id','text','Patient Id',1,1,1,1,1,1,NULL,2),(67,8,'batch_id','text','Batch Id',1,1,1,1,1,1,NULL,3),(68,8,'appt_status','select_dropdown','Appt Status',1,1,1,1,1,1,'{\"default\":\"Waiting\",\"options\":{\"Waiting\":\"Waiting\",\"On-Going\":\"On-Going Treatment\",\"Done\":\"Treatment Completed\",\"Cancelled\":\"Cancelled\"}}',4),(69,8,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,5),(70,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),(71,8,'appt_type','select_dropdown','Appt Type',0,1,1,1,1,1,'{\"default\":\"Walk-In\",\"options\":{\"Walk-In\":\"Walk-in patient\",\"Appointment\":\"Scheduled appointment\"}}',7),(72,10,'id','text','Id',1,1,0,0,0,0,NULL,1),(73,10,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,2),(74,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,3),(75,10,'physician','text','Physician',0,1,1,1,1,1,NULL,4),(76,10,'notes','text','Notes',0,1,1,1,1,1,NULL,5),(77,10,'weight_dry','text','Weight Dry',0,1,1,1,1,1,NULL,6),(78,10,'weight_pre','text','Weight Pre',0,1,1,1,1,1,NULL,7),(79,10,'weight_post','text','Weight Post',0,1,1,1,1,1,NULL,8),(80,10,'weight_goal','text','Weight Goal',0,1,1,1,1,1,NULL,9),(81,10,'bp_systolic','text','Bp Systolic',0,1,1,1,1,1,NULL,10),(82,10,'bp_diastolic','text','Bp Diastolic',0,1,1,1,1,1,NULL,11),(83,10,'patient_id','text','Patient Id',1,1,1,1,1,1,NULL,12),(84,11,'id','text','Id',1,0,0,0,0,0,NULL,1),(85,11,'appointment_id','text','Appointment Id',0,1,1,1,1,1,NULL,2),(86,11,'treatment_id','text','Treatment Id',0,1,1,1,1,1,NULL,3),(87,11,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(88,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(89,10,'dp_dialyzer','text','Dp Dialyzer',0,1,1,1,1,1,NULL,13),(90,10,'dp_prec_uf_time','text','Dp Prec Uf Time',0,1,1,1,1,1,NULL,14),(91,10,'dp_iso_uf_time','text','Dp Iso Uf Time',0,1,1,1,1,1,NULL,15),(92,10,'dp_dialysate','text','Dp Dialysate',0,1,1,1,1,1,NULL,16),(93,10,'ac_heparin','text','Ac Heparin',0,1,1,1,1,1,NULL,17),(94,10,'ac_heparin_prime','text','Ac Heparin Prime',0,1,1,1,1,1,NULL,18),(95,10,'ac_heparin_rate','text','Ac Heparin Rate',0,1,1,1,1,1,NULL,19),(96,10,'ac_stop_time','text','Ac Stop Time',0,1,1,1,1,1,NULL,20),(97,10,'ac_frequency','text','Ac Frequency',0,1,1,1,1,1,NULL,21),(98,10,'ds_machine_number','text','Ds Machine Number',0,1,1,1,1,1,NULL,22),(99,10,'ds_station','text','Ds Station',0,1,1,1,1,1,NULL,23),(100,10,'ds_chemical_residue','text','Ds Chemical Residue',0,1,1,1,1,1,NULL,24),(101,10,'ds_conductivity','text','Ds Conductivity',0,1,1,1,1,1,NULL,25),(102,10,'ds_prechecks','text','Ds Prechecks',0,1,1,1,1,1,NULL,26),(103,10,'va_site_assessment','text','Va Site Assessment',0,1,1,1,1,1,NULL,27),(104,10,'va_fistula','text','Va Fistula',0,1,1,1,1,1,NULL,28),(105,10,'va_cathether','text','Va Cathether',0,1,1,1,1,1,NULL,29);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-10-11 22:45:38','2018-10-11 22:45:38'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-10-11 22:45:38','2018-10-11 22:45:38'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-10-11 22:45:38','2018-10-11 22:45:38'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2018-10-11 22:46:05','2018-10-11 22:46:05'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-10-11 22:46:05','2018-10-11 22:46:05'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2018-10-11 22:46:05','2018-10-11 22:46:05'),(7,'patients','patients','Patient','Patients',NULL,'App\\Patient',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-10-12 21:01:41','2018-10-12 21:01:41'),(8,'appointments','appointments','Appointment','Appointments',NULL,'App\\Appointment',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-10-12 21:52:33','2018-11-13 08:23:50'),(10,'treatments','treatments','Treatment','Treatments',NULL,'App\\Treatment',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-12-09 06:10:52','2018-12-09 06:10:52'),(11,'appointment_treatment','appointment-treatment','Appointment Treatment','Appointment Treatments',NULL,'App\\AppointmentTreatment',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-12-14 09:32:12','2018-12-14 09:32:12');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-10-11 22:45:38','2018-10-11 22:45:38','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,7,'2018-10-11 22:45:38','2018-12-09 06:11:21','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,6,'2018-10-11 22:45:38','2018-12-09 06:11:21','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,5,'2018-10-11 22:45:38','2018-12-09 06:11:21','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,11,'2018-10-11 22:45:38','2018-12-09 06:11:21',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2018-10-11 22:45:38','2018-10-12 21:03:54','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2018-10-11 22:45:38','2018-10-12 21:03:54','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2018-10-11 22:45:38','2018-10-12 21:03:54','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2018-10-11 22:45:38','2018-10-12 21:03:54','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,12,'2018-10-11 22:45:38','2018-12-09 06:11:21','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2018-10-11 22:45:39','2018-10-12 21:03:54','voyager.hooks',NULL),(12,1,'Categories','','_self','voyager-categories',NULL,NULL,10,'2018-10-11 22:46:05','2018-12-09 06:11:21','voyager.categories.index',NULL),(13,1,'Posts','','_self','voyager-news',NULL,NULL,8,'2018-10-11 22:46:05','2018-12-09 06:11:21','voyager.posts.index',NULL),(14,1,'Pages','','_self','voyager-file-text',NULL,NULL,9,'2018-10-11 22:46:06','2018-12-09 06:11:21','voyager.pages.index',NULL),(15,1,'Patients','','_self','voyager-group','#000000',NULL,2,'2018-10-12 21:01:41','2018-12-09 07:39:50','voyager.patients.index','null'),(16,1,'Appointments','','_self','voyager-calendar','#000000',NULL,3,'2018-10-12 21:52:33','2018-11-13 08:24:45','appointments.index','null'),(17,1,'Treatments','','_self','voyager-activity','#000000',NULL,4,'2018-12-09 06:10:52','2018-12-09 08:17:27','voyager.treatments.index','null'),(18,1,'Appointment Treatments','','_self',NULL,NULL,NULL,13,'2018-12-14 09:32:12','2018-12-14 09:32:12','voyager.appointment-treatment.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-10-11 22:45:38','2018-10-11 22:45:38');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2016_01_01_000000_create_pages_table',2),(24,'2016_01_01_000000_create_posts_table',2),(25,'2016_02_15_204651_create_categories_table',2),(26,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-10-11 22:46:06','2018-10-11 22:46:06');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (3,'aries','laluces','2018-10-18','M',NULL,'2018-10-12 22:49:00','2019-03-05 05:03:27'),(5,'kristel','dantes','2018-12-14','F','09171231234','2018-12-14 14:11:00','2019-03-05 05:02:46'),(7,'Michael','Scott',NULL,'M',NULL,'2019-03-05 05:03:00','2019-03-05 05:30:59'),(9,'Jim','Halpert',NULL,'M',NULL,'2019-03-05 06:51:09','2019-03-05 06:51:09'),(10,'Pam','Beasly',NULL,'F',NULL,'2019-03-05 06:51:21','2019-03-05 06:51:21'),(11,'Dwight','Schrute',NULL,'M',NULL,'2019-03-05 06:51:38','2019-03-05 06:51:38'),(12,'Angela','Martin',NULL,'F',NULL,'2019-03-05 06:51:51','2019-03-05 06:51:51'),(13,'Kevin','Malone',NULL,'M',NULL,'2019-03-05 06:52:18','2019-03-05 06:52:18'),(14,'Bob','Vance',NULL,'M',NULL,'2019-03-05 06:52:29','2019-03-05 06:52:29'),(15,'Toby','Flenderson',NULL,'M',NULL,'2019-03-05 06:52:53','2019-03-05 06:52:53'),(16,'Creed','Bratton',NULL,'M',NULL,'2019-03-05 06:53:39','2019-03-05 06:53:39');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(42,3),(43,1),(43,3),(44,1),(44,3),(45,1),(45,3),(46,1),(46,3),(47,1),(47,3),(48,1),(48,3),(49,1),(49,3),(50,1),(50,3),(51,1),(51,3),(52,1),(53,1),(53,3),(54,1),(54,3),(55,1),(55,3),(56,1),(56,3),(57,1),(58,1),(59,1),(60,1),(61,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-10-11 22:45:38','2018-10-11 22:45:38'),(2,'browse_bread',NULL,'2018-10-11 22:45:38','2018-10-11 22:45:38'),(3,'browse_database',NULL,'2018-10-11 22:45:38','2018-10-11 22:45:38'),(4,'browse_media',NULL,'2018-10-11 22:45:38','2018-10-11 22:45:38'),(5,'browse_compass',NULL,'2018-10-11 22:45:38','2018-10-11 22:45:38'),(6,'browse_menus','menus','2018-10-11 22:45:38','2018-10-11 22:45:38'),(7,'read_menus','menus','2018-10-11 22:45:38','2018-10-11 22:45:38'),(8,'edit_menus','menus','2018-10-11 22:45:38','2018-10-11 22:45:38'),(9,'add_menus','menus','2018-10-11 22:45:38','2018-10-11 22:45:38'),(10,'delete_menus','menus','2018-10-11 22:45:38','2018-10-11 22:45:38'),(11,'browse_roles','roles','2018-10-11 22:45:38','2018-10-11 22:45:38'),(12,'read_roles','roles','2018-10-11 22:45:38','2018-10-11 22:45:38'),(13,'edit_roles','roles','2018-10-11 22:45:38','2018-10-11 22:45:38'),(14,'add_roles','roles','2018-10-11 22:45:38','2018-10-11 22:45:38'),(15,'delete_roles','roles','2018-10-11 22:45:38','2018-10-11 22:45:38'),(16,'browse_users','users','2018-10-11 22:45:38','2018-10-11 22:45:38'),(17,'read_users','users','2018-10-11 22:45:38','2018-10-11 22:45:38'),(18,'edit_users','users','2018-10-11 22:45:38','2018-10-11 22:45:38'),(19,'add_users','users','2018-10-11 22:45:38','2018-10-11 22:45:38'),(20,'delete_users','users','2018-10-11 22:45:38','2018-10-11 22:45:38'),(21,'browse_settings','settings','2018-10-11 22:45:38','2018-10-11 22:45:38'),(22,'read_settings','settings','2018-10-11 22:45:38','2018-10-11 22:45:38'),(23,'edit_settings','settings','2018-10-11 22:45:38','2018-10-11 22:45:38'),(24,'add_settings','settings','2018-10-11 22:45:38','2018-10-11 22:45:38'),(25,'delete_settings','settings','2018-10-11 22:45:38','2018-10-11 22:45:38'),(26,'browse_hooks',NULL,'2018-10-11 22:45:39','2018-10-11 22:45:39'),(27,'browse_categories','categories','2018-10-11 22:46:05','2018-10-11 22:46:05'),(28,'read_categories','categories','2018-10-11 22:46:05','2018-10-11 22:46:05'),(29,'edit_categories','categories','2018-10-11 22:46:05','2018-10-11 22:46:05'),(30,'add_categories','categories','2018-10-11 22:46:05','2018-10-11 22:46:05'),(31,'delete_categories','categories','2018-10-11 22:46:05','2018-10-11 22:46:05'),(32,'browse_posts','posts','2018-10-11 22:46:05','2018-10-11 22:46:05'),(33,'read_posts','posts','2018-10-11 22:46:05','2018-10-11 22:46:05'),(34,'edit_posts','posts','2018-10-11 22:46:05','2018-10-11 22:46:05'),(35,'add_posts','posts','2018-10-11 22:46:05','2018-10-11 22:46:05'),(36,'delete_posts','posts','2018-10-11 22:46:05','2018-10-11 22:46:05'),(37,'browse_pages','pages','2018-10-11 22:46:06','2018-10-11 22:46:06'),(38,'read_pages','pages','2018-10-11 22:46:06','2018-10-11 22:46:06'),(39,'edit_pages','pages','2018-10-11 22:46:06','2018-10-11 22:46:06'),(40,'add_pages','pages','2018-10-11 22:46:06','2018-10-11 22:46:06'),(41,'delete_pages','pages','2018-10-11 22:46:06','2018-10-11 22:46:06'),(42,'browse_patients','patients','2018-10-12 21:01:41','2018-10-12 21:01:41'),(43,'read_patients','patients','2018-10-12 21:01:41','2018-10-12 21:01:41'),(44,'edit_patients','patients','2018-10-12 21:01:41','2018-10-12 21:01:41'),(45,'add_patients','patients','2018-10-12 21:01:41','2018-10-12 21:01:41'),(46,'delete_patients','patients','2018-10-12 21:01:41','2018-10-12 21:01:41'),(47,'browse_appointments','appointments','2018-10-12 21:52:33','2018-10-12 21:52:33'),(48,'read_appointments','appointments','2018-10-12 21:52:33','2018-10-12 21:52:33'),(49,'edit_appointments','appointments','2018-10-12 21:52:33','2018-10-12 21:52:33'),(50,'add_appointments','appointments','2018-10-12 21:52:33','2018-10-12 21:52:33'),(51,'delete_appointments','appointments','2018-10-12 21:52:33','2018-10-12 21:52:33'),(52,'browse_treatments','treatments','2018-12-09 06:10:52','2018-12-09 06:10:52'),(53,'read_treatments','treatments','2018-12-09 06:10:52','2018-12-09 06:10:52'),(54,'edit_treatments','treatments','2018-12-09 06:10:52','2018-12-09 06:10:52'),(55,'add_treatments','treatments','2018-12-09 06:10:52','2018-12-09 06:10:52'),(56,'delete_treatments','treatments','2018-12-09 06:10:52','2018-12-09 06:10:52'),(57,'browse_appointment_treatment','appointment_treatment','2018-12-14 09:32:12','2018-12-14 09:32:12'),(58,'read_appointment_treatment','appointment_treatment','2018-12-14 09:32:12','2018-12-14 09:32:12'),(59,'edit_appointment_treatment','appointment_treatment','2018-12-14 09:32:12','2018-12-14 09:32:12'),(60,'add_appointment_treatment','appointment_treatment','2018-12-14 09:32:12','2018-12-14 09:32:12'),(61,'delete_appointment_treatment','appointment_treatment','2018-12-14 09:32:12','2018-12-14 09:32:12');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-10-11 22:46:05','2018-10-11 22:46:05'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-10-11 22:46:05','2018-10-11 22:46:05'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-10-11 22:46:05','2018-10-11 22:46:05'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-10-11 22:46:05','2018-10-11 22:46:05');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-10-11 22:45:38','2018-10-11 22:45:38'),(2,'user','Normal User','2018-10-11 22:45:38','2018-10-11 22:45:38'),(3,'Nurse1','Nurse1','2018-10-12 21:05:49','2018-10-12 21:05:49');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','settings/November2018/hUhhlPqGK1uUVAB9tYOF.png','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/December2018/fSTqyqEff4fchXEnSQNT.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','EMRS','','text',1,'Admin'),(7,'admin.description','Admin Description','Electronic Medical Records','','text',2,'Admin'),(8,'admin.loader','Admin Loader','settings/December2018/O4rSpfE49q5Wec03DcXw.png','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings/December2018/jYZQgQXZSwyTY2AYfGpq.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2018-10-11 22:46:06','2018-10-11 22:46:06'),(2,'data_types','display_name_singular',6,'pt','Página','2018-10-11 22:46:06','2018-10-11 22:46:06'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2018-10-11 22:46:06','2018-10-11 22:46:06'),(4,'data_types','display_name_singular',4,'pt','Categoria','2018-10-11 22:46:06','2018-10-11 22:46:06'),(5,'data_types','display_name_singular',2,'pt','Menu','2018-10-11 22:46:06','2018-10-11 22:46:06'),(6,'data_types','display_name_singular',3,'pt','Função','2018-10-11 22:46:06','2018-10-11 22:46:06'),(7,'data_types','display_name_plural',5,'pt','Posts','2018-10-11 22:46:06','2018-10-11 22:46:06'),(8,'data_types','display_name_plural',6,'pt','Páginas','2018-10-11 22:46:06','2018-10-11 22:46:06'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2018-10-11 22:46:06','2018-10-11 22:46:06'),(10,'data_types','display_name_plural',4,'pt','Categorias','2018-10-11 22:46:06','2018-10-11 22:46:06'),(11,'data_types','display_name_plural',2,'pt','Menus','2018-10-11 22:46:06','2018-10-11 22:46:06'),(12,'data_types','display_name_plural',3,'pt','Funções','2018-10-11 22:46:06','2018-10-11 22:46:06'),(13,'categories','slug',1,'pt','categoria-1','2018-10-11 22:46:06','2018-10-11 22:46:06'),(14,'categories','name',1,'pt','Categoria 1','2018-10-11 22:46:06','2018-10-11 22:46:06'),(15,'categories','slug',2,'pt','categoria-2','2018-10-11 22:46:06','2018-10-11 22:46:06'),(16,'categories','name',2,'pt','Categoria 2','2018-10-11 22:46:06','2018-10-11 22:46:06'),(17,'pages','title',1,'pt','Olá Mundo','2018-10-11 22:46:06','2018-10-11 22:46:06'),(18,'pages','slug',1,'pt','ola-mundo','2018-10-11 22:46:06','2018-10-11 22:46:06'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-10-11 22:46:06','2018-10-11 22:46:06'),(20,'menu_items','title',1,'pt','Painel de Controle','2018-10-11 22:46:06','2018-10-11 22:46:06'),(21,'menu_items','title',2,'pt','Media','2018-10-11 22:46:06','2018-10-11 22:46:06'),(22,'menu_items','title',13,'pt','Publicações','2018-10-11 22:46:06','2018-10-11 22:46:06'),(23,'menu_items','title',3,'pt','Utilizadores','2018-10-11 22:46:06','2018-10-11 22:46:06'),(24,'menu_items','title',12,'pt','Categorias','2018-10-11 22:46:06','2018-10-11 22:46:06'),(25,'menu_items','title',14,'pt','Páginas','2018-10-11 22:46:06','2018-10-11 22:46:06'),(26,'menu_items','title',4,'pt','Funções','2018-10-11 22:46:06','2018-10-11 22:46:06'),(27,'menu_items','title',5,'pt','Ferramentas','2018-10-11 22:46:06','2018-10-11 22:46:06'),(28,'menu_items','title',6,'pt','Menus','2018-10-11 22:46:06','2018-10-11 22:46:06'),(29,'menu_items','title',7,'pt','Base de dados','2018-10-11 22:46:06','2018-10-11 22:46:06'),(30,'menu_items','title',10,'pt','Configurações','2018-10-11 22:46:06','2018-10-11 22:46:06');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `physician` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_dry` int(11) DEFAULT NULL,
  `weight_pre` int(11) DEFAULT NULL,
  `weight_post` int(11) DEFAULT NULL,
  `weight_goal` int(11) DEFAULT NULL,
  `bp_systolic` int(11) DEFAULT NULL,
  `bp_diastolic` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `dp_dialyzer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dp_prec_uf_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dp_iso_uf_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dp_dialysate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_heparin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_heparin_prime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_heparin_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_stop_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ds_machine_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ds_station` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ds_chemical_residue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ds_conductivity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ds_prechecks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_site_assessment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_fistula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_cathether` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` VALUES (23,'2018-12-14 14:34:30','2018-12-14 14:37:27','doc2','50',10,20,30,10,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'2018-12-14 14:37:41','2018-12-14 14:38:12','aries','1212',12,12,12,12,100,100,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'2018-12-14 14:41:02','2018-12-14 14:41:30','doc','47171',10,20,30,104,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'2018-12-14 14:43:13','2018-12-14 14:43:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'2018-12-14 14:44:33','2018-12-14 14:45:05','1','8',4,5,6,7,2,3,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'2018-12-16 08:24:47','2018-12-16 08:26:23','Cesar Clown','104',100,101,102,103,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'2018-12-19 07:39:50','2018-12-19 07:40:14','doc','200',10,10,10,10,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'2018-12-19 07:47:46','2018-12-19 07:48:04','doc','itijyujyukyky',10,72,73,10,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'2018-12-19 07:48:20','2018-12-19 07:48:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'2018-12-19 08:54:19','2018-12-19 08:54:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'2018-12-20 09:20:32','2018-12-20 09:20:53','doc','rtertert',10,72,73,23,120,80,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'2018-12-23 04:26:13','2018-12-23 04:27:51','Aries','Reffdfft',100,101,102,103,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'2019-01-10 05:49:00','2019-01-10 05:49:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'2019-03-04 03:55:12','2019-03-04 09:37:51','doc2','',10,20,30,23,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'2019-03-04 03:55:57','2019-03-04 07:05:54','doc2','',10,20,30,23,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'2019-03-04 12:05:21','2019-03-04 12:05:40','doc2','rtertet',10,20,30,23,120,80,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'2019-03-04 12:11:28','2019-03-04 12:11:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'2019-03-04 13:17:27','2019-03-04 13:18:11','doc2','',10,20,30,23,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'2019-03-04 13:26:50','2019-03-04 13:27:38','doc2','',71,72,73,104,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'2019-03-05 04:27:35','2019-03-05 04:27:44','doc2','',10,20,30,23,120,80,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'2019-03-05 05:35:00','2019-03-05 05:39:44','doc2','test2',10,72,10,10,120,80,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'2019-03-05 05:53:47','2019-03-05 05:54:06','doc2','nrew',10,20,30,23,120,80,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'2019-03-05 06:10:50','2019-03-05 06:12:16','doc2','',23,72,10,104,121,81,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'2019-03-05 07:21:59','2019-03-05 11:25:46','doc','rtyrt',100,102,103,104,120,80,16,'','','','','','','','','','','','','','','','',''),(47,'2019-03-05 07:22:05','2019-03-05 11:23:19','doc2','',10,20,30,23,120,80,15,'Dialyzer','Prescribed UF Time','ISO UF Tme','Dialysate','Heparin','Heparin Prime','Heparin Rate / Hr','Stop Time','Frequency','Machine','Station','Chemical Residue','Conductivity','Prechecks','terrdbdfrg','Fistula','Cathether'),(48,'2019-03-05 07:22:12','2019-03-05 07:22:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'2019-03-05 07:22:52','2019-03-05 07:22:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'2019-03-05 07:23:33','2019-03-05 07:23:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'2019-03-05 07:23:35','2019-03-05 07:23:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'2019-03-05 07:23:38','2019-03-05 07:23:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'2019-03-05 07:23:40','2019-03-05 07:23:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'2019-03-05 07:23:43','2019-03-05 07:23:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'2019-03-05 07:25:18','2019-03-05 07:25:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/December2018/V2tZ21pyGXuCu01KRpVx.png',NULL,'$2y$10$9PIYGNDXagdKvvyELfirgOrQ3xGLbH3ftNWclMvq1GC3pH.XaOcQu','67c3Z79CsLFyCZTPQGaB7PyQq2qZeSP5ojxGjIBF1orfp6A6hIO50YqCeLQ5','{\"locale\":\"en\"}','2018-10-11 22:46:05','2018-12-20 09:07:10'),(2,3,'Nurse','nurse@example.com','users/December2018/BXnGWtQNguqdc3bEGVYc.png',NULL,'$2y$10$vBeBa/eUbYvJLRKNikkfYOP7bJuemuHsT1NkbJEjncP0iN3092MLG','w0aPEPRHKKd51um8nsjDGndfXWgRf3iy49VOd5KH8hUu7BA5IGRwcFWcVZLQ','{\"locale\":\"en\"}','2018-10-12 21:06:20','2018-12-20 09:06:12'),(3,3,'admin2','admin2@admin.com','users/March2019/qlBqNBTCc9fIVRvAkzQR.png',NULL,'$2y$10$8jj/cXMJv00H7h6vUCZVk.jrzFutqnFsE7LokBbX6AmFELxukbfpy',NULL,'{\"locale\":\"en\"}','2019-03-05 09:30:57','2019-03-05 09:30:57');
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

-- Dump completed on 2019-03-06  9:23:30
