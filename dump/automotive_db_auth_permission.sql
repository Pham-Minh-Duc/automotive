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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-24  0:05:58
