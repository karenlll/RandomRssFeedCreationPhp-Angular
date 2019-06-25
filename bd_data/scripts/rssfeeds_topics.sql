-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: rssfeeds
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `topics` (
  `idtopics` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  `updated_at` timestamp(5) NULL DEFAULT NULL,
  `created_at` timestamp(5) NULL DEFAULT NULL,
  PRIMARY KEY (`idtopics`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'opinion',NULL,NULL);
INSERT INTO `topics` VALUES (2,'colombia',NULL,NULL);
INSERT INTO `topics` VALUES (3,'barranquilla',NULL,NULL);
INSERT INTO `topics` VALUES (4,'medellin',NULL,NULL);
INSERT INTO `topics` VALUES (5,'cali',NULL,NULL);
INSERT INTO `topics` VALUES (6,'otras ciudades colombianas',NULL,NULL);
INSERT INTO `topics` VALUES (7,'bogota',NULL,NULL);
INSERT INTO `topics` VALUES (8,'mundo',NULL,NULL);
INSERT INTO `topics` VALUES (9,'latinoamerica',NULL,NULL);
INSERT INTO `topics` VALUES (10,'europa',NULL,NULL);
INSERT INTO `topics` VALUES (11,'eeuu y canada',NULL,NULL);
INSERT INTO `topics` VALUES (12,'medio oriente',NULL,NULL);
INSERT INTO `topics` VALUES (13,'asia',NULL,NULL);
INSERT INTO `topics` VALUES (14,'africa',NULL,NULL);
INSERT INTO `topics` VALUES (15,'politica',NULL,NULL);
INSERT INTO `topics` VALUES (16,'gobierno',NULL,NULL);
INSERT INTO `topics` VALUES (17,'congreso',NULL,NULL);
INSERT INTO `topics` VALUES (18,'economia',NULL,NULL);
INSERT INTO `topics` VALUES (19,'deportes',NULL,NULL);
INSERT INTO `topics` VALUES (20,'cultura',NULL,NULL);
INSERT INTO `topics` VALUES (21,'tecnologia',NULL,NULL);
INSERT INTO `topics` VALUES (22,'otro',NULL,NULL);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-24 19:00:39
