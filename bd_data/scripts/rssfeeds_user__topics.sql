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
-- Table structure for table `user__topics`
--

DROP TABLE IF EXISTS `user__topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user__topics` (
  `iduser_topic` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` varchar(50) NOT NULL,
  `idtopic` int(11) NOT NULL,
  `updated_at` timestamp(5) NULL DEFAULT NULL,
  `created_at` timestamp(5) NULL DEFAULT NULL,
  PRIMARY KEY (`iduser_topic`),
  KEY `idusers_fk_idx` (`iduser`),
  KEY `idtopics_fk_idx` (`idtopic`),
  CONSTRAINT `idtopics_fk` FOREIGN KEY (`idtopic`) REFERENCES `topics` (`idtopics`),
  CONSTRAINT `iduser_fk` FOREIGN KEY (`iduser`) REFERENCES `users` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user__topics`
--

LOCK TABLES `user__topics` WRITE;
/*!40000 ALTER TABLE `user__topics` DISABLE KEYS */;
INSERT INTO `user__topics` VALUES (9,'lorenall0429@hotmail.com',2,'2019-06-24 23:38:58.00000','2019-06-24 23:38:58.00000');
INSERT INTO `user__topics` VALUES (10,'lorenall0429@hotmail.com',3,'2019-06-24 23:38:58.00000','2019-06-24 23:38:58.00000');
INSERT INTO `user__topics` VALUES (11,'lorenall0429@hotmail.com',4,'2019-06-24 23:38:58.00000','2019-06-24 23:38:58.00000');
INSERT INTO `user__topics` VALUES (12,'lorenall0429@hotmail.com',1,'2019-06-24 23:38:58.00000','2019-06-24 23:38:58.00000');
/*!40000 ALTER TABLE `user__topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-24 19:00:38
