-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: automotive_db
-- ------------------------------------------------------
-- Server version	8.4.13

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add content type',2,'add_contenttype'),(6,'Can change content type',2,'change_contenttype'),(7,'Can delete content type',2,'delete_contenttype'),(8,'Can view content type',2,'view_contenttype'),(9,'Can add permission',4,'add_permission'),(10,'Can change permission',4,'change_permission'),(11,'Can delete permission',4,'delete_permission'),(12,'Can view permission',4,'view_permission'),(13,'Can add group',3,'add_group'),(14,'Can change group',3,'change_group'),(15,'Can delete group',3,'delete_group'),(16,'Can view group',3,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Product Image',11,'add_image'),(26,'Can change Product Image',11,'change_image'),(27,'Can delete Product Image',11,'delete_image'),(28,'Can view Product Image',11,'view_image'),(29,'Can add Product/Part',12,'add_item'),(30,'Can change Product/Part',12,'change_item'),(31,'Can delete Product/Part',12,'delete_item'),(32,'Can view Product/Part',12,'view_item'),(33,'Can add Technical Specification',7,'add_attribute'),(34,'Can change Technical Specification',7,'change_attribute'),(35,'Can delete Technical Specification',7,'delete_attribute'),(36,'Can view Technical Specification',7,'view_attribute'),(37,'Can add Brand',8,'add_brand'),(38,'Can change Brand',8,'change_brand'),(39,'Can delete Brand',8,'delete_brand'),(40,'Can view Brand',8,'view_brand'),(41,'Can add Category',9,'add_category'),(42,'Can change Category',9,'change_category'),(43,'Can delete Category',9,'delete_category'),(44,'Can view Category',9,'view_category'),(45,'Can add Compatibility',10,'add_compatibility'),(46,'Can change Compatibility',10,'change_compatibility'),(47,'Can delete Compatibility',10,'delete_compatibility'),(48,'Can view Compatibility',10,'view_compatibility'),(49,'Can add Product Review',13,'add_review'),(50,'Can change Product Review',13,'change_review'),(51,'Can delete Product Review',13,'delete_review'),(52,'Can view Product Review',13,'view_review');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1500000$JkB6H2hljzzwzXoCipCjU5$8aicH9gPoULedbIuY+ampAQBFf5ZueS9PCQZPQH4m/I=','2026-10-21 18:16:01.121435',1,'ducpham','','','minhduc5116@gmail.com',1,1,'2026-10-21 17:17:28.321632');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2026-10-21 18:02:06.225354','1','Hệ thống phanh',1,'[{\"added\": {}}]',9,1),(2,'2026-10-21 18:02:34.132424','2','Động cơ & Lọc gió',1,'[{\"added\": {}}]',9,1),(3,'2026-10-21 18:02:52.248631','3','Nội thất & Tiện ích',1,'[{\"added\": {}}]',9,1),(4,'2026-10-21 18:03:51.840352','1','Brembo',1,'[{\"added\": {}}]',8,1),(5,'2026-10-21 18:04:02.283939','2','Bosch',1,'[{\"added\": {}}]',8,1),(6,'2026-10-21 18:04:12.644521','3','Michelin',1,'[{\"added\": {}}]',8,1),(7,'2026-10-21 18:05:37.344748','1','Má phanh gốm cao cấp Brembo trước',1,'[{\"added\": {}}]',12,1),(8,'2026-10-21 18:06:35.777760','2','Lọc gió động cơ ô tô Bosch CleanAir',1,'[{\"added\": {}}]',12,1),(9,'2026-10-21 18:07:48.715638','1','Chất liệu: Gốm Ceramic cao cấp (Má phanh gốm cao cấp Brembo trước)',1,'[{\"added\": {}}]',7,1),(10,'2026-10-21 18:10:08.984471','1','Chất liệu: Gốm Ceramic cao cấp (Má phanh gốm cao cấp Brembo trước)',3,'',7,1),(11,'2026-10-21 18:20:37.707730','1','Má phanh gốm cao cấp Brembo trước',2,'[{\"added\": {\"name\": \"Technical Specification\", \"object\": \"Ch\\u1ea5t li\\u1ec7u: G\\u1ed1m Ceramic cao c\\u1ea5p (M\\u00e1 phanh g\\u1ed1m cao c\\u1ea5p Brembo tr\\u01b0\\u1edbc)\"}}, {\"added\": {\"name\": \"Technical Specification\", \"object\": \"V\\u1ecb tr\\u00ed l\\u1eafp: B\\u00e1nh tr\\u01b0\\u1edbc (Left/Right) (M\\u00e1 phanh g\\u1ed1m cao c\\u1ea5p Brembo tr\\u01b0\\u1edbc)\"}}, {\"added\": {\"name\": \"Technical Specification\", \"object\": \"Xu\\u1ea5t x\\u1ee9: Italy (M\\u00e1 phanh g\\u1ed1m cao c\\u1ea5p Brembo tr\\u01b0\\u1edbc)\"}}]',12,1),(12,'2026-10-21 18:21:21.663791','2','Lọc gió động cơ ô tô Bosch CleanAir',2,'[{\"added\": {\"name\": \"Technical Specification\", \"object\": \"Ch\\u1ea5t li\\u1ec7u l\\u1ecdc: Gi\\u1ea5y t\\u1ed5ng h\\u1ee3p cao c\\u1ea5p t\\u1ea9m keo (L\\u1ecdc gi\\u00f3 \\u0111\\u1ed9ng c\\u01a1 \\u00f4 t\\u00f4 Bosch CleanAir)\"}}, {\"added\": {\"name\": \"Technical Specification\", \"object\": \"Th\\u1eddi gian khuy\\u1ebfn ngh\\u1ecb thay: 10.000km - 15.000km (L\\u1ecdc gi\\u00f3 \\u0111\\u1ed9ng c\\u01a1 \\u00f4 t\\u00f4 Bosch CleanAir)\"}}]',12,1),(13,'2026-10-21 18:22:06.186060','1','Má phanh gốm cao cấp Brembo trước is compatible with Mazda 3 / Mazda 6 (2020-2024)',1,'[{\"added\": {}}]',10,1),(14,'2026-10-21 18:22:36.415259','2','Lọc gió động cơ ô tô Bosch CleanAir is compatible with Toyota Vios / Yaris (2018-2023)',1,'[{\"added\": {}}]',10,1),(15,'2026-10-21 18:22:56.221746','1','Review 5 stars for Má phanh gốm cao cấp Brembo trước',1,'[{\"added\": {}}]',13,1),(16,'2026-10-21 18:23:13.594953','2','Review 4 stars for Lọc gió động cơ ô tô Bosch CleanAir',1,'[{\"added\": {}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(4,'auth','permission'),(5,'auth','user'),(2,'contenttypes','contenttype'),(7,'products','attribute'),(8,'products','brand'),(9,'products','category'),(10,'products','compatibility'),(11,'products','image'),(12,'products','item'),(13,'products','review'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-10-21 17:08:38.931155'),(2,'auth','0001_initial','2026-10-21 17:08:39.227330'),(3,'admin','0001_initial','2026-10-21 17:08:39.302380'),(4,'admin','0002_logentry_remove_auto_add','2026-10-21 17:08:39.307124'),(5,'admin','0003_logentry_add_action_flag_choices','2026-10-21 17:08:39.311727'),(6,'contenttypes','0002_remove_content_type_name','2026-10-21 17:08:39.361681'),(7,'auth','0002_alter_permission_name_max_length','2026-10-21 17:08:39.400224'),(8,'auth','0003_alter_user_email_max_length','2026-10-21 17:08:39.413939'),(9,'auth','0004_alter_user_username_opts','2026-10-21 17:08:39.419612'),(10,'auth','0005_alter_user_last_login_null','2026-10-21 17:08:39.451445'),(11,'auth','0006_require_contenttypes_0002','2026-10-21 17:08:39.453205'),(12,'auth','0007_alter_validators_add_error_messages','2026-10-21 17:08:39.458181'),(13,'auth','0008_alter_user_username_max_length','2026-10-21 17:08:39.494466'),(14,'auth','0009_alter_user_last_name_max_length','2026-10-21 17:08:39.527367'),(15,'auth','0010_alter_group_name_max_length','2026-10-21 17:08:39.537535'),(16,'auth','0011_update_proxy_permissions','2026-10-21 17:08:39.542347'),(17,'auth','0012_alter_user_first_name_max_length','2026-10-21 17:08:39.575636'),(18,'sessions','0001_initial','2026-10-21 17:08:39.591605'),(19,'products','0001_initial','2026-10-21 17:12:00.747043');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('t028s579algbahxpq5rr5wbasqm5366o','.eJxVjMEOgjAQBf9lz6aBbkMtR-9-A2n3LYKaNqFwIv67IeGg15nJ7DTEbZ2GreoyzKCeWrr8shTlpfkQeMb8KEZKXpc5mSMxp63mXqDv29n-DaZYJ-pJgvWCNgWPBtI6OO1YBIE9eAxg6aDQxOBrkhSDddy50XrbeOs00ucLDT04ww:1xJar3:5CIUiE-PwBCXtuRT6-NBCFPxiQpgZ1nPSupv0gUD15E','2026-11-04 18:16:01.123360'),('vnv4misnkbsx9zx68gf0byl92fd58n55','.eJxVjMEOgjAQBf9lz6aBbkMtR-9-A2n3LYKaNqFwIv67IeGg15nJ7DTEbZ2GreoyzKCeWrr8shTlpfkQeMb8KEZKXpc5mSMxp63mXqDv29n-DaZYJ-pJgvWCNgWPBtI6OO1YBIE9eAxg6aDQxOBrkhSDddy50XrbeOs00ucLDT04ww:1xJaX8:lb_8cM8euKLVEq5BqsJe2aeu7MCEO7N3Kcjksq4MqcE','2026-11-04 17:55:26.032422');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attribute`
--

DROP TABLE IF EXISTS `products_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_attribute` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_attribute_item_id_9977f5d7_fk_products_item_id` (`item_id`),
  CONSTRAINT `products_attribute_item_id_9977f5d7_fk_products_item_id` FOREIGN KEY (`item_id`) REFERENCES `products_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attribute`
--

LOCK TABLES `products_attribute` WRITE;
/*!40000 ALTER TABLE `products_attribute` DISABLE KEYS */;
INSERT INTO `products_attribute` VALUES (2,'Chất liệu','Gốm Ceramic cao cấp',1),(3,'Vị trí lắp','Bánh trước (Left/Right)',1),(4,'Xuất xứ','Italy',1),(5,'Chất liệu lọc','Giấy tổng hợp cao cấp tẩm keo',2),(6,'Thời gian khuyến nghị thay','10.000km - 15.000km',2);
/*!40000 ALTER TABLE `products_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_brand`
--

DROP TABLE IF EXISTS `products_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_brand`
--

LOCK TABLES `products_brand` WRITE;
/*!40000 ALTER TABLE `products_brand` DISABLE KEYS */;
INSERT INTO `products_brand` VALUES (1,'Brembo','brembo','','Thương hiệu hàng đầu thế giới về hệ thống phanh hiệu suất cao.'),(2,'Bosch','bosch','','Tập đoàn công nghệ và dịch vụ lớn của Đức, cung cấp phụ tùng điện, bugi, gạt mưa.'),(3,'Michelin','michelin','','Thương hiệu lốp xe và phụ kiện ô tô cao cấp đến từ Pháp.');
/*!40000 ALTER TABLE `products_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_category`
--

DROP TABLE IF EXISTS `products_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_category`
--

LOCK TABLES `products_category` WRITE;
/*!40000 ALTER TABLE `products_category` DISABLE KEYS */;
INSERT INTO `products_category` VALUES (1,'Hệ thống phanh','he-thong-phanh','Các linh kiện, phụ tùng thay thế cho hệ thống phanh ô tô như má phanh, đĩa phanh, dầu phanh.'),(2,'Động cơ & Lọc gió','dong-co-va-loc-gio','Lọc gió động cơ, lọc dầu, bugi và các chi tiết thuộc khoang máy.'),(3,'Nội thất & Tiện ích','noi-that-va-tien-ich','Thảm lót sàn, bọc vô lăng, camera hành trình và phụ kiện trang trí nội thất xe.');
/*!40000 ALTER TABLE `products_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_compatibility`
--

DROP TABLE IF EXISTS `products_compatibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_compatibility` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `car_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_year_start` int unsigned NOT NULL,
  `car_year_end` int unsigned NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_compatibility_item_id_fb77eeb9_fk_products_item_id` (`item_id`),
  CONSTRAINT `products_compatibility_item_id_fb77eeb9_fk_products_item_id` FOREIGN KEY (`item_id`) REFERENCES `products_item` (`id`),
  CONSTRAINT `products_compatibility_chk_1` CHECK ((`car_year_start` >= 0)),
  CONSTRAINT `products_compatibility_chk_2` CHECK ((`car_year_end` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_compatibility`
--

LOCK TABLES `products_compatibility` WRITE;
/*!40000 ALTER TABLE `products_compatibility` DISABLE KEYS */;
INSERT INTO `products_compatibility` VALUES (1,'Mazda 3 / Mazda 6',2020,2024,1),(2,'Toyota Vios / Yaris',2018,2023,2);
/*!40000 ALTER TABLE `products_compatibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_image`
--

DROP TABLE IF EXISTS `products_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_feature` tinyint(1) NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_image_item_id_0297d82d_fk_products_item_id` (`item_id`),
  CONSTRAINT `products_image_item_id_0297d82d_fk_products_item_id` FOREIGN KEY (`item_id`) REFERENCES `products_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_image`
--

LOCK TABLES `products_image` WRITE;
/*!40000 ALTER TABLE `products_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_item`
--

DROP TABLE IF EXISTS `products_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `stock` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `brand_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `products_item_brand_id_3903cf01_fk_products_brand_id` (`brand_id`),
  KEY `products_item_category_id_4c94af84_fk_products_category_id` (`category_id`),
  CONSTRAINT `products_item_brand_id_3903cf01_fk_products_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `products_brand` (`id`),
  CONSTRAINT `products_item_category_id_4c94af84_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`),
  CONSTRAINT `products_item_chk_1` CHECK ((`stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_item`
--

LOCK TABLES `products_item` WRITE;
/*!40000 ALTER TABLE `products_item` DISABLE KEYS */;
INSERT INTO `products_item` VALUES (1,'Má phanh gốm cao cấp Brembo trước','ma-phanh-gom-cao-cap-brembo-truoc','Má phanh gốm ceramic giúp giảm tiếng ồn tối đa, hạn chế bụi phanh và tăng độ bám khi phanh gấp ở tốc độ cao.',1850000.00,25,1,'2026-10-21 18:05:37.343861','2026-10-21 18:20:37.705178',1,1),(2,'Lọc gió động cơ ô tô Bosch CleanAir','loc-gio-dong-co-oto-bosch-cleanair','Lọc gió động cơ chính hãng Bosch giúp lọc sạch bụi bẩn, bảo vệ động cơ hoạt động bền bỉ và tiết kiệm nhiên liệu tối ưu.',350000.00,50,1,'2026-10-21 18:06:35.776903','2026-10-21 18:21:21.661996',2,2);
/*!40000 ALTER TABLE `products_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_review`
--

DROP TABLE IF EXISTS `products_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rating` int unsigned NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_review_item_id_cc10330f_fk_products_item_id` (`item_id`),
  CONSTRAINT `products_review_item_id_cc10330f_fk_products_item_id` FOREIGN KEY (`item_id`) REFERENCES `products_item` (`id`),
  CONSTRAINT `products_review_chk_1` CHECK ((`rating` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_review`
--

LOCK TABLES `products_review` WRITE;
/*!40000 ALTER TABLE `products_review` DISABLE KEYS */;
INSERT INTO `products_review` VALUES (1,5,'Phanh cực kỳ êm, không bị kêu két két lúc sáng sớm như má zin theo xe. Rất đáng tiền!','2026-10-21 18:22:56.220663',1),(2,4,'hàng chuẩn chính hãng, lắp vừa khít xe Vios 2021, xe bốc hơn hẳn.','2026-10-21 18:23:13.594465',2);
/*!40000 ALTER TABLE `products_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-24  0:14:30
