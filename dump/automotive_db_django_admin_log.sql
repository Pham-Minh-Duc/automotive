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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-24  0:05:58
